; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_icplus.c_ip101a_g_config_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_icplus.c_ip101a_g_config_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { %struct.ip101a_g_phy_priv* }
%struct.ip101a_g_phy_priv = type { i32 }

@IP101G_DIGITAL_IO_SPEC_CTRL = common dso_local global i32 0, align 4
@IP101G_DIGITAL_IO_SPEC_CTRL_SEL_INTR32 = common dso_local global i32 0, align 4
@IP10XX_SPEC_CTRL_STATUS = common dso_local global i32 0, align 4
@IP101A_G_APS_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*)* @ip101a_g_config_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip101a_g_config_init(%struct.phy_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy_device*, align 8
  %4 = alloca %struct.ip101a_g_phy_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %3, align 8
  %7 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %8 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %7, i32 0, i32 0
  %9 = load %struct.ip101a_g_phy_priv*, %struct.ip101a_g_phy_priv** %8, align 8
  store %struct.ip101a_g_phy_priv* %9, %struct.ip101a_g_phy_priv** %4, align 8
  %10 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %11 = call i32 @ip1xx_reset(%struct.phy_device* %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %6, align 4
  store i32 %15, i32* %2, align 4
  br label %53

16:                                               ; preds = %1
  %17 = load %struct.ip101a_g_phy_priv*, %struct.ip101a_g_phy_priv** %4, align 8
  %18 = getelementptr inbounds %struct.ip101a_g_phy_priv, %struct.ip101a_g_phy_priv* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %41 [
    i32 128, label %20
    i32 129, label %30
  ]

20:                                               ; preds = %16
  %21 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %22 = load i32, i32* @IP101G_DIGITAL_IO_SPEC_CTRL, align 4
  %23 = load i32, i32* @IP101G_DIGITAL_IO_SPEC_CTRL_SEL_INTR32, align 4
  %24 = call i32 @phy_modify(%struct.phy_device* %21, i32 %22, i32 %23, i32 0)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = load i32, i32* %5, align 4
  store i32 %28, i32* %2, align 4
  br label %53

29:                                               ; preds = %20
  br label %42

30:                                               ; preds = %16
  %31 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %32 = load i32, i32* @IP101G_DIGITAL_IO_SPEC_CTRL, align 4
  %33 = load i32, i32* @IP101G_DIGITAL_IO_SPEC_CTRL_SEL_INTR32, align 4
  %34 = load i32, i32* @IP101G_DIGITAL_IO_SPEC_CTRL_SEL_INTR32, align 4
  %35 = call i32 @phy_modify(%struct.phy_device* %31, i32 %32, i32 %33, i32 %34)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %30
  %39 = load i32, i32* %5, align 4
  store i32 %39, i32* %2, align 4
  br label %53

40:                                               ; preds = %30
  br label %42

41:                                               ; preds = %16
  br label %42

42:                                               ; preds = %41, %40, %29
  %43 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %44 = load i32, i32* @IP10XX_SPEC_CTRL_STATUS, align 4
  %45 = call i32 @phy_read(%struct.phy_device* %43, i32 %44)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* @IP101A_G_APS_ON, align 4
  %47 = load i32, i32* %6, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %6, align 4
  %49 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %50 = load i32, i32* @IP10XX_SPEC_CTRL_STATUS, align 4
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @phy_write(%struct.phy_device* %49, i32 %50, i32 %51)
  store i32 %52, i32* %2, align 4
  br label %53

53:                                               ; preds = %42, %38, %27, %14
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i32 @ip1xx_reset(%struct.phy_device*) #1

declare dso_local i32 @phy_modify(%struct.phy_device*, i32, i32, i32) #1

declare dso_local i32 @phy_read(%struct.phy_device*, i32) #1

declare dso_local i32 @phy_write(%struct.phy_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
