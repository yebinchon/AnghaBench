; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpbe_venc.c_venc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpbe_venc.c_venc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.platform_device_id = type { i64 }
%struct.venc_state = type { i64, %struct.TYPE_5__*, i32, i8*, i8*, i64 }
%struct.resource = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"No platform data for VENC sub device\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@VPBE_VERSION_1 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"VENC sub device probe success\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @venc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @venc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.platform_device_id*, align 8
  %5 = alloca %struct.venc_state*, align 8
  %6 = alloca %struct.resource*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %1
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = call i32 @dev_err(%struct.TYPE_5__* %14, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %109

18:                                               ; preds = %1
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = call %struct.platform_device_id* @platform_get_device_id(%struct.platform_device* %19)
  store %struct.platform_device_id* %20, %struct.platform_device_id** %4, align 8
  %21 = load %struct.platform_device_id*, %struct.platform_device_id** %4, align 8
  %22 = icmp ne %struct.platform_device_id* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %109

26:                                               ; preds = %18
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %27, i32 0, i32 0
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call %struct.venc_state* @devm_kzalloc(%struct.TYPE_5__* %28, i32 48, i32 %29)
  store %struct.venc_state* %30, %struct.venc_state** %5, align 8
  %31 = load %struct.venc_state*, %struct.venc_state** %5, align 8
  %32 = icmp eq %struct.venc_state* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %26
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %109

36:                                               ; preds = %26
  %37 = load %struct.platform_device_id*, %struct.platform_device_id** %4, align 8
  %38 = getelementptr inbounds %struct.platform_device_id, %struct.platform_device_id* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.venc_state*, %struct.venc_state** %5, align 8
  %41 = getelementptr inbounds %struct.venc_state, %struct.venc_state* %40, i32 0, i32 0
  store i64 %39, i64* %41, align 8
  %42 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %43 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %42, i32 0, i32 0
  %44 = load %struct.venc_state*, %struct.venc_state** %5, align 8
  %45 = getelementptr inbounds %struct.venc_state, %struct.venc_state* %44, i32 0, i32 1
  store %struct.TYPE_5__* %43, %struct.TYPE_5__** %45, align 8
  %46 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %47 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.venc_state*, %struct.venc_state** %5, align 8
  %51 = getelementptr inbounds %struct.venc_state, %struct.venc_state* %50, i32 0, i32 5
  store i64 %49, i64* %51, align 8
  %52 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %53 = load i32, i32* @IORESOURCE_MEM, align 4
  %54 = call %struct.resource* @platform_get_resource(%struct.platform_device* %52, i32 %53, i32 0)
  store %struct.resource* %54, %struct.resource** %6, align 8
  %55 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %56 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %55, i32 0, i32 0
  %57 = load %struct.resource*, %struct.resource** %6, align 8
  %58 = call i8* @devm_ioremap_resource(%struct.TYPE_5__* %56, %struct.resource* %57)
  %59 = load %struct.venc_state*, %struct.venc_state** %5, align 8
  %60 = getelementptr inbounds %struct.venc_state, %struct.venc_state* %59, i32 0, i32 4
  store i8* %58, i8** %60, align 8
  %61 = load %struct.venc_state*, %struct.venc_state** %5, align 8
  %62 = getelementptr inbounds %struct.venc_state, %struct.venc_state* %61, i32 0, i32 4
  %63 = load i8*, i8** %62, align 8
  %64 = call i64 @IS_ERR(i8* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %36
  %67 = load %struct.venc_state*, %struct.venc_state** %5, align 8
  %68 = getelementptr inbounds %struct.venc_state, %struct.venc_state* %67, i32 0, i32 4
  %69 = load i8*, i8** %68, align 8
  %70 = call i32 @PTR_ERR(i8* %69)
  store i32 %70, i32* %2, align 4
  br label %109

71:                                               ; preds = %36
  %72 = load %struct.venc_state*, %struct.venc_state** %5, align 8
  %73 = getelementptr inbounds %struct.venc_state, %struct.venc_state* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @VPBE_VERSION_1, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %98

77:                                               ; preds = %71
  %78 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %79 = load i32, i32* @IORESOURCE_MEM, align 4
  %80 = call %struct.resource* @platform_get_resource(%struct.platform_device* %78, i32 %79, i32 1)
  store %struct.resource* %80, %struct.resource** %6, align 8
  %81 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %82 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %81, i32 0, i32 0
  %83 = load %struct.resource*, %struct.resource** %6, align 8
  %84 = call i8* @devm_ioremap_resource(%struct.TYPE_5__* %82, %struct.resource* %83)
  %85 = load %struct.venc_state*, %struct.venc_state** %5, align 8
  %86 = getelementptr inbounds %struct.venc_state, %struct.venc_state* %85, i32 0, i32 3
  store i8* %84, i8** %86, align 8
  %87 = load %struct.venc_state*, %struct.venc_state** %5, align 8
  %88 = getelementptr inbounds %struct.venc_state, %struct.venc_state* %87, i32 0, i32 3
  %89 = load i8*, i8** %88, align 8
  %90 = call i64 @IS_ERR(i8* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %77
  %93 = load %struct.venc_state*, %struct.venc_state** %5, align 8
  %94 = getelementptr inbounds %struct.venc_state, %struct.venc_state* %93, i32 0, i32 3
  %95 = load i8*, i8** %94, align 8
  %96 = call i32 @PTR_ERR(i8* %95)
  store i32 %96, i32* %2, align 4
  br label %109

97:                                               ; preds = %77
  br label %98

98:                                               ; preds = %97, %71
  %99 = load %struct.venc_state*, %struct.venc_state** %5, align 8
  %100 = getelementptr inbounds %struct.venc_state, %struct.venc_state* %99, i32 0, i32 2
  %101 = call i32 @spin_lock_init(i32* %100)
  %102 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %103 = load %struct.venc_state*, %struct.venc_state** %5, align 8
  %104 = call i32 @platform_set_drvdata(%struct.platform_device* %102, %struct.venc_state* %103)
  %105 = load %struct.venc_state*, %struct.venc_state** %5, align 8
  %106 = getelementptr inbounds %struct.venc_state, %struct.venc_state* %105, i32 0, i32 1
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %106, align 8
  %108 = call i32 @dev_notice(%struct.TYPE_5__* %107, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %109

109:                                              ; preds = %98, %92, %66, %33, %23, %12
  %110 = load i32, i32* %2, align 4
  ret i32 %110
}

declare dso_local i32 @dev_err(%struct.TYPE_5__*, i8*) #1

declare dso_local %struct.platform_device_id* @platform_get_device_id(%struct.platform_device*) #1

declare dso_local %struct.venc_state* @devm_kzalloc(%struct.TYPE_5__*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i8* @devm_ioremap_resource(%struct.TYPE_5__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.venc_state*) #1

declare dso_local i32 @dev_notice(%struct.TYPE_5__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
