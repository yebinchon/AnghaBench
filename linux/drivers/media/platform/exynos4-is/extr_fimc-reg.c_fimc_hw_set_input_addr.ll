; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-reg.c_fimc_hw_set_input_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-reg.c_fimc_hw_set_input_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fimc_dev = type { i64 }
%struct.fimc_addr = type { i32, i32, i32 }

@FIMC_REG_CIREAL_ISIZE = common dso_local global i64 0, align 8
@FIMC_REG_CIREAL_ISIZE_ADDR_CH_DIS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fimc_hw_set_input_addr(%struct.fimc_dev* %0, %struct.fimc_addr* %1) #0 {
  %3 = alloca %struct.fimc_dev*, align 8
  %4 = alloca %struct.fimc_addr*, align 8
  %5 = alloca i32, align 4
  store %struct.fimc_dev* %0, %struct.fimc_dev** %3, align 8
  store %struct.fimc_addr* %1, %struct.fimc_addr** %4, align 8
  %6 = load %struct.fimc_dev*, %struct.fimc_dev** %3, align 8
  %7 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @FIMC_REG_CIREAL_ISIZE, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i32 @readl(i64 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* @FIMC_REG_CIREAL_ISIZE_ADDR_CH_DIS, align 4
  %13 = load i32, i32* %5, align 4
  %14 = or i32 %13, %12
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.fimc_dev*, %struct.fimc_dev** %3, align 8
  %17 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @FIMC_REG_CIREAL_ISIZE, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @writel(i32 %15, i64 %20)
  %22 = load %struct.fimc_addr*, %struct.fimc_addr** %4, align 8
  %23 = getelementptr inbounds %struct.fimc_addr, %struct.fimc_addr* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.fimc_dev*, %struct.fimc_dev** %3, align 8
  %26 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i64 @FIMC_REG_CIIYSA(i32 0)
  %29 = add nsw i64 %27, %28
  %30 = call i32 @writel(i32 %24, i64 %29)
  %31 = load %struct.fimc_addr*, %struct.fimc_addr** %4, align 8
  %32 = getelementptr inbounds %struct.fimc_addr, %struct.fimc_addr* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.fimc_dev*, %struct.fimc_dev** %3, align 8
  %35 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i64 @FIMC_REG_CIICBSA(i32 0)
  %38 = add nsw i64 %36, %37
  %39 = call i32 @writel(i32 %33, i64 %38)
  %40 = load %struct.fimc_addr*, %struct.fimc_addr** %4, align 8
  %41 = getelementptr inbounds %struct.fimc_addr, %struct.fimc_addr* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.fimc_dev*, %struct.fimc_dev** %3, align 8
  %44 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i64 @FIMC_REG_CIICRSA(i32 0)
  %47 = add nsw i64 %45, %46
  %48 = call i32 @writel(i32 %42, i64 %47)
  %49 = load i32, i32* @FIMC_REG_CIREAL_ISIZE_ADDR_CH_DIS, align 4
  %50 = xor i32 %49, -1
  %51 = load i32, i32* %5, align 4
  %52 = and i32 %51, %50
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  %54 = load %struct.fimc_dev*, %struct.fimc_dev** %3, align 8
  %55 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @FIMC_REG_CIREAL_ISIZE, align 8
  %58 = add nsw i64 %56, %57
  %59 = call i32 @writel(i32 %53, i64 %58)
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @FIMC_REG_CIIYSA(i32) #1

declare dso_local i64 @FIMC_REG_CIICBSA(i32) #1

declare dso_local i64 @FIMC_REG_CIICRSA(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
