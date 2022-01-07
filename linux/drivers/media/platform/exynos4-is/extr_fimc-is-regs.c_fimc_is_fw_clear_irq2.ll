; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-is-regs.c_fimc_is_fw_clear_irq2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-is-regs.c_fimc_is_fw_clear_irq2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fimc_is = type { i32 }

@MCUCTL_REG_INTSR2 = common dso_local global i32 0, align 4
@MCUCTL_REG_INTCR2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fimc_is_fw_clear_irq2(%struct.fimc_is* %0) #0 {
  %2 = alloca %struct.fimc_is*, align 8
  %3 = alloca i32, align 4
  store %struct.fimc_is* %0, %struct.fimc_is** %2, align 8
  %4 = load %struct.fimc_is*, %struct.fimc_is** %2, align 8
  %5 = load i32, i32* @MCUCTL_REG_INTSR2, align 4
  %6 = call i32 @mcuctl_read(%struct.fimc_is* %4, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load %struct.fimc_is*, %struct.fimc_is** %2, align 8
  %9 = load i32, i32* @MCUCTL_REG_INTCR2, align 4
  %10 = call i32 @mcuctl_write(i32 %7, %struct.fimc_is* %8, i32 %9)
  ret void
}

declare dso_local i32 @mcuctl_read(%struct.fimc_is*, i32) #1

declare dso_local i32 @mcuctl_write(i32, %struct.fimc_is*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
