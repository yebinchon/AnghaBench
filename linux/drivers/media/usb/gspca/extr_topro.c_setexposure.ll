; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_topro.c_setexposure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_topro.c_setexposure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }
%struct.sd = type { i64, i64 }

@SENSOR_CX0342 = common dso_local global i64 0, align 8
@CX0342_EXPO_LINE_L = common dso_local global i32 0, align 4
@CX0342_EXPO_LINE_H = common dso_local global i32 0, align 4
@BRIDGE_TP6800 = common dso_local global i64 0, align 8
@CX0342_RAW_GBGAIN_H = common dso_local global i32 0, align 4
@CX0342_RAW_GBGAIN_L = common dso_local global i32 0, align 4
@CX0342_RAW_GRGAIN_H = common dso_local global i32 0, align 4
@CX0342_RAW_GRGAIN_L = common dso_local global i32 0, align 4
@CX0342_RAW_BGAIN_H = common dso_local global i32 0, align 4
@CX0342_RAW_BGAIN_L = common dso_local global i32 0, align 4
@CX0342_RAW_RGAIN_H = common dso_local global i32 0, align 4
@CX0342_RAW_RGAIN_L = common dso_local global i32 0, align 4
@CX0342_SYS_CTRL_0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*, i32, i32, i32, i32)* @setexposure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setexposure(%struct.gspca_dev* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.gspca_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.sd*, align 8
  store %struct.gspca_dev* %0, %struct.gspca_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load %struct.gspca_dev*, %struct.gspca_dev** %6, align 8
  %13 = bitcast %struct.gspca_dev* %12 to %struct.sd*
  store %struct.sd* %13, %struct.sd** %11, align 8
  %14 = load %struct.sd*, %struct.sd** %11, align 8
  %15 = getelementptr inbounds %struct.sd, %struct.sd* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @SENSOR_CX0342, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %113

19:                                               ; preds = %5
  %20 = load i32, i32* %7, align 4
  %21 = shl i32 %20, 2
  %22 = sub nsw i32 %21, 1
  store i32 %22, i32* %7, align 4
  %23 = load %struct.gspca_dev*, %struct.gspca_dev** %6, align 8
  %24 = load i32, i32* @CX0342_EXPO_LINE_L, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @i2c_w(%struct.gspca_dev* %23, i32 %24, i32 %25)
  %27 = load %struct.gspca_dev*, %struct.gspca_dev** %6, align 8
  %28 = load i32, i32* @CX0342_EXPO_LINE_H, align 4
  %29 = load i32, i32* %7, align 4
  %30 = ashr i32 %29, 8
  %31 = call i32 @i2c_w(%struct.gspca_dev* %27, i32 %28, i32 %30)
  %32 = load %struct.sd*, %struct.sd** %11, align 8
  %33 = getelementptr inbounds %struct.sd, %struct.sd* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @BRIDGE_TP6800, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %19
  %38 = load %struct.gspca_dev*, %struct.gspca_dev** %6, align 8
  %39 = load i32, i32* @CX0342_RAW_GBGAIN_H, align 4
  %40 = load i32, i32* %8, align 4
  %41 = ashr i32 %40, 8
  %42 = call i32 @i2c_w(%struct.gspca_dev* %38, i32 %39, i32 %41)
  br label %43

43:                                               ; preds = %37, %19
  %44 = load %struct.gspca_dev*, %struct.gspca_dev** %6, align 8
  %45 = load i32, i32* @CX0342_RAW_GBGAIN_L, align 4
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @i2c_w(%struct.gspca_dev* %44, i32 %45, i32 %46)
  %48 = load %struct.sd*, %struct.sd** %11, align 8
  %49 = getelementptr inbounds %struct.sd, %struct.sd* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @BRIDGE_TP6800, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %43
  %54 = load %struct.gspca_dev*, %struct.gspca_dev** %6, align 8
  %55 = load i32, i32* @CX0342_RAW_GRGAIN_H, align 4
  %56 = load i32, i32* %8, align 4
  %57 = ashr i32 %56, 8
  %58 = call i32 @i2c_w(%struct.gspca_dev* %54, i32 %55, i32 %57)
  br label %59

59:                                               ; preds = %53, %43
  %60 = load %struct.gspca_dev*, %struct.gspca_dev** %6, align 8
  %61 = load i32, i32* @CX0342_RAW_GRGAIN_L, align 4
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @i2c_w(%struct.gspca_dev* %60, i32 %61, i32 %62)
  %64 = load %struct.sd*, %struct.sd** %11, align 8
  %65 = getelementptr inbounds %struct.sd, %struct.sd* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @SENSOR_CX0342, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %102

69:                                               ; preds = %59
  %70 = load %struct.sd*, %struct.sd** %11, align 8
  %71 = getelementptr inbounds %struct.sd, %struct.sd* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @BRIDGE_TP6800, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %81

75:                                               ; preds = %69
  %76 = load %struct.gspca_dev*, %struct.gspca_dev** %6, align 8
  %77 = load i32, i32* @CX0342_RAW_BGAIN_H, align 4
  %78 = load i32, i32* %9, align 4
  %79 = ashr i32 %78, 8
  %80 = call i32 @i2c_w(%struct.gspca_dev* %76, i32 %77, i32 %79)
  br label %81

81:                                               ; preds = %75, %69
  %82 = load %struct.gspca_dev*, %struct.gspca_dev** %6, align 8
  %83 = load i32, i32* @CX0342_RAW_BGAIN_L, align 4
  %84 = load i32, i32* %9, align 4
  %85 = call i32 @i2c_w(%struct.gspca_dev* %82, i32 %83, i32 %84)
  %86 = load %struct.sd*, %struct.sd** %11, align 8
  %87 = getelementptr inbounds %struct.sd, %struct.sd* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @BRIDGE_TP6800, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %97

91:                                               ; preds = %81
  %92 = load %struct.gspca_dev*, %struct.gspca_dev** %6, align 8
  %93 = load i32, i32* @CX0342_RAW_RGAIN_H, align 4
  %94 = load i32, i32* %10, align 4
  %95 = ashr i32 %94, 8
  %96 = call i32 @i2c_w(%struct.gspca_dev* %92, i32 %93, i32 %95)
  br label %97

97:                                               ; preds = %91, %81
  %98 = load %struct.gspca_dev*, %struct.gspca_dev** %6, align 8
  %99 = load i32, i32* @CX0342_RAW_RGAIN_L, align 4
  %100 = load i32, i32* %10, align 4
  %101 = call i32 @i2c_w(%struct.gspca_dev* %98, i32 %99, i32 %100)
  br label %102

102:                                              ; preds = %97, %59
  %103 = load %struct.gspca_dev*, %struct.gspca_dev** %6, align 8
  %104 = load i32, i32* @CX0342_SYS_CTRL_0, align 4
  %105 = load %struct.sd*, %struct.sd** %11, align 8
  %106 = getelementptr inbounds %struct.sd, %struct.sd* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @BRIDGE_TP6800, align 8
  %109 = icmp eq i64 %107, %108
  %110 = zext i1 %109 to i64
  %111 = select i1 %109, i32 128, i32 129
  %112 = call i32 @i2c_w(%struct.gspca_dev* %103, i32 %104, i32 %111)
  br label %120

113:                                              ; preds = %5
  %114 = load %struct.gspca_dev*, %struct.gspca_dev** %6, align 8
  %115 = load i32, i32* %7, align 4
  %116 = call i32 @i2c_w(%struct.gspca_dev* %114, i32 16, i32 %115)
  %117 = load %struct.gspca_dev*, %struct.gspca_dev** %6, align 8
  %118 = load i32, i32* %8, align 4
  %119 = call i32 @i2c_w(%struct.gspca_dev* %117, i32 0, i32 %118)
  br label %120

120:                                              ; preds = %113, %102
  ret void
}

declare dso_local i32 @i2c_w(%struct.gspca_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
