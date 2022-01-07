; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-is-regs.c_fimc_is_hw_set_param.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-is-regs.c_fimc_is_hw_set_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fimc_is = type { i64, i32, %struct.chain_config* }
%struct.chain_config = type { i32* }

@HIC_SET_PARAMETER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fimc_is_hw_set_param(%struct.fimc_is* %0) #0 {
  %2 = alloca %struct.fimc_is*, align 8
  %3 = alloca %struct.chain_config*, align 8
  %4 = alloca i32, align 4
  store %struct.fimc_is* %0, %struct.fimc_is** %2, align 8
  %5 = load %struct.fimc_is*, %struct.fimc_is** %2, align 8
  %6 = getelementptr inbounds %struct.fimc_is, %struct.fimc_is* %5, i32 0, i32 2
  %7 = load %struct.chain_config*, %struct.chain_config** %6, align 8
  %8 = load %struct.fimc_is*, %struct.fimc_is** %2, align 8
  %9 = getelementptr inbounds %struct.fimc_is, %struct.fimc_is* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = getelementptr inbounds %struct.chain_config, %struct.chain_config* %7, i64 %10
  store %struct.chain_config* %11, %struct.chain_config** %3, align 8
  %12 = load %struct.fimc_is*, %struct.fimc_is** %2, align 8
  %13 = call i32 @__get_pending_param_count(%struct.fimc_is* %12)
  store i32 %13, i32* %4, align 4
  %14 = load %struct.fimc_is*, %struct.fimc_is** %2, align 8
  %15 = call i32 @fimc_is_hw_wait_intmsr0_intmsd0(%struct.fimc_is* %14)
  %16 = load i32, i32* @HIC_SET_PARAMETER, align 4
  %17 = load %struct.fimc_is*, %struct.fimc_is** %2, align 8
  %18 = call i32 @MCUCTL_REG_ISSR(i32 0)
  %19 = call i32 @mcuctl_write(i32 %16, %struct.fimc_is* %17, i32 %18)
  %20 = load %struct.fimc_is*, %struct.fimc_is** %2, align 8
  %21 = getelementptr inbounds %struct.fimc_is, %struct.fimc_is* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.fimc_is*, %struct.fimc_is** %2, align 8
  %24 = call i32 @MCUCTL_REG_ISSR(i32 1)
  %25 = call i32 @mcuctl_write(i32 %22, %struct.fimc_is* %23, i32 %24)
  %26 = load %struct.fimc_is*, %struct.fimc_is** %2, align 8
  %27 = getelementptr inbounds %struct.fimc_is, %struct.fimc_is* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = trunc i64 %28 to i32
  %30 = load %struct.fimc_is*, %struct.fimc_is** %2, align 8
  %31 = call i32 @MCUCTL_REG_ISSR(i32 2)
  %32 = call i32 @mcuctl_write(i32 %29, %struct.fimc_is* %30, i32 %31)
  %33 = load i32, i32* %4, align 4
  %34 = load %struct.fimc_is*, %struct.fimc_is** %2, align 8
  %35 = call i32 @MCUCTL_REG_ISSR(i32 3)
  %36 = call i32 @mcuctl_write(i32 %33, %struct.fimc_is* %34, i32 %35)
  %37 = load %struct.chain_config*, %struct.chain_config** %3, align 8
  %38 = getelementptr inbounds %struct.chain_config, %struct.chain_config* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.fimc_is*, %struct.fimc_is** %2, align 8
  %43 = call i32 @MCUCTL_REG_ISSR(i32 4)
  %44 = call i32 @mcuctl_write(i32 %41, %struct.fimc_is* %42, i32 %43)
  %45 = load %struct.chain_config*, %struct.chain_config** %3, align 8
  %46 = getelementptr inbounds %struct.chain_config, %struct.chain_config* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.fimc_is*, %struct.fimc_is** %2, align 8
  %51 = call i32 @MCUCTL_REG_ISSR(i32 5)
  %52 = call i32 @mcuctl_write(i32 %49, %struct.fimc_is* %50, i32 %51)
  %53 = load %struct.fimc_is*, %struct.fimc_is** %2, align 8
  %54 = call i32 @fimc_is_hw_set_intgr0_gd0(%struct.fimc_is* %53)
  ret i32 0
}

declare dso_local i32 @__get_pending_param_count(%struct.fimc_is*) #1

declare dso_local i32 @fimc_is_hw_wait_intmsr0_intmsd0(%struct.fimc_is*) #1

declare dso_local i32 @mcuctl_write(i32, %struct.fimc_is*, i32) #1

declare dso_local i32 @MCUCTL_REG_ISSR(i32) #1

declare dso_local i32 @fimc_is_hw_set_intgr0_gd0(%struct.fimc_is*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
