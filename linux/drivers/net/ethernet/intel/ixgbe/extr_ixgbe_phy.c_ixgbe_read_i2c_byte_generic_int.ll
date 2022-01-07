; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_phy.c_ixgbe_read_i2c_byte_generic_int.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_phy.c_ixgbe_read_i2c_byte_generic_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 (%struct.ixgbe_hw.0*, i32)*, i64 (%struct.ixgbe_hw.1*, i32)* }
%struct.ixgbe_hw.0 = type opaque
%struct.ixgbe_hw.1 = type opaque
%struct.TYPE_4__ = type { i32 }

@ixgbe_mac_X550 = common dso_local global i64 0, align 8
@IXGBE_SFP_DETECT_RETRIES = common dso_local global i32 0, align 4
@IXGBE_ERR_SWFW_SYNC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"I2C byte read error - Retrying.\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"I2C byte read error.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbe_hw*, i32, i32, i32*, i32)* @ixgbe_read_i2c_byte_generic_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_read_i2c_byte_generic_int(%struct.ixgbe_hw* %0, i32 %1, i32 %2, i32* %3, i32 %4) #0 {
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
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 10, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %17 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %18 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %15, align 4
  store i32 1, i32* %16, align 4
  %21 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %22 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @ixgbe_mac_X550, align 8
  %26 = icmp sge i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %5
  store i32 3, i32* %13, align 4
  br label %28

