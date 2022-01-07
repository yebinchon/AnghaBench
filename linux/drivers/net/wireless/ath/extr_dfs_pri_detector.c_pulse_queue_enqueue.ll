; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/extr_dfs_pri_detector.c_pulse_queue_enqueue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/extr_dfs_pri_detector.c_pulse_queue_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pri_detector = type { i64, i64, i8*, i32 }
%struct.pulse_elem = type { i32, i8* }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@pulse_alloc_error = common dso_local global i32 0, align 4
@pulse_allocated = common dso_local global i32 0, align 4
@pulse_used = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pri_detector*, i8*)* @pulse_queue_enqueue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pulse_queue_enqueue(%struct.pri_detector* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pri_detector*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.pulse_elem*, align 8
  store %struct.pri_detector* %0, %struct.pri_detector** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = call %struct.pulse_elem* (...) @pool_get_pulse_elem()
  store %struct.pulse_elem* %7, %struct.pulse_elem** %6, align 8
  %8 = load %struct.pulse_elem*, %struct.pulse_elem** %6, align 8
  %9 = icmp eq %struct.pulse_elem* %8, null
  br i1 %9, label %10, label %23

10:                                               ; preds = %2
  %11 = load i32, i32* @GFP_ATOMIC, align 4
  %12 = call %struct.pulse_elem* @kmalloc(i32 16, i32 %11)
  store %struct.pulse_elem* %12, %struct.pulse_elem** %6, align 8
  %13 = load %struct.pulse_elem*, %struct.pulse_elem** %6, align 8
  %14 = icmp eq %struct.pulse_elem* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %10
  %16 = load i32, i32* @pulse_alloc_error, align 4
  %17 = call i32 @DFS_POOL_STAT_INC(i32 %16)
  store i32 0, i32* %3, align 4
  br label %55

18:                                               ; preds = %10
  %19 = load i32, i32* @pulse_allocated, align 4
  %20 = call i32 @DFS_POOL_STAT_INC(i32 %19)
  %21 = load i32, i32* @pulse_used, align 4
  %22 = call i32 @DFS_POOL_STAT_INC(i32 %21)
  br label %23

23:                                               ; preds = %18, %2
  %24 = load %struct.pulse_elem*, %struct.pulse_elem** %6, align 8
  %25 = getelementptr inbounds %struct.pulse_elem, %struct.pulse_elem* %24, i32 0, i32 0
  %26 = call i32 @INIT_LIST_HEAD(i32* %25)
  %27 = load i8*, i8** %5, align 8
  %28 = load %struct.pulse_elem*, %struct.pulse_elem** %6, align 8
  %29 = getelementptr inbounds %struct.pulse_elem, %struct.pulse_elem* %28, i32 0, i32 1
  store i8* %27, i8** %29, align 8
  %30 = load %struct.pulse_elem*, %struct.pulse_elem** %6, align 8
  %31 = getelementptr inbounds %struct.pulse_elem, %struct.pulse_elem* %30, i32 0, i32 0
  %32 = load %struct.pri_detector*, %struct.pri_detector** %4, align 8
  %33 = getelementptr inbounds %struct.pri_detector, %struct.pri_detector* %32, i32 0, i32 3
  %34 = call i32 @list_add(i32* %31, i32* %33)
  %35 = load %struct.pri_detector*, %struct.pri_detector** %4, align 8
  %36 = getelementptr inbounds %struct.pri_detector, %struct.pri_detector* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %37, 1
  store i64 %38, i64* %36, align 8
  %39 = load i8*, i8** %5, align 8
  %40 = load %struct.pri_detector*, %struct.pri_detector** %4, align 8
  %41 = getelementptr inbounds %struct.pri_detector, %struct.pri_detector* %40, i32 0, i32 2
  store i8* %39, i8** %41, align 8
  %42 = load %struct.pri_detector*, %struct.pri_detector** %4, align 8
  %43 = call i32 @pulse_queue_check_window(%struct.pri_detector* %42)
  %44 = load %struct.pri_detector*, %struct.pri_detector** %4, align 8
  %45 = getelementptr inbounds %struct.pri_detector, %struct.pri_detector* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.pri_detector*, %struct.pri_detector** %4, align 8
  %48 = getelementptr inbounds %struct.pri_detector, %struct.pri_detector* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp sge i64 %46, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %23
  %52 = load %struct.pri_detector*, %struct.pri_detector** %4, align 8
  %53 = call i32 @pulse_queue_dequeue(%struct.pri_detector* %52)
  br label %54

54:                                               ; preds = %51, %23
  store i32 1, i32* %3, align 4
  br label %55

55:                                               ; preds = %54, %15
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local %struct.pulse_elem* @pool_get_pulse_elem(...) #1

declare dso_local %struct.pulse_elem* @kmalloc(i32, i32) #1

declare dso_local i32 @DFS_POOL_STAT_INC(i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @pulse_queue_check_window(%struct.pri_detector*) #1

declare dso_local i32 @pulse_queue_dequeue(%struct.pri_detector*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
