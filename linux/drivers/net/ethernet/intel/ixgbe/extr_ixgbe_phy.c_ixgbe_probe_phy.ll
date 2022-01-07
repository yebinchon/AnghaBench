; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_phy.c_ixgbe_probe_phy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_phy.c_ixgbe_probe_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, %struct.TYPE_4__, i32, %struct.TYPE_6__ }
%struct.TYPE_4__ = type { i32 (%struct.ixgbe_hw.0*, i32, i32, i32*)* }
%struct.ixgbe_hw.0 = type opaque
%struct.TYPE_6__ = type { i32 }

@ixgbe_phy_unknown = common dso_local global i64 0, align 8
@MDIO_PMA_EXTABLE = common dso_local global i32 0, align 4
@MDIO_MMD_PMAPMD = common dso_local global i32 0, align 4
@MDIO_PMA_EXTABLE_10GBT = common dso_local global i32 0, align 4
@MDIO_PMA_EXTABLE_1000BT = common dso_local global i32 0, align 4
@ixgbe_phy_cu_unknown = common dso_local global i64 0, align 8
@ixgbe_phy_generic = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbe_hw*, i32)* @ixgbe_probe_phy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_probe_phy(%struct.ixgbe_hw* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ixgbe_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %9 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  store i32 %7, i32* %11, align 4
  %12 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %13 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 3
  %15 = load i32, i32* %5, align 4
  %16 = call i64 @mdio45_probe(%struct.TYPE_6__* %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %68

19:                                               ; preds = %2
  %20 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %21 = call i64 @ixgbe_get_phy_id(%struct.ixgbe_hw* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %68

24:                                               ; preds = %19
  %25 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %26 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @ixgbe_get_phy_type_from_id(i32 %28)
  %30 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %31 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  store i64 %29, i64* %32, align 8
  %33 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %34 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @ixgbe_phy_unknown, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %67

39:                                               ; preds = %24
  %40 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %41 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32 (%struct.ixgbe_hw.0*, i32, i32, i32*)*, i32 (%struct.ixgbe_hw.0*, i32, i32, i32*)** %43, align 8
  %45 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %46 = bitcast %struct.ixgbe_hw* %45 to %struct.ixgbe_hw.0*
  %47 = load i32, i32* @MDIO_PMA_EXTABLE, align 4
  %48 = load i32, i32* @MDIO_MMD_PMAPMD, align 4
  %49 = call i32 %44(%struct.ixgbe_hw.0* %46, i32 %47, i32 %48, i32* %6)
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @MDIO_PMA_EXTABLE_10GBT, align 4
  %52 = load i32, i32* @MDIO_PMA_EXTABLE_1000BT, align 4
  %53 = or i32 %51, %52
  %54 = and i32 %50, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %39
  %57 = load i64, i64* @ixgbe_phy_cu_unknown, align 8
  %58 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %59 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  store i64 %57, i64* %60, align 8
  br label %66

61:                                               ; preds = %39
  %62 = load i64, i64* @ixgbe_phy_generic, align 8
  %63 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %64 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  store i64 %62, i64* %65, align 8
  br label %66

66:                                               ; preds = %61, %56
  br label %67

67:                                               ; preds = %66, %24
  store i32 1, i32* %3, align 4
  br label %68

68:                                               ; preds = %67, %23, %18
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i64 @mdio45_probe(%struct.TYPE_6__*, i32) #1

declare dso_local i64 @ixgbe_get_phy_id(%struct.ixgbe_hw*) #1

declare dso_local i64 @ixgbe_get_phy_type_from_id(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
