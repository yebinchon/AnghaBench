; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_phy.c_ixgbe_mii_bus_read_generic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_phy.c_ixgbe_mii_bus_read_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.ixgbe_hw.0*, i32)*, i64 (%struct.ixgbe_hw.1*, i32)* }
%struct.ixgbe_hw.0 = type opaque
%struct.ixgbe_hw.1 = type opaque

@EBUSY = common dso_local global i32 0, align 4
@IXGBE_MSCA_PHY_ADDR_SHIFT = common dso_local global i32 0, align 4
@MII_ADDR_C45 = common dso_local global i32 0, align 4
@IXGBE_MSCA_ADDR_CYCLE = common dso_local global i32 0, align 4
@IXGBE_MSCA_MDI_COMMAND = common dso_local global i32 0, align 4
@IXGBE_MSCA_DEV_TYPE_SHIFT = common dso_local global i32 0, align 4
@IXGBE_MSCA_OLD_PROTOCOL = common dso_local global i32 0, align 4
@IXGBE_MSCA_READ_AUTOINC = common dso_local global i32 0, align 4
@IXGBE_MSCA_READ = common dso_local global i32 0, align 4
@IXGBE_MSRWD = common dso_local global i32 0, align 4
@IXGBE_MSRWD_READ_DATA_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbe_hw*, i32, i32, i32)* @ixgbe_mii_bus_read_generic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_mii_bus_read_generic(%struct.ixgbe_hw* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ixgbe_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %14 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = load i64 (%struct.ixgbe_hw.1*, i32)*, i64 (%struct.ixgbe_hw.1*, i32)** %16, align 8
  %18 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %19 = bitcast %struct.ixgbe_hw* %18 to %struct.ixgbe_hw.1*
  %20 = load i32, i32* %9, align 4
  %21 = call i64 %17(%struct.ixgbe_hw.1* %19, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %4
  %24 = load i32, i32* @EBUSY, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %106

26:                                               ; preds = %4
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @IXGBE_MSCA_PHY_ADDR_SHIFT, align 4
  %29 = shl i32 %27, %28
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @MII_ADDR_C45, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %26
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @GENMASK(i32 21, i32 0)
  %37 = and i32 %35, %36
  %38 = load i32, i32* %10, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* @IXGBE_MSCA_ADDR_CYCLE, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @IXGBE_MSCA_MDI_COMMAND, align 4
  %44 = or i32 %42, %43
  store i32 %44, i32* %11, align 4
  br label %60

45:                                               ; preds = %26
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @GENMASK(i32 5, i32 0)
  %48 = and i32 %46, %47
  %49 = load i32, i32* @IXGBE_MSCA_DEV_TYPE_SHIFT, align 4
  %50 = shl i32 %48, %49
  %51 = load i32, i32* %10, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* @IXGBE_MSCA_OLD_PROTOCOL, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @IXGBE_MSCA_READ_AUTOINC, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @IXGBE_MSCA_MDI_COMMAND, align 4
  %59 = or i32 %57, %58
  store i32 %59, i32* %11, align 4
  br label %60

60:                                               ; preds = %45, %34
  %61 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %62 = load i32, i32* %11, align 4
  %63 = call i32 @ixgbe_msca_cmd(%struct.ixgbe_hw* %61, i32 %62)
  store i32 %63, i32* %12, align 4
  %64 = load i32, i32* %12, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %60
  br label %95

67:                                               ; preds = %60
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* @MII_ADDR_C45, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %67
  br label %86

73:                                               ; preds = %67
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* @IXGBE_MSCA_READ, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* @IXGBE_MSCA_MDI_COMMAND, align 4
  %78 = or i32 %76, %77
  store i32 %78, i32* %11, align 4
  %79 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %80 = load i32, i32* %11, align 4
  %81 = call i32 @ixgbe_msca_cmd(%struct.ixgbe_hw* %79, i32 %80)
  store i32 %81, i32* %12, align 4
  %82 = load i32, i32* %12, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %73
  br label %95

85:                                               ; preds = %73
  br label %86

86:                                               ; preds = %85, %72
  %87 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %88 = load i32, i32* @IXGBE_MSRWD, align 4
  %89 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %87, i32 %88)
  store i32 %89, i32* %12, align 4
  %90 = load i32, i32* %12, align 4
  %91 = load i32, i32* @IXGBE_MSRWD_READ_DATA_SHIFT, align 4
  %92 = ashr i32 %90, %91
  %93 = call i32 @GENMASK(i32 16, i32 0)
  %94 = and i32 %92, %93
  store i32 %94, i32* %12, align 4
  br label %95

95:                                               ; preds = %86, %84, %66
  %96 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %97 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  %100 = load i32 (%struct.ixgbe_hw.0*, i32)*, i32 (%struct.ixgbe_hw.0*, i32)** %99, align 8
  %101 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %102 = bitcast %struct.ixgbe_hw* %101 to %struct.ixgbe_hw.0*
  %103 = load i32, i32* %9, align 4
  %104 = call i32 %100(%struct.ixgbe_hw.0* %102, i32 %103)
  %105 = load i32, i32* %12, align 4
  store i32 %105, i32* %5, align 4
  br label %106

106:                                              ; preds = %95, %23
  %107 = load i32, i32* %5, align 4
  ret i32 %107
}

declare dso_local i32 @GENMASK(i32, i32) #1

declare dso_local i32 @ixgbe_msca_cmd(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
