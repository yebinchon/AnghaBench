; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ngene/extr_ngene-cards.c_ReadEEProm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ngene/extr_ngene-cards.c_ReadEEProm.c"
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
@STATUS_BUFFER_OVERFLOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, i64, i64, i32*, i64*)* @ReadEEProm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ReadEEProm(%struct.i2c_adapter* %0, i64 %1, i64 %2, i32* %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.i2c_adapter*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca %struct.device*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca [3 x i32], align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i32* %3, i32** %10, align 8
  store i64* %4, i64** %11, align 8
  %18 = load %struct.i2c_adapter*, %struct.i2c_adapter** %7, align 8
  %19 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load %struct.device*, %struct.device** %20, align 8
  store %struct.device* %21, %struct.device** %12, align 8
  store i32 0, i32* %13, align 4
  %22 = load i64, i64* @MICNG_EE_START, align 8
  store i64 %22, i64* %14, align 8
  store i64 0, i64* %16, align 8
  br label %23

23:                                               ; preds = %57, %5
  %24 = load i64, i64* %14, align 8
  %25 = add i64 %24, 8
  %26 = add i64 %25, 1
  %27 = load i64, i64* @MICNG_EE_END, align 8
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %29, label %64

29:                                               ; preds = %23
  %30 = load %struct.i2c_adapter*, %struct.i2c_adapter** %7, align 8
  %31 = load i64, i64* %14, align 8
  %32 = getelementptr inbounds [3 x i32], [3 x i32]* %17, i64 0, i64 0
  %33 = call i32 @i2c_read_eeprom(%struct.i2c_adapter* %30, i32 80, i64 %31, i32* %32, i64 12)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  store i32 -1, i32* %6, align 4
  br label %110

36:                                               ; preds = %29
  %37 = getelementptr inbounds [3 x i32], [3 x i32]* %17, i64 0, i64 0
  %38 = load i32, i32* %37, align 4
  %39 = shl i32 %38, 8
  %40 = getelementptr inbounds [3 x i32], [3 x i32]* %17, i64 0, i64 1
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %39, %41
  %43 = sext i32 %42 to i64
  store i64 %43, i64* %16, align 8
  %44 = load i64, i64* %16, align 8
  %45 = load i64, i64* @MICNG_EETAG_END0, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %51, label %47

47:                                               ; preds = %36
  %48 = load i64, i64* %16, align 8
  %49 = load i64, i64* @MICNG_EETAG_END1, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %47, %36
  store i32 -1, i32* %6, align 4
  br label %110

52:                                               ; preds = %47
  %53 = load i64, i64* %16, align 8
  %54 = load i64, i64* %8, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  br label %64

57:                                               ; preds = %52
  %58 = getelementptr inbounds [3 x i32], [3 x i32]* %17, i64 0, i64 2
  %59 = load i32, i32* %58, align 4
  %60 = sext i32 %59 to i64
  %61 = add i64 9, %60
  %62 = load i64, i64* %14, align 8
  %63 = add i64 %62, %61
  store i64 %63, i64* %14, align 8
  br label %23

64:                                               ; preds = %56, %23
  %65 = load i64, i64* %14, align 8
  %66 = add i64 %65, 8
  %67 = add i64 %66, 1
  %68 = getelementptr inbounds [3 x i32], [3 x i32]* %17, i64 0, i64 2
  %69 = load i32, i32* %68, align 4
  %70 = sext i32 %69 to i64
  %71 = add i64 %67, %70
  %72 = load i64, i64* @MICNG_EE_END, align 8
  %73 = icmp ugt i64 %71, %72
  br i1 %73, label %74, label %80

74:                                               ; preds = %64
  %75 = load %struct.device*, %struct.device** %12, align 8
  %76 = load i64, i64* %16, align 8
  %77 = getelementptr inbounds [3 x i32], [3 x i32]* %17, i64 0, i64 2
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @dev_err(%struct.device* %75, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %76, i32 %78)
  store i32 -1, i32* %6, align 4
  br label %110

80:                                               ; preds = %64
  %81 = getelementptr inbounds [3 x i32], [3 x i32]* %17, i64 0, i64 2
  %82 = load i32, i32* %81, align 4
  %83 = sext i32 %82 to i64
  store i64 %83, i64* %15, align 8
  %84 = load i64, i64* %15, align 8
  %85 = load i64, i64* %9, align 8
  %86 = icmp sgt i64 %84, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %80
  %88 = load i64, i64* %9, align 8
  store i64 %88, i64* %15, align 8
  br label %89

89:                                               ; preds = %87, %80
  %90 = load i64, i64* %15, align 8
  %91 = icmp sgt i64 %90, 0
  br i1 %91, label %92, label %108

92:                                               ; preds = %89
  %93 = load i64, i64* %14, align 8
  %94 = add i64 %93, 9
  store i64 %94, i64* %14, align 8
  %95 = load %struct.i2c_adapter*, %struct.i2c_adapter** %7, align 8
  %96 = load i64, i64* %14, align 8
  %97 = load i32*, i32** %10, align 8
  %98 = load i64, i64* %15, align 8
  %99 = call i32 @i2c_read_eeprom(%struct.i2c_adapter* %95, i32 80, i64 %96, i32* %97, i64 %98)
  store i32 %99, i32* %13, align 4
  %100 = load i32, i32* %13, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %107, label %102

102:                                              ; preds = %92
  %103 = getelementptr inbounds [3 x i32], [3 x i32]* %17, i64 0, i64 2
  %104 = load i32, i32* %103, align 4
  %105 = sext i32 %104 to i64
  %106 = load i64*, i64** %11, align 8
  store i64 %105, i64* %106, align 8
  br label %107

107:                                              ; preds = %102, %92
  br label %108

108:                                              ; preds = %107, %89
  %109 = load i32, i32* %13, align 4
  store i32 %109, i32* %6, align 4
  br label %110

110:                                              ; preds = %108, %74, %51, %35
  %111 = load i32, i32* %6, align 4
  ret i32 %111
}

declare dso_local i32 @i2c_read_eeprom(%struct.i2c_adapter*, i32, i64, i32*, i64) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
