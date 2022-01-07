; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_bcm7xxx.c_bcm7xxx_28nm_ephy_01_afe_config_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_bcm7xxx.c_bcm7xxx_28nm_ephy_01_afe_config_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i32 }

@MII_BCM7XXX_TEST = common dso_local global i32 0, align 4
@MII_BCM7XXX_SHD_MODE_2 = common dso_local global i32 0, align 4
@MII_BCM7XXX_SHD_2_BIAS_TRIM = common dso_local global i32 0, align 4
@MII_BCM7XXX_SHD_2_ADDR_CTRL = common dso_local global i32 0, align 4
@MII_BCM7XXX_SHD_3_TL4 = common dso_local global i32 0, align 4
@MII_BCM7XXX_SHD_2_CTRL_STAT = common dso_local global i32 0, align 4
@MII_BCM7XXX_TL4_RST_MSK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*)* @bcm7xxx_28nm_ephy_01_afe_config_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm7xxx_28nm_ephy_01_afe_config_init(%struct.phy_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy_device*, align 8
  %4 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %3, align 8
  %5 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %6 = load i32, i32* @MII_BCM7XXX_TEST, align 4
  %7 = load i32, i32* @MII_BCM7XXX_SHD_MODE_2, align 4
  %8 = call i32 @phy_set_clr_bits(%struct.phy_device* %5, i32 %6, i32 %7, i32 0)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  store i32 %12, i32* %2, align 4
  br label %63

13:                                               ; preds = %1
  %14 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %15 = load i32, i32* @MII_BCM7XXX_SHD_2_BIAS_TRIM, align 4
  %16 = call i32 @phy_write(%struct.phy_device* %14, i32 %15, i32 15328)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  br label %53

20:                                               ; preds = %13
  %21 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %22 = load i32, i32* @MII_BCM7XXX_SHD_2_ADDR_CTRL, align 4
  %23 = load i32, i32* @MII_BCM7XXX_SHD_3_TL4, align 4
  %24 = call i32 @phy_write(%struct.phy_device* %21, i32 %22, i32 %23)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  br label %53

28:                                               ; preds = %20
  %29 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %30 = load i32, i32* @MII_BCM7XXX_SHD_2_CTRL_STAT, align 4
  %31 = load i32, i32* @MII_BCM7XXX_TL4_RST_MSK, align 4
  %32 = call i32 @phy_set_clr_bits(%struct.phy_device* %29, i32 %30, i32 %31, i32 0)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  br label %53

36:                                               ; preds = %28
  %37 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %38 = load i32, i32* @MII_BCM7XXX_SHD_2_ADDR_CTRL, align 4
  %39 = load i32, i32* @MII_BCM7XXX_SHD_3_TL4, align 4
  %40 = call i32 @phy_write(%struct.phy_device* %37, i32 %38, i32 %39)
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %4, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  br label %53

44:                                               ; preds = %36
  %45 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %46 = load i32, i32* @MII_BCM7XXX_SHD_2_CTRL_STAT, align 4
  %47 = load i32, i32* @MII_BCM7XXX_TL4_RST_MSK, align 4
  %48 = call i32 @phy_set_clr_bits(%struct.phy_device* %45, i32 %46, i32 0, i32 %47)
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* %4, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %44
  br label %53

52:                                               ; preds = %44
  br label %53

53:                                               ; preds = %52, %51, %43, %35, %27, %19
  %54 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %55 = load i32, i32* @MII_BCM7XXX_TEST, align 4
  %56 = load i32, i32* @MII_BCM7XXX_SHD_MODE_2, align 4
  %57 = call i32 @phy_set_clr_bits(%struct.phy_device* %54, i32 %55, i32 0, i32 %56)
  store i32 %57, i32* %4, align 4
  %58 = load i32, i32* %4, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %53
  %61 = load i32, i32* %4, align 4
  store i32 %61, i32* %2, align 4
  br label %63

62:                                               ; preds = %53
  store i32 0, i32* %2, align 4
  br label %63

63:                                               ; preds = %62, %60, %11
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i32 @phy_set_clr_bits(%struct.phy_device*, i32, i32, i32) #1

declare dso_local i32 @phy_write(%struct.phy_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
