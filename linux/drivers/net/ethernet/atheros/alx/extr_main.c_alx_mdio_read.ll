; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/alx/extr_main.c_alx_mdio_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/alx/extr_main.c_alx_mdio_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.alx_priv = type { %struct.alx_hw }
%struct.alx_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@MDIO_DEVAD_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32, i32, i32)* @alx_mdio_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alx_mdio_read(%struct.net_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.alx_priv*, align 8
  %11 = alloca %struct.alx_hw*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.net_device*, %struct.net_device** %6, align 8
  %15 = call %struct.alx_priv* @netdev_priv(%struct.net_device* %14)
  store %struct.alx_priv* %15, %struct.alx_priv** %10, align 8
  %16 = load %struct.alx_priv*, %struct.alx_priv** %10, align 8
  %17 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %16, i32 0, i32 0
  store %struct.alx_hw* %17, %struct.alx_hw** %11, align 8
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.alx_hw*, %struct.alx_hw** %11, align 8
  %20 = getelementptr inbounds %struct.alx_hw, %struct.alx_hw* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %18, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %4
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %47

27:                                               ; preds = %4
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @MDIO_DEVAD_NONE, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = load %struct.alx_hw*, %struct.alx_hw** %11, align 8
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @alx_read_phy_reg(%struct.alx_hw* %32, i32 %33, i32* %12)
  store i32 %34, i32* %13, align 4
  br label %40

35:                                               ; preds = %27
  %36 = load %struct.alx_hw*, %struct.alx_hw** %11, align 8
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @alx_read_phy_ext(%struct.alx_hw* %36, i32 %37, i32 %38, i32* %12)
  store i32 %39, i32* %13, align 4
  br label %40

40:                                               ; preds = %35, %31
  %41 = load i32, i32* %13, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = load i32, i32* %13, align 4
  store i32 %44, i32* %5, align 4
  br label %47

45:                                               ; preds = %40
  %46 = load i32, i32* %12, align 4
  store i32 %46, i32* %5, align 4
  br label %47

47:                                               ; preds = %45, %43, %24
  %48 = load i32, i32* %5, align 4
  ret i32 %48
}

declare dso_local %struct.alx_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @alx_read_phy_reg(%struct.alx_hw*, i32, i32*) #1

declare dso_local i32 @alx_read_phy_ext(%struct.alx_hw*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
