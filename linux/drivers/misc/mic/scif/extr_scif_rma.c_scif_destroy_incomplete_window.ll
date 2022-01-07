; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mic/scif/extr_scif_rma.c_scif_destroy_incomplete_window.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mic/scif/extr_scif_rma.c_scif_destroy_incomplete_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scif_endpt = type { %struct.TYPE_2__, i32, i64, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.scif_window = type { i32, %struct.scif_window*, %struct.scif_window*, i32, %struct.scif_allocmsg }
%struct.scif_allocmsg = type { i64, i64, i32 }
%struct.scifmsg = type { i64*, i32, i32 }

@OP_IN_PROGRESS = common dso_local global i64 0, align 8
@SCIF_NODE_ALIVE_TIMEOUT = common dso_local global i32 0, align 4
@OP_COMPLETED = common dso_local global i64 0, align 8
@SCIF_FREE_VIRT = common dso_local global i32 0, align 4
@SCIF_REGISTER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scif_endpt*, %struct.scif_window*)* @scif_destroy_incomplete_window to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scif_destroy_incomplete_window(%struct.scif_endpt* %0, %struct.scif_window* %1) #0 {
  %3 = alloca %struct.scif_endpt*, align 8
  %4 = alloca %struct.scif_window*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.scif_allocmsg*, align 8
  %8 = alloca %struct.scifmsg, align 8
  store %struct.scif_endpt* %0, %struct.scif_endpt** %3, align 8
  store %struct.scif_window* %1, %struct.scif_window** %4, align 8
  %9 = load %struct.scif_window*, %struct.scif_window** %4, align 8
  %10 = getelementptr inbounds %struct.scif_window, %struct.scif_window* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %6, align 4
  %12 = load %struct.scif_window*, %struct.scif_window** %4, align 8
  %13 = getelementptr inbounds %struct.scif_window, %struct.scif_window* %12, i32 0, i32 4
  store %struct.scif_allocmsg* %13, %struct.scif_allocmsg** %7, align 8
  br label %14

