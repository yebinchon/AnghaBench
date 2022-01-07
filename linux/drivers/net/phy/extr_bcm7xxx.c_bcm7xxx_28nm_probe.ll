; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_bcm7xxx.c_bcm7xxx_28nm_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_bcm7xxx.c_bcm7xxx_28nm_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { %struct.TYPE_2__, %struct.bcm7xxx_phy_priv* }
%struct.TYPE_2__ = type { i32 }
%struct.bcm7xxx_phy_priv = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*)* @bcm7xxx_28nm_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm7xxx_28nm_probe(%struct.phy_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy_device*, align 8
  %4 = alloca %struct.bcm7xxx_phy_priv*, align 8
  store %struct.phy_device* %0, %struct.phy_device** %3, align 8
  %5 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %6 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.bcm7xxx_phy_priv* @devm_kzalloc(i32* %7, i32 4, i32 %8)
  store %struct.bcm7xxx_phy_priv* %9, %struct.bcm7xxx_phy_priv** %4, align 8
  %10 = load %struct.bcm7xxx_phy_priv*, %struct.bcm7xxx_phy_priv** %4, align 8
  %11 = icmp ne %struct.bcm7xxx_phy_priv* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %36

15:                                               ; preds = %1
  %16 = load %struct.bcm7xxx_phy_priv*, %struct.bcm7xxx_phy_priv** %4, align 8
  %17 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %18 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %17, i32 0, i32 1
  store %struct.bcm7xxx_phy_priv* %16, %struct.bcm7xxx_phy_priv** %18, align 8
  %19 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %20 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %23 = call i32 @bcm_phy_get_sset_count(%struct.phy_device* %22)
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call i32 @devm_kcalloc(i32* %21, i32 %23, i32 4, i32 %24)
  %26 = load %struct.bcm7xxx_phy_priv*, %struct.bcm7xxx_phy_priv** %4, align 8
  %27 = getelementptr inbounds %struct.bcm7xxx_phy_priv, %struct.bcm7xxx_phy_priv* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load %struct.bcm7xxx_phy_priv*, %struct.bcm7xxx_phy_priv** %4, align 8
  %29 = getelementptr inbounds %struct.bcm7xxx_phy_priv, %struct.bcm7xxx_phy_priv* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %15
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %36

35:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %35, %32, %12
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local %struct.bcm7xxx_phy_priv* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @devm_kcalloc(i32*, i32, i32, i32) #1

declare dso_local i32 @bcm_phy_get_sset_count(%struct.phy_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
