; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mic/scif/extr_scif_rma.c_scif_recv_reg_nack.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mic/scif/extr_scif_rma.c_scif_recv_reg_nack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scif_dev = type { i32 }
%struct.scifmsg = type { i64* }
%struct.scif_window = type { i32, i32, i64 }
%struct.scif_endpt = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@OP_FAILED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scif_recv_reg_nack(%struct.scif_dev* %0, %struct.scifmsg* %1) #0 {
  %3 = alloca %struct.scif_dev*, align 8
  %4 = alloca %struct.scifmsg*, align 8
  %5 = alloca %struct.scif_window*, align 8
  %6 = alloca %struct.scif_endpt*, align 8
  store %struct.scif_dev* %0, %struct.scif_dev** %3, align 8
  store %struct.scifmsg* %1, %struct.scifmsg** %4, align 8
  %7 = load %struct.scifmsg*, %struct.scifmsg** %4, align 8
  %8 = getelementptr inbounds %struct.scifmsg, %struct.scifmsg* %7, i32 0, i32 0
  %9 = load i64*, i64** %8, align 8
  %10 = getelementptr inbounds i64, i64* %9, i64 2
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.scif_window*
  store %struct.scif_window* %12, %struct.scif_window** %5, align 8
  %13 = load %struct.scif_window*, %struct.scif_window** %5, align 8
  %14 = getelementptr inbounds %struct.scif_window, %struct.scif_window* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.scif_endpt*
  store %struct.scif_endpt* %16, %struct.scif_endpt** %6, align 8
  %17 = load %struct.scif_endpt*, %struct.scif_endpt** %6, align 8
  %18 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load i32, i32* @OP_FAILED, align 4
  %22 = load %struct.scif_window*, %struct.scif_window** %5, align 8
  %23 = getelementptr inbounds %struct.scif_window, %struct.scif_window* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load %struct.scif_window*, %struct.scif_window** %5, align 8
  %25 = getelementptr inbounds %struct.scif_window, %struct.scif_window* %24, i32 0, i32 0
  %26 = call i32 @wake_up(i32* %25)
  %27 = load %struct.scif_endpt*, %struct.scif_endpt** %6, align 8
  %28 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = call i32 @mutex_unlock(i32* %29)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
