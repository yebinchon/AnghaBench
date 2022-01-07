; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/go7007/extr_go7007-driver.c_go7007_register_encoder.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/go7007/extr_go7007-driver.c_go7007_register_encoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.go7007 = type { i32, i64, i64, i32, %struct.TYPE_4__*, i64, i32, %struct.TYPE_5__, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32* }
%struct.TYPE_5__ = type { i32 }
%struct.tuner_setup = type { i64, i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"go7007: registering new %s\0A\00", align 1
@go7007_remove = common dso_local global i32 0, align 4
@GO7007_BOARD_USE_ONBOARD_I2C = common dso_local global i32 0, align 4
@GO7007_BOARDID_ADS_USBAV_709 = common dso_local global i64 0, align 8
@T_ANALOG_TV = common dso_local global i32 0, align 4
@ADDR_UNSET = common dso_local global i32 0, align 4
@tuner = common dso_local global i32 0, align 4
@s_type_addr = common dso_local global i32 0, align 4
@GO7007_BOARDID_ADLINK_MPG24 = common dso_local global i64 0, align 8
@video = common dso_local global i32 0, align 4
@s_routing = common dso_local global i32 0, align 4
@GO7007_BOARD_HAS_AUDIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @go7007_register_encoder(%struct.go7007* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.go7007*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.tuner_setup, align 8
  store %struct.go7007* %0, %struct.go7007** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.go7007*, %struct.go7007** %4, align 8
  %10 = getelementptr inbounds %struct.go7007, %struct.go7007* %9, i32 0, i32 10
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.go7007*, %struct.go7007** %4, align 8
  %13 = getelementptr inbounds %struct.go7007, %struct.go7007* %12, i32 0, i32 11
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @dev_info(i32 %11, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load i32, i32* @go7007_remove, align 4
  %17 = load %struct.go7007*, %struct.go7007** %4, align 8
  %18 = getelementptr inbounds %struct.go7007, %struct.go7007* %17, i32 0, i32 7
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  store i32 %16, i32* %19, align 4
  %20 = load %struct.go7007*, %struct.go7007** %4, align 8
  %21 = getelementptr inbounds %struct.go7007, %struct.go7007* %20, i32 0, i32 10
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.go7007*, %struct.go7007** %4, align 8
  %24 = getelementptr inbounds %struct.go7007, %struct.go7007* %23, i32 0, i32 7
  %25 = call i32 @v4l2_device_register(i32 %22, %struct.TYPE_5__* %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %2
  %29 = load i32, i32* %7, align 4
  store i32 %29, i32* %3, align 4
  br label %170

30:                                               ; preds = %2
  %31 = load %struct.go7007*, %struct.go7007** %4, align 8
  %32 = getelementptr inbounds %struct.go7007, %struct.go7007* %31, i32 0, i32 9
  %33 = call i32 @mutex_lock(i32* %32)
  %34 = load %struct.go7007*, %struct.go7007** %4, align 8
  %35 = call i32 @go7007_init_encoder(%struct.go7007* %34)
  store i32 %35, i32* %7, align 4
  %36 = load %struct.go7007*, %struct.go7007** %4, align 8
  %37 = getelementptr inbounds %struct.go7007, %struct.go7007* %36, i32 0, i32 9
  %38 = call i32 @mutex_unlock(i32* %37)
  %39 = load i32, i32* %7, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %30
  %42 = load i32, i32* %7, align 4
  store i32 %42, i32* %3, align 4
  br label %170

43:                                               ; preds = %30
  %44 = load %struct.go7007*, %struct.go7007** %4, align 8
  %45 = call i32 @go7007_v4l2_ctrl_init(%struct.go7007* %44)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = load i32, i32* %7, align 4
  store i32 %49, i32* %3, align 4
  br label %170

50:                                               ; preds = %43
  %51 = load %struct.go7007*, %struct.go7007** %4, align 8
  %52 = getelementptr inbounds %struct.go7007, %struct.go7007* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %74, label %55

55:                                               ; preds = %50
  %56 = load %struct.go7007*, %struct.go7007** %4, align 8
  %57 = getelementptr inbounds %struct.go7007, %struct.go7007* %56, i32 0, i32 4
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @GO7007_BOARD_USE_ONBOARD_I2C, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %74

64:                                               ; preds = %55
  %65 = load %struct.go7007*, %struct.go7007** %4, align 8
  %66 = call i32 @go7007_i2c_init(%struct.go7007* %65)
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %7, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %64
  %70 = load i32, i32* %7, align 4
  store i32 %70, i32* %3, align 4
  br label %170

71:                                               ; preds = %64
  %72 = load %struct.go7007*, %struct.go7007** %4, align 8
  %73 = getelementptr inbounds %struct.go7007, %struct.go7007* %72, i32 0, i32 0
  store i32 1, i32* %73, align 8
  br label %74

74:                                               ; preds = %71, %55, %50
  %75 = load %struct.go7007*, %struct.go7007** %4, align 8
  %76 = getelementptr inbounds %struct.go7007, %struct.go7007* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %148

79:                                               ; preds = %74
  %80 = load %struct.go7007*, %struct.go7007** %4, align 8
  %81 = getelementptr inbounds %struct.go7007, %struct.go7007* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @GO7007_BOARDID_ADS_USBAV_709, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %91

85:                                               ; preds = %79
  %86 = load %struct.go7007*, %struct.go7007** %4, align 8
  %87 = call i32 @go7007_write_addr(%struct.go7007* %86, i32 15490, i32 9)
  %88 = call i32 @msleep(i32 50)
  %89 = load %struct.go7007*, %struct.go7007** %4, align 8
  %90 = call i32 @go7007_write_addr(%struct.go7007* %89, i32 15490, i32 13)
  br label %91

91:                                               ; preds = %85, %79
  store i32 0, i32* %6, align 4
  br label %92

92:                                               ; preds = %108, %91
  %93 = load i32, i32* %6, align 4
  %94 = load i32, i32* %5, align 4
  %95 = icmp ult i32 %93, %94
  br i1 %95, label %96, label %111

96:                                               ; preds = %92
  %97 = load %struct.go7007*, %struct.go7007** %4, align 8
  %98 = getelementptr inbounds %struct.go7007, %struct.go7007* %97, i32 0, i32 8
  %99 = load %struct.go7007*, %struct.go7007** %4, align 8
  %100 = getelementptr inbounds %struct.go7007, %struct.go7007* %99, i32 0, i32 4
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 1
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %6, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = call i32 @init_i2c_module(i32* %98, i32* %106)
  br label %108

108:                                              ; preds = %96
  %109 = load i32, i32* %6, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %6, align 4
  br label %92

111:                                              ; preds = %92
  %112 = load %struct.go7007*, %struct.go7007** %4, align 8
  %113 = getelementptr inbounds %struct.go7007, %struct.go7007* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = icmp sge i64 %114, 0
  br i1 %115, label %116, label %130

116:                                              ; preds = %111
  %117 = getelementptr inbounds %struct.tuner_setup, %struct.tuner_setup* %8, i32 0, i32 0
  %118 = load %struct.go7007*, %struct.go7007** %4, align 8
  %119 = getelementptr inbounds %struct.go7007, %struct.go7007* %118, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  store i64 %120, i64* %117, align 8
  %121 = getelementptr inbounds %struct.tuner_setup, %struct.tuner_setup* %8, i32 0, i32 1
  %122 = load i32, i32* @T_ANALOG_TV, align 4
  store i32 %122, i32* %121, align 8
  %123 = getelementptr inbounds %struct.tuner_setup, %struct.tuner_setup* %8, i32 0, i32 2
  %124 = load i32, i32* @ADDR_UNSET, align 4
  store i32 %124, i32* %123, align 4
  %125 = load %struct.go7007*, %struct.go7007** %4, align 8
  %126 = getelementptr inbounds %struct.go7007, %struct.go7007* %125, i32 0, i32 7
  %127 = load i32, i32* @tuner, align 4
  %128 = load i32, i32* @s_type_addr, align 4
  %129 = call i32 @v4l2_device_call_all(%struct.TYPE_5__* %126, i32 0, i32 %127, i32 %128, %struct.tuner_setup* %8)
  br label %130

130:                                              ; preds = %116, %111
  %131 = load %struct.go7007*, %struct.go7007** %4, align 8
  %132 = getelementptr inbounds %struct.go7007, %struct.go7007* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @GO7007_BOARDID_ADLINK_MPG24, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %136, label %147

136:                                              ; preds = %130
  %137 = load %struct.go7007*, %struct.go7007** %4, align 8
  %138 = getelementptr inbounds %struct.go7007, %struct.go7007* %137, i32 0, i32 6
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* @video, align 4
  %141 = load i32, i32* @s_routing, align 4
  %142 = load %struct.go7007*, %struct.go7007** %4, align 8
  %143 = getelementptr inbounds %struct.go7007, %struct.go7007* %142, i32 0, i32 5
  %144 = load i64, i64* %143, align 8
  %145 = add nsw i64 %144, 1
  %146 = call i32 @v4l2_subdev_call(i32 %139, i32 %140, i32 %141, i32 0, i32 0, i64 %145)
  br label %147

147:                                              ; preds = %136, %130
  br label %148

148:                                              ; preds = %147, %74
  %149 = load %struct.go7007*, %struct.go7007** %4, align 8
  %150 = call i32 @go7007_v4l2_init(%struct.go7007* %149)
  store i32 %150, i32* %7, align 4
  %151 = load i32, i32* %7, align 4
  %152 = icmp slt i32 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %148
  %154 = load i32, i32* %7, align 4
  store i32 %154, i32* %3, align 4
  br label %170

155:                                              ; preds = %148
  %156 = load %struct.go7007*, %struct.go7007** %4, align 8
  %157 = getelementptr inbounds %struct.go7007, %struct.go7007* %156, i32 0, i32 4
  %158 = load %struct.TYPE_4__*, %struct.TYPE_4__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* @GO7007_BOARD_HAS_AUDIO, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %169

164:                                              ; preds = %155
  %165 = load %struct.go7007*, %struct.go7007** %4, align 8
  %166 = getelementptr inbounds %struct.go7007, %struct.go7007* %165, i32 0, i32 3
  store i32 1, i32* %166, align 8
  %167 = load %struct.go7007*, %struct.go7007** %4, align 8
  %168 = call i32 @go7007_snd_init(%struct.go7007* %167)
  br label %169

169:                                              ; preds = %164, %155
  store i32 0, i32* %3, align 4
  br label %170

170:                                              ; preds = %169, %153, %69, %48, %41, %28
  %171 = load i32, i32* %3, align 4
  ret i32 %171
}

declare dso_local i32 @dev_info(i32, i8*, i32) #1

declare dso_local i32 @v4l2_device_register(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @go7007_init_encoder(%struct.go7007*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @go7007_v4l2_ctrl_init(%struct.go7007*) #1

declare dso_local i32 @go7007_i2c_init(%struct.go7007*) #1

declare dso_local i32 @go7007_write_addr(%struct.go7007*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @init_i2c_module(i32*, i32*) #1

declare dso_local i32 @v4l2_device_call_all(%struct.TYPE_5__*, i32, i32, i32, %struct.tuner_setup*) #1

declare dso_local i32 @v4l2_subdev_call(i32, i32, i32, i32, i32, i64) #1

declare dso_local i32 @go7007_v4l2_init(%struct.go7007*) #1

declare dso_local i32 @go7007_snd_init(%struct.go7007*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
