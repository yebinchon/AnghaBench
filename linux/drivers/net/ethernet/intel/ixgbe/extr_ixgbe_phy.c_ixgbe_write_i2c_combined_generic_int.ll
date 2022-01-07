; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_phy.c_ixgbe_write_i2c_combined_generic_int.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_phy.c_ixgbe_write_i2c_combined_generic_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 (%struct.ixgbe_hw.0*, i32)*, i64 (%struct.ixgbe_hw.1*, i32)* }
%struct.ixgbe_hw.0 = type opaque
%struct.ixgbe_hw.1 = type opaque
%struct.TYPE_4__ = type { i32 }

@IXGBE_ERR_SWFW_SYNC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"I2C byte write combined error - Retry.\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"I2C byte write combined error.\0A\00", align 1
@IXGBE_ERR_I2C = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_write_i2c_combined_generic_int(%struct.ixgbe_hw* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ixgbe_hw*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %17 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %18 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %12, align 4
  store i32 1, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %21 = load i32, i32* %9, align 4
  %22 = ashr i32 %21, 7
  %23 = and i32 %22, 254
  store i32 %23, i32* %15, align 4
  %24 = load i32, i32* %15, align 4
  %25 = load i32, i32* %9, align 4
  %26 = and i32 %25, 255
  %27 = call i32 @ixgbe_ones_comp_byte_add(i32 %24, i32 %26)
  store i32 %27, i32* %16, align 4
  %28 = load i32, i32* %16, align 4
  %29 = load i32, i32* %10, align 4
  %30 = ashr i32 %29, 8
  %31 = call i32 @ixgbe_ones_comp_byte_add(i32 %28, i32 %30)
  store i32 %31, i32* %16, align 4
  %32 = load i32, i32* %16, align 4
  %33 = load i32, i32* %10, align 4
  %34 = and i32 %33, 255
  %35 = call i32 @ixgbe_ones_comp_byte_add(i32 %32, i32 %34)
  store i32 %35, i32* %16, align 4
  %36 = load i32, i32* %16, align 4
  %37 = xor i32 %36, -1
  store i32 %37, i32* %16, align 4
  br label %38

38:                                               ; preds = %139, %5
  %39 = load i32, i32* %11, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %54

41:                                               ; preds = %38
  %42 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %43 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  %46 = load i64 (%struct.ixgbe_hw.1*, i32)*, i64 (%struct.ixgbe_hw.1*, i32)** %45, align 8
  %47 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %48 = bitcast %struct.ixgbe_hw* %47 to %struct.ixgbe_hw.1*
  %49 = load i32, i32* %12, align 4
  %50 = call i64 %46(%struct.ixgbe_hw.1* %48, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %41
  %53 = load i32, i32* @IXGBE_ERR_SWFW_SYNC, align 4
  store i32 %53, i32* %6, align 4
  br label %145

54:                                               ; preds = %41, %38
  %55 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %56 = call i32 @ixgbe_i2c_start(%struct.ixgbe_hw* %55)
  %57 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %58 = load i32, i32* %8, align 4
  %59 = call i64 @ixgbe_out_i2c_byte_ack(%struct.ixgbe_hw* %57, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %54
  br label %111

62:                                               ; preds = %54
  %63 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %64 = load i32, i32* %15, align 4
  %65 = call i64 @ixgbe_out_i2c_byte_ack(%struct.ixgbe_hw* %63, i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  br label %111

68:                                               ; preds = %62
  %69 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %70 = load i32, i32* %9, align 4
  %71 = and i32 %70, 255
  %72 = call i64 @ixgbe_out_i2c_byte_ack(%struct.ixgbe_hw* %69, i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %68
  br label %111

75:                                               ; preds = %68
  %76 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %77 = load i32, i32* %10, align 4
  %78 = ashr i32 %77, 8
  %79 = call i64 @ixgbe_out_i2c_byte_ack(%struct.ixgbe_hw* %76, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %75
  br label %111

82:                                               ; preds = %75
  %83 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %84 = load i32, i32* %10, align 4
  %85 = and i32 %84, 255
  %86 = call i64 @ixgbe_out_i2c_byte_ack(%struct.ixgbe_hw* %83, i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %82
  br label %111

89:                                               ; preds = %82
  %90 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %91 = load i32, i32* %16, align 4
  %92 = call i64 @ixgbe_out_i2c_byte_ack(%struct.ixgbe_hw* %90, i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %89
  br label %111

95:                                               ; preds = %89
  %96 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %97 = call i32 @ixgbe_i2c_stop(%struct.ixgbe_hw* %96)
  %98 = load i32, i32* %11, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %110

100:                                              ; preds = %95
  %101 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %102 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  %105 = load i32 (%struct.ixgbe_hw.0*, i32)*, i32 (%struct.ixgbe_hw.0*, i32)** %104, align 8
  %106 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %107 = bitcast %struct.ixgbe_hw* %106 to %struct.ixgbe_hw.0*
  %108 = load i32, i32* %12, align 4
  %109 = call i32 %105(%struct.ixgbe_hw.0* %107, i32 %108)
  br label %110

110:                                              ; preds = %100, %95
  store i32 0, i32* %6, align 4
  br label %145

111:                                              ; preds = %94, %88, %81, %74, %67, %61
  %112 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %113 = call i32 @ixgbe_i2c_bus_clear(%struct.ixgbe_hw* %112)
  %114 = load i32, i32* %11, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %126

116:                                              ; preds = %111
  %117 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %118 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 0
  %121 = load i32 (%struct.ixgbe_hw.0*, i32)*, i32 (%struct.ixgbe_hw.0*, i32)** %120, align 8
  %122 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %123 = bitcast %struct.ixgbe_hw* %122 to %struct.ixgbe_hw.0*
  %124 = load i32, i32* %12, align 4
  %125 = call i32 %121(%struct.ixgbe_hw.0* %123, i32 %124)
  br label %126

126:                                              ; preds = %116, %111
  %127 = load i32, i32* %14, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %14, align 4
  %129 = load i32, i32* %14, align 4
  %130 = load i32, i32* %13, align 4
  %131 = icmp slt i32 %129, %130
  br i1 %131, label %132, label %135

132:                                              ; preds = %126
  %133 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %134 = call i32 @hw_dbg(%struct.ixgbe_hw* %133, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %138

135:                                              ; preds = %126
  %136 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %137 = call i32 @hw_dbg(%struct.ixgbe_hw* %136, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %138

138:                                              ; preds = %135, %132
  br label %139

139:                                              ; preds = %138
  %140 = load i32, i32* %14, align 4
  %141 = load i32, i32* %13, align 4
  %142 = icmp slt i32 %140, %141
  br i1 %142, label %38, label %143

143:                                              ; preds = %139
  %144 = load i32, i32* @IXGBE_ERR_I2C, align 4
  store i32 %144, i32* %6, align 4
  br label %145

145:                                              ; preds = %143, %110, %52
  %146 = load i32, i32* %6, align 4
  ret i32 %146
}

declare dso_local i32 @ixgbe_ones_comp_byte_add(i32, i32) #1

declare dso_local i32 @ixgbe_i2c_start(%struct.ixgbe_hw*) #1

declare dso_local i64 @ixgbe_out_i2c_byte_ack(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @ixgbe_i2c_stop(%struct.ixgbe_hw*) #1

declare dso_local i32 @ixgbe_i2c_bus_clear(%struct.ixgbe_hw*) #1

declare dso_local i32 @hw_dbg(%struct.ixgbe_hw*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
