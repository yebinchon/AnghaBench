; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_phy.c_ixgbe_mii_bus_write_generic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_phy.c_ixgbe_mii_bus_write_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.ixgbe_hw.0*, i32)*, i64 (%struct.ixgbe_hw.1*, i32)* }
%struct.ixgbe_hw.0 = type opaque
%struct.ixgbe_hw.1 = type opaque

@EBUSY = common dso_local global i64 0, align 8
@IXGBE_MSRWD = common dso_local global i32 0, align 4
@IXGBE_MSCA_PHY_ADDR_SHIFT = common dso_local global i32 0, align 4
@MII_ADDR_C45 = common dso_local global i32 0, align 4
@IXGBE_MSCA_ADDR_CYCLE = common dso_local global i32 0, align 4
@IXGBE_MSCA_MDI_COMMAND = common dso_local global i32 0, align 4
@IXGBE_MSCA_DEV_TYPE_SHIFT = common dso_local global i32 0, align 4
@IXGBE_MSCA_OLD_PROTOCOL = common dso_local global i32 0, align 4
@IXGBE_MSCA_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ixgbe_hw*, i32, i32, i64, i32)* @ixgbe_mii_bus_write_generic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ixgbe_mii_bus_write_generic(%struct.ixgbe_hw* %0, i32 %1, i32 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.ixgbe_hw*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %16 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load i64 (%struct.ixgbe_hw.1*, i32)*, i64 (%struct.ixgbe_hw.1*, i32)** %18, align 8
  %20 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %21 = bitcast %struct.ixgbe_hw* %20 to %struct.ixgbe_hw.1*
  %22 = load i32, i32* %11, align 4
  %23 = call i64 %19(%struct.ixgbe_hw.1* %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %5
  %26 = load i64, i64* @EBUSY, align 8
  %27 = sub nsw i64 0, %26
  store i64 %27, i64* %6, align 8
  br label %99

28:                                               ; preds = %5
  %29 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %30 = load i32, i32* @IXGBE_MSRWD, align 4
  %31 = load i64, i64* %10, align 8
  %32 = trunc i64 %31 to i32
  %33 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %29, i32 %30, i32 %32)
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @IXGBE_MSCA_PHY_ADDR_SHIFT, align 4
  %36 = shl i32 %34, %35
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @MII_ADDR_C45, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %28
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @GENMASK(i32 21, i32 0)
  %44 = and i32 %42, %43
  %45 = load i32, i32* %12, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* %12, align 4
  %48 = load i32, i32* @IXGBE_MSCA_ADDR_CYCLE, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @IXGBE_MSCA_MDI_COMMAND, align 4
  %51 = or i32 %49, %50
  store i32 %51, i32* %13, align 4
  br label %67

52:                                               ; preds = %28
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @GENMASK(i32 5, i32 0)
  %55 = and i32 %53, %54
  %56 = load i32, i32* @IXGBE_MSCA_DEV_TYPE_SHIFT, align 4
  %57 = shl i32 %55, %56
  %58 = load i32, i32* %12, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %12, align 4
  %60 = load i32, i32* %12, align 4
  %61 = load i32, i32* @IXGBE_MSCA_OLD_PROTOCOL, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @IXGBE_MSCA_WRITE, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @IXGBE_MSCA_MDI_COMMAND, align 4
  %66 = or i32 %64, %65
  store i32 %66, i32* %13, align 4
  br label %67

67:                                               ; preds = %52, %41
  %68 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %69 = load i32, i32* %13, align 4
  %70 = call i64 @ixgbe_msca_cmd(%struct.ixgbe_hw* %68, i32 %69)
  store i64 %70, i64* %14, align 8
  %71 = load i64, i64* %14, align 8
  %72 = icmp slt i64 %71, 0
  br i1 %72, label %78, label %73

73:                                               ; preds = %67
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* @MII_ADDR_C45, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %73, %67
  br label %88

79:                                               ; preds = %73
  %80 = load i32, i32* %12, align 4
  %81 = load i32, i32* @IXGBE_MSCA_WRITE, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* @IXGBE_MSCA_MDI_COMMAND, align 4
  %84 = or i32 %82, %83
  store i32 %84, i32* %13, align 4
  %85 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %86 = load i32, i32* %13, align 4
  %87 = call i64 @ixgbe_msca_cmd(%struct.ixgbe_hw* %85, i32 %86)
  store i64 %87, i64* %14, align 8
  br label %88

88:                                               ; preds = %79, %78
  %89 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %90 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = load i32 (%struct.ixgbe_hw.0*, i32)*, i32 (%struct.ixgbe_hw.0*, i32)** %92, align 8
  %94 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %95 = bitcast %struct.ixgbe_hw* %94 to %struct.ixgbe_hw.0*
  %96 = load i32, i32* %11, align 4
  %97 = call i32 %93(%struct.ixgbe_hw.0* %95, i32 %96)
  %98 = load i64, i64* %14, align 8
  store i64 %98, i64* %6, align 8
  br label %99

99:                                               ; preds = %88, %25
  %100 = load i64, i64* %6, align 8
  ret i64 %100
}

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @GENMASK(i32, i32) #1

declare dso_local i64 @ixgbe_msca_cmd(%struct.ixgbe_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
