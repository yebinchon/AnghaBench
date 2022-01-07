; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_broadcom.c_bcm5481_config_aneg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_broadcom.c_bcm5481_config_aneg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.device_node* }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"enet-phy-lane-swap\00", align 1
@MII_BCM54XX_EXP_SEL_ER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*)* @bcm5481_config_aneg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm5481_config_aneg(%struct.phy_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %3, align 8
  %6 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %7 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load %struct.device_node*, %struct.device_node** %9, align 8
  store %struct.device_node* %10, %struct.device_node** %4, align 8
  %11 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %12 = call i32 @genphy_config_aneg(%struct.phy_device* %11)
  store i32 %12, i32* %5, align 4
  %13 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %14 = call i32 @bcm54xx_config_clock_delay(%struct.phy_device* %13)
  %15 = load %struct.device_node*, %struct.device_node** %4, align 8
  %16 = call i64 @of_property_read_bool(%struct.device_node* %15, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %1
  %19 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %20 = load i64, i64* @MII_BCM54XX_EXP_SEL_ER, align 8
  %21 = add nsw i64 %20, 9
  %22 = call i32 @bcm_phy_write_exp(%struct.phy_device* %19, i64 %21, i32 283)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = load i32, i32* %5, align 4
  store i32 %26, i32* %2, align 4
  br label %30

27:                                               ; preds = %18
  br label %28

28:                                               ; preds = %27, %1
  %29 = load i32, i32* %5, align 4
  store i32 %29, i32* %2, align 4
  br label %30

30:                                               ; preds = %28, %25
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i32 @genphy_config_aneg(%struct.phy_device*) #1

declare dso_local i32 @bcm54xx_config_clock_delay(%struct.phy_device*) #1

declare dso_local i64 @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local i32 @bcm_phy_write_exp(%struct.phy_device*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
