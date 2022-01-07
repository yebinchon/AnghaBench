; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ngene/extr_ngene-cards.c_WriteEEProm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ngene/extr_ngene-cards.c_WriteEEProm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device* }
%struct.device = type { i32 }

@MICNG_EE_START = common dso_local global i64 0, align 8
@MICNG_EE_END = common dso_local global i64 0, align 8
@MICNG_EETAG_END0 = common dso_local global i64 0, align 8
@MICNG_EETAG_END1 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"Reached EOEE @ Tag = %04x Length = %3d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"eeprom write error\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Timeout polling eeprom\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, i64, i32, i32*)* @WriteEEProm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @WriteEEProm(%struct.i2c_adapter* %0, i64 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.i2c_adapter*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca [3 x i32], align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %18 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %19 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load %struct.device*, %struct.device** %20, align 8
  store %struct.device* %21, %struct.device** %10, align 8
  store i32 0, i32* %11, align 4
  %22 = load i64, i64* @MICNG_EE_START, align 8
  store i64 %22, i64* %12, align 8
  store i64 0, i64* %14, align 8
  br label %23

23:                                               ; preds = %57, %4
  %24 = load i64, i64* %12, align 8
  %25 = add i64 %24, 8
  %26 = add i64 %25, 1
  %27 = load i64, i64* @MICNG_EE_END, align 8
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %29, label %64

29:                                               ; preds = %23
  %30 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %31 = load i64, i64* %12, align 8
  %32 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  %33 = call i32 @i2c_read_eeprom(%struct.i2c_adapter* %30, i32 80, i64 %31, i32* %32, i32 12)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  store i32 -1, i32* %5, align 4
  br label %147

36:                                               ; preds = %29
  %37 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  %38 = load i32, i32* %37, align 4
  %39 = shl i32 %38, 8
  %40 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 1
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %39, %41
  %43 = sext i32 %42 to i64
  store i64 %43, i64* %14, align 8
  %44 = load i64, i64* %14, align 8
  %45 = load i64, i64* @MICNG_EETAG_END0, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %51, label %47

47:                                               ; preds = %36
  %48 = load i64, i64* %14, align 8
  %49 = load i64, i64* @MICNG_EETAG_END1, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %47, %36
  store i32 -1, i32* %5, align 4
  br label %147

52:                                               ; preds = %47
  %53 = load i64, i64* %14, align 8
  %54 = load i64, i64* %7, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  br label %64

57:                                               ; preds = %52
  %58 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 2
  %59 = load i32, i32* %58, align 4
  %60 = sext i32 %59 to i64
  %61 = add i64 9, %60
  %62 = load i64, i64* %12, align 8
  %63 = add i64 %62, %61
  store i64 %63, i64* %12, align 8
  br label %23

64:                                               ; preds = %56, %23
  %65 = load i64, i64* %12, align 8
  %66 = add i64 %65, 8
  %67 = add i64 %66, 1
  %68 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 2
  %69 = load i32, i32* %68, align 4
  %70 = sext i32 %69 to i64
  %71 = add i64 %67, %70
  %72 = load i64, i64* @MICNG_EE_END, align 8
  %73 = icmp ugt i64 %71, %72
  br i1 %73, label %74, label %80

74:                                               ; preds = %64
  %75 = load %struct.device*, %struct.device** %10, align 8
  %76 = load i64, i64* %14, align 8
  %77 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 2
  %78 = load i32, i32* %77, align 4
  %79 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %75, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %76, i32 %78)
  store i32 -1, i32* %5, align 4
  br label %147

80:                                               ; preds = %64
  %81 = load i32, i32* %8, align 4
  %82 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 2
  %83 = load i32, i32* %82, align 4
  %84 = icmp sgt i32 %81, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %80
  %86 = load i32, i32* @EINVAL, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %5, align 4
  br label %147

88:                                               ; preds = %80
  %89 = load i64, i64* %12, align 8
  %90 = add i64 %89, 9
  store i64 %90, i64* %12, align 8
  store i32 0, i32* %16, align 4
  br label %91

91:                                               ; preds = %140, %88
  %92 = load i32, i32* %16, align 4
  %93 = load i32, i32* %8, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %95, label %145

95:                                               ; preds = %91
  %96 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %97 = load i64, i64* %12, align 8
  %98 = load i32*, i32** %9, align 8
  %99 = load i32, i32* %16, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @i2c_write_eeprom(%struct.i2c_adapter* %96, i32 80, i64 %97, i32 %102)
  store i32 %103, i32* %11, align 4
  %104 = load i32, i32* %11, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %95
  br label %145

107:                                              ; preds = %95
  store i32 10, i32* %15, align 4
  br label %108

108:                                              ; preds = %130, %107
  %109 = load i32, i32* %15, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %133

111:                                              ; preds = %108
  %112 = call i32 @msleep(i32 50)
  %113 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %114 = load i64, i64* %12, align 8
  %115 = call i32 @i2c_read_eeprom(%struct.i2c_adapter* %113, i32 80, i64 %114, i32* %17, i32 1)
  store i32 %115, i32* %11, align 4
  %116 = load i32, i32* %11, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %111
  br label %133

119:                                              ; preds = %111
  %120 = load i32, i32* %17, align 4
  %121 = load i32*, i32** %9, align 8
  %122 = load i32, i32* %16, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = icmp ne i32 %120, %125
  br i1 %126, label %127, label %130

127:                                              ; preds = %119
  %128 = load %struct.device*, %struct.device** %10, align 8
  %129 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %128, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %130

130:                                              ; preds = %127, %119
  %131 = load i32, i32* %15, align 4
  %132 = sub nsw i32 %131, 1
  store i32 %132, i32* %15, align 4
  br label %108

133:                                              ; preds = %118, %108
  %134 = load i32, i32* %11, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %133
  %137 = load %struct.device*, %struct.device** %10, align 8
  %138 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %137, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %145

139:                                              ; preds = %133
  br label %140

140:                                              ; preds = %139
  %141 = load i32, i32* %16, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %16, align 4
  %143 = load i64, i64* %12, align 8
  %144 = add nsw i64 %143, 1
  store i64 %144, i64* %12, align 8
  br label %91

145:                                              ; preds = %136, %106, %91
  %146 = load i32, i32* %11, align 4
  store i32 %146, i32* %5, align 4
  br label %147

147:                                              ; preds = %145, %85, %74, %51, %35
  %148 = load i32, i32* %5, align 4
  ret i32 %148
}

declare dso_local i32 @i2c_read_eeprom(%struct.i2c_adapter*, i32, i64, i32*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @i2c_write_eeprom(%struct.i2c_adapter*, i32, i64, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
