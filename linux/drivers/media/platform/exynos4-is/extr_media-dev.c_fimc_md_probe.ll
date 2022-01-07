; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_media-dev.c_fimc_md_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_media-dev.c_fimc_md_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.v4l2_device = type { i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.device*, i32*, i32 }
%struct.fimc_md = type { i32, i64, %struct.v4l2_device, %struct.TYPE_7__, %struct.TYPE_6__, i32, %struct.platform_device*, i32, i32 }
%struct.TYPE_6__ = type { i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"SAMSUNG S5P FIMC\00", align 1
@fimc_md_ops = common dso_local global i32 0, align 4
@fimc_sensor_notify = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"s5p-fimc-md\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"Failed to register v4l2_device: %d\0A\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"Failed to get pinctrl: %d\0A\00", align 1
@dev_attr_subdev_conf_mode = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"clock provider registration failed\0A\00", align 1
@subdev_notifier_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @fimc_md_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fimc_md_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.v4l2_device*, align 8
  %6 = alloca %struct.fimc_md*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.fimc_md* @devm_kzalloc(%struct.device* %10, i32 88, i32 %11)
  store %struct.fimc_md* %12, %struct.fimc_md** %6, align 8
  %13 = load %struct.fimc_md*, %struct.fimc_md** %6, align 8
  %14 = icmp ne %struct.fimc_md* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %177

18:                                               ; preds = %1
  %19 = load %struct.fimc_md*, %struct.fimc_md** %6, align 8
  %20 = getelementptr inbounds %struct.fimc_md, %struct.fimc_md* %19, i32 0, i32 8
  %21 = call i32 @spin_lock_init(i32* %20)
  %22 = load %struct.fimc_md*, %struct.fimc_md** %6, align 8
  %23 = getelementptr inbounds %struct.fimc_md, %struct.fimc_md* %22, i32 0, i32 7
  %24 = call i32 @INIT_LIST_HEAD(i32* %23)
  %25 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %26 = load %struct.fimc_md*, %struct.fimc_md** %6, align 8
  %27 = getelementptr inbounds %struct.fimc_md, %struct.fimc_md* %26, i32 0, i32 6
  store %struct.platform_device* %25, %struct.platform_device** %27, align 8
  %28 = load %struct.fimc_md*, %struct.fimc_md** %6, align 8
  %29 = getelementptr inbounds %struct.fimc_md, %struct.fimc_md* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @strscpy(i32 %31, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 4)
  %33 = load %struct.fimc_md*, %struct.fimc_md** %6, align 8
  %34 = getelementptr inbounds %struct.fimc_md, %struct.fimc_md* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 1
  store i32* @fimc_md_ops, i32** %35, align 8
  %36 = load %struct.device*, %struct.device** %4, align 8
  %37 = load %struct.fimc_md*, %struct.fimc_md** %6, align 8
  %38 = getelementptr inbounds %struct.fimc_md, %struct.fimc_md* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  store %struct.device* %36, %struct.device** %39, align 8
  %40 = load %struct.fimc_md*, %struct.fimc_md** %6, align 8
  %41 = getelementptr inbounds %struct.fimc_md, %struct.fimc_md* %40, i32 0, i32 2
  store %struct.v4l2_device* %41, %struct.v4l2_device** %5, align 8
  %42 = load %struct.fimc_md*, %struct.fimc_md** %6, align 8
  %43 = getelementptr inbounds %struct.fimc_md, %struct.fimc_md* %42, i32 0, i32 3
  %44 = load %struct.v4l2_device*, %struct.v4l2_device** %5, align 8
  %45 = getelementptr inbounds %struct.v4l2_device, %struct.v4l2_device* %44, i32 0, i32 2
  store %struct.TYPE_7__* %43, %struct.TYPE_7__** %45, align 8
  %46 = load i32, i32* @fimc_sensor_notify, align 4
  %47 = load %struct.v4l2_device*, %struct.v4l2_device** %5, align 8
  %48 = getelementptr inbounds %struct.v4l2_device, %struct.v4l2_device* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load %struct.v4l2_device*, %struct.v4l2_device** %5, align 8
  %50 = getelementptr inbounds %struct.v4l2_device, %struct.v4l2_device* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @strscpy(i32 %51, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %53 = load %struct.device*, %struct.device** %4, align 8
  %54 = getelementptr inbounds %struct.device, %struct.device* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @fimc_md_is_isp_available(i32 %55)
  %57 = load %struct.fimc_md*, %struct.fimc_md** %6, align 8
  %58 = getelementptr inbounds %struct.fimc_md, %struct.fimc_md* %57, i32 0, i32 5
  store i32 %56, i32* %58, align 8
  %59 = load %struct.fimc_md*, %struct.fimc_md** %6, align 8
  %60 = getelementptr inbounds %struct.fimc_md, %struct.fimc_md* %59, i32 0, i32 0
  store i32 1, i32* %60, align 8
  %61 = load %struct.fimc_md*, %struct.fimc_md** %6, align 8
  %62 = getelementptr inbounds %struct.fimc_md, %struct.fimc_md* %61, i32 0, i32 3
  %63 = call i32 @media_device_init(%struct.TYPE_7__* %62)
  %64 = load %struct.device*, %struct.device** %4, align 8
  %65 = load %struct.fimc_md*, %struct.fimc_md** %6, align 8
  %66 = getelementptr inbounds %struct.fimc_md, %struct.fimc_md* %65, i32 0, i32 2
  %67 = call i32 @v4l2_device_register(%struct.device* %64, %struct.v4l2_device* %66)
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %7, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %18
  %71 = load %struct.v4l2_device*, %struct.v4l2_device** %5, align 8
  %72 = load i32, i32* %7, align 4
  %73 = call i32 (%struct.v4l2_device*, i8*, ...) @v4l2_err(%struct.v4l2_device* %71, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %72)
  %74 = load i32, i32* %7, align 4
  store i32 %74, i32* %2, align 4
  br label %177

75:                                               ; preds = %18
  %76 = load %struct.fimc_md*, %struct.fimc_md** %6, align 8
  %77 = call i32 @fimc_md_get_clocks(%struct.fimc_md* %76)
  store i32 %77, i32* %7, align 4
  %78 = load i32, i32* %7, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %75
  br label %169

81:                                               ; preds = %75
  %82 = load %struct.fimc_md*, %struct.fimc_md** %6, align 8
  %83 = call i32 @fimc_md_get_pinctrl(%struct.fimc_md* %82)
  store i32 %83, i32* %7, align 4
  %84 = load i32, i32* %7, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %95

86:                                               ; preds = %81
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* @EPROBE_DEFER, align 4
  %89 = icmp ne i32 %87, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %86
  %91 = load %struct.device*, %struct.device** %4, align 8
  %92 = load i32, i32* %7, align 4
  %93 = call i32 @dev_err(%struct.device* %91, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %92)
  br label %94

94:                                               ; preds = %90, %86
  br label %166

95:                                               ; preds = %81
  %96 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %97 = load %struct.fimc_md*, %struct.fimc_md** %6, align 8
  %98 = call i32 @platform_set_drvdata(%struct.platform_device* %96, %struct.fimc_md* %97)
  %99 = load %struct.fimc_md*, %struct.fimc_md** %6, align 8
  %100 = getelementptr inbounds %struct.fimc_md, %struct.fimc_md* %99, i32 0, i32 4
  %101 = call i32 @v4l2_async_notifier_init(%struct.TYPE_6__* %100)
  %102 = load %struct.fimc_md*, %struct.fimc_md** %6, align 8
  %103 = load %struct.device*, %struct.device** %4, align 8
  %104 = getelementptr inbounds %struct.device, %struct.device* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @fimc_md_register_platform_entities(%struct.fimc_md* %102, i32 %105)
  store i32 %106, i32* %7, align 4
  %107 = load i32, i32* %7, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %95
  br label %166

110:                                              ; preds = %95
  %111 = load %struct.fimc_md*, %struct.fimc_md** %6, align 8
  %112 = call i32 @fimc_md_register_sensor_entities(%struct.fimc_md* %111)
  store i32 %112, i32* %7, align 4
  %113 = load i32, i32* %7, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %110
  br label %163

116:                                              ; preds = %110
  %117 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %118 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %117, i32 0, i32 0
  %119 = call i32 @device_create_file(%struct.device* %118, i32* @dev_attr_subdev_conf_mode)
  store i32 %119, i32* %7, align 4
  %120 = load i32, i32* %7, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %116
  br label %159

123:                                              ; preds = %116
  %124 = load %struct.fimc_md*, %struct.fimc_md** %6, align 8
  %125 = call i32 @fimc_md_register_clk_provider(%struct.fimc_md* %124)
  store i32 %125, i32* %7, align 4
  %126 = load i32, i32* %7, align 4
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %123
  %129 = load %struct.v4l2_device*, %struct.v4l2_device** %5, align 8
  %130 = call i32 (%struct.v4l2_device*, i8*, ...) @v4l2_err(%struct.v4l2_device* %129, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  br label %155

131:                                              ; preds = %123
  %132 = load %struct.fimc_md*, %struct.fimc_md** %6, align 8
  %133 = getelementptr inbounds %struct.fimc_md, %struct.fimc_md* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = icmp sgt i64 %134, 0
  br i1 %135, label %136, label %151

136:                                              ; preds = %131
  %137 = load %struct.fimc_md*, %struct.fimc_md** %6, align 8
  %138 = getelementptr inbounds %struct.fimc_md, %struct.fimc_md* %137, i32 0, i32 4
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 0
  store i32* @subdev_notifier_ops, i32** %139, align 8
  %140 = load %struct.fimc_md*, %struct.fimc_md** %6, align 8
  %141 = getelementptr inbounds %struct.fimc_md, %struct.fimc_md* %140, i32 0, i32 1
  store i64 0, i64* %141, align 8
  %142 = load %struct.fimc_md*, %struct.fimc_md** %6, align 8
  %143 = getelementptr inbounds %struct.fimc_md, %struct.fimc_md* %142, i32 0, i32 2
  %144 = load %struct.fimc_md*, %struct.fimc_md** %6, align 8
  %145 = getelementptr inbounds %struct.fimc_md, %struct.fimc_md* %144, i32 0, i32 4
  %146 = call i32 @v4l2_async_notifier_register(%struct.v4l2_device* %143, %struct.TYPE_6__* %145)
  store i32 %146, i32* %7, align 4
  %147 = load i32, i32* %7, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %136
  br label %152

150:                                              ; preds = %136
  br label %151

151:                                              ; preds = %150, %131
  store i32 0, i32* %2, align 4
  br label %177

152:                                              ; preds = %149
  %153 = load %struct.fimc_md*, %struct.fimc_md** %6, align 8
  %154 = call i32 @fimc_md_unregister_clk_provider(%struct.fimc_md* %153)
  br label %155

155:                                              ; preds = %152, %128
  %156 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %157 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %156, i32 0, i32 0
  %158 = call i32 @device_remove_file(%struct.device* %157, i32* @dev_attr_subdev_conf_mode)
  br label %159

159:                                              ; preds = %155, %122
  %160 = load %struct.fimc_md*, %struct.fimc_md** %6, align 8
  %161 = getelementptr inbounds %struct.fimc_md, %struct.fimc_md* %160, i32 0, i32 4
  %162 = call i32 @v4l2_async_notifier_cleanup(%struct.TYPE_6__* %161)
  br label %163

163:                                              ; preds = %159, %115
  %164 = load %struct.fimc_md*, %struct.fimc_md** %6, align 8
  %165 = call i32 @fimc_md_unregister_entities(%struct.fimc_md* %164)
  br label %166

166:                                              ; preds = %163, %109, %94
  %167 = load %struct.fimc_md*, %struct.fimc_md** %6, align 8
  %168 = call i32 @fimc_md_put_clocks(%struct.fimc_md* %167)
  br label %169

169:                                              ; preds = %166, %80
  %170 = load %struct.fimc_md*, %struct.fimc_md** %6, align 8
  %171 = getelementptr inbounds %struct.fimc_md, %struct.fimc_md* %170, i32 0, i32 3
  %172 = call i32 @media_device_cleanup(%struct.TYPE_7__* %171)
  %173 = load %struct.fimc_md*, %struct.fimc_md** %6, align 8
  %174 = getelementptr inbounds %struct.fimc_md, %struct.fimc_md* %173, i32 0, i32 2
  %175 = call i32 @v4l2_device_unregister(%struct.v4l2_device* %174)
  %176 = load i32, i32* %7, align 4
  store i32 %176, i32* %2, align 4
  br label %177

177:                                              ; preds = %169, %151, %70, %15
  %178 = load i32, i32* %2, align 4
  ret i32 %178
}

declare dso_local %struct.fimc_md* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @strscpy(i32, i8*, i32) #1

declare dso_local i32 @fimc_md_is_isp_available(i32) #1

declare dso_local i32 @media_device_init(%struct.TYPE_7__*) #1

declare dso_local i32 @v4l2_device_register(%struct.device*, %struct.v4l2_device*) #1

declare dso_local i32 @v4l2_err(%struct.v4l2_device*, i8*, ...) #1

declare dso_local i32 @fimc_md_get_clocks(%struct.fimc_md*) #1

declare dso_local i32 @fimc_md_get_pinctrl(%struct.fimc_md*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.fimc_md*) #1

declare dso_local i32 @v4l2_async_notifier_init(%struct.TYPE_6__*) #1

declare dso_local i32 @fimc_md_register_platform_entities(%struct.fimc_md*, i32) #1

declare dso_local i32 @fimc_md_register_sensor_entities(%struct.fimc_md*) #1

declare dso_local i32 @device_create_file(%struct.device*, i32*) #1

declare dso_local i32 @fimc_md_register_clk_provider(%struct.fimc_md*) #1

declare dso_local i32 @v4l2_async_notifier_register(%struct.v4l2_device*, %struct.TYPE_6__*) #1

declare dso_local i32 @fimc_md_unregister_clk_provider(%struct.fimc_md*) #1

declare dso_local i32 @device_remove_file(%struct.device*, i32*) #1

declare dso_local i32 @v4l2_async_notifier_cleanup(%struct.TYPE_6__*) #1

declare dso_local i32 @fimc_md_unregister_entities(%struct.fimc_md*) #1

declare dso_local i32 @fimc_md_put_clocks(%struct.fimc_md*) #1

declare dso_local i32 @media_device_cleanup(%struct.TYPE_7__*) #1

declare dso_local i32 @v4l2_device_unregister(%struct.v4l2_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
