; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_phy.c_ixgbe_get_copper_speeds_supported.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_phy.c_ixgbe_get_copper_speeds_supported.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 (%struct.ixgbe_hw.0*, i32, i32, i32*)* }
%struct.ixgbe_hw.0 = type opaque
%struct.TYPE_4__ = type { i32 }

@MDIO_SPEED = common dso_local global i32 0, align 4
@MDIO_MMD_PMAPMD = common dso_local global i32 0, align 4
@MDIO_SPEED_10G = common dso_local global i32 0, align 4
@IXGBE_LINK_SPEED_10GB_FULL = common dso_local global i32 0, align 4
@MDIO_PMA_SPEED_1000 = common dso_local global i32 0, align 4
@IXGBE_LINK_SPEED_1GB_FULL = common dso_local global i32 0, align 4
@MDIO_PMA_SPEED_100 = common dso_local global i32 0, align 4
@IXGBE_LINK_SPEED_100_FULL = common dso_local global i32 0, align 4
@IXGBE_LINK_SPEED_2_5GB_FULL = common dso_local global i32 0, align 4
@IXGBE_LINK_SPEED_5GB_FULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ixgbe_hw*)* @ixgbe_get_copper_speeds_supported to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ixgbe_get_copper_speeds_supported(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.ixgbe_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %3, align 8
  %6 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %7 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i64 (%struct.ixgbe_hw.0*, i32, i32, i32*)*, i64 (%struct.ixgbe_hw.0*, i32, i32, i32*)** %9, align 8
  %11 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %12 = bitcast %struct.ixgbe_hw* %11 to %struct.ixgbe_hw.0*
  %13 = load i32, i32* @MDIO_SPEED, align 4
  %14 = load i32, i32* @MDIO_MMD_PMAPMD, align 4
  %15 = call i64 %10(%struct.ixgbe_hw.0* %12, i32 %13, i32 %14, i32* %4)
  store i64 %15, i64* %5, align 8
  %16 = load i64, i64* %5, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i64, i64* %5, align 8
  store i64 %19, i64* %2, align 8
  br label %84

20:                                               ; preds = %1
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @MDIO_SPEED_10G, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %20
  %26 = load i32, i32* @IXGBE_LINK_SPEED_10GB_FULL, align 4
  %27 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %28 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = or i32 %30, %26
  store i32 %31, i32* %29, align 8
  br label %32

32:                                               ; preds = %25, %20
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @MDIO_PMA_SPEED_1000, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %32
  %38 = load i32, i32* @IXGBE_LINK_SPEED_1GB_FULL, align 4
  %39 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %40 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = or i32 %42, %38
  store i32 %43, i32* %41, align 8
  br label %44

44:                                               ; preds = %37, %32
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @MDIO_PMA_SPEED_100, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %44
  %50 = load i32, i32* @IXGBE_LINK_SPEED_100_FULL, align 4
  %51 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %52 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = or i32 %54, %50
  store i32 %55, i32* %53, align 8
  br label %56

56:                                               ; preds = %49, %44
  %57 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %58 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  switch i32 %60, label %82 [
    i32 130, label %61
    i32 129, label %74
    i32 128, label %74
  ]

61:                                               ; preds = %56
  %62 = load i32, i32* @IXGBE_LINK_SPEED_2_5GB_FULL, align 4
  %63 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %64 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = or i32 %66, %62
  store i32 %67, i32* %65, align 8
  %68 = load i32, i32* @IXGBE_LINK_SPEED_5GB_FULL, align 4
  %69 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %70 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = or i32 %72, %68
  store i32 %73, i32* %71, align 8
  br label %83

74:                                               ; preds = %56, %56
  %75 = load i32, i32* @IXGBE_LINK_SPEED_100_FULL, align 4
  %76 = xor i32 %75, -1
  %77 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %78 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = and i32 %80, %76
  store i32 %81, i32* %79, align 8
  br label %83

82:                                               ; preds = %56
  br label %83

83:                                               ; preds = %82, %74, %61
  store i64 0, i64* %2, align 8
  br label %84

84:                                               ; preds = %83, %18
  %85 = load i64, i64* %2, align 8
  ret i64 %85
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
