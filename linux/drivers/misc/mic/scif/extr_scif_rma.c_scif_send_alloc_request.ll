; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mic/scif/extr_scif_rma.c_scif_send_alloc_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mic/scif/extr_scif_rma.c_scif_send_alloc_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scif_endpt = type { i32 }
%struct.scif_window = type { %struct.scif_allocmsg, i64 }
%struct.scif_allocmsg = type { i32, i32 }
%struct.scifmsg = type { i64*, i32 }

@OP_IN_PROGRESS = common dso_local global i32 0, align 4
@SCIF_ALLOC_REQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scif_endpt*, %struct.scif_window*)* @scif_send_alloc_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scif_send_alloc_request(%struct.scif_endpt* %0, %struct.scif_window* %1) #0 {
  %3 = alloca %struct.scif_endpt*, align 8
  %4 = alloca %struct.scif_window*, align 8
  %5 = alloca %struct.scifmsg, align 8
  %6 = alloca %struct.scif_allocmsg*, align 8
  store %struct.scif_endpt* %0, %struct.scif_endpt** %3, align 8
  store %struct.scif_window* %1, %struct.scif_window** %4, align 8
  %7 = load %struct.scif_window*, %struct.scif_window** %4, align 8
  %8 = getelementptr inbounds %struct.scif_window, %struct.scif_window* %7, i32 0, i32 0
  store %struct.scif_allocmsg* %8, %struct.scif_allocmsg** %6, align 8
  %9 = load i32, i32* @OP_IN_PROGRESS, align 4
  %10 = load %struct.scif_allocmsg*, %struct.scif_allocmsg** %6, align 8
  %11 = getelementptr inbounds %struct.scif_allocmsg, %struct.scif_allocmsg* %10, i32 0, i32 1
  store i32 %9, i32* %11, align 4
  %12 = load %struct.scif_allocmsg*, %struct.scif_allocmsg** %6, align 8
  %13 = getelementptr inbounds %struct.scif_allocmsg, %struct.scif_allocmsg* %12, i32 0, i32 0
  %14 = call i32 @init_waitqueue_head(i32* %13)
  %15 = load i32, i32* @SCIF_ALLOC_REQ, align 4
  %16 = getelementptr inbounds %struct.scifmsg, %struct.scifmsg* %5, i32 0, i32 1
  store i32 %15, i32* %16, align 8
  %17 = load %struct.scif_window*, %struct.scif_window** %4, align 8
  %18 = getelementptr inbounds %struct.scif_window, %struct.scif_window* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.scifmsg, %struct.scifmsg* %5, i32 0, i32 0
  %21 = load i64*, i64** %20, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 1
  store i64 %19, i64* %22, align 8
  %23 = load %struct.scif_window*, %struct.scif_window** %4, align 8
  %24 = getelementptr inbounds %struct.scif_window, %struct.scif_window* %23, i32 0, i32 0
  %25 = ptrtoint %struct.scif_allocmsg* %24 to i64
  %26 = getelementptr inbounds %struct.scifmsg, %struct.scifmsg* %5, i32 0, i32 0
  %27 = load i64*, i64** %26, align 8
  %28 = getelementptr inbounds i64, i64* %27, i64 2
  store i64 %25, i64* %28, align 8
  %29 = load %struct.scif_endpt*, %struct.scif_endpt** %3, align 8
  %30 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @_scif_nodeqp_send(i32 %31, %struct.scifmsg* %5)
  ret i32 %32
}

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @_scif_nodeqp_send(i32, %struct.scifmsg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
