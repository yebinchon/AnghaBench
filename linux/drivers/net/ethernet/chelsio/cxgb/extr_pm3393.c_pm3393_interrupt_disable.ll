; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb/extr_pm3393.c_pm3393_interrupt_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb/extr_pm3393.c_pm3393_interrupt_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmac = type { i32 }

@SUNI1x10GEXP_REG_SERDES_3125_INTERRUPT_ENABLE = common dso_local global i32 0, align 4
@SUNI1x10GEXP_REG_XRF_INTERRUPT_ENABLE = common dso_local global i32 0, align 4
@SUNI1x10GEXP_REG_XRF_DIAG_INTERRUPT_ENABLE = common dso_local global i32 0, align 4
@SUNI1x10GEXP_REG_RXOAM_INTERRUPT_ENABLE = common dso_local global i32 0, align 4
@SUNI1x10GEXP_REG_MSTAT_INTERRUPT_MASK_0 = common dso_local global i32 0, align 4
@SUNI1x10GEXP_REG_MSTAT_INTERRUPT_MASK_1 = common dso_local global i32 0, align 4
@SUNI1x10GEXP_REG_MSTAT_INTERRUPT_MASK_2 = common dso_local global i32 0, align 4
@SUNI1x10GEXP_REG_MSTAT_INTERRUPT_MASK_3 = common dso_local global i32 0, align 4
@SUNI1x10GEXP_REG_IFLX_FIFO_OVERFLOW_ENABLE = common dso_local global i32 0, align 4
@SUNI1x10GEXP_REG_PL4ODP_INTERRUPT_MASK = common dso_local global i32 0, align 4
@SUNI1x10GEXP_REG_XTEF_INTERRUPT_ENABLE = common dso_local global i32 0, align 4
@SUNI1x10GEXP_REG_TXOAM_INTERRUPT_ENABLE = common dso_local global i32 0, align 4
@SUNI1x10GEXP_REG_RXXG_CONFIG_3 = common dso_local global i32 0, align 4
@SUNI1x10GEXP_REG_PL4IO_LOCK_DETECT_MASK = common dso_local global i32 0, align 4
@SUNI1x10GEXP_REG_TXXG_CONFIG_3 = common dso_local global i32 0, align 4
@SUNI1x10GEXP_REG_PL4IDU_INTERRUPT_MASK = common dso_local global i32 0, align 4
@SUNI1x10GEXP_REG_EFLX_FIFO_OVERFLOW_ERROR_ENABLE = common dso_local global i32 0, align 4
@SUNI1x10GEXP_REG_GLOBAL_INTERRUPT_ENABLE = common dso_local global i32 0, align 4
@A_ELMER0_INT_ENABLE = common dso_local global i32 0, align 4
@ELMER0_GP_BIT1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cmac*)* @pm3393_interrupt_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm3393_interrupt_disable(%struct.cmac* %0) #0 {
  %2 = alloca %struct.cmac*, align 8
  %3 = alloca i32, align 4
  store %struct.cmac* %0, %struct.cmac** %2, align 8
  %4 = load %struct.cmac*, %struct.cmac** %2, align 8
  %5 = load i32, i32* @SUNI1x10GEXP_REG_SERDES_3125_INTERRUPT_ENABLE, align 4
  %6 = call i32 @pmwrite(%struct.cmac* %4, i32 %5, i32 0)
  %7 = load %struct.cmac*, %struct.cmac** %2, align 8
  %8 = load i32, i32* @SUNI1x10GEXP_REG_XRF_INTERRUPT_ENABLE, align 4
  %9 = call i32 @pmwrite(%struct.cmac* %7, i32 %8, i32 0)
  %10 = load %struct.cmac*, %struct.cmac** %2, align 8
  %11 = load i32, i32* @SUNI1x10GEXP_REG_XRF_DIAG_INTERRUPT_ENABLE, align 4
  %12 = call i32 @pmwrite(%struct.cmac* %10, i32 %11, i32 0)
  %13 = load %struct.cmac*, %struct.cmac** %2, align 8
  %14 = load i32, i32* @SUNI1x10GEXP_REG_RXOAM_INTERRUPT_ENABLE, align 4
  %15 = call i32 @pmwrite(%struct.cmac* %13, i32 %14, i32 0)
  %16 = load %struct.cmac*, %struct.cmac** %2, align 8
  %17 = load i32, i32* @SUNI1x10GEXP_REG_MSTAT_INTERRUPT_MASK_0, align 4
  %18 = call i32 @pmwrite(%struct.cmac* %16, i32 %17, i32 0)
  %19 = load %struct.cmac*, %struct.cmac** %2, align 8
  %20 = load i32, i32* @SUNI1x10GEXP_REG_MSTAT_INTERRUPT_MASK_1, align 4
  %21 = call i32 @pmwrite(%struct.cmac* %19, i32 %20, i32 0)
  %22 = load %struct.cmac*, %struct.cmac** %2, align 8
  %23 = load i32, i32* @SUNI1x10GEXP_REG_MSTAT_INTERRUPT_MASK_2, align 4
  %24 = call i32 @pmwrite(%struct.cmac* %22, i32 %23, i32 0)
  %25 = load %struct.cmac*, %struct.cmac** %2, align 8
  %26 = load i32, i32* @SUNI1x10GEXP_REG_MSTAT_INTERRUPT_MASK_3, align 4
  %27 = call i32 @pmwrite(%struct.cmac* %25, i32 %26, i32 0)
  %28 = load %struct.cmac*, %struct.cmac** %2, align 8
  %29 = load i32, i32* @SUNI1x10GEXP_REG_IFLX_FIFO_OVERFLOW_ENABLE, align 4
  %30 = call i32 @pmwrite(%struct.cmac* %28, i32 %29, i32 0)
  %31 = load %struct.cmac*, %struct.cmac** %2, align 8
  %32 = load i32, i32* @SUNI1x10GEXP_REG_PL4ODP_INTERRUPT_MASK, align 4
  %33 = call i32 @pmwrite(%struct.cmac* %31, i32 %32, i32 0)
  %34 = load %struct.cmac*, %struct.cmac** %2, align 8
  %35 = load i32, i32* @SUNI1x10GEXP_REG_XTEF_INTERRUPT_ENABLE, align 4
  %36 = call i32 @pmwrite(%struct.cmac* %34, i32 %35, i32 0)
  %37 = load %struct.cmac*, %struct.cmac** %2, align 8
  %38 = load i32, i32* @SUNI1x10GEXP_REG_TXOAM_INTERRUPT_ENABLE, align 4
  %39 = call i32 @pmwrite(%struct.cmac* %37, i32 %38, i32 0)
  %40 = load %struct.cmac*, %struct.cmac** %2, align 8
  %41 = load i32, i32* @SUNI1x10GEXP_REG_RXXG_CONFIG_3, align 4
  %42 = call i32 @pmwrite(%struct.cmac* %40, i32 %41, i32 0)
  %43 = load %struct.cmac*, %struct.cmac** %2, align 8
  %44 = load i32, i32* @SUNI1x10GEXP_REG_PL4IO_LOCK_DETECT_MASK, align 4
  %45 = call i32 @pmwrite(%struct.cmac* %43, i32 %44, i32 0)
  %46 = load %struct.cmac*, %struct.cmac** %2, align 8
  %47 = load i32, i32* @SUNI1x10GEXP_REG_TXXG_CONFIG_3, align 4
  %48 = call i32 @pmwrite(%struct.cmac* %46, i32 %47, i32 0)
  %49 = load %struct.cmac*, %struct.cmac** %2, align 8
  %50 = load i32, i32* @SUNI1x10GEXP_REG_PL4IDU_INTERRUPT_MASK, align 4
  %51 = call i32 @pmwrite(%struct.cmac* %49, i32 %50, i32 0)
  %52 = load %struct.cmac*, %struct.cmac** %2, align 8
  %53 = load i32, i32* @SUNI1x10GEXP_REG_EFLX_FIFO_OVERFLOW_ERROR_ENABLE, align 4
  %54 = call i32 @pmwrite(%struct.cmac* %52, i32 %53, i32 0)
  %55 = load %struct.cmac*, %struct.cmac** %2, align 8
  %56 = load i32, i32* @SUNI1x10GEXP_REG_GLOBAL_INTERRUPT_ENABLE, align 4
  %57 = call i32 @pmwrite(%struct.cmac* %55, i32 %56, i32 0)
  %58 = load %struct.cmac*, %struct.cmac** %2, align 8
  %59 = getelementptr inbounds %struct.cmac, %struct.cmac* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @A_ELMER0_INT_ENABLE, align 4
  %62 = call i32 @t1_tpi_read(i32 %60, i32 %61, i32* %3)
  %63 = load i32, i32* @ELMER0_GP_BIT1, align 4
  %64 = xor i32 %63, -1
  %65 = load i32, i32* %3, align 4
  %66 = and i32 %65, %64
  store i32 %66, i32* %3, align 4
  %67 = load %struct.cmac*, %struct.cmac** %2, align 8
  %68 = getelementptr inbounds %struct.cmac, %struct.cmac* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @A_ELMER0_INT_ENABLE, align 4
  %71 = load i32, i32* %3, align 4
  %72 = call i32 @t1_tpi_write(i32 %69, i32 %70, i32 %71)
  ret i32 0
}

declare dso_local i32 @pmwrite(%struct.cmac*, i32, i32) #1

declare dso_local i32 @t1_tpi_read(i32, i32, i32*) #1

declare dso_local i32 @t1_tpi_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