28:                                               ; preds = %27, %5
  %29 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %9, align 4
  %32 = call i64 @ixgbe_is_sfp_probe(%struct.ixgbe_hw* %29, i32 %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i32, i32* @IXGBE_SFP_DETECT_RETRIES, align 4
  store i32 %35, i32* %13, align 4
  br label %36

36:                                               ; preds = %34, %28
  %37 = load i32*, i32** %10, align 8
  store i32 0, i32* %37, align 4
  br label %38

38:                                               ; preds = %157, %36
  %39 = load i32, i32* %11, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %54

41:                                               ; preds = %38
  %42 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %43 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  %46 = load i64 (%struct.ixgbe_hw.1*, i32)*, i64 (%struct.ixgbe_hw.1*, i32)** %45, align 8
  %47 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %48 = bitcast %struct.ixgbe_hw* %47 to %struct.ixgbe_hw.1*
  %49 = load i32, i32* %15, align 4
  %50 = call i64 %46(%struct.ixgbe_hw.1* %48, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %41
  %53 = load i32, i32* @IXGBE_ERR_SWFW_SYNC, align 4
  store i32 %53, i32* %6, align 4
  br label %163

54:                                               ; preds = %41, %38
  %55 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %56 = call i32 @ixgbe_i2c_start(%struct.ixgbe_hw* %55)
  %57 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @ixgbe_clock_out_i2c_byte(%struct.ixgbe_hw* %57, i32 %58)
  store i32 %59, i32* %12, align 4
  %60 = load i32, i32* %12, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %54
  br label %128

63:                                               ; preds = %54
  %64 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %65 = call i32 @ixgbe_get_i2c_ack(%struct.ixgbe_hw* %64)
  store i32 %65, i32* %12, align 4
  %66 = load i32, i32* %12, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %63
  br label %128

69:                                               ; preds = %63
  %70 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %71 = load i32, i32* %8, align 4
  %72 = call i32 @ixgbe_clock_out_i2c_byte(%struct.ixgbe_hw* %70, i32 %71)
  store i32 %72, i32* %12, align 4
  %73 = load i32, i32* %12, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %69
  br label %128

76:                                               ; preds = %69
  %77 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %78 = call i32 @ixgbe_get_i2c_ack(%struct.ixgbe_hw* %77)
  store i32 %78, i32* %12, align 4
  %79 = load i32, i32* %12, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %76
  br label %128

82:                                               ; preds = %76
  %83 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %84 = call i32 @ixgbe_i2c_start(%struct.ixgbe_hw* %83)
  %85 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %86 = load i32, i32* %9, align 4
  %87 = or i32 %86, 1
  %88 = call i32 @ixgbe_clock_out_i2c_byte(%struct.ixgbe_hw* %85, i32 %87)
  store i32 %88, i32* %12, align 4
  %89 = load i32, i32* %12, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %82
  br label %128

92:                                               ; preds = %82
  %93 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %94 = call i32 @ixgbe_get_i2c_ack(%struct.ixgbe_hw* %93)
  store i32 %94, i32* %12, align 4
  %95 = load i32, i32* %12, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %92
  br label %128

98:                                               ; preds = %92
  %99 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %100 = load i32*, i32** %10, align 8
  %101 = call i32 @ixgbe_clock_in_i2c_byte(%struct.ixgbe_hw* %99, i32* %100)
  store i32 %101, i32* %12, align 4
  %102 = load i32, i32* %12, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %98
  br label %128

105:                                              ; preds = %98
  %106 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %107 = load i32, i32* %16, align 4
  %108 = call i32 @ixgbe_clock_out_i2c_bit(%struct.ixgbe_hw* %106, i32 %107)
  store i32 %108, i32* %12, align 4
  %109 = load i32, i32* %12, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %105
  br label %128

112:                                              ; preds = %105
  %113 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %114 = call i32 @ixgbe_i2c_stop(%struct.ixgbe_hw* %113)
  %115 = load i32, i32* %11, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %127

117:                                              ; preds = %112
  %118 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %119 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 0
  %122 = load i32 (%struct.ixgbe_hw.0*, i32)*, i32 (%struct.ixgbe_hw.0*, i32)** %121, align 8
  %123 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %124 = bitcast %struct.ixgbe_hw* %123 to %struct.ixgbe_hw.0*
  %125 = load i32, i32* %15, align 4
  %126 = call i32 %122(%struct.ixgbe_hw.0* %124, i32 %125)
  br label %127

127:                                              ; preds = %117, %112
  store i32 0, i32* %6, align 4
  br label %163

128:                                              ; preds = %111, %104, %97, %91, %81, %75, %68, %62
  %129 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %130 = call i32 @ixgbe_i2c_bus_clear(%struct.ixgbe_hw* %129)
  %131 = load i32, i32* %11, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %144

133:                                              ; preds = %128
  %134 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %135 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 0
  %138 = load i32 (%struct.ixgbe_hw.0*, i32)*, i32 (%struct.ixgbe_hw.0*, i32)** %137, align 8
  %139 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %140 = bitcast %struct.ixgbe_hw* %139 to %struct.ixgbe_hw.0*
  %141 = load i32, i32* %15, align 4
  %142 = call i32 %138(%struct.ixgbe_hw.0* %140, i32 %141)
  %143 = call i32 @msleep(i32 100)
  br label %144

144:                                              ; preds = %133, %128
  %145 = load i32, i32* %14, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %14, align 4
  %147 = load i32, i32* %14, align 4
  %148 = load i32, i32* %13, align 4
  %149 = icmp slt i32 %147, %148
  br i1 %149, label %150, label %153

150:                                              ; preds = %144
  %151 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %152 = call i32 @hw_dbg(%struct.ixgbe_hw* %151, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %156

153:                                              ; preds = %144
  %154 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %155 = call i32 @hw_dbg(%struct.ixgbe_hw* %154, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %156

156:                                              ; preds = %153, %150
  br label %157

157:                                              ; preds = %156
  %158 = load i32, i32* %14, align 4
  %159 = load i32, i32* %13, align 4
  %160 = icmp slt i32 %158, %159
  br i1 %160, label %38, label %161

161:                                              ; preds = %157
  %162 = load i32, i32* %12, align 4
  store i32 %162, i32* %6, align 4
  br label %163

163:                                              ; preds = %161, %127, %52
  %164 = load i32, i32* %6, align 4
  ret i32 %164
}

declare dso_local i64 @ixgbe_is_sfp_probe(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @ixgbe_i2c_start(%struct.ixgbe_hw*) #1

declare dso_local i32 @ixgbe_clock_out_i2c_byte(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @ixgbe_get_i2c_ack(%struct.ixgbe_hw*) #1

declare dso_local i32 @ixgbe_clock_in_i2c_byte(%struct.ixgbe_hw*, i32*) #1

declare dso_local i32 @ixgbe_clock_out_i2c_bit(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @ixgbe_i2c_stop(%struct.ixgbe_hw*) #1

declare dso_local i32 @ixgbe_i2c_bus_clear(%struct.ixgbe_hw*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @hw_dbg(%struct.ixgbe_hw*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
