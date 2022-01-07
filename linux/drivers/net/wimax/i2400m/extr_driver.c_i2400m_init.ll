; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wimax/i2400m/extr_driver.c_i2400m_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wimax/i2400m/extr_driver.c_i2400m_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2400m = type { i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i8*, i8*, i32, i32, i32 }

@UINT_MAX = common dso_local global i8* null, align 8
@i2400m_report_hook_work = common dso_local global i32 0, align 4
@__i2400m_dev_reset_handle = common dso_local global i32 0, align 4
@__i2400m_error_recovery = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i2400m_init(%struct.i2400m* %0) #0 {
  %2 = alloca %struct.i2400m*, align 8
  store %struct.i2400m* %0, %struct.i2400m** %2, align 8
  %3 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %4 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %3, i32 0, i32 19
  %5 = call i32 @wimax_dev_init(i32* %4)
  %6 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %7 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %6, i32 0, i32 0
  store i32 1, i32* %7, align 8
  %8 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %9 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %8, i32 0, i32 1
  store i32 1, i32* %9, align 4
  %10 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %11 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %10, i32 0, i32 18
  %12 = call i32 @init_waitqueue_head(i32* %11)
  %13 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %14 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %13, i32 0, i32 17
  %15 = call i32 @spin_lock_init(i32* %14)
  %16 = load i8*, i8** @UINT_MAX, align 8
  %17 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %18 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %17, i32 0, i32 16
  store i8* %16, i8** %18, align 8
  %19 = load i8*, i8** @UINT_MAX, align 8
  %20 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %21 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %20, i32 0, i32 15
  store i8* %19, i8** %21, align 8
  %22 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %23 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %22, i32 0, i32 14
  %24 = call i32 @spin_lock_init(i32* %23)
  %25 = load i8*, i8** @UINT_MAX, align 8
  %26 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %27 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %26, i32 0, i32 13
  store i8* %25, i8** %27, align 8
  %28 = load i8*, i8** @UINT_MAX, align 8
  %29 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %30 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %29, i32 0, i32 12
  store i8* %28, i8** %30, align 8
  %31 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %32 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %31, i32 0, i32 11
  %33 = call i32 @INIT_LIST_HEAD(i32* %32)
  %34 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %35 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %34, i32 0, i32 10
  %36 = load i32, i32* @i2400m_report_hook_work, align 4
  %37 = call i32 @INIT_WORK(i32* %35, i32 %36)
  %38 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %39 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %38, i32 0, i32 9
  %40 = call i32 @mutex_init(i32* %39)
  %41 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %42 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %41, i32 0, i32 8
  %43 = call i32 @init_completion(i32* %42)
  %44 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %45 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %44, i32 0, i32 7
  %46 = call i32 @mutex_init(i32* %45)
  %47 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %48 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %47, i32 0, i32 6
  %49 = load i32, i32* @__i2400m_dev_reset_handle, align 4
  %50 = call i32 @INIT_WORK(i32* %48, i32 %49)
  %51 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %52 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %51, i32 0, i32 5
  %53 = load i32, i32* @__i2400m_error_recovery, align 4
  %54 = call i32 @INIT_WORK(i32* %52, i32 %53)
  %55 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %56 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %55, i32 0, i32 4
  %57 = call i32 @atomic_set(i32* %56, i32 0)
  %58 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %59 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %58, i32 0, i32 3
  store i64 0, i64* %59, align 8
  %60 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %61 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %60, i32 0, i32 2
  %62 = call i32 @atomic_set(i32* %61, i32 1)
  ret void
}

declare dso_local i32 @wimax_dev_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