14:                                               ; preds = %32, %2
  %15 = load %struct.scif_allocmsg*, %struct.scif_allocmsg** %7, align 8
  %16 = getelementptr inbounds %struct.scif_allocmsg, %struct.scif_allocmsg* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.scif_allocmsg*, %struct.scif_allocmsg** %7, align 8
  %19 = getelementptr inbounds %struct.scif_allocmsg, %struct.scif_allocmsg* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @OP_IN_PROGRESS, align 8
  %22 = icmp ne i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = load i32, i32* @SCIF_NODE_ALIVE_TIMEOUT, align 4
  %25 = call i32 @wait_event_timeout(i32 %17, i32 %23, i32 %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %14
  %29 = load %struct.scif_endpt*, %struct.scif_endpt** %3, align 8
  %30 = call i64 @scifdev_alive(%struct.scif_endpt* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  br label %14

33:                                               ; preds = %28, %14
  %34 = load %struct.scif_endpt*, %struct.scif_endpt** %3, align 8
  %35 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = call i32 @mutex_lock(i32* %36)
  %38 = load %struct.scif_allocmsg*, %struct.scif_allocmsg** %7, align 8
  %39 = getelementptr inbounds %struct.scif_allocmsg, %struct.scif_allocmsg* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @OP_COMPLETED, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %76

43:                                               ; preds = %33
  %44 = load i32, i32* @SCIF_FREE_VIRT, align 4
  %45 = getelementptr inbounds %struct.scifmsg, %struct.scifmsg* %8, i32 0, i32 2
  store i32 %44, i32* %45, align 4
  %46 = load %struct.scif_endpt*, %struct.scif_endpt** %3, align 8
  %47 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = getelementptr inbounds %struct.scifmsg, %struct.scifmsg* %8, i32 0, i32 1
  store i32 %48, i32* %49, align 8
  %50 = load %struct.scif_endpt*, %struct.scif_endpt** %3, align 8
  %51 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds %struct.scifmsg, %struct.scifmsg* %8, i32 0, i32 0
  %54 = load i64*, i64** %53, align 8
  %55 = getelementptr inbounds i64, i64* %54, i64 0
  store i64 %52, i64* %55, align 8
  %56 = load %struct.scif_window*, %struct.scif_window** %4, align 8
  %57 = getelementptr inbounds %struct.scif_window, %struct.scif_window* %56, i32 0, i32 4
  %58 = getelementptr inbounds %struct.scif_allocmsg, %struct.scif_allocmsg* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds %struct.scifmsg, %struct.scifmsg* %8, i32 0, i32 0
  %61 = load i64*, i64** %60, align 8
  %62 = getelementptr inbounds i64, i64* %61, i64 1
  store i64 %59, i64* %62, align 8
  %63 = load %struct.scif_window*, %struct.scif_window** %4, align 8
  %64 = ptrtoint %struct.scif_window* %63 to i64
  %65 = getelementptr inbounds %struct.scifmsg, %struct.scifmsg* %8, i32 0, i32 0
  %66 = load i64*, i64** %65, align 8
  %67 = getelementptr inbounds i64, i64* %66, i64 2
  store i64 %64, i64* %67, align 8
  %68 = load i64, i64* @SCIF_REGISTER, align 8
  %69 = getelementptr inbounds %struct.scifmsg, %struct.scifmsg* %8, i32 0, i32 0
  %70 = load i64*, i64** %69, align 8
  %71 = getelementptr inbounds i64, i64* %70, i64 3
  store i64 %68, i64* %71, align 8
  %72 = load %struct.scif_endpt*, %struct.scif_endpt** %3, align 8
  %73 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @_scif_nodeqp_send(i32 %74, %struct.scifmsg* %8)
  br label %76

76:                                               ; preds = %43, %33
  %77 = load %struct.scif_endpt*, %struct.scif_endpt** %3, align 8
  %78 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = call i32 @mutex_unlock(i32* %79)
  %81 = load %struct.scif_endpt*, %struct.scif_endpt** %3, align 8
  %82 = load %struct.scif_window*, %struct.scif_window** %4, align 8
  %83 = load %struct.scif_window*, %struct.scif_window** %4, align 8
  %84 = getelementptr inbounds %struct.scif_window, %struct.scif_window* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @scif_free_window_offset(%struct.scif_endpt* %81, %struct.scif_window* %82, i32 %85)
  %87 = load %struct.scif_window*, %struct.scif_window** %4, align 8
  %88 = getelementptr inbounds %struct.scif_window, %struct.scif_window* %87, i32 0, i32 2
  %89 = load %struct.scif_window*, %struct.scif_window** %88, align 8
  %90 = load i32, i32* %6, align 4
  %91 = sext i32 %90 to i64
  %92 = mul i64 %91, 56
  %93 = trunc i64 %92 to i32
  %94 = call i32 @scif_free(%struct.scif_window* %89, i32 %93)
  %95 = load %struct.scif_window*, %struct.scif_window** %4, align 8
  %96 = getelementptr inbounds %struct.scif_window, %struct.scif_window* %95, i32 0, i32 1
  %97 = load %struct.scif_window*, %struct.scif_window** %96, align 8
  %98 = load i32, i32* %6, align 4
  %99 = sext i32 %98 to i64
  %100 = mul i64 %99, 56
  %101 = trunc i64 %100 to i32
  %102 = call i32 @scif_free(%struct.scif_window* %97, i32 %101)
  %103 = load %struct.scif_window*, %struct.scif_window** %4, align 8
  %104 = call i32 @scif_free(%struct.scif_window* %103, i32 56)
  ret void
}

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i64 @scifdev_alive(%struct.scif_endpt*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @_scif_nodeqp_send(i32, %struct.scifmsg*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @scif_free_window_offset(%struct.scif_endpt*, %struct.scif_window*, i32) #1

declare dso_local i32 @scif_free(%struct.scif_window*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
