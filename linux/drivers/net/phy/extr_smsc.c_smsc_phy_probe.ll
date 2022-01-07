; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_smsc.c_smsc_phy_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_smsc.c_smsc_phy_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { %struct.smsc_phy_priv*, %struct.TYPE_2__ }
%struct.smsc_phy_priv = type { i32 }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"smsc,disable-energy-detect\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*)* @smsc_phy_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smsc_phy_probe(%struct.phy_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.smsc_phy_priv*, align 8
  store %struct.phy_device* %0, %struct.phy_device** %3, align 8
  %7 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %8 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = getelementptr inbounds %struct.device, %struct.device* %10, i32 0, i32 0
  %12 = load %struct.device_node*, %struct.device_node** %11, align 8
  store %struct.device_node* %12, %struct.device_node** %5, align 8
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.smsc_phy_priv* @devm_kzalloc(%struct.device* %13, i32 4, i32 %14)
  store %struct.smsc_phy_priv* %15, %struct.smsc_phy_priv** %6, align 8
  %16 = load %struct.smsc_phy_priv*, %struct.smsc_phy_priv** %6, align 8
  %17 = icmp ne %struct.smsc_phy_priv* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %34

21:                                               ; preds = %1
  %22 = load %struct.smsc_phy_priv*, %struct.smsc_phy_priv** %6, align 8
  %23 = getelementptr inbounds %struct.smsc_phy_priv, %struct.smsc_phy_priv* %22, i32 0, i32 0
  store i32 1, i32* %23, align 4
  %24 = load %struct.device_node*, %struct.device_node** %5, align 8
  %25 = call i64 @of_property_read_bool(%struct.device_node* %24, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load %struct.smsc_phy_priv*, %struct.smsc_phy_priv** %6, align 8
  %29 = getelementptr inbounds %struct.smsc_phy_priv, %struct.smsc_phy_priv* %28, i32 0, i32 0
  store i32 0, i32* %29, align 4
  br label %30

30:                                               ; preds = %27, %21
  %31 = load %struct.smsc_phy_priv*, %struct.smsc_phy_priv** %6, align 8
  %32 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %33 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %32, i32 0, i32 0
  store %struct.smsc_phy_priv* %31, %struct.smsc_phy_priv** %33, align 8
  store i32 0, i32* %2, align 4
  br label %34

34:                                               ; preds = %30, %18
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local %struct.smsc_phy_priv* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i64 @of_property_read_bool(%struct.device_node*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
