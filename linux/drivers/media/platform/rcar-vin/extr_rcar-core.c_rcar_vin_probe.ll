; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/rcar-vin/extr_rcar-core.c_rcar_vin_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/rcar-vin/extr_rcar-core.c_rcar_vin_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.soc_device_attribute = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }
%struct.rvin_dev = type { i32, %struct.TYPE_5__*, i32, %struct.TYPE_7__*, i32, i32, i32* }
%struct.TYPE_5__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32* }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@r8a7795es1 = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @rcar_vin_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rcar_vin_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.soc_device_attribute*, align 8
  %5 = alloca %struct.rvin_dev*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.rvin_dev* @devm_kzalloc(i32* %10, i32 48, i32 %11)
  store %struct.rvin_dev* %12, %struct.rvin_dev** %5, align 8
  %13 = load %struct.rvin_dev*, %struct.rvin_dev** %5, align 8
  %14 = icmp ne %struct.rvin_dev* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %161

18:                                               ; preds = %1
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 0
  %21 = load %struct.rvin_dev*, %struct.rvin_dev** %5, align 8
  %22 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %21, i32 0, i32 6
  store i32* %20, i32** %22, align 8
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 0
  %25 = call %struct.TYPE_7__* @of_device_get_match_data(i32* %24)
  %26 = load %struct.rvin_dev*, %struct.rvin_dev** %5, align 8
  %27 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %26, i32 0, i32 3
  store %struct.TYPE_7__* %25, %struct.TYPE_7__** %27, align 8
  %28 = load %struct.rvin_dev*, %struct.rvin_dev** %5, align 8
  %29 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %28, i32 0, i32 0
  store i32 255, i32* %29, align 8
  %30 = load i32, i32* @r8a7795es1, align 4
  %31 = call %struct.soc_device_attribute* @soc_device_match(i32 %30)
  store %struct.soc_device_attribute* %31, %struct.soc_device_attribute** %4, align 8
  %32 = load %struct.soc_device_attribute*, %struct.soc_device_attribute** %4, align 8
  %33 = icmp ne %struct.soc_device_attribute* %32, null
  br i1 %33, label %34, label %40

34:                                               ; preds = %18
  %35 = load %struct.soc_device_attribute*, %struct.soc_device_attribute** %4, align 8
  %36 = getelementptr inbounds %struct.soc_device_attribute, %struct.soc_device_attribute* %35, i32 0, i32 0
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  %38 = load %struct.rvin_dev*, %struct.rvin_dev** %5, align 8
  %39 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %38, i32 0, i32 3
  store %struct.TYPE_7__* %37, %struct.TYPE_7__** %39, align 8
  br label %40

40:                                               ; preds = %34, %18
  %41 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %42 = load i32, i32* @IORESOURCE_MEM, align 4
  %43 = call %struct.resource* @platform_get_resource(%struct.platform_device* %41, i32 %42, i32 0)
  store %struct.resource* %43, %struct.resource** %6, align 8
  %44 = load %struct.resource*, %struct.resource** %6, align 8
  %45 = icmp eq %struct.resource* %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %2, align 4
  br label %161

