; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/pt3/extr_pt3.c_pt3_fetch_thread.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/pt3/extr_pt3.c_pt3_fetch_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt3_adapter = type { %struct.TYPE_3__*, %struct.TYPE_4__, i8* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"PT3: [%s] started\0A\00", align 1
@NSEC_PER_MSEC = common dso_local global i32 0, align 4
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@HRTIMER_MODE_REL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"PT3: [%s] exited\0A\00", align 1
@PT3_FETCH_DELAY = common dso_local global i32 0, align 4
@PT3_FETCH_DELAY_DELTA = common dso_local global i32 0, align 4
@PT3_INITIAL_BUF_DROPS = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @pt3_fetch_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pt3_fetch_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.pt3_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.pt3_adapter*
  store %struct.pt3_adapter* %7, %struct.pt3_adapter** %3, align 8
  %8 = load %struct.pt3_adapter*, %struct.pt3_adapter** %3, align 8
  %9 = call i32 @pt3_init_dmabuf(%struct.pt3_adapter* %8)
  %10 = load %struct.pt3_adapter*, %struct.pt3_adapter** %3, align 8
  %11 = getelementptr inbounds %struct.pt3_adapter, %struct.pt3_adapter* %10, i32 0, i32 2
  store i8* inttoptr (i64 4 to i8*), i8** %11, align 8
  %12 = load %struct.pt3_adapter*, %struct.pt3_adapter** %3, align 8
  %13 = getelementptr inbounds %struct.pt3_adapter, %struct.pt3_adapter* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.pt3_adapter*, %struct.pt3_adapter** %3, align 8
  %17 = getelementptr inbounds %struct.pt3_adapter, %struct.pt3_adapter* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @dev_dbg(i32 %15, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = call i32 (...) @set_freezable()
  br label %23

23:                                               ; preds = %33, %1
  %24 = call i32 @kthread_freezable_should_stop(i32* %5)
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  br i1 %26, label %27, label %45

27:                                               ; preds = %23
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load %struct.pt3_adapter*, %struct.pt3_adapter** %3, align 8
  %32 = getelementptr inbounds %struct.pt3_adapter, %struct.pt3_adapter* %31, i32 0, i32 2
  store i8* inttoptr (i64 4 to i8*), i8** %32, align 8
  br label %33

33:                                               ; preds = %30, %27
  %34 = load %struct.pt3_adapter*, %struct.pt3_adapter** %3, align 8
  %35 = call i32 @pt3_proc_dma(%struct.pt3_adapter* %34)
  %36 = load i32, i32* @NSEC_PER_MSEC, align 4
  %37 = mul nsw i32 10, %36
  %38 = call i32 @ktime_set(i32 0, i32 %37)
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %40 = call i32 @set_current_state(i32 %39)
  %41 = load i32, i32* @NSEC_PER_MSEC, align 4
  %42 = mul nsw i32 2, %41
  %43 = load i32, i32* @HRTIMER_MODE_REL, align 4
  %44 = call i32 @freezable_schedule_hrtimeout_range(i32* %4, i32 %42, i32 %43)
  br label %23

45:                                               ; preds = %23
  %46 = load %struct.pt3_adapter*, %struct.pt3_adapter** %3, align 8
  %47 = getelementptr inbounds %struct.pt3_adapter, %struct.pt3_adapter* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.pt3_adapter*, %struct.pt3_adapter** %3, align 8
  %51 = getelementptr inbounds %struct.pt3_adapter, %struct.pt3_adapter* %50, i32 0, i32 0
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @dev_dbg(i32 %49, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  ret i32 0
}

declare dso_local i32 @pt3_init_dmabuf(%struct.pt3_adapter*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @set_freezable(...) #1

declare dso_local i32 @kthread_freezable_should_stop(i32*) #1

declare dso_local i32 @pt3_proc_dma(%struct.pt3_adapter*) #1

declare dso_local i32 @ktime_set(i32, i32) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @freezable_schedule_hrtimeout_range(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
