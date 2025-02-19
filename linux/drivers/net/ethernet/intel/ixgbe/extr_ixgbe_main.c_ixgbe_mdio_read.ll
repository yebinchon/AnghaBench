; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_mdio_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_mdio_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ixgbe_adapter = type { i64, %struct.ixgbe_hw }
%struct.ixgbe_hw = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 (%struct.ixgbe_hw.0*, i32, i32, i32*)* }
%struct.ixgbe_hw.0 = type opaque
%struct.TYPE_4__ = type { i32 }

@MDIO_DEVAD_NONE = common dso_local global i32 0, align 4
@MII_ADDR_C45 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32, i32, i32)* @ixgbe_mdio_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_mdio_read(%struct.net_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ixgbe_adapter*, align 8
  %11 = alloca %struct.ixgbe_hw*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load %struct.net_device*, %struct.net_device** %6, align 8
  %16 = call %struct.ixgbe_adapter* @netdev_priv(%struct.net_device* %15)
  store %struct.ixgbe_adapter* %16, %struct.ixgbe_adapter** %10, align 8
  %17 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %10, align 8
  %18 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %17, i32 0, i32 1
  store %struct.ixgbe_hw* %18, %struct.ixgbe_hw** %11, align 8
  %19 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %10, align 8
  %20 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %42

23:                                               ; preds = %4
  %24 = load i32, i32* %9, align 4
  store i32 %24, i32* %14, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @MDIO_DEVAD_NONE, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %23
  %29 = load i32, i32* %8, align 4
  %30 = shl i32 %29, 16
  %31 = load i32, i32* @MII_ADDR_C45, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* %14, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %14, align 4
  br label %35

35:                                               ; preds = %28, %23
  %36 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %10, align 8
  %37 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %14, align 4
  %41 = call i32 @mdiobus_read(i64 %38, i32 %39, i32 %40)
  store i32 %41, i32* %5, align 4
  br label %70

42:                                               ; preds = %4
  %43 = load i32, i32* %7, align 4
  %44 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %11, align 8
  %45 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %43, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %42
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %5, align 4
  br label %70

53:                                               ; preds = %42
  %54 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %11, align 8
  %55 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32 (%struct.ixgbe_hw.0*, i32, i32, i32*)*, i32 (%struct.ixgbe_hw.0*, i32, i32, i32*)** %57, align 8
  %59 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %11, align 8
  %60 = bitcast %struct.ixgbe_hw* %59 to %struct.ixgbe_hw.0*
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* %8, align 4
  %63 = call i32 %58(%struct.ixgbe_hw.0* %60, i32 %61, i32 %62, i32* %12)
  store i32 %63, i32* %13, align 4
  %64 = load i32, i32* %13, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %53
  %67 = load i32, i32* %12, align 4
  store i32 %67, i32* %13, align 4
  br label %68

68:                                               ; preds = %66, %53
  %69 = load i32, i32* %13, align 4
  store i32 %69, i32* %5, align 4
  br label %70

70:                                               ; preds = %68, %50, %35
  %71 = load i32, i32* %5, align 4
  ret i32 %71
}

declare dso_local %struct.ixgbe_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @mdiobus_read(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
