; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_mdio-mscc-miim.c_mscc_miim_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_mdio-mscc-miim.c_mscc_miim_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_bus = type { %struct.mscc_miim_dev* }
%struct.mscc_miim_dev = type { i64 }

@MSCC_PHY_REG_PHY_CFG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mii_bus*)* @mscc_miim_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mscc_miim_reset(%struct.mii_bus* %0) #0 {
  %2 = alloca %struct.mii_bus*, align 8
  %3 = alloca %struct.mscc_miim_dev*, align 8
  store %struct.mii_bus* %0, %struct.mii_bus** %2, align 8
  %4 = load %struct.mii_bus*, %struct.mii_bus** %2, align 8
  %5 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %4, i32 0, i32 0
  %6 = load %struct.mscc_miim_dev*, %struct.mscc_miim_dev** %5, align 8
  store %struct.mscc_miim_dev* %6, %struct.mscc_miim_dev** %3, align 8
  %7 = load %struct.mscc_miim_dev*, %struct.mscc_miim_dev** %3, align 8
  %8 = getelementptr inbounds %struct.mscc_miim_dev, %struct.mscc_miim_dev* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %25

11:                                               ; preds = %1
  %12 = load %struct.mscc_miim_dev*, %struct.mscc_miim_dev** %3, align 8
  %13 = getelementptr inbounds %struct.mscc_miim_dev, %struct.mscc_miim_dev* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @MSCC_PHY_REG_PHY_CFG, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @writel(i32 0, i64 %16)
  %18 = load %struct.mscc_miim_dev*, %struct.mscc_miim_dev** %3, align 8
  %19 = getelementptr inbounds %struct.mscc_miim_dev, %struct.mscc_miim_dev* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @MSCC_PHY_REG_PHY_CFG, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @writel(i32 511, i64 %22)
  %24 = call i32 @mdelay(i32 500)
  br label %25

25:                                               ; preds = %11, %1
  ret i32 0
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
