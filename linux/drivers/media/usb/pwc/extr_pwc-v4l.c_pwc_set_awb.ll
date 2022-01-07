; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/pwc/extr_pwc-v4l.c_pwc_set_awb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/pwc/extr_pwc-v4l.c_pwc_set_awb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwc_device = type { i32, %struct.TYPE_5__*, %struct.TYPE_4__*, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i64, i64 }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_6__ = type { i64, i64 }

@SET_CHROM_CTL = common dso_local global i32 0, align 4
@WB_MODE_FORMATTER = common dso_local global i32 0, align 4
@awb_manual = common dso_local global i64 0, align 8
@awb_indoor = common dso_local global i64 0, align 8
@awb_outdoor = common dso_local global i64 0, align 8
@awb_fl = common dso_local global i64 0, align 8
@PRESET_MANUAL_RED_GAIN_FORMATTER = common dso_local global i32 0, align 4
@PRESET_MANUAL_BLUE_GAIN_FORMATTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pwc_device*)* @pwc_set_awb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pwc_set_awb(%struct.pwc_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pwc_device*, align 8
  %4 = alloca i32, align 4
  store %struct.pwc_device* %0, %struct.pwc_device** %3, align 8
  %5 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %6 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %5, i32 0, i32 3
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %66

11:                                               ; preds = %1
  %12 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %13 = load i32, i32* @SET_CHROM_CTL, align 4
  %14 = load i32, i32* @WB_MODE_FORMATTER, align 4
  %15 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %16 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %15, i32 0, i32 3
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @pwc_set_u8_ctrl(%struct.pwc_device* %12, i32 %13, i32 %14, i64 %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %11
  %24 = load i32, i32* %4, align 4
  store i32 %24, i32* %2, align 4
  br label %120

25:                                               ; preds = %11
  %26 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %27 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %26, i32 0, i32 3
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @awb_manual, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %25
  %34 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %35 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %34, i32 0, i32 0
  store i32 0, i32* %35, align 8
  br label %36

36:                                               ; preds = %33, %25
  %37 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %38 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %37, i32 0, i32 3
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @awb_indoor, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %60, label %44

44:                                               ; preds = %36
  %45 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %46 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %45, i32 0, i32 3
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @awb_outdoor, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %60, label %52

52:                                               ; preds = %44
  %53 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %54 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %53, i32 0, i32 3
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @awb_fl, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %52, %44, %36
  %61 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %62 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %61, i32 0, i32 3
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = call i32 @pwc_g_volatile_ctrl(%struct.TYPE_6__* %63)
  br label %65

65:                                               ; preds = %60, %52
  br label %66

66:                                               ; preds = %65, %1
  %67 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %68 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %67, i32 0, i32 3
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @awb_manual, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %66
  store i32 0, i32* %2, align 4
  br label %120

75:                                               ; preds = %66
  %76 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %77 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %76, i32 0, i32 2
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %97

82:                                               ; preds = %75
  %83 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %84 = load i32, i32* @SET_CHROM_CTL, align 4
  %85 = load i32, i32* @PRESET_MANUAL_RED_GAIN_FORMATTER, align 4
  %86 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %87 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %86, i32 0, i32 2
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = call i32 @pwc_set_u8_ctrl(%struct.pwc_device* %83, i32 %84, i32 %85, i64 %90)
  store i32 %91, i32* %4, align 4
  %92 = load i32, i32* %4, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %82
  %95 = load i32, i32* %4, align 4
  store i32 %95, i32* %2, align 4
  br label %120

96:                                               ; preds = %82
  br label %97

97:                                               ; preds = %96, %75
  %98 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %99 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %98, i32 0, i32 1
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %119

104:                                              ; preds = %97
  %105 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %106 = load i32, i32* @SET_CHROM_CTL, align 4
  %107 = load i32, i32* @PRESET_MANUAL_BLUE_GAIN_FORMATTER, align 4
  %108 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %109 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %108, i32 0, i32 1
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = call i32 @pwc_set_u8_ctrl(%struct.pwc_device* %105, i32 %106, i32 %107, i64 %112)
  store i32 %113, i32* %4, align 4
  %114 = load i32, i32* %4, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %104
  %117 = load i32, i32* %4, align 4
  store i32 %117, i32* %2, align 4
  br label %120

118:                                              ; preds = %104
  br label %119

119:                                              ; preds = %118, %97
  store i32 0, i32* %2, align 4
  br label %120

120:                                              ; preds = %119, %116, %94, %74, %23
  %121 = load i32, i32* %2, align 4
  ret i32 %121
}

declare dso_local i32 @pwc_set_u8_ctrl(%struct.pwc_device*, i32, i32, i64) #1

declare dso_local i32 @pwc_g_volatile_ctrl(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
