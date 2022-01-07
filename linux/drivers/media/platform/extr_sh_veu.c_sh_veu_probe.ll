; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_sh_veu.c_sh_veu_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_sh_veu.c_sh_veu_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.video_device = type { i32*, i32* }
%struct.platform_device = type { i32 }
%struct.sh_veu_dev = type { i32, i32, i32, i32, i32, i32*, i32, i32, %struct.video_device, i32 }
%struct.resource = type { i32 }

@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Insufficient VEU platform information.\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@sh_veu_isr = common dso_local global i32 0, align 4
@sh_veu_bh = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"veu\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Error registering v4l2 device\0A\00", align 1
@sh_veu_videodev = common dso_local global %struct.video_device zeroinitializer, align 8
@DEFAULT_OUT_VFMT = common dso_local global i32 0, align 4
@DEFAULT_IN_VFMT = common dso_local global i32 0, align 4
@sh_veu_m2m_ops = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"Failed to init mem2mem device: %d\0A\00", align 1
@VFL_TYPE_GRABBER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sh_veu_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_veu_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.sh_veu_dev*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca %struct.video_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = load i32, i32* @IORESOURCE_MEM, align 4
  %11 = call %struct.resource* @platform_get_resource(%struct.platform_device* %9, i32 %10, i32 0)
  store %struct.resource* %11, %struct.resource** %5, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = call i32 @platform_get_irq(%struct.platform_device* %12, i32 0)
  store i32 %13, i32* %7, align 4
  %14 = load %struct.resource*, %struct.resource** %5, align 8
  %15 = icmp ne %struct.resource* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i32, i32* %7, align 4
  %18 = icmp sle i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %16, %1
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = call i32 @dev_err(i32* %21, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @ENODEV, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %163

25:                                               ; preds = %16
  %26 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %27 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %26, i32 0, i32 0
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call %struct.sh_veu_dev* @devm_kzalloc(i32* %27, i32 64, i32 %28)
  store %struct.sh_veu_dev* %29, %struct.sh_veu_dev** %4, align 8
  %30 = load %struct.sh_veu_dev*, %struct.sh_veu_dev** %4, align 8
  %31 = icmp ne %struct.sh_veu_dev* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %25
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %163

35:                                               ; preds = %25
  %36 = load %struct.resource*, %struct.resource** %5, align 8
  %37 = call i32 @resource_size(%struct.resource* %36)
  %38 = icmp eq i32 %37, 556
  %39 = zext i1 %38 to i32
  %40 = load %struct.sh_veu_dev*, %struct.sh_veu_dev** %4, align 8
  %41 = getelementptr inbounds %struct.sh_veu_dev, %struct.sh_veu_dev* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %43 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %42, i32 0, i32 0
  %44 = load %struct.resource*, %struct.resource** %5, align 8
  %45 = call i32 @devm_ioremap_resource(i32* %43, %struct.resource* %44)
  %46 = load %struct.sh_veu_dev*, %struct.sh_veu_dev** %4, align 8
  %47 = getelementptr inbounds %struct.sh_veu_dev, %struct.sh_veu_dev* %46, i32 0, i32 9
  store i32 %45, i32* %47, align 8
  %48 = load %struct.sh_veu_dev*, %struct.sh_veu_dev** %4, align 8
  %49 = getelementptr inbounds %struct.sh_veu_dev, %struct.sh_veu_dev* %48, i32 0, i32 9
  %50 = load i32, i32* %49, align 8
  %51 = call i64 @IS_ERR(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %35
  %54 = load %struct.sh_veu_dev*, %struct.sh_veu_dev** %4, align 8
  %55 = getelementptr inbounds %struct.sh_veu_dev, %struct.sh_veu_dev* %54, i32 0, i32 9
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @PTR_ERR(i32 %56)
  store i32 %57, i32* %2, align 4
  br label %163

58:                                               ; preds = %35
  %59 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %60 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %59, i32 0, i32 0
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* @sh_veu_isr, align 4
  %63 = load i32, i32* @sh_veu_bh, align 4
  %64 = load %struct.sh_veu_dev*, %struct.sh_veu_dev** %4, align 8
  %65 = call i32 @devm_request_threaded_irq(i32* %60, i32 %61, i32 %62, i32 %63, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), %struct.sh_veu_dev* %64)
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %8, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %58
  %69 = load i32, i32* %8, align 4
  store i32 %69, i32* %2, align 4
  br label %163

70:                                               ; preds = %58
  %71 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %72 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %71, i32 0, i32 0
  %73 = load %struct.sh_veu_dev*, %struct.sh_veu_dev** %4, align 8
  %74 = getelementptr inbounds %struct.sh_veu_dev, %struct.sh_veu_dev* %73, i32 0, i32 1
  %75 = call i32 @v4l2_device_register(i32* %72, i32* %74)
  store i32 %75, i32* %8, align 4
  %76 = load i32, i32* %8, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %70
  %79 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %80 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %79, i32 0, i32 0
  %81 = call i32 @dev_err(i32* %80, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %82 = load i32, i32* %8, align 4
  store i32 %82, i32* %2, align 4
  br label %163

83:                                               ; preds = %70
  %84 = load %struct.sh_veu_dev*, %struct.sh_veu_dev** %4, align 8
  %85 = getelementptr inbounds %struct.sh_veu_dev, %struct.sh_veu_dev* %84, i32 0, i32 8
  store %struct.video_device* %85, %struct.video_device** %6, align 8
  %86 = load %struct.video_device*, %struct.video_device** %6, align 8
  %87 = bitcast %struct.video_device* %86 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %87, i8* align 8 bitcast (%struct.video_device* @sh_veu_videodev to i8*), i64 16, i1 false)
  %88 = load %struct.sh_veu_dev*, %struct.sh_veu_dev** %4, align 8
  %89 = getelementptr inbounds %struct.sh_veu_dev, %struct.sh_veu_dev* %88, i32 0, i32 1
  %90 = load %struct.video_device*, %struct.video_device** %6, align 8
  %91 = getelementptr inbounds %struct.video_device, %struct.video_device* %90, i32 0, i32 1
  store i32* %89, i32** %91, align 8
  %92 = load %struct.sh_veu_dev*, %struct.sh_veu_dev** %4, align 8
  %93 = getelementptr inbounds %struct.sh_veu_dev, %struct.sh_veu_dev* %92, i32 0, i32 7
  %94 = call i32 @spin_lock_init(i32* %93)
  %95 = load %struct.sh_veu_dev*, %struct.sh_veu_dev** %4, align 8
  %96 = getelementptr inbounds %struct.sh_veu_dev, %struct.sh_veu_dev* %95, i32 0, i32 6
  %97 = call i32 @mutex_init(i32* %96)
  %98 = load %struct.sh_veu_dev*, %struct.sh_veu_dev** %4, align 8
  %99 = getelementptr inbounds %struct.sh_veu_dev, %struct.sh_veu_dev* %98, i32 0, i32 6
  %100 = load %struct.video_device*, %struct.video_device** %6, align 8
  %101 = getelementptr inbounds %struct.video_device, %struct.video_device* %100, i32 0, i32 0
  store i32* %99, i32** %101, align 8
  %102 = load %struct.video_device*, %struct.video_device** %6, align 8
  %103 = load %struct.sh_veu_dev*, %struct.sh_veu_dev** %4, align 8
  %104 = call i32 @video_set_drvdata(%struct.video_device* %102, %struct.sh_veu_dev* %103)
  %105 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %106 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %105, i32 0, i32 0
  %107 = load %struct.sh_veu_dev*, %struct.sh_veu_dev** %4, align 8
  %108 = getelementptr inbounds %struct.sh_veu_dev, %struct.sh_veu_dev* %107, i32 0, i32 5
  store i32* %106, i32** %108, align 8
  %109 = load i32, i32* @DEFAULT_OUT_VFMT, align 4
  %110 = load %struct.sh_veu_dev*, %struct.sh_veu_dev** %4, align 8
  %111 = getelementptr inbounds %struct.sh_veu_dev, %struct.sh_veu_dev* %110, i32 0, i32 4
  store i32 %109, i32* %111, align 8
  %112 = load i32, i32* @DEFAULT_IN_VFMT, align 4
  %113 = load %struct.sh_veu_dev*, %struct.sh_veu_dev** %4, align 8
  %114 = getelementptr inbounds %struct.sh_veu_dev, %struct.sh_veu_dev* %113, i32 0, i32 3
  store i32 %112, i32* %114, align 4
  %115 = call i32 @v4l2_m2m_init(i32* @sh_veu_m2m_ops)
  %116 = load %struct.sh_veu_dev*, %struct.sh_veu_dev** %4, align 8
  %117 = getelementptr inbounds %struct.sh_veu_dev, %struct.sh_veu_dev* %116, i32 0, i32 2
  store i32 %115, i32* %117, align 8
  %118 = load %struct.sh_veu_dev*, %struct.sh_veu_dev** %4, align 8
  %119 = getelementptr inbounds %struct.sh_veu_dev, %struct.sh_veu_dev* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = call i64 @IS_ERR(i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %132

123:                                              ; preds = %83
  %124 = load %struct.sh_veu_dev*, %struct.sh_veu_dev** %4, align 8
  %125 = getelementptr inbounds %struct.sh_veu_dev, %struct.sh_veu_dev* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @PTR_ERR(i32 %126)
  store i32 %127, i32* %8, align 4
  %128 = load %struct.sh_veu_dev*, %struct.sh_veu_dev** %4, align 8
  %129 = getelementptr inbounds %struct.sh_veu_dev, %struct.sh_veu_dev* %128, i32 0, i32 1
  %130 = load i32, i32* %8, align 4
  %131 = call i32 @v4l2_err(i32* %129, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %130)
  br label %158

132:                                              ; preds = %83
  %133 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %134 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %133, i32 0, i32 0
  %135 = call i32 @pm_runtime_enable(i32* %134)
  %136 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %137 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %136, i32 0, i32 0
  %138 = call i32 @pm_runtime_resume(i32* %137)
  %139 = load %struct.video_device*, %struct.video_device** %6, align 8
  %140 = load i32, i32* @VFL_TYPE_GRABBER, align 4
  %141 = call i32 @video_register_device(%struct.video_device* %139, i32 %140, i32 -1)
  store i32 %141, i32* %8, align 4
  %142 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %143 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %142, i32 0, i32 0
  %144 = call i32 @pm_runtime_suspend(i32* %143)
  %145 = load i32, i32* %8, align 4
  %146 = icmp slt i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %132
  br label %150

148:                                              ; preds = %132
  %149 = load i32, i32* %8, align 4
  store i32 %149, i32* %2, align 4
  br label %163

150:                                              ; preds = %147
  %151 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %152 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %151, i32 0, i32 0
  %153 = call i32 @pm_runtime_disable(i32* %152)
  %154 = load %struct.sh_veu_dev*, %struct.sh_veu_dev** %4, align 8
  %155 = getelementptr inbounds %struct.sh_veu_dev, %struct.sh_veu_dev* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = call i32 @v4l2_m2m_release(i32 %156)
  br label %158

158:                                              ; preds = %150, %123
  %159 = load %struct.sh_veu_dev*, %struct.sh_veu_dev** %4, align 8
  %160 = getelementptr inbounds %struct.sh_veu_dev, %struct.sh_veu_dev* %159, i32 0, i32 1
  %161 = call i32 @v4l2_device_unregister(i32* %160)
  %162 = load i32, i32* %8, align 4
  store i32 %162, i32* %2, align 4
  br label %163

163:                                              ; preds = %158, %148, %78, %68, %53, %32, %19
  %164 = load i32, i32* %2, align 4
  ret i32 %164
}

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local %struct.sh_veu_dev* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_request_threaded_irq(i32*, i32, i32, i32, i32, i8*, %struct.sh_veu_dev*) #1

declare dso_local i32 @v4l2_device_register(i32*, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @video_set_drvdata(%struct.video_device*, %struct.sh_veu_dev*) #1

declare dso_local i32 @v4l2_m2m_init(i32*) #1

declare dso_local i32 @v4l2_err(i32*, i8*, i32) #1

declare dso_local i32 @pm_runtime_enable(i32*) #1

declare dso_local i32 @pm_runtime_resume(i32*) #1

declare dso_local i32 @video_register_device(%struct.video_device*, i32, i32) #1

declare dso_local i32 @pm_runtime_suspend(i32*) #1

declare dso_local i32 @pm_runtime_disable(i32*) #1

declare dso_local i32 @v4l2_m2m_release(i32) #1

declare dso_local i32 @v4l2_device_unregister(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
