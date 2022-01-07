; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_phy.c_ixgbe_write_i2c_byte_generic_int.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_phy.c_ixgbe_write_i2c_byte_generic_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 (%struct.ixgbe_hw.0*, i64)*, i64 (%struct.ixgbe_hw.1*, i64)* }
%struct.ixgbe_hw.0 = type opaque
%struct.ixgbe_hw.1 = type opaque
%struct.TYPE_4__ = type { i64 }

@IXGBE_ERR_SWFW_SYNC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"I2C byte write error - Retrying.\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"I2C byte write error.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbe_hw*, i32, i32, i32, i32)* @ixgbe_write_i2c_byte_generic_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_write_i2c_byte_generic_int(%struct.ixgbe_hw* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ixgbe_hw*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i64 1, i64* %13, align 8
  store i64 0, i64* %14, align 8
  %16 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %17 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %15, align 8
  %20 = load i32, i32* %11, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %5
  %23 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %24 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  %27 = load i64 (%struct.ixgbe_hw.1*, i64)*, i64 (%struct.ixgbe_hw.1*, i64)** %26, align 8
  %28 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %29 = bitcast %struct.ixgbe_hw* %28 to %struct.ixgbe_hw.1*
  %30 = load i64, i64* %15, align 8
  %31 = call i64 %27(%struct.ixgbe_hw.1* %29, i64 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %22
  %34 = load i32, i32* @IXGBE_ERR_SWFW_SYNC, align 4
  store i32 %34, i32* %6, align 4
  br label %127

35:                                               ; preds = %22, %5
  br label %36

36:                                               ; preds = %108, %35
  %37 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %38 = call i32 @ixgbe_i2c_start(%struct.ixgbe_hw* %37)
  %39 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @ixgbe_clock_out_i2c_byte(%struct.ixgbe_hw* %39, i32 %40)
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %12, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  br label %93

45:                                               ; preds = %36
  %46 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %47 = call i32 @ixgbe_get_i2c_ack(%struct.ixgbe_hw* %46)
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* %12, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  br label %93

51:                                               ; preds = %45
  %52 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @ixgbe_clock_out_i2c_byte(%struct.ixgbe_hw* %52, i32 %53)
  store i32 %54, i32* %12, align 4
  %55 = load i32, i32* %12, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  br label %93

58:                                               ; preds = %51
  %59 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %60 = call i32 @ixgbe_get_i2c_ack(%struct.ixgbe_hw* %59)
  store i32 %60, i32* %12, align 4
  %61 = load i32, i32* %12, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  br label %93

64:                                               ; preds = %58
  %65 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %66 = load i32, i32* %10, align 4
  %67 = call i32 @ixgbe_clock_out_i2c_byte(%struct.ixgbe_hw* %65, i32 %66)
  store i32 %67, i32* %12, align 4
  %68 = load i32, i32* %12, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %64
  br label %93

71:                                               ; preds = %64
  %72 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %73 = call i32 @ixgbe_get_i2c_ack(%struct.ixgbe_hw* %72)
  store i32 %73, i32* %12, align 4
  %74 = load i32, i32* %12, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %71
  br label %93

77:                                               ; preds = %71
  %78 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %79 = call i32 @ixgbe_i2c_stop(%struct.ixgbe_hw* %78)
  %80 = load i32, i32* %11, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %92

82:                                               ; preds = %77
  %83 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %84 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load i32 (%struct.ixgbe_hw.0*, i64)*, i32 (%struct.ixgbe_hw.0*, i64)** %86, align 8
  %88 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %89 = bitcast %struct.ixgbe_hw* %88 to %struct.ixgbe_hw.0*
  %90 = load i64, i64* %15, align 8
  %91 = call i32 %87(%struct.ixgbe_hw.0* %89, i64 %90)
  br label %92

92:                                               ; preds = %82, %77
  store i32 0, i32* %6, align 4
  br label %127

93:                                               ; preds = %76, %70, %63, %57, %50, %44
  %94 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %95 = call i32 @ixgbe_i2c_bus_clear(%struct.ixgbe_hw* %94)
  %96 = load i64, i64* %14, align 8
  %97 = add nsw i64 %96, 1
  store i64 %97, i64* %14, align 8
  %98 = load i64, i64* %14, align 8
  %99 = load i64, i64* %13, align 8
  %100 = icmp slt i64 %98, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %93
  %102 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %103 = call i32 @hw_dbg(%struct.ixgbe_hw* %102, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %107

104:                                              ; preds = %93
  %105 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %106 = call i32 @hw_dbg(%struct.ixgbe_hw* %105, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %107

107:                                              ; preds = %104, %101
  br label %108

108:                                              ; preds = %107
  %109 = load i64, i64* %14, align 8
  %110 = load i64, i64* %13, align 8
  %111 = icmp slt i64 %109, %110
  br i1 %111, label %36, label %112

112:                                              ; preds = %108
  %113 = load i32, i32* %11, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %125

115:                                              ; preds = %112
  %116 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %117 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 0
  %120 = load i32 (%struct.ixgbe_hw.0*, i64)*, i32 (%struct.ixgbe_hw.0*, i64)** %119, align 8
  %121 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %122 = bitcast %struct.ixgbe_hw* %121 to %struct.ixgbe_hw.0*
  %123 = load i64, i64* %15, align 8
  %124 = call i32 %120(%struct.ixgbe_hw.0* %122, i64 %123)
  br label %125

125:                                              ; preds = %115, %112
  %126 = load i32, i32* %12, align 4
  store i32 %126, i32* %6, align 4
  br label %127

127:                                              ; preds = %125, %92, %33
  %128 = load i32, i32* %6, align 4
  ret i32 %128
}

declare dso_local i32 @ixgbe_i2c_start(%struct.ixgbe_hw*) #1

declare dso_local i32 @ixgbe_clock_out_i2c_byte(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @ixgbe_get_i2c_ack(%struct.ixgbe_hw*) #1

declare dso_local i32 @ixgbe_i2c_stop(%struct.ixgbe_hw*) #1

declare dso_local i32 @ixgbe_i2c_bus_clear(%struct.ixgbe_hw*) #1

declare dso_local i32 @hw_dbg(%struct.ixgbe_hw*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
