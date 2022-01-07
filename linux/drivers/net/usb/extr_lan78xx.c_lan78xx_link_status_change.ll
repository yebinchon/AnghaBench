; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_lan78xx.c_lan78xx_link_status_change.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_lan78xx.c_lan78xx_link_status_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.phy_device* }
%struct.phy_device = type { i32, i32 }

@LAN88XX_INT_MASK = common dso_local global i32 0, align 4
@LAN88XX_INT_MASK_MDINTPIN_EN_ = common dso_local global i32 0, align 4
@MII_BMCR = common dso_local global i32 0, align 4
@BMCR_SPEED100 = common dso_local global i32 0, align 4
@BMCR_SPEED1000 = common dso_local global i32 0, align 4
@LAN88XX_INT_STS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @lan78xx_link_status_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lan78xx_link_status_change(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.phy_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = getelementptr inbounds %struct.net_device, %struct.net_device* %6, i32 0, i32 0
  %8 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  store %struct.phy_device* %8, %struct.phy_device** %3, align 8
  %9 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %10 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %63, label %13

13:                                               ; preds = %1
  %14 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %15 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %16, 100
  br i1 %17, label %18, label %63

18:                                               ; preds = %13
  %19 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %20 = load i32, i32* @LAN88XX_INT_MASK, align 4
  %21 = call i32 @phy_read(%struct.phy_device* %19, i32 %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* @LAN88XX_INT_MASK_MDINTPIN_EN_, align 4
  %23 = xor i32 %22, -1
  %24 = load i32, i32* %5, align 4
  %25 = and i32 %24, %23
  store i32 %25, i32* %5, align 4
  %26 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %27 = load i32, i32* @LAN88XX_INT_MASK, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @phy_write(%struct.phy_device* %26, i32 %27, i32 %28)
  store i32 %29, i32* %4, align 4
  %30 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %31 = load i32, i32* @MII_BMCR, align 4
  %32 = call i32 @phy_read(%struct.phy_device* %30, i32 %31)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* @BMCR_SPEED100, align 4
  %34 = load i32, i32* @BMCR_SPEED1000, align 4
  %35 = or i32 %33, %34
  %36 = xor i32 %35, -1
  %37 = load i32, i32* %5, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %5, align 4
  %39 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %40 = load i32, i32* @MII_BMCR, align 4
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @phy_write(%struct.phy_device* %39, i32 %40, i32 %41)
  %43 = load i32, i32* @BMCR_SPEED100, align 4
  %44 = load i32, i32* %5, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %5, align 4
  %46 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %47 = load i32, i32* @MII_BMCR, align 4
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @phy_write(%struct.phy_device* %46, i32 %47, i32 %48)
  %50 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %51 = load i32, i32* @LAN88XX_INT_STS, align 4
  %52 = call i32 @phy_read(%struct.phy_device* %50, i32 %51)
  store i32 %52, i32* %5, align 4
  %53 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %54 = load i32, i32* @LAN88XX_INT_MASK, align 4
  %55 = call i32 @phy_read(%struct.phy_device* %53, i32 %54)
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* @LAN88XX_INT_MASK_MDINTPIN_EN_, align 4
  %57 = load i32, i32* %5, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %5, align 4
  %59 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %60 = load i32, i32* @LAN88XX_INT_MASK, align 4
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @phy_write(%struct.phy_device* %59, i32 %60, i32 %61)
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %18, %13, %1
  ret void
}

declare dso_local i32 @phy_read(%struct.phy_device*, i32) #1

declare dso_local i32 @phy_write(%struct.phy_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
