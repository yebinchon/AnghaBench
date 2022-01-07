; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx25821/extr_cx25821-core.c_cx25821_registers_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx25821/extr_cx25821-core.c_cx25821_registers_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx25821_dev = type { i32 }

@DEV_CNTRL2 = common dso_local global i32 0, align 4
@PCI_INT_MSK = common dso_local global i32 0, align 4
@RDR_TLCTL0 = common dso_local global i32 0, align 4
@FLD_CFG_RCB_CK_EN = common dso_local global i32 0, align 4
@PLL_A_INT_FRAC = common dso_local global i32 0, align 4
@PLL_A_POST_STAT_BIST = common dso_local global i32 0, align 4
@PLL_B_INT_FRAC = common dso_local global i32 0, align 4
@PLL_B_POST_STAT_BIST = common dso_local global i32 0, align 4
@PLL_C_INT_FRAC = common dso_local global i32 0, align 4
@PLL_C_POST_STAT_BIST = common dso_local global i32 0, align 4
@PLL_D_INT_FRAC = common dso_local global i32 0, align 4
@PLL_D_POST_STAT_BIST = common dso_local global i32 0, align 4
@VID_CH_CLK_SEL = common dso_local global i32 0, align 4
@VID_CH_MODE_SEL = common dso_local global i32 0, align 4
@CLK_RST = common dso_local global i32 0, align 4
@FLD_USE_ALT_PLL_REF = common dso_local global i32 0, align 4
@FLD_VID_I_CLK_NOE = common dso_local global i32 0, align 4
@FLD_VID_J_CLK_NOE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cx25821_dev*)* @cx25821_registers_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cx25821_registers_init(%struct.cx25821_dev* %0) #0 {
  %2 = alloca %struct.cx25821_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.cx25821_dev* %0, %struct.cx25821_dev** %2, align 8
  %4 = load i32, i32* @DEV_CNTRL2, align 4
  %5 = call i32 @cx_write(i32 %4, i32 32)
  %6 = load i32, i32* @PCI_INT_MSK, align 4
  %7 = call i32 @cx_write(i32 %6, i32 537001983)
  %8 = load i32, i32* @RDR_TLCTL0, align 4
  %9 = call i32 @cx_read(i32 %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* @FLD_CFG_RCB_CK_EN, align 4
  %11 = xor i32 %10, -1
  %12 = load i32, i32* %3, align 4
  %13 = and i32 %12, %11
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* @RDR_TLCTL0, align 4
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @cx_write(i32 %14, i32 %15)
  %17 = load i32, i32* @PLL_A_INT_FRAC, align 4
  %18 = call i32 @cx_write(i32 %17, i32 -1744329333)
  %19 = load i32, i32* @PLL_A_POST_STAT_BIST, align 4
  %20 = call i32 @cx_write(i32 %19, i32 -2147483236)
  %21 = load i32, i32* @PLL_A_INT_FRAC, align 4
  %22 = call i32 @cx_read(i32 %21)
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* @PLL_A_INT_FRAC, align 4
  %24 = load i32, i32* %3, align 4
  %25 = and i32 %24, 2147483647
  %26 = call i32 @cx_write(i32 %23, i32 %25)
  %27 = load i32, i32* @PLL_B_INT_FRAC, align 4
  %28 = call i32 @cx_write(i32 %27, i32 -1736202129)
  %29 = load i32, i32* @PLL_B_POST_STAT_BIST, align 4
  %30 = call i32 @cx_write(i32 %29, i32 -2147483251)
  %31 = load i32, i32* @PLL_B_INT_FRAC, align 4
  %32 = call i32 @cx_read(i32 %31)
  store i32 %32, i32* %3, align 4
  %33 = load i32, i32* @PLL_B_INT_FRAC, align 4
  %34 = load i32, i32* %3, align 4
  %35 = and i32 %34, 2147483647
  %36 = call i32 @cx_write(i32 %33, i32 %35)
  %37 = load i32, i32* @PLL_C_INT_FRAC, align 4
  %38 = call i32 @cx_write(i32 %37, i32 -1767839169)
  %39 = load i32, i32* @PLL_C_POST_STAT_BIST, align 4
  %40 = call i32 @cx_write(i32 %39, i32 -2147483389)
  %41 = load i32, i32* @PLL_C_INT_FRAC, align 4
  %42 = call i32 @cx_read(i32 %41)
  store i32 %42, i32* %3, align 4
  %43 = load i32, i32* @PLL_C_INT_FRAC, align 4
  %44 = load i32, i32* %3, align 4
  %45 = and i32 %44, 2147483647
  %46 = call i32 @cx_write(i32 %43, i32 %45)
  %47 = load i32, i32* @PLL_D_INT_FRAC, align 4
  %48 = call i32 @cx_write(i32 %47, i32 -1737130149)
  %49 = load i32, i32* @PLL_D_POST_STAT_BIST, align 4
  %50 = call i32 @cx_write(i32 %49, i32 -2147483373)
  %51 = load i32, i32* @PLL_D_INT_FRAC, align 4
  %52 = call i32 @cx_read(i32 %51)
  store i32 %52, i32* %3, align 4
  %53 = load i32, i32* @PLL_D_INT_FRAC, align 4
  %54 = load i32, i32* %3, align 4
  %55 = and i32 %54, 2147483647
  %56 = call i32 @cx_write(i32 %53, i32 %55)
  %57 = load i32, i32* @VID_CH_CLK_SEL, align 4
  %58 = call i32 @cx_read(i32 %57)
  store i32 %58, i32* %3, align 4
  %59 = load i32, i32* @VID_CH_CLK_SEL, align 4
  %60 = load i32, i32* %3, align 4
  %61 = and i32 %60, 16777215
  %62 = or i32 %61, 603979776
  %63 = call i32 @cx_write(i32 %59, i32 %62)
  %64 = load i32, i32* @VID_CH_MODE_SEL, align 4
  %65 = call i32 @cx_read(i32 %64)
  store i32 %65, i32* %3, align 4
  %66 = load i32, i32* @VID_CH_MODE_SEL, align 4
  %67 = load i32, i32* %3, align 4
  %68 = and i32 %67, -512
  %69 = call i32 @cx_write(i32 %66, i32 %68)
  %70 = load i32, i32* @CLK_RST, align 4
  %71 = call i32 @cx_read(i32 %70)
  store i32 %71, i32* %3, align 4
  %72 = load i32, i32* @FLD_USE_ALT_PLL_REF, align 4
  %73 = load i32, i32* %3, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %3, align 4
  %75 = load i32, i32* @CLK_RST, align 4
  %76 = load i32, i32* %3, align 4
  %77 = load i32, i32* @FLD_VID_I_CLK_NOE, align 4
  %78 = load i32, i32* @FLD_VID_J_CLK_NOE, align 4
  %79 = or i32 %77, %78
  %80 = xor i32 %79, -1
  %81 = and i32 %76, %80
  %82 = call i32 @cx_write(i32 %75, i32 %81)
  %83 = call i32 @msleep(i32 100)
  ret void
}

declare dso_local i32 @cx_write(i32, i32) #1

declare dso_local i32 @cx_read(i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
