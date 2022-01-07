; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb/extr_pm3393.c_pm3393_interrupt_clear.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb/extr_pm3393.c_pm3393_interrupt_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmac = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@SUNI1x10GEXP_REG_SERDES_3125_INTERRUPT_STATUS = common dso_local global i32 0, align 4
@SUNI1x10GEXP_REG_XRF_INTERRUPT_STATUS = common dso_local global i32 0, align 4
@SUNI1x10GEXP_REG_XRF_DIAG_INTERRUPT_STATUS = common dso_local global i32 0, align 4
@SUNI1x10GEXP_REG_RXOAM_INTERRUPT_STATUS = common dso_local global i32 0, align 4
@SUNI1x10GEXP_REG_PL4ODP_INTERRUPT = common dso_local global i32 0, align 4
@SUNI1x10GEXP_REG_XTEF_INTERRUPT_STATUS = common dso_local global i32 0, align 4
@SUNI1x10GEXP_REG_IFLX_FIFO_OVERFLOW_INTERRUPT = common dso_local global i32 0, align 4
@SUNI1x10GEXP_REG_TXOAM_INTERRUPT_STATUS = common dso_local global i32 0, align 4
@SUNI1x10GEXP_REG_RXXG_INTERRUPT = common dso_local global i32 0, align 4
@SUNI1x10GEXP_REG_TXXG_INTERRUPT = common dso_local global i32 0, align 4
@SUNI1x10GEXP_REG_PL4IDU_INTERRUPT = common dso_local global i32 0, align 4
@SUNI1x10GEXP_REG_EFLX_FIFO_OVERFLOW_ERROR_INDICATION = common dso_local global i32 0, align 4
@SUNI1x10GEXP_REG_PL4IO_LOCK_DETECT_STATUS = common dso_local global i32 0, align 4
@SUNI1x10GEXP_REG_PL4IO_LOCK_DETECT_CHANGE = common dso_local global i32 0, align 4
@SUNI1x10GEXP_REG_MASTER_INTERRUPT_STATUS = common dso_local global i32 0, align 4
@A_ELMER0_INT_CAUSE = common dso_local global i32 0, align 4
@ELMER0_GP_BIT1 = common dso_local global i32 0, align 4
@A_PL_CAUSE = common dso_local global i64 0, align 8
@F_PL_INTR_EXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cmac*)* @pm3393_interrupt_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm3393_interrupt_clear(%struct.cmac* %0) #0 {
  %2 = alloca %struct.cmac*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.cmac* %0, %struct.cmac** %2, align 8
  %6 = load %struct.cmac*, %struct.cmac** %2, align 8
  %7 = load i32, i32* @SUNI1x10GEXP_REG_SERDES_3125_INTERRUPT_STATUS, align 4
  %8 = call i32 @pmread(%struct.cmac* %6, i32 %7, i32* %5)
  %9 = load %struct.cmac*, %struct.cmac** %2, align 8
  %10 = load i32, i32* @SUNI1x10GEXP_REG_XRF_INTERRUPT_STATUS, align 4
  %11 = call i32 @pmread(%struct.cmac* %9, i32 %10, i32* %5)
  %12 = load %struct.cmac*, %struct.cmac** %2, align 8
  %13 = load i32, i32* @SUNI1x10GEXP_REG_XRF_DIAG_INTERRUPT_STATUS, align 4
  %14 = call i32 @pmread(%struct.cmac* %12, i32 %13, i32* %5)
  %15 = load %struct.cmac*, %struct.cmac** %2, align 8
  %16 = load i32, i32* @SUNI1x10GEXP_REG_RXOAM_INTERRUPT_STATUS, align 4
  %17 = call i32 @pmread(%struct.cmac* %15, i32 %16, i32* %5)
  %18 = load %struct.cmac*, %struct.cmac** %2, align 8
  %19 = load i32, i32* @SUNI1x10GEXP_REG_PL4ODP_INTERRUPT, align 4
  %20 = call i32 @pmread(%struct.cmac* %18, i32 %19, i32* %5)
  %21 = load %struct.cmac*, %struct.cmac** %2, align 8
  %22 = load i32, i32* @SUNI1x10GEXP_REG_XTEF_INTERRUPT_STATUS, align 4
  %23 = call i32 @pmread(%struct.cmac* %21, i32 %22, i32* %5)
  %24 = load %struct.cmac*, %struct.cmac** %2, align 8
  %25 = load i32, i32* @SUNI1x10GEXP_REG_IFLX_FIFO_OVERFLOW_INTERRUPT, align 4
  %26 = call i32 @pmread(%struct.cmac* %24, i32 %25, i32* %5)
  %27 = load %struct.cmac*, %struct.cmac** %2, align 8
  %28 = load i32, i32* @SUNI1x10GEXP_REG_TXOAM_INTERRUPT_STATUS, align 4
  %29 = call i32 @pmread(%struct.cmac* %27, i32 %28, i32* %5)
  %30 = load %struct.cmac*, %struct.cmac** %2, align 8
  %31 = load i32, i32* @SUNI1x10GEXP_REG_RXXG_INTERRUPT, align 4
  %32 = call i32 @pmread(%struct.cmac* %30, i32 %31, i32* %5)
  %33 = load %struct.cmac*, %struct.cmac** %2, align 8
  %34 = load i32, i32* @SUNI1x10GEXP_REG_TXXG_INTERRUPT, align 4
  %35 = call i32 @pmread(%struct.cmac* %33, i32 %34, i32* %5)
  %36 = load %struct.cmac*, %struct.cmac** %2, align 8
  %37 = load i32, i32* @SUNI1x10GEXP_REG_PL4IDU_INTERRUPT, align 4
  %38 = call i32 @pmread(%struct.cmac* %36, i32 %37, i32* %5)
  %39 = load %struct.cmac*, %struct.cmac** %2, align 8
  %40 = load i32, i32* @SUNI1x10GEXP_REG_EFLX_FIFO_OVERFLOW_ERROR_INDICATION, align 4
  %41 = call i32 @pmread(%struct.cmac* %39, i32 %40, i32* %5)
  %42 = load %struct.cmac*, %struct.cmac** %2, align 8
  %43 = load i32, i32* @SUNI1x10GEXP_REG_PL4IO_LOCK_DETECT_STATUS, align 4
  %44 = call i32 @pmread(%struct.cmac* %42, i32 %43, i32* %5)
  %45 = load %struct.cmac*, %struct.cmac** %2, align 8
  %46 = load i32, i32* @SUNI1x10GEXP_REG_PL4IO_LOCK_DETECT_CHANGE, align 4
  %47 = call i32 @pmread(%struct.cmac* %45, i32 %46, i32* %5)
  %48 = load %struct.cmac*, %struct.cmac** %2, align 8
  %49 = load i32, i32* @SUNI1x10GEXP_REG_MASTER_INTERRUPT_STATUS, align 4
  %50 = call i32 @pmread(%struct.cmac* %48, i32 %49, i32* %5)
  %51 = load %struct.cmac*, %struct.cmac** %2, align 8
  %52 = getelementptr inbounds %struct.cmac, %struct.cmac* %51, i32 0, i32 0
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = load i32, i32* @A_ELMER0_INT_CAUSE, align 4
  %55 = call i32 @t1_tpi_read(%struct.TYPE_3__* %53, i32 %54, i32* %3)
  %56 = load i32, i32* @ELMER0_GP_BIT1, align 4
  %57 = load i32, i32* %3, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %3, align 4
  %59 = load %struct.cmac*, %struct.cmac** %2, align 8
  %60 = getelementptr inbounds %struct.cmac, %struct.cmac* %59, i32 0, i32 0
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = load i32, i32* @A_ELMER0_INT_CAUSE, align 4
  %63 = load i32, i32* %3, align 4
  %64 = call i32 @t1_tpi_write(%struct.TYPE_3__* %61, i32 %62, i32 %63)
  %65 = load %struct.cmac*, %struct.cmac** %2, align 8
  %66 = getelementptr inbounds %struct.cmac, %struct.cmac* %65, i32 0, i32 0
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @A_PL_CAUSE, align 8
  %71 = add nsw i64 %69, %70
  %72 = call i32 @readl(i64 %71)
  store i32 %72, i32* %4, align 4
  %73 = load i32, i32* @F_PL_INTR_EXT, align 4
  %74 = load i32, i32* %4, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %4, align 4
  %76 = load i32, i32* %4, align 4
  %77 = load %struct.cmac*, %struct.cmac** %2, align 8
  %78 = getelementptr inbounds %struct.cmac, %struct.cmac* %77, i32 0, i32 0
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @A_PL_CAUSE, align 8
  %83 = add nsw i64 %81, %82
  %84 = call i32 @writel(i32 %76, i64 %83)
  ret i32 0
}

declare dso_local i32 @pmread(%struct.cmac*, i32, i32*) #1

declare dso_local i32 @t1_tpi_read(%struct.TYPE_3__*, i32, i32*) #1

declare dso_local i32 @t1_tpi_write(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
