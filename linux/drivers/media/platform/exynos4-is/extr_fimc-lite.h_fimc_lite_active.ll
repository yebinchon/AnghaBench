; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-lite.h_fimc_lite_active.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-lite.h_fimc_lite_active.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fimc_lite = type { i32, i32 }

@ST_FLITE_RUN = common dso_local global i32 0, align 4
@ST_FLITE_PENDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fimc_lite*)* @fimc_lite_active to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fimc_lite_active(%struct.fimc_lite* %0) #0 {
  %2 = alloca %struct.fimc_lite*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.fimc_lite* %0, %struct.fimc_lite** %2, align 8
  %5 = load %struct.fimc_lite*, %struct.fimc_lite** %2, align 8
  %6 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %5, i32 0, i32 1
  %7 = load i64, i64* %3, align 8
  %8 = call i32 @spin_lock_irqsave(i32* %6, i64 %7)
  %9 = load %struct.fimc_lite*, %struct.fimc_lite** %2, align 8
  %10 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @ST_FLITE_RUN, align 4
  %13 = shl i32 1, %12
  %14 = and i32 %11, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %24, label %16

16:                                               ; preds = %1
  %17 = load %struct.fimc_lite*, %struct.fimc_lite** %2, align 8
  %18 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @ST_FLITE_PENDING, align 4
  %21 = shl i32 1, %20
  %22 = and i32 %19, %21
  %23 = icmp ne i32 %22, 0
  br label %24

24:                                               ; preds = %16, %1
  %25 = phi i1 [ true, %1 ], [ %23, %16 ]
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %4, align 4
  %27 = load %struct.fimc_lite*, %struct.fimc_lite** %2, align 8
  %28 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %27, i32 0, i32 1
  %29 = load i64, i64* %3, align 8
  %30 = call i32 @spin_unlock_irqrestore(i32* %28, i64 %29)
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
