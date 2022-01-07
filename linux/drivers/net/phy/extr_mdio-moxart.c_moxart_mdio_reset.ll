; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_mdio-moxart.c_moxart_mdio_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_mdio-moxart.c_moxart_mdio_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_bus = type { i32 }

@PHY_MAX_ADDR = common dso_local global i32 0, align 4
@MII_BMCR = common dso_local global i32 0, align 4
@BMCR_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mii_bus*)* @moxart_mdio_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @moxart_mdio_reset(%struct.mii_bus* %0) #0 {
  %2 = alloca %struct.mii_bus*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.mii_bus* %0, %struct.mii_bus** %2, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %29, %1
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @PHY_MAX_ADDR, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %32

9:                                                ; preds = %5
  %10 = load %struct.mii_bus*, %struct.mii_bus** %2, align 8
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @MII_BMCR, align 4
  %13 = call i32 @moxart_mdio_read(%struct.mii_bus* %10, i32 %11, i32 %12)
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %9
  br label %29

17:                                               ; preds = %9
  %18 = load i32, i32* @BMCR_RESET, align 4
  %19 = load i32, i32* %3, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %3, align 4
  %21 = load %struct.mii_bus*, %struct.mii_bus** %2, align 8
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @MII_BMCR, align 4
  %24 = load i32, i32* %3, align 4
  %25 = call i64 @moxart_mdio_write(%struct.mii_bus* %21, i32 %22, i32 %23, i32 %24)
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %17
  br label %29

28:                                               ; preds = %17
  br label %29

29:                                               ; preds = %28, %27, %16
  %30 = load i32, i32* %4, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %4, align 4
  br label %5

32:                                               ; preds = %5
  ret i32 0
}

declare dso_local i32 @moxart_mdio_read(%struct.mii_bus*, i32, i32) #1

declare dso_local i64 @moxart_mdio_write(%struct.mii_bus*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
