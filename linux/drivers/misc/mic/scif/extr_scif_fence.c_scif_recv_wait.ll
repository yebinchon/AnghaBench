; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mic/scif/extr_scif_fence.c_scif_recv_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mic/scif/extr_scif_fence.c_scif_recv_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.scif_dev = type { i32 }
%struct.scifmsg = type { i32, i64* }
%struct.scif_endpt = type { %struct.TYPE_3__, i32, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.scif_remote_fence_info = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@SCIF_WAIT_NACK = common dso_local global i32 0, align 4
@scif_info = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scif_recv_wait(%struct.scif_dev* %0, %struct.scifmsg* %1) #0 {
  %3 = alloca %struct.scif_dev*, align 8
  %4 = alloca %struct.scifmsg*, align 8
  %5 = alloca %struct.scif_endpt*, align 8
  %6 = alloca %struct.scif_remote_fence_info*, align 8
  store %struct.scif_dev* %0, %struct.scif_dev** %3, align 8
  store %struct.scifmsg* %1, %struct.scifmsg** %4, align 8
  %7 = load %struct.scifmsg*, %struct.scifmsg** %4, align 8
  %8 = getelementptr inbounds %struct.scifmsg, %struct.scifmsg* %7, i32 0, i32 1
  %9 = load i64*, i64** %8, align 8
  %10 = getelementptr inbounds i64, i64* %9, i64 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.scif_endpt*
  store %struct.scif_endpt* %12, %struct.scif_endpt** %5, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.scif_remote_fence_info* @kmalloc(i32 8, i32 %13)
  store %struct.scif_remote_fence_info* %14, %struct.scif_remote_fence_info** %6, align 8
  %15 = load %struct.scif_remote_fence_info*, %struct.scif_remote_fence_info** %6, align 8
  %16 = icmp ne %struct.scif_remote_fence_info* %15, null
  br i1 %16, label %33, label %17

17:                                               ; preds = %2
  %18 = load %struct.scif_endpt*, %struct.scif_endpt** %5, align 8
  %19 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.scifmsg*, %struct.scifmsg** %4, align 8
  %22 = getelementptr inbounds %struct.scifmsg, %struct.scifmsg* %21, i32 0, i32 1
  %23 = load i64*, i64** %22, align 8
  %24 = getelementptr inbounds i64, i64* %23, i64 0
  store i64 %20, i64* %24, align 8
  %25 = load i32, i32* @SCIF_WAIT_NACK, align 4
  %26 = load %struct.scifmsg*, %struct.scifmsg** %4, align 8
  %27 = getelementptr inbounds %struct.scifmsg, %struct.scifmsg* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load %struct.scif_endpt*, %struct.scif_endpt** %5, align 8
  %29 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.scifmsg*, %struct.scifmsg** %4, align 8
  %32 = call i32 @scif_nodeqp_send(i32 %30, %struct.scifmsg* %31)
  br label %51

33:                                               ; preds = %2
  %34 = load %struct.scif_remote_fence_info*, %struct.scif_remote_fence_info** %6, align 8
  %35 = getelementptr inbounds %struct.scif_remote_fence_info, %struct.scif_remote_fence_info* %34, i32 0, i32 1
  %36 = load %struct.scifmsg*, %struct.scifmsg** %4, align 8
  %37 = call i32 @memcpy(i32* %35, %struct.scifmsg* %36, i32 16)
  %38 = load %struct.scif_remote_fence_info*, %struct.scif_remote_fence_info** %6, align 8
  %39 = getelementptr inbounds %struct.scif_remote_fence_info, %struct.scif_remote_fence_info* %38, i32 0, i32 0
  %40 = call i32 @INIT_LIST_HEAD(i32* %39)
  %41 = call i32 @mutex_lock(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @scif_info, i32 0, i32 1))
  %42 = load %struct.scif_endpt*, %struct.scif_endpt** %5, align 8
  %43 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = call i32 @atomic_inc(i32* %44)
  %46 = load %struct.scif_remote_fence_info*, %struct.scif_remote_fence_info** %6, align 8
  %47 = getelementptr inbounds %struct.scif_remote_fence_info, %struct.scif_remote_fence_info* %46, i32 0, i32 0
  %48 = call i32 @list_add_tail(i32* %47, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @scif_info, i32 0, i32 2))
  %49 = call i32 @mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @scif_info, i32 0, i32 1))
  %50 = call i32 @schedule_work(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @scif_info, i32 0, i32 0))
  br label %51

51:                                               ; preds = %33, %17
  ret void
}

declare dso_local %struct.scif_remote_fence_info* @kmalloc(i32, i32) #1

declare dso_local i32 @scif_nodeqp_send(i32, %struct.scifmsg*) #1

declare dso_local i32 @memcpy(i32*, %struct.scifmsg*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
