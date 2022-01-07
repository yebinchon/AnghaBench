; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_x550.c_ixgbe_enable_lasi_ext_t_x550em.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_x550.c_ixgbe_enable_lasi_ext_t_x550em.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 (%struct.ixgbe_hw.0*, i32, i32, i32)*, i64 (%struct.ixgbe_hw.1*, i32, i32, i32*)* }
%struct.ixgbe_hw.0 = type opaque
%struct.ixgbe_hw.1 = type opaque
%struct.TYPE_4__ = type { i64 }

@ixgbe_mac_x550em_a = common dso_local global i64 0, align 8
@IXGBE_MDIO_PMA_TX_VEN_LASI_INT_MASK = common dso_local global i32 0, align 4
@MDIO_MMD_AN = common dso_local global i32 0, align 4
@IXGBE_MDIO_PMA_TX_VEN_LASI_INT_EN = common dso_local global i32 0, align 4
@IXGBE_MDIO_GLOBAL_INT_MASK = common dso_local global i32 0, align 4
@MDIO_MMD_VEND1 = common dso_local global i32 0, align 4
@IXGBE_MDIO_GLOBAL_INT_HI_TEMP_EN = common dso_local global i32 0, align 4
@IXGBE_MDIO_GLOBAL_INT_DEV_FAULT_EN = common dso_local global i32 0, align 4
@IXGBE_MDIO_GLOBAL_INT_CHIP_VEN_MASK = common dso_local global i32 0, align 4
@IXGBE_MDIO_GLOBAL_AN_VEN_ALM_INT_EN = common dso_local global i32 0, align 4
@IXGBE_MDIO_GLOBAL_ALARM_1_INT = common dso_local global i32 0, align 4
@IXGBE_MDIO_GLOBAL_INT_CHIP_STD_MASK = common dso_local global i32 0, align 4
@IXGBE_MDIO_GLOBAL_VEN_ALM_INT_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ixgbe_hw*)* @ixgbe_enable_lasi_ext_t_x550em to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ixgbe_enable_lasi_ext_t_x550em(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.ixgbe_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %3, align 8
  %7 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %8 = call i64 @ixgbe_get_lasi_ext_t_x550em(%struct.ixgbe_hw* %7, i32* %6)
  store i64 %8, i64* %4, align 8
  %9 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %10 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @ixgbe_mac_x550em_a, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %50

15:                                               ; preds = %1
  %16 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %17 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %20 = load i64 (%struct.ixgbe_hw.1*, i32, i32, i32*)*, i64 (%struct.ixgbe_hw.1*, i32, i32, i32*)** %19, align 8
  %21 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %22 = bitcast %struct.ixgbe_hw* %21 to %struct.ixgbe_hw.1*
  %23 = load i32, i32* @IXGBE_MDIO_PMA_TX_VEN_LASI_INT_MASK, align 4
  %24 = load i32, i32* @MDIO_MMD_AN, align 4
  %25 = call i64 %20(%struct.ixgbe_hw.1* %22, i32 %23, i32 %24, i32* %5)
  store i64 %25, i64* %4, align 8
  %26 = load i64, i64* %4, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %15
  %29 = load i64, i64* %4, align 8
  store i64 %29, i64* %2, align 8
  br label %153

30:                                               ; preds = %15
  %31 = load i32, i32* @IXGBE_MDIO_PMA_TX_VEN_LASI_INT_EN, align 4
  %32 = load i32, i32* %5, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %5, align 4
  %34 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %35 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i64 (%struct.ixgbe_hw.0*, i32, i32, i32)*, i64 (%struct.ixgbe_hw.0*, i32, i32, i32)** %37, align 8
  %39 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %40 = bitcast %struct.ixgbe_hw* %39 to %struct.ixgbe_hw.0*
  %41 = load i32, i32* @IXGBE_MDIO_PMA_TX_VEN_LASI_INT_MASK, align 4
  %42 = load i32, i32* @MDIO_MMD_AN, align 4
  %43 = load i32, i32* %5, align 4
  %44 = call i64 %38(%struct.ixgbe_hw.0* %40, i32 %41, i32 %42, i32 %43)
  store i64 %44, i64* %4, align 8
  %45 = load i64, i64* %4, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %30
  %48 = load i64, i64* %4, align 8
  store i64 %48, i64* %2, align 8
  br label %153

49:                                               ; preds = %30
  br label %50

50:                                               ; preds = %49, %1
  %51 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %52 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  %55 = load i64 (%struct.ixgbe_hw.1*, i32, i32, i32*)*, i64 (%struct.ixgbe_hw.1*, i32, i32, i32*)** %54, align 8
  %56 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %57 = bitcast %struct.ixgbe_hw* %56 to %struct.ixgbe_hw.1*
  %58 = load i32, i32* @IXGBE_MDIO_GLOBAL_INT_MASK, align 4
  %59 = load i32, i32* @MDIO_MMD_VEND1, align 4
  %60 = call i64 %55(%struct.ixgbe_hw.1* %57, i32 %58, i32 %59, i32* %5)
  store i64 %60, i64* %4, align 8
  %61 = load i64, i64* %4, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %50
  %64 = load i64, i64* %4, align 8
  store i64 %64, i64* %2, align 8
  br label %153

65:                                               ; preds = %50
  %66 = load i32, i32* @IXGBE_MDIO_GLOBAL_INT_HI_TEMP_EN, align 4
  %67 = load i32, i32* @IXGBE_MDIO_GLOBAL_INT_DEV_FAULT_EN, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* %5, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %5, align 4
  %71 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %72 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i64 (%struct.ixgbe_hw.0*, i32, i32, i32)*, i64 (%struct.ixgbe_hw.0*, i32, i32, i32)** %74, align 8
  %76 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %77 = bitcast %struct.ixgbe_hw* %76 to %struct.ixgbe_hw.0*
  %78 = load i32, i32* @IXGBE_MDIO_GLOBAL_INT_MASK, align 4
  %79 = load i32, i32* @MDIO_MMD_VEND1, align 4
  %80 = load i32, i32* %5, align 4
  %81 = call i64 %75(%struct.ixgbe_hw.0* %77, i32 %78, i32 %79, i32 %80)
  store i64 %81, i64* %4, align 8
  %82 = load i64, i64* %4, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %65
  %85 = load i64, i64* %4, align 8
  store i64 %85, i64* %2, align 8
  br label %153

86:                                               ; preds = %65
  %87 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %88 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 1
  %91 = load i64 (%struct.ixgbe_hw.1*, i32, i32, i32*)*, i64 (%struct.ixgbe_hw.1*, i32, i32, i32*)** %90, align 8
  %92 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %93 = bitcast %struct.ixgbe_hw* %92 to %struct.ixgbe_hw.1*
  %94 = load i32, i32* @IXGBE_MDIO_GLOBAL_INT_CHIP_VEN_MASK, align 4
  %95 = load i32, i32* @MDIO_MMD_VEND1, align 4
  %96 = call i64 %91(%struct.ixgbe_hw.1* %93, i32 %94, i32 %95, i32* %5)
  store i64 %96, i64* %4, align 8
  %97 = load i64, i64* %4, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %86
  %100 = load i64, i64* %4, align 8
  store i64 %100, i64* %2, align 8
  br label %153

101:                                              ; preds = %86
  %102 = load i32, i32* @IXGBE_MDIO_GLOBAL_AN_VEN_ALM_INT_EN, align 4
  %103 = load i32, i32* @IXGBE_MDIO_GLOBAL_ALARM_1_INT, align 4
  %104 = or i32 %102, %103
  %105 = load i32, i32* %5, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %5, align 4
  %107 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %108 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 0
  %111 = load i64 (%struct.ixgbe_hw.0*, i32, i32, i32)*, i64 (%struct.ixgbe_hw.0*, i32, i32, i32)** %110, align 8
  %112 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %113 = bitcast %struct.ixgbe_hw* %112 to %struct.ixgbe_hw.0*
  %114 = load i32, i32* @IXGBE_MDIO_GLOBAL_INT_CHIP_VEN_MASK, align 4
  %115 = load i32, i32* @MDIO_MMD_VEND1, align 4
  %116 = load i32, i32* %5, align 4
  %117 = call i64 %111(%struct.ixgbe_hw.0* %113, i32 %114, i32 %115, i32 %116)
  store i64 %117, i64* %4, align 8
  %118 = load i64, i64* %4, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %101
  %121 = load i64, i64* %4, align 8
  store i64 %121, i64* %2, align 8
  br label %153

122:                                              ; preds = %101
  %123 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %124 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 1
  %127 = load i64 (%struct.ixgbe_hw.1*, i32, i32, i32*)*, i64 (%struct.ixgbe_hw.1*, i32, i32, i32*)** %126, align 8
  %128 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %129 = bitcast %struct.ixgbe_hw* %128 to %struct.ixgbe_hw.1*
  %130 = load i32, i32* @IXGBE_MDIO_GLOBAL_INT_CHIP_STD_MASK, align 4
  %131 = load i32, i32* @MDIO_MMD_VEND1, align 4
  %132 = call i64 %127(%struct.ixgbe_hw.1* %129, i32 %130, i32 %131, i32* %5)
  store i64 %132, i64* %4, align 8
  %133 = load i64, i64* %4, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %122
  %136 = load i64, i64* %4, align 8
  store i64 %136, i64* %2, align 8
  br label %153

137:                                              ; preds = %122
  %138 = load i32, i32* @IXGBE_MDIO_GLOBAL_VEN_ALM_INT_EN, align 4
  %139 = load i32, i32* %5, align 4
  %140 = or i32 %139, %138
  store i32 %140, i32* %5, align 4
  %141 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %142 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 0
  %145 = load i64 (%struct.ixgbe_hw.0*, i32, i32, i32)*, i64 (%struct.ixgbe_hw.0*, i32, i32, i32)** %144, align 8
  %146 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %147 = bitcast %struct.ixgbe_hw* %146 to %struct.ixgbe_hw.0*
  %148 = load i32, i32* @IXGBE_MDIO_GLOBAL_INT_CHIP_STD_MASK, align 4
  %149 = load i32, i32* @MDIO_MMD_VEND1, align 4
  %150 = load i32, i32* %5, align 4
  %151 = call i64 %145(%struct.ixgbe_hw.0* %147, i32 %148, i32 %149, i32 %150)
  store i64 %151, i64* %4, align 8
  %152 = load i64, i64* %4, align 8
  store i64 %152, i64* %2, align 8
  br label %153

153:                                              ; preds = %137, %135, %120, %99, %84, %63, %47, %28
  %154 = load i64, i64* %2, align 8
  ret i64 %154
}

declare dso_local i64 @ixgbe_get_lasi_ext_t_x550em(%struct.ixgbe_hw*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
