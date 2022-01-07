; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_phy.c_ixgbe_read_i2c_combined_generic_int.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_phy.c_ixgbe_read_i2c_combined_generic_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 (%struct.ixgbe_hw.0*, i32)*, i64 (%struct.ixgbe_hw.1*, i32)* }
%struct.ixgbe_hw.0 = type opaque
%struct.ixgbe_hw.1 = type opaque
%struct.TYPE_4__ = type { i32 }

@IXGBE_ERR_SWFW_SYNC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"I2C byte read combined error - Retry.\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"I2C byte read combined error.\0A\00", align 1
@IXGBE_ERR_I2C = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_read_i2c_combined_generic_int(%struct.ixgbe_hw* %0, i32 %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ixgbe_hw*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %20 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %21 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %12, align 4
  store i32 3, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %24 = load i32, i32* %9, align 4
  %25 = ashr i32 %24, 7
  %26 = and i32 %25, 254
  %27 = or i32 %26, 1
  store i32 %27, i32* %18, align 4
  %28 = load i32, i32* %18, align 4
  %29 = load i32, i32* %9, align 4
  %30 = and i32 %29, 255
  %31 = call i32 @ixgbe_ones_comp_byte_add(i32 %28, i32 %30)
  store i32 %31, i32* %19, align 4
  %32 = load i32, i32* %19, align 4
  %33 = xor i32 %32, -1
  store i32 %33, i32* %19, align 4
  br label %34

34:                                               ; preds = %155, %5
  %35 = load i32, i32* %11, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %50

37:                                               ; preds = %34
  %38 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %39 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  %42 = load i64 (%struct.ixgbe_hw.1*, i32)*, i64 (%struct.ixgbe_hw.1*, i32)** %41, align 8
  %43 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %44 = bitcast %struct.ixgbe_hw* %43 to %struct.ixgbe_hw.1*
  %45 = load i32, i32* %12, align 4
  %46 = call i64 %42(%struct.ixgbe_hw.1* %44, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %37
  %49 = load i32, i32* @IXGBE_ERR_SWFW_SYNC, align 4
  store i32 %49, i32* %6, align 4
  br label %161

50:                                               ; preds = %37, %34
  %51 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %52 = call i32 @ixgbe_i2c_start(%struct.ixgbe_hw* %51)
  %53 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %54 = load i32, i32* %8, align 4
  %55 = call i64 @ixgbe_out_i2c_byte_ack(%struct.ixgbe_hw* %53, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %50
  br label %127

58:                                               ; preds = %50
  %59 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %60 = load i32, i32* %18, align 4
  %61 = call i64 @ixgbe_out_i2c_byte_ack(%struct.ixgbe_hw* %59, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  br label %127

64:                                               ; preds = %58
  %65 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %66 = load i32, i32* %9, align 4
  %67 = and i32 %66, 255
  %68 = call i64 @ixgbe_out_i2c_byte_ack(%struct.ixgbe_hw* %65, i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %64
  br label %127

71:                                               ; preds = %64
  %72 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %73 = load i32, i32* %19, align 4
  %74 = call i64 @ixgbe_out_i2c_byte_ack(%struct.ixgbe_hw* %72, i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %71
  br label %127

77:                                               ; preds = %71
  %78 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %79 = call i32 @ixgbe_i2c_start(%struct.ixgbe_hw* %78)
  %80 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %81 = load i32, i32* %8, align 4
  %82 = or i32 %81, 1
  %83 = call i64 @ixgbe_out_i2c_byte_ack(%struct.ixgbe_hw* %80, i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %77
  br label %127

86:                                               ; preds = %77
  %87 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %88 = call i64 @ixgbe_in_i2c_byte_ack(%struct.ixgbe_hw* %87, i32* %16)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %86
  br label %127

91:                                               ; preds = %86
  %92 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %93 = call i64 @ixgbe_in_i2c_byte_ack(%struct.ixgbe_hw* %92, i32* %17)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %91
  br label %127

96:                                               ; preds = %91
  %97 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %98 = call i64 @ixgbe_clock_in_i2c_byte(%struct.ixgbe_hw* %97, i32* %15)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %96
  br label %127

101:                                              ; preds = %96
  %102 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %103 = call i64 @ixgbe_clock_out_i2c_bit(%struct.ixgbe_hw* %102, i32 0)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %101
  br label %127

106:                                              ; preds = %101
  %107 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %108 = call i32 @ixgbe_i2c_stop(%struct.ixgbe_hw* %107)
  %109 = load i32, i32* %11, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %121

111:                                              ; preds = %106
  %112 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %113 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 0
  %116 = load i32 (%struct.ixgbe_hw.0*, i32)*, i32 (%struct.ixgbe_hw.0*, i32)** %115, align 8
  %117 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %118 = bitcast %struct.ixgbe_hw* %117 to %struct.ixgbe_hw.0*
  %119 = load i32, i32* %12, align 4
  %120 = call i32 %116(%struct.ixgbe_hw.0* %118, i32 %119)
  br label %121

121:                                              ; preds = %111, %106
  %122 = load i32, i32* %16, align 4
  %123 = shl i32 %122, 8
  %124 = load i32, i32* %17, align 4
  %125 = or i32 %123, %124
  %126 = load i32*, i32** %10, align 8
  store i32 %125, i32* %126, align 4
  store i32 0, i32* %6, align 4
  br label %161

127:                                              ; preds = %105, %100, %95, %90, %85, %76, %70, %63, %57
  %128 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %129 = call i32 @ixgbe_i2c_bus_clear(%struct.ixgbe_hw* %128)
  %130 = load i32, i32* %11, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %142

132:                                              ; preds = %127
  %133 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %134 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 0
  %137 = load i32 (%struct.ixgbe_hw.0*, i32)*, i32 (%struct.ixgbe_hw.0*, i32)** %136, align 8
  %138 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %139 = bitcast %struct.ixgbe_hw* %138 to %struct.ixgbe_hw.0*
  %140 = load i32, i32* %12, align 4
  %141 = call i32 %137(%struct.ixgbe_hw.0* %139, i32 %140)
  br label %142

142:                                              ; preds = %132, %127
  %143 = load i32, i32* %14, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %14, align 4
  %145 = load i32, i32* %14, align 4
  %146 = load i32, i32* %13, align 4
  %147 = icmp slt i32 %145, %146
  br i1 %147, label %148, label %151

148:                                              ; preds = %142
  %149 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %150 = call i32 @hw_dbg(%struct.ixgbe_hw* %149, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %154

151:                                              ; preds = %142
  %152 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %153 = call i32 @hw_dbg(%struct.ixgbe_hw* %152, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %154

154:                                              ; preds = %151, %148
  br label %155

155:                                              ; preds = %154
  %156 = load i32, i32* %14, align 4
  %157 = load i32, i32* %13, align 4
  %158 = icmp slt i32 %156, %157
  br i1 %158, label %34, label %159

159:                                              ; preds = %155
  %160 = load i32, i32* @IXGBE_ERR_I2C, align 4
  store i32 %160, i32* %6, align 4
  br label %161

161:                                              ; preds = %159, %121, %48
  %162 = load i32, i32* %6, align 4
  ret i32 %162
}

declare dso_local i32 @ixgbe_ones_comp_byte_add(i32, i32) #1

declare dso_local i32 @ixgbe_i2c_start(%struct.ixgbe_hw*) #1

declare dso_local i64 @ixgbe_out_i2c_byte_ack(%struct.ixgbe_hw*, i32) #1

declare dso_local i64 @ixgbe_in_i2c_byte_ack(%struct.ixgbe_hw*, i32*) #1

declare dso_local i64 @ixgbe_clock_in_i2c_byte(%struct.ixgbe_hw*, i32*) #1

declare dso_local i64 @ixgbe_clock_out_i2c_bit(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @ixgbe_i2c_stop(%struct.ixgbe_hw*) #1

declare dso_local i32 @ixgbe_i2c_bus_clear(%struct.ixgbe_hw*) #1

declare dso_local i32 @hw_dbg(%struct.ixgbe_hw*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
