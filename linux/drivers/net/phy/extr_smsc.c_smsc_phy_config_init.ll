; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_smsc.c_smsc_phy_config_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_smsc.c_smsc_phy_config_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { %struct.smsc_phy_priv* }
%struct.smsc_phy_priv = type { i64 }

@MII_LAN83C185_CTRL_STATUS = common dso_local global i32 0, align 4
@MII_LAN83C185_EDPWRDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*)* @smsc_phy_config_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smsc_phy_config_init(%struct.phy_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy_device*, align 8
  %4 = alloca %struct.smsc_phy_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %3, align 8
  %6 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %7 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %6, i32 0, i32 0
  %8 = load %struct.smsc_phy_priv*, %struct.smsc_phy_priv** %7, align 8
  store %struct.smsc_phy_priv* %8, %struct.smsc_phy_priv** %4, align 8
  %9 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %10 = load i32, i32* @MII_LAN83C185_CTRL_STATUS, align 4
  %11 = call i32 @phy_read(%struct.phy_device* %9, i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %5, align 4
  store i32 %15, i32* %2, align 4
  br label %36

16:                                               ; preds = %1
  %17 = load %struct.smsc_phy_priv*, %struct.smsc_phy_priv** %4, align 8
  %18 = getelementptr inbounds %struct.smsc_phy_priv, %struct.smsc_phy_priv* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %33

21:                                               ; preds = %16
  %22 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %23 = load i32, i32* @MII_LAN83C185_CTRL_STATUS, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @MII_LAN83C185_EDPWRDOWN, align 4
  %26 = or i32 %24, %25
  %27 = call i32 @phy_write(%struct.phy_device* %22, i32 %23, i32 %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %21
  %31 = load i32, i32* %5, align 4
  store i32 %31, i32* %2, align 4
  br label %36

32:                                               ; preds = %21
  br label %33

33:                                               ; preds = %32, %16
  %34 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %35 = call i32 @smsc_phy_ack_interrupt(%struct.phy_device* %34)
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %33, %30, %14
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @phy_read(%struct.phy_device*, i32) #1

declare dso_local i32 @phy_write(%struct.phy_device*, i32, i32) #1

declare dso_local i32 @smsc_phy_ack_interrupt(%struct.phy_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