49:                                               ; preds = %40
  %50 = load %struct.rvin_dev*, %struct.rvin_dev** %5, align 8
  %51 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %50, i32 0, i32 6
  %52 = load i32*, i32** %51, align 8
  %53 = load %struct.resource*, %struct.resource** %6, align 8
  %54 = call i32 @devm_ioremap_resource(i32* %52, %struct.resource* %53)
  %55 = load %struct.rvin_dev*, %struct.rvin_dev** %5, align 8
  %56 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %55, i32 0, i32 5
  store i32 %54, i32* %56, align 4
  %57 = load %struct.rvin_dev*, %struct.rvin_dev** %5, align 8
  %58 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %57, i32 0, i32 5
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @IS_ERR(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %49
  %63 = load %struct.rvin_dev*, %struct.rvin_dev** %5, align 8
  %64 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %63, i32 0, i32 5
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @PTR_ERR(i32 %65)
  store i32 %66, i32* %2, align 4
  br label %161

67:                                               ; preds = %49
  %68 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %69 = call i32 @platform_get_irq(%struct.platform_device* %68, i32 0)
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* %7, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %67
  %73 = load i32, i32* %7, align 4
  store i32 %73, i32* %2, align 4
  br label %161

74:                                               ; preds = %67
  %75 = load %struct.rvin_dev*, %struct.rvin_dev** %5, align 8
  %76 = load i32, i32* %7, align 4
  %77 = call i32 @rvin_dma_register(%struct.rvin_dev* %75, i32 %76)
  store i32 %77, i32* %8, align 4
  %78 = load i32, i32* %8, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %74
  %81 = load i32, i32* %8, align 4
  store i32 %81, i32* %2, align 4
  br label %161

82:                                               ; preds = %74
  %83 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %84 = load %struct.rvin_dev*, %struct.rvin_dev** %5, align 8
  %85 = call i32 @platform_set_drvdata(%struct.platform_device* %83, %struct.rvin_dev* %84)
  %86 = load %struct.rvin_dev*, %struct.rvin_dev** %5, align 8
  %87 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %86, i32 0, i32 3
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %99

92:                                               ; preds = %82
  %93 = load %struct.rvin_dev*, %struct.rvin_dev** %5, align 8
  %94 = call i32 @rvin_mc_init(%struct.rvin_dev* %93)
  store i32 %94, i32* %8, align 4
  %95 = load i32, i32* %8, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %92
  br label %157

98:                                               ; preds = %92
  br label %99

99:                                               ; preds = %98, %82
  %100 = load %struct.rvin_dev*, %struct.rvin_dev** %5, align 8
  %101 = call i32 @rvin_parallel_init(%struct.rvin_dev* %100)
  store i32 %101, i32* %8, align 4
  %102 = load i32, i32* %8, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %99
  br label %112

105:                                              ; preds = %99
  %106 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %107 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %106, i32 0, i32 0
  %108 = call i32 @pm_suspend_ignore_children(i32* %107, i32 1)
  %109 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %110 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %109, i32 0, i32 0
  %111 = call i32 @pm_runtime_enable(i32* %110)
  store i32 0, i32* %2, align 4
  br label %161

112:                                              ; preds = %104
  %113 = load %struct.rvin_dev*, %struct.rvin_dev** %5, align 8
  %114 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %113, i32 0, i32 4
  %115 = call i32 @v4l2_ctrl_handler_free(i32* %114)
  %116 = load %struct.rvin_dev*, %struct.rvin_dev** %5, align 8
  %117 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %116, i32 0, i32 3
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %156

122:                                              ; preds = %112
  %123 = load %struct.rvin_dev*, %struct.rvin_dev** %5, align 8
  %124 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %123, i32 0, i32 1
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 0
  %127 = call i32 @mutex_lock(i32* %126)
  %128 = load %struct.rvin_dev*, %struct.rvin_dev** %5, align 8
  %129 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %128, i32 0, i32 2
  %130 = load %struct.rvin_dev*, %struct.rvin_dev** %5, align 8
  %131 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %130, i32 0, i32 1
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 0
  %135 = load i32*, i32** %134, align 8
  %136 = icmp eq i32* %129, %135
  br i1 %136, label %137, label %148

137:                                              ; preds = %122
  %138 = load %struct.rvin_dev*, %struct.rvin_dev** %5, align 8
  %139 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %138, i32 0, i32 1
  %140 = load %struct.TYPE_5__*, %struct.TYPE_5__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 1
  %142 = call i32 @v4l2_async_notifier_unregister(%struct.TYPE_6__* %141)
  %143 = load %struct.rvin_dev*, %struct.rvin_dev** %5, align 8
  %144 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %143, i32 0, i32 1
  %145 = load %struct.TYPE_5__*, %struct.TYPE_5__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 1
  %147 = call i32 @v4l2_async_notifier_cleanup(%struct.TYPE_6__* %146)
  br label %148

148:                                              ; preds = %137, %122
  %149 = load %struct.rvin_dev*, %struct.rvin_dev** %5, align 8
  %150 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %149, i32 0, i32 1
  %151 = load %struct.TYPE_5__*, %struct.TYPE_5__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 0
  %153 = call i32 @mutex_unlock(i32* %152)
  %154 = load %struct.rvin_dev*, %struct.rvin_dev** %5, align 8
  %155 = call i32 @rvin_group_put(%struct.rvin_dev* %154)
  br label %156

156:                                              ; preds = %148, %112
  br label %157

157:                                              ; preds = %156, %97
  %158 = load %struct.rvin_dev*, %struct.rvin_dev** %5, align 8
  %159 = call i32 @rvin_dma_unregister(%struct.rvin_dev* %158)
  %160 = load i32, i32* %8, align 4
  store i32 %160, i32* %2, align 4
  br label %161

161:                                              ; preds = %157, %105, %80, %72, %62, %46, %15
  %162 = load i32, i32* %2, align 4
  ret i32 %162
}

declare dso_local %struct.rvin_dev* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local %struct.TYPE_7__* @of_device_get_match_data(i32*) #1

declare dso_local %struct.soc_device_attribute* @soc_device_match(i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @rvin_dma_register(%struct.rvin_dev*, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.rvin_dev*) #1

declare dso_local i32 @rvin_mc_init(%struct.rvin_dev*) #1

declare dso_local i32 @rvin_parallel_init(%struct.rvin_dev*) #1

declare dso_local i32 @pm_suspend_ignore_children(i32*, i32) #1

declare dso_local i32 @pm_runtime_enable(i32*) #1

declare dso_local i32 @v4l2_ctrl_handler_free(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @v4l2_async_notifier_unregister(%struct.TYPE_6__*) #1

declare dso_local i32 @v4l2_async_notifier_cleanup(%struct.TYPE_6__*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @rvin_group_put(%struct.rvin_dev*) #1

declare dso_local i32 @rvin_dma_unregister(%struct.rvin_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
