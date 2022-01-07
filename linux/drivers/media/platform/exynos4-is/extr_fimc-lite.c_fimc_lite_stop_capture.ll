; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-lite.c_fimc_lite_stop_capture.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-lite.c_fimc_lite_stop_capture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fimc_lite = type { i32, i32, i32 }

@ST_FLITE_OFF = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fimc_lite*, i32)* @fimc_lite_stop_capture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fimc_lite_stop_capture(%struct.fimc_lite* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fimc_lite*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.fimc_lite* %0, %struct.fimc_lite** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.fimc_lite*, %struct.fimc_lite** %4, align 8
  %8 = call i32 @fimc_lite_active(%struct.fimc_lite* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %43

11:                                               ; preds = %2
  %12 = load %struct.fimc_lite*, %struct.fimc_lite** %4, align 8
  %13 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %12, i32 0, i32 2
  %14 = load i64, i64* %6, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load i32, i32* @ST_FLITE_OFF, align 4
  %17 = load %struct.fimc_lite*, %struct.fimc_lite** %4, align 8
  %18 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %17, i32 0, i32 0
  %19 = call i32 @set_bit(i32 %16, i32* %18)
  %20 = load %struct.fimc_lite*, %struct.fimc_lite** %4, align 8
  %21 = call i32 @flite_hw_capture_stop(%struct.fimc_lite* %20)
  %22 = load %struct.fimc_lite*, %struct.fimc_lite** %4, align 8
  %23 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %22, i32 0, i32 2
  %24 = load i64, i64* %6, align 8
  %25 = call i32 @spin_unlock_irqrestore(i32* %23, i64 %24)
  %26 = load %struct.fimc_lite*, %struct.fimc_lite** %4, align 8
  %27 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @ST_FLITE_OFF, align 4
  %30 = load %struct.fimc_lite*, %struct.fimc_lite** %4, align 8
  %31 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %30, i32 0, i32 0
  %32 = call i32 @test_bit(i32 %29, i32* %31)
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = load i32, i32* @HZ, align 4
  %37 = mul nsw i32 2, %36
  %38 = sdiv i32 %37, 10
  %39 = call i32 @wait_event_timeout(i32 %28, i32 %35, i32 %38)
  %40 = load %struct.fimc_lite*, %struct.fimc_lite** %4, align 8
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @fimc_lite_reinit(%struct.fimc_lite* %40, i32 %41)
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %11, %10
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @fimc_lite_active(%struct.fimc_lite*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @flite_hw_capture_stop(%struct.fimc_lite*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @fimc_lite_reinit(%struct.fimc_lite*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
