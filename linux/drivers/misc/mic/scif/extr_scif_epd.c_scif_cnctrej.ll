; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mic/scif/extr_scif_epd.c_scif_cnctrej.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mic/scif/extr_scif_epd.c_scif_cnctrej.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scif_dev = type { i32 }
%struct.scifmsg = type { i64* }
%struct.scif_endpt = type { i64, i32, i32 }

@SCIFEP_CONNECTING = common dso_local global i64 0, align 8
@SCIFEP_BOUND = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scif_cnctrej(%struct.scif_dev* %0, %struct.scifmsg* %1) #0 {
  %3 = alloca %struct.scif_dev*, align 8
  %4 = alloca %struct.scifmsg*, align 8
  %5 = alloca %struct.scif_endpt*, align 8
  store %struct.scif_dev* %0, %struct.scif_dev** %3, align 8
  store %struct.scifmsg* %1, %struct.scifmsg** %4, align 8
  %6 = load %struct.scifmsg*, %struct.scifmsg** %4, align 8
  %7 = getelementptr inbounds %struct.scifmsg, %struct.scifmsg* %6, i32 0, i32 0
  %8 = load i64*, i64** %7, align 8
  %9 = getelementptr inbounds i64, i64* %8, i64 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.scif_endpt*
  store %struct.scif_endpt* %11, %struct.scif_endpt** %5, align 8
  %12 = load %struct.scif_endpt*, %struct.scif_endpt** %5, align 8
  %13 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %12, i32 0, i32 1
  %14 = call i32 @spin_lock(i32* %13)
  %15 = load i64, i64* @SCIFEP_CONNECTING, align 8
  %16 = load %struct.scif_endpt*, %struct.scif_endpt** %5, align 8
  %17 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %15, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %2
  %21 = load i64, i64* @SCIFEP_BOUND, align 8
  %22 = load %struct.scif_endpt*, %struct.scif_endpt** %5, align 8
  %23 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %22, i32 0, i32 0
  store i64 %21, i64* %23, align 8
  %24 = load %struct.scif_endpt*, %struct.scif_endpt** %5, align 8
  %25 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %24, i32 0, i32 2
  %26 = call i32 @wake_up(i32* %25)
  br label %27

27:                                               ; preds = %20, %2
  %28 = load %struct.scif_endpt*, %struct.scif_endpt** %5, align 8
  %29 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %28, i32 0, i32 1
  %30 = call i32 @spin_unlock(i32* %29)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
