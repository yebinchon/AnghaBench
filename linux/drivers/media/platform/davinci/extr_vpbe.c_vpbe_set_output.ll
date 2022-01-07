; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpbe.c_vpbe_set_output.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpbe.c_vpbe_set_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vpbe_device = type { i32, i32, i32, %struct.TYPE_8__, %struct.osd_state*, i32*, %struct.venc_platform_data*, %struct.vpbe_config* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.osd_state = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 (%struct.osd_state*, i32)*, i32 (%struct.osd_state*, i32)* }
%struct.venc_platform_data = type { i32 (i32)* }
%struct.vpbe_config = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.encoder_config_info = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@video = common dso_local global i32 0, align 4
@s_routing = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vpbe_device*, i32)* @vpbe_set_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpbe_set_output(%struct.vpbe_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vpbe_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.encoder_config_info*, align 8
  %7 = alloca %struct.vpbe_config*, align 8
  %8 = alloca %struct.venc_platform_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.osd_state*, align 8
  store %struct.vpbe_device* %0, %struct.vpbe_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.vpbe_device*, %struct.vpbe_device** %4, align 8
  %14 = call %struct.encoder_config_info* @vpbe_current_encoder_info(%struct.vpbe_device* %13)
  store %struct.encoder_config_info* %14, %struct.encoder_config_info** %6, align 8
  %15 = load %struct.vpbe_device*, %struct.vpbe_device** %4, align 8
  %16 = getelementptr inbounds %struct.vpbe_device, %struct.vpbe_device* %15, i32 0, i32 7
  %17 = load %struct.vpbe_config*, %struct.vpbe_config** %16, align 8
  store %struct.vpbe_config* %17, %struct.vpbe_config** %7, align 8
  %18 = load %struct.vpbe_device*, %struct.vpbe_device** %4, align 8
  %19 = getelementptr inbounds %struct.vpbe_device, %struct.vpbe_device* %18, i32 0, i32 6
  %20 = load %struct.venc_platform_data*, %struct.venc_platform_data** %19, align 8
  store %struct.venc_platform_data* %20, %struct.venc_platform_data** %8, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.vpbe_config*, %struct.vpbe_config** %7, align 8
  %23 = getelementptr inbounds %struct.vpbe_config, %struct.vpbe_config* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp sge i32 %21, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %2
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %149

29:                                               ; preds = %2
  %30 = load %struct.vpbe_device*, %struct.vpbe_device** %4, align 8
  %31 = getelementptr inbounds %struct.vpbe_device, %struct.vpbe_device* %30, i32 0, i32 2
  %32 = call i32 @mutex_lock(i32* %31)
  %33 = load %struct.vpbe_device*, %struct.vpbe_device** %4, align 8
  %34 = getelementptr inbounds %struct.vpbe_device, %struct.vpbe_device* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %10, align 4
  %36 = load %struct.vpbe_config*, %struct.vpbe_config** %7, align 8
  %37 = getelementptr inbounds %struct.vpbe_config, %struct.vpbe_config* %36, i32 0, i32 1
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %9, align 4
  %45 = load %struct.encoder_config_info*, %struct.encoder_config_info** %6, align 8
  %46 = getelementptr inbounds %struct.encoder_config_info, %struct.encoder_config_info* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.vpbe_config*, %struct.vpbe_config** %7, align 8
  %49 = getelementptr inbounds %struct.vpbe_config, %struct.vpbe_config* %48, i32 0, i32 1
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @strcmp(i32 %47, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %84

58:                                               ; preds = %29
  %59 = load %struct.vpbe_config*, %struct.vpbe_config** %7, align 8
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @vpbe_find_encoder_sd_index(%struct.vpbe_config* %59, i32 %60)
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %10, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %58
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %11, align 4
  br label %144

67:                                               ; preds = %58
  %68 = load %struct.venc_platform_data*, %struct.venc_platform_data** %8, align 8
  %69 = getelementptr inbounds %struct.venc_platform_data, %struct.venc_platform_data* %68, i32 0, i32 0
  %70 = load i32 (i32)*, i32 (i32)** %69, align 8
  %71 = load %struct.vpbe_config*, %struct.vpbe_config** %7, align 8
  %72 = getelementptr inbounds %struct.vpbe_config, %struct.vpbe_config* %71, i32 0, i32 1
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %72, align 8
  %74 = load i32, i32* %5, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 %70(i32 %78)
  store i32 %79, i32* %11, align 4
  %80 = load i32, i32* %11, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %67
  br label %144

83:                                               ; preds = %67
  br label %84

84:                                               ; preds = %83, %29
  %85 = load %struct.vpbe_device*, %struct.vpbe_device** %4, align 8
  %86 = getelementptr inbounds %struct.vpbe_device, %struct.vpbe_device* %85, i32 0, i32 5
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %10, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @video, align 4
  %93 = load i32, i32* @s_routing, align 4
  %94 = load i32, i32* %9, align 4
  %95 = call i32 @v4l2_subdev_call(i32 %91, i32 %92, i32 %93, i32 0, i32 %94, i32 0)
  store i32 %95, i32* %11, align 4
  %96 = load i32, i32* %11, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %84
  br label %144

99:                                               ; preds = %84
  %100 = load %struct.vpbe_device*, %struct.vpbe_device** %4, align 8
  %101 = load %struct.vpbe_config*, %struct.vpbe_config** %7, align 8
  %102 = getelementptr inbounds %struct.vpbe_config, %struct.vpbe_config* %101, i32 0, i32 1
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %102, align 8
  %104 = load i32, i32* %5, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %5, align 4
  %110 = call i32 @vpbe_get_mode_info(%struct.vpbe_device* %100, i32 %108, i32 %109)
  store i32 %110, i32* %11, align 4
  %111 = load i32, i32* %11, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %143, label %113

113:                                              ; preds = %99
  %114 = load %struct.vpbe_device*, %struct.vpbe_device** %4, align 8
  %115 = getelementptr inbounds %struct.vpbe_device, %struct.vpbe_device* %114, i32 0, i32 4
  %116 = load %struct.osd_state*, %struct.osd_state** %115, align 8
  store %struct.osd_state* %116, %struct.osd_state** %12, align 8
  %117 = load %struct.osd_state*, %struct.osd_state** %12, align 8
  %118 = getelementptr inbounds %struct.osd_state, %struct.osd_state* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 1
  %120 = load i32 (%struct.osd_state*, i32)*, i32 (%struct.osd_state*, i32)** %119, align 8
  %121 = load %struct.osd_state*, %struct.osd_state** %12, align 8
  %122 = load %struct.vpbe_device*, %struct.vpbe_device** %4, align 8
  %123 = getelementptr inbounds %struct.vpbe_device, %struct.vpbe_device* %122, i32 0, i32 3
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = call i32 %120(%struct.osd_state* %121, i32 %125)
  %127 = load %struct.osd_state*, %struct.osd_state** %12, align 8
  %128 = getelementptr inbounds %struct.osd_state, %struct.osd_state* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 0
  %130 = load i32 (%struct.osd_state*, i32)*, i32 (%struct.osd_state*, i32)** %129, align 8
  %131 = load %struct.osd_state*, %struct.osd_state** %12, align 8
  %132 = load %struct.vpbe_device*, %struct.vpbe_device** %4, align 8
  %133 = getelementptr inbounds %struct.vpbe_device, %struct.vpbe_device* %132, i32 0, i32 3
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = call i32 %130(%struct.osd_state* %131, i32 %135)
  %137 = load i32, i32* %10, align 4
  %138 = load %struct.vpbe_device*, %struct.vpbe_device** %4, align 8
  %139 = getelementptr inbounds %struct.vpbe_device, %struct.vpbe_device* %138, i32 0, i32 0
  store i32 %137, i32* %139, align 8
  %140 = load i32, i32* %5, align 4
  %141 = load %struct.vpbe_device*, %struct.vpbe_device** %4, align 8
  %142 = getelementptr inbounds %struct.vpbe_device, %struct.vpbe_device* %141, i32 0, i32 1
  store i32 %140, i32* %142, align 4
  br label %143

143:                                              ; preds = %113, %99
  br label %144

144:                                              ; preds = %143, %98, %82, %64
  %145 = load %struct.vpbe_device*, %struct.vpbe_device** %4, align 8
  %146 = getelementptr inbounds %struct.vpbe_device, %struct.vpbe_device* %145, i32 0, i32 2
  %147 = call i32 @mutex_unlock(i32* %146)
  %148 = load i32, i32* %11, align 4
  store i32 %148, i32* %3, align 4
  br label %149

149:                                              ; preds = %144, %26
  %150 = load i32, i32* %3, align 4
  ret i32 %150
}

declare dso_local %struct.encoder_config_info* @vpbe_current_encoder_info(%struct.vpbe_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @vpbe_find_encoder_sd_index(%struct.vpbe_config*, i32) #1

declare dso_local i32 @v4l2_subdev_call(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @vpbe_get_mode_info(%struct.vpbe_device*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
