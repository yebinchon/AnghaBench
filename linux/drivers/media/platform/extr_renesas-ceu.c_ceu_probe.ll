; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_renesas-ceu.c_ceu_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_renesas-ceu.c_ceu_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceu_data = type { i32 }
%struct.platform_device = type { %struct.device }
%struct.device = type { i64, i64 }
%struct.ceu_device = type { i32, %struct.TYPE_5__, i32, i32, i32, i32, i32, %struct.device* }
%struct.TYPE_5__ = type { i32*, i32* }
%struct.resource = type { i32 }
%struct.TYPE_6__ = type { %struct.ceu_data* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@ceu_irq = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Unable to request CEU interrupt.\0A\00", align 1
@CONFIG_OF = common dso_local global i32 0, align 4
@ceu_of_match = common dso_local global i32 0, align 4
@ceu_data_sh4 = common dso_local global %struct.ceu_data zeroinitializer, align 4
@EINVAL = common dso_local global i32 0, align 4
@ceu_notify_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Renesas Capture Engine Unit %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ceu_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ceu_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.ceu_data*, align 8
  %6 = alloca %struct.ceu_device*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %4, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.ceu_device* @kzalloc(i32 56, i32 %13)
  store %struct.ceu_device* %14, %struct.ceu_device** %6, align 8
  %15 = load %struct.ceu_device*, %struct.ceu_device** %6, align 8
  %16 = icmp ne %struct.ceu_device* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %167

20:                                               ; preds = %1
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = load %struct.ceu_device*, %struct.ceu_device** %6, align 8
  %23 = call i32 @platform_set_drvdata(%struct.platform_device* %21, %struct.ceu_device* %22)
  %24 = load %struct.device*, %struct.device** %4, align 8
  %25 = load %struct.ceu_device*, %struct.ceu_device** %6, align 8
  %26 = getelementptr inbounds %struct.ceu_device, %struct.ceu_device* %25, i32 0, i32 7
  store %struct.device* %24, %struct.device** %26, align 8
  %27 = load %struct.ceu_device*, %struct.ceu_device** %6, align 8
  %28 = getelementptr inbounds %struct.ceu_device, %struct.ceu_device* %27, i32 0, i32 6
  %29 = call i32 @INIT_LIST_HEAD(i32* %28)
  %30 = load %struct.ceu_device*, %struct.ceu_device** %6, align 8
  %31 = getelementptr inbounds %struct.ceu_device, %struct.ceu_device* %30, i32 0, i32 5
  %32 = call i32 @spin_lock_init(i32* %31)
  %33 = load %struct.ceu_device*, %struct.ceu_device** %6, align 8
  %34 = getelementptr inbounds %struct.ceu_device, %struct.ceu_device* %33, i32 0, i32 4
  %35 = call i32 @mutex_init(i32* %34)
  %36 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %37 = load i32, i32* @IORESOURCE_MEM, align 4
  %38 = call %struct.resource* @platform_get_resource(%struct.platform_device* %36, i32 %37, i32 0)
  store %struct.resource* %38, %struct.resource** %7, align 8
  %39 = load %struct.device*, %struct.device** %4, align 8
  %40 = load %struct.resource*, %struct.resource** %7, align 8
  %41 = call i32 @devm_ioremap_resource(%struct.device* %39, %struct.resource* %40)
  %42 = load %struct.ceu_device*, %struct.ceu_device** %6, align 8
  %43 = getelementptr inbounds %struct.ceu_device, %struct.ceu_device* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 4
  %44 = load %struct.ceu_device*, %struct.ceu_device** %6, align 8
  %45 = getelementptr inbounds %struct.ceu_device, %struct.ceu_device* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @IS_ERR(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %20
  %50 = load %struct.ceu_device*, %struct.ceu_device** %6, align 8
  %51 = getelementptr inbounds %struct.ceu_device, %struct.ceu_device* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @PTR_ERR(i32 %52)
  store i32 %53, i32* %10, align 4
  br label %163

54:                                               ; preds = %20
  %55 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %56 = call i32 @platform_get_irq(%struct.platform_device* %55, i32 0)
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* %10, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  br label %163

60:                                               ; preds = %54
  %61 = load i32, i32* %10, align 4
  store i32 %61, i32* %8, align 4
  %62 = load %struct.device*, %struct.device** %4, align 8
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* @ceu_irq, align 4
  %65 = load %struct.device*, %struct.device** %4, align 8
  %66 = call i32 @dev_name(%struct.device* %65)
  %67 = load %struct.ceu_device*, %struct.ceu_device** %6, align 8
  %68 = call i32 @devm_request_irq(%struct.device* %62, i32 %63, i32 %64, i32 0, i32 %66, %struct.ceu_device* %67)
  store i32 %68, i32* %10, align 4
  %69 = load i32, i32* %10, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %60
  %72 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %73 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %72, i32 0, i32 0
  %74 = call i32 @dev_err(%struct.device* %73, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %163

75:                                               ; preds = %60
  %76 = load %struct.device*, %struct.device** %4, align 8
  %77 = call i32 @pm_runtime_enable(%struct.device* %76)
  %78 = load %struct.device*, %struct.device** %4, align 8
  %79 = load %struct.ceu_device*, %struct.ceu_device** %6, align 8
  %80 = getelementptr inbounds %struct.ceu_device, %struct.ceu_device* %79, i32 0, i32 0
  %81 = call i32 @v4l2_device_register(%struct.device* %78, i32* %80)
  store i32 %81, i32* %10, align 4
  %82 = load i32, i32* %10, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %75
  br label %160

85:                                               ; preds = %75
  %86 = load %struct.ceu_device*, %struct.ceu_device** %6, align 8
  %87 = getelementptr inbounds %struct.ceu_device, %struct.ceu_device* %86, i32 0, i32 1
  %88 = call i32 @v4l2_async_notifier_init(%struct.TYPE_5__* %87)
  %89 = load i32, i32* @CONFIG_OF, align 4
  %90 = call i64 @IS_ENABLED(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %105

92:                                               ; preds = %85
  %93 = load %struct.device*, %struct.device** %4, align 8
  %94 = getelementptr inbounds %struct.device, %struct.device* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %105

97:                                               ; preds = %92
  %98 = load i32, i32* @ceu_of_match, align 4
  %99 = load %struct.device*, %struct.device** %4, align 8
  %100 = call %struct.TYPE_6__* @of_match_device(i32 %98, %struct.device* %99)
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = load %struct.ceu_data*, %struct.ceu_data** %101, align 8
  store %struct.ceu_data* %102, %struct.ceu_data** %5, align 8
  %103 = load %struct.ceu_device*, %struct.ceu_device** %6, align 8
  %104 = call i32 @ceu_parse_dt(%struct.ceu_device* %103)
  store i32 %104, i32* %9, align 4
  br label %120

105:                                              ; preds = %92, %85
  %106 = load %struct.device*, %struct.device** %4, align 8
  %107 = getelementptr inbounds %struct.device, %struct.device* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %105
  store %struct.ceu_data* @ceu_data_sh4, %struct.ceu_data** %5, align 8
  %111 = load %struct.ceu_device*, %struct.ceu_device** %6, align 8
  %112 = load %struct.device*, %struct.device** %4, align 8
  %113 = getelementptr inbounds %struct.device, %struct.device* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = call i32 @ceu_parse_platform_data(%struct.ceu_device* %111, i64 %114)
  store i32 %115, i32* %9, align 4
  br label %119

116:                                              ; preds = %105
  %117 = load i32, i32* @EINVAL, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %9, align 4
  br label %119

119:                                              ; preds = %116, %110
  br label %120

120:                                              ; preds = %119, %97
  %121 = load i32, i32* %9, align 4
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %120
  %124 = load i32, i32* %9, align 4
  store i32 %124, i32* %10, align 4
  br label %156

125:                                              ; preds = %120
  %126 = load %struct.ceu_data*, %struct.ceu_data** %5, align 8
  %127 = getelementptr inbounds %struct.ceu_data, %struct.ceu_data* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.ceu_device*, %struct.ceu_device** %6, align 8
  %130 = getelementptr inbounds %struct.ceu_device, %struct.ceu_device* %129, i32 0, i32 2
  store i32 %128, i32* %130, align 8
  %131 = load %struct.ceu_device*, %struct.ceu_device** %6, align 8
  %132 = getelementptr inbounds %struct.ceu_device, %struct.ceu_device* %131, i32 0, i32 0
  %133 = load %struct.ceu_device*, %struct.ceu_device** %6, align 8
  %134 = getelementptr inbounds %struct.ceu_device, %struct.ceu_device* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 1
  store i32* %132, i32** %135, align 8
  %136 = load %struct.ceu_device*, %struct.ceu_device** %6, align 8
  %137 = getelementptr inbounds %struct.ceu_device, %struct.ceu_device* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 0
  store i32* @ceu_notify_ops, i32** %138, align 8
  %139 = load %struct.ceu_device*, %struct.ceu_device** %6, align 8
  %140 = getelementptr inbounds %struct.ceu_device, %struct.ceu_device* %139, i32 0, i32 0
  %141 = load %struct.ceu_device*, %struct.ceu_device** %6, align 8
  %142 = getelementptr inbounds %struct.ceu_device, %struct.ceu_device* %141, i32 0, i32 1
  %143 = call i32 @v4l2_async_notifier_register(i32* %140, %struct.TYPE_5__* %142)
  store i32 %143, i32* %10, align 4
  %144 = load i32, i32* %10, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %125
  br label %152

147:                                              ; preds = %125
  %148 = load %struct.device*, %struct.device** %4, align 8
  %149 = load %struct.device*, %struct.device** %4, align 8
  %150 = call i32 @dev_name(%struct.device* %149)
  %151 = call i32 @dev_info(%struct.device* %148, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %150)
  store i32 0, i32* %2, align 4
  br label %167

152:                                              ; preds = %146
  %153 = load %struct.ceu_device*, %struct.ceu_device** %6, align 8
  %154 = getelementptr inbounds %struct.ceu_device, %struct.ceu_device* %153, i32 0, i32 1
  %155 = call i32 @v4l2_async_notifier_cleanup(%struct.TYPE_5__* %154)
  br label %156

156:                                              ; preds = %152, %123
  %157 = load %struct.ceu_device*, %struct.ceu_device** %6, align 8
  %158 = getelementptr inbounds %struct.ceu_device, %struct.ceu_device* %157, i32 0, i32 0
  %159 = call i32 @v4l2_device_unregister(i32* %158)
  br label %160

160:                                              ; preds = %156, %84
  %161 = load %struct.device*, %struct.device** %4, align 8
  %162 = call i32 @pm_runtime_disable(%struct.device* %161)
  br label %163

163:                                              ; preds = %160, %71, %59, %49
  %164 = load %struct.ceu_device*, %struct.ceu_device** %6, align 8
  %165 = call i32 @kfree(%struct.ceu_device* %164)
  %166 = load i32, i32* %10, align 4
  store i32 %166, i32* %2, align 4
  br label %167

167:                                              ; preds = %163, %147, %17
  %168 = load i32, i32* %2, align 4
  ret i32 %168
}

declare dso_local %struct.ceu_device* @kzalloc(i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.ceu_device*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i32, i32, i32, i32, %struct.ceu_device*) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @pm_runtime_enable(%struct.device*) #1

declare dso_local i32 @v4l2_device_register(%struct.device*, i32*) #1

declare dso_local i32 @v4l2_async_notifier_init(%struct.TYPE_5__*) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local %struct.TYPE_6__* @of_match_device(i32, %struct.device*) #1

declare dso_local i32 @ceu_parse_dt(%struct.ceu_device*) #1

declare dso_local i32 @ceu_parse_platform_data(%struct.ceu_device*, i64) #1

declare dso_local i32 @v4l2_async_notifier_register(i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32) #1

declare dso_local i32 @v4l2_async_notifier_cleanup(%struct.TYPE_5__*) #1

declare dso_local i32 @v4l2_device_unregister(i32*) #1

declare dso_local i32 @pm_runtime_disable(%struct.device*) #1

declare dso_local i32 @kfree(%struct.ceu_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
