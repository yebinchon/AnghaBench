; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smsc911x.c_smsc911x_phy_enable_external.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smsc911x.c_smsc911x_phy_enable_external.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smsc911x_data = type { i32 }

@HW_CFG = common dso_local global i32 0, align 4
@HW_CFG_PHY_CLK_SEL_ = common dso_local global i32 0, align 4
@HW_CFG_PHY_CLK_SEL_CLK_DIS_ = common dso_local global i32 0, align 4
@HW_CFG_EXT_PHY_EN_ = common dso_local global i32 0, align 4
@HW_CFG_PHY_CLK_SEL_EXT_PHY_ = common dso_local global i32 0, align 4
@HW_CFG_SMI_SEL_ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.smsc911x_data*)* @smsc911x_phy_enable_external to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smsc911x_phy_enable_external(%struct.smsc911x_data* %0) #0 {
  %2 = alloca %struct.smsc911x_data*, align 8
  %3 = alloca i32, align 4
  store %struct.smsc911x_data* %0, %struct.smsc911x_data** %2, align 8
  %4 = load %struct.smsc911x_data*, %struct.smsc911x_data** %2, align 8
  %5 = load i32, i32* @HW_CFG, align 4
  %6 = call i32 @smsc911x_reg_read(%struct.smsc911x_data* %4, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* @HW_CFG_PHY_CLK_SEL_, align 4
  %8 = xor i32 %7, -1
  %9 = load i32, i32* %3, align 4
  %10 = and i32 %9, %8
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* @HW_CFG_PHY_CLK_SEL_CLK_DIS_, align 4
  %12 = load i32, i32* %3, align 4
  %13 = or i32 %12, %11
  store i32 %13, i32* %3, align 4
  %14 = load %struct.smsc911x_data*, %struct.smsc911x_data** %2, align 8
  %15 = load i32, i32* @HW_CFG, align 4
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @smsc911x_reg_write(%struct.smsc911x_data* %14, i32 %15, i32 %16)
  %18 = call i32 @udelay(i32 10)
  %19 = load i32, i32* @HW_CFG_EXT_PHY_EN_, align 4
  %20 = load i32, i32* %3, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %3, align 4
  %22 = load %struct.smsc911x_data*, %struct.smsc911x_data** %2, align 8
  %23 = load i32, i32* @HW_CFG, align 4
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @smsc911x_reg_write(%struct.smsc911x_data* %22, i32 %23, i32 %24)
  %26 = load i32, i32* @HW_CFG_PHY_CLK_SEL_, align 4
  %27 = xor i32 %26, -1
  %28 = load i32, i32* %3, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %3, align 4
  %30 = load i32, i32* @HW_CFG_PHY_CLK_SEL_EXT_PHY_, align 4
  %31 = load i32, i32* %3, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %3, align 4
  %33 = load %struct.smsc911x_data*, %struct.smsc911x_data** %2, align 8
  %34 = load i32, i32* @HW_CFG, align 4
  %35 = load i32, i32* %3, align 4
  %36 = call i32 @smsc911x_reg_write(%struct.smsc911x_data* %33, i32 %34, i32 %35)
  %37 = call i32 @udelay(i32 10)
  %38 = load i32, i32* @HW_CFG_SMI_SEL_, align 4
  %39 = load i32, i32* %3, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %3, align 4
  %41 = load %struct.smsc911x_data*, %struct.smsc911x_data** %2, align 8
  %42 = load i32, i32* @HW_CFG, align 4
  %43 = load i32, i32* %3, align 4
  %44 = call i32 @smsc911x_reg_write(%struct.smsc911x_data* %41, i32 %42, i32 %43)
  ret void
}

declare dso_local i32 @smsc911x_reg_read(%struct.smsc911x_data*, i32) #1

declare dso_local i32 @smsc911x_reg_write(%struct.smsc911x_data*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
