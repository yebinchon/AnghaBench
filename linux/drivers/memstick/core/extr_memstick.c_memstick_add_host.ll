; ModuleID = '/home/carl/AnghaBench/linux/drivers/memstick/core/extr_memstick.c_memstick_add_host.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/memstick/core/extr_memstick.c_memstick_add_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.memstick_host = type { i32, i32 (%struct.memstick_host*, i32, i32)*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@memstick_host_lock = common dso_local global i32 0, align 4
@memstick_host_idr = common dso_local global i32 0, align 4
@GFP_NOWAIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"memstick%u\00", align 1
@MEMSTICK_POWER = common dso_local global i32 0, align 4
@MEMSTICK_POWER_OFF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @memstick_add_host(%struct.memstick_host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.memstick_host*, align 8
  %4 = alloca i32, align 4
  store %struct.memstick_host* %0, %struct.memstick_host** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call i32 @idr_preload(i32 %5)
  %7 = call i32 @spin_lock(i32* @memstick_host_lock)
  %8 = load %struct.memstick_host*, %struct.memstick_host** %3, align 8
  %9 = load i32, i32* @GFP_NOWAIT, align 4
  %10 = call i32 @idr_alloc(i32* @memstick_host_idr, %struct.memstick_host* %8, i32 0, i32 0, i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp sge i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.memstick_host*, %struct.memstick_host** %3, align 8
  %16 = getelementptr inbounds %struct.memstick_host, %struct.memstick_host* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  br label %17

17:                                               ; preds = %13, %1
  %18 = call i32 @spin_unlock(i32* @memstick_host_lock)
  %19 = call i32 (...) @idr_preload_end()
  %20 = load i32, i32* %4, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32, i32* %4, align 4
  store i32 %23, i32* %2, align 4
  br label %54

24:                                               ; preds = %17
  %25 = load %struct.memstick_host*, %struct.memstick_host** %3, align 8
  %26 = getelementptr inbounds %struct.memstick_host, %struct.memstick_host* %25, i32 0, i32 2
  %27 = load %struct.memstick_host*, %struct.memstick_host** %3, align 8
  %28 = getelementptr inbounds %struct.memstick_host, %struct.memstick_host* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @dev_set_name(i32* %26, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load %struct.memstick_host*, %struct.memstick_host** %3, align 8
  %32 = getelementptr inbounds %struct.memstick_host, %struct.memstick_host* %31, i32 0, i32 2
  %33 = call i32 @device_add(i32* %32)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %24
  %37 = call i32 @spin_lock(i32* @memstick_host_lock)
  %38 = load %struct.memstick_host*, %struct.memstick_host** %3, align 8
  %39 = getelementptr inbounds %struct.memstick_host, %struct.memstick_host* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @idr_remove(i32* @memstick_host_idr, i32 %40)
  %42 = call i32 @spin_unlock(i32* @memstick_host_lock)
  %43 = load i32, i32* %4, align 4
  store i32 %43, i32* %2, align 4
  br label %54

44:                                               ; preds = %24
  %45 = load %struct.memstick_host*, %struct.memstick_host** %3, align 8
  %46 = getelementptr inbounds %struct.memstick_host, %struct.memstick_host* %45, i32 0, i32 1
  %47 = load i32 (%struct.memstick_host*, i32, i32)*, i32 (%struct.memstick_host*, i32, i32)** %46, align 8
  %48 = load %struct.memstick_host*, %struct.memstick_host** %3, align 8
  %49 = load i32, i32* @MEMSTICK_POWER, align 4
  %50 = load i32, i32* @MEMSTICK_POWER_OFF, align 4
  %51 = call i32 %47(%struct.memstick_host* %48, i32 %49, i32 %50)
  %52 = load %struct.memstick_host*, %struct.memstick_host** %3, align 8
  %53 = call i32 @memstick_detect_change(%struct.memstick_host* %52)
  store i32 0, i32* %2, align 4
  br label %54

54:                                               ; preds = %44, %36, %22
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i32 @idr_preload(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @idr_alloc(i32*, %struct.memstick_host*, i32, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @idr_preload_end(...) #1

declare dso_local i32 @dev_set_name(i32*, i8*, i32) #1

declare dso_local i32 @device_add(i32*) #1

declare dso_local i32 @idr_remove(i32*, i32) #1

declare dso_local i32 @memstick_detect_change(%struct.memstick_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
