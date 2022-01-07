; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_icplus.c_ip101a_g_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_icplus.c_ip101a_g_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { %struct.ip101a_g_phy_priv*, %struct.TYPE_2__ }
%struct.ip101a_g_phy_priv = type { i32 }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"icplus,select-rx-error\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"icplus,select-interrupt\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"RXER and INTR mode cannot be selected together\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IP101GR_SEL_INTR32_RXER = common dso_local global i32 0, align 4
@IP101GR_SEL_INTR32_INTR = common dso_local global i32 0, align 4
@IP101GR_SEL_INTR32_KEEP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*)* @ip101a_g_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip101a_g_probe(%struct.phy_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.ip101a_g_phy_priv*, align 8
  store %struct.phy_device* %0, %struct.phy_device** %3, align 8
  %6 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %7 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  store %struct.device* %8, %struct.device** %4, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.ip101a_g_phy_priv* @devm_kzalloc(%struct.device* %9, i32 4, i32 %10)
  store %struct.ip101a_g_phy_priv* %11, %struct.ip101a_g_phy_priv** %5, align 8
  %12 = load %struct.ip101a_g_phy_priv*, %struct.ip101a_g_phy_priv** %5, align 8
  %13 = icmp ne %struct.ip101a_g_phy_priv* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %55

17:                                               ; preds = %1
  %18 = load %struct.device*, %struct.device** %4, align 8
  %19 = call i64 @device_property_read_bool(%struct.device* %18, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %17
  %22 = load %struct.device*, %struct.device** %4, align 8
  %23 = call i64 @device_property_read_bool(%struct.device* %22, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %21
  %26 = load %struct.device*, %struct.device** %4, align 8
  %27 = call i32 @dev_err(%struct.device* %26, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0))
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %55

30:                                               ; preds = %21, %17
  %31 = load %struct.device*, %struct.device** %4, align 8
  %32 = call i64 @device_property_read_bool(%struct.device* %31, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load i32, i32* @IP101GR_SEL_INTR32_RXER, align 4
  %36 = load %struct.ip101a_g_phy_priv*, %struct.ip101a_g_phy_priv** %5, align 8
  %37 = getelementptr inbounds %struct.ip101a_g_phy_priv, %struct.ip101a_g_phy_priv* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  br label %51

38:                                               ; preds = %30
  %39 = load %struct.device*, %struct.device** %4, align 8
  %40 = call i64 @device_property_read_bool(%struct.device* %39, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = load i32, i32* @IP101GR_SEL_INTR32_INTR, align 4
  %44 = load %struct.ip101a_g_phy_priv*, %struct.ip101a_g_phy_priv** %5, align 8
  %45 = getelementptr inbounds %struct.ip101a_g_phy_priv, %struct.ip101a_g_phy_priv* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  br label %50

46:                                               ; preds = %38
  %47 = load i32, i32* @IP101GR_SEL_INTR32_KEEP, align 4
  %48 = load %struct.ip101a_g_phy_priv*, %struct.ip101a_g_phy_priv** %5, align 8
  %49 = getelementptr inbounds %struct.ip101a_g_phy_priv, %struct.ip101a_g_phy_priv* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  br label %50

50:                                               ; preds = %46, %42
  br label %51

51:                                               ; preds = %50, %34
  %52 = load %struct.ip101a_g_phy_priv*, %struct.ip101a_g_phy_priv** %5, align 8
  %53 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %54 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %53, i32 0, i32 0
  store %struct.ip101a_g_phy_priv* %52, %struct.ip101a_g_phy_priv** %54, align 8
  store i32 0, i32* %2, align 4
  br label %55

55:                                               ; preds = %51, %25, %14
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local %struct.ip101a_g_phy_priv* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i64 @device_property_read_bool(%struct.device*, i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
