; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispccdc.c_ccdc_isr_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispccdc.c_ccdc_isr_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp_ccdc_device = type { i64, %struct.TYPE_4__, %struct.TYPE_3__, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.isp_pipeline = type { i32 }
%struct.isp_device = type { i32, i32 }
%struct.isp_buffer = type { i32 }

@ISP_PIPELINE_STREAM_CONTINUOUS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"CCDC won't become idle!\0A\00", align 1
@ISP_PIPELINE_IDLE_OUTPUT = common dso_local global i32 0, align 4
@ISP_PIPELINE_STREAM_SINGLESHOT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.isp_ccdc_device*)* @ccdc_isr_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccdc_isr_buffer(%struct.isp_ccdc_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.isp_ccdc_device*, align 8
  %4 = alloca %struct.isp_pipeline*, align 8
  %5 = alloca %struct.isp_device*, align 8
  %6 = alloca %struct.isp_buffer*, align 8
  store %struct.isp_ccdc_device* %0, %struct.isp_ccdc_device** %3, align 8
  %7 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %3, align 8
  %8 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = call %struct.isp_pipeline* @to_isp_pipeline(i32* %9)
  store %struct.isp_pipeline* %10, %struct.isp_pipeline** %4, align 8
  %11 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %3, align 8
  %12 = call %struct.isp_device* @to_isp_device(%struct.isp_ccdc_device* %11)
  store %struct.isp_device* %12, %struct.isp_device** %5, align 8
  %13 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %3, align 8
  %14 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = call i64 @list_empty(i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %90

19:                                               ; preds = %1
  %20 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %3, align 8
  %21 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @ISP_PIPELINE_STREAM_CONTINUOUS, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %33

25:                                               ; preds = %19
  %26 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %3, align 8
  %27 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %3, align 8
  %32 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %31, i32 0, i32 3
  store i64 0, i64* %32, align 8
  store i32 1, i32* %2, align 4
  br label %90

33:                                               ; preds = %25, %19
  %34 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %3, align 8
  %35 = call i64 @ccdc_sbl_wait_idle(%struct.isp_ccdc_device* %34, i32 1000)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %50

37:                                               ; preds = %33
  %38 = load %struct.isp_device*, %struct.isp_device** %5, align 8
  %39 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @dev_info(i32 %40, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %42 = load %struct.isp_device*, %struct.isp_device** %5, align 8
  %43 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %42, i32 0, i32 0
  %44 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %3, align 8
  %45 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = call i32 @media_entity_enum_set(i32* %43, i32* %46)
  %48 = load %struct.isp_pipeline*, %struct.isp_pipeline** %4, align 8
  %49 = call i32 @omap3isp_pipeline_cancel_stream(%struct.isp_pipeline* %48)
  store i32 0, i32* %2, align 4
  br label %90

50:                                               ; preds = %33
  %51 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %3, align 8
  %52 = call i32 @ccdc_has_all_fields(%struct.isp_ccdc_device* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %50
  store i32 1, i32* %2, align 4
  br label %90

55:                                               ; preds = %50
  %56 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %3, align 8
  %57 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %56, i32 0, i32 1
  %58 = call %struct.isp_buffer* @omap3isp_video_buffer_next(%struct.TYPE_4__* %57)
  store %struct.isp_buffer* %58, %struct.isp_buffer** %6, align 8
  %59 = load %struct.isp_buffer*, %struct.isp_buffer** %6, align 8
  %60 = icmp ne %struct.isp_buffer* %59, null
  br i1 %60, label %61, label %67

61:                                               ; preds = %55
  %62 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %3, align 8
  %63 = load %struct.isp_buffer*, %struct.isp_buffer** %6, align 8
  %64 = getelementptr inbounds %struct.isp_buffer, %struct.isp_buffer* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @ccdc_set_outaddr(%struct.isp_ccdc_device* %62, i32 %65)
  br label %67

67:                                               ; preds = %61, %55
  %68 = load i32, i32* @ISP_PIPELINE_IDLE_OUTPUT, align 4
  %69 = load %struct.isp_pipeline*, %struct.isp_pipeline** %4, align 8
  %70 = getelementptr inbounds %struct.isp_pipeline, %struct.isp_pipeline* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = or i32 %71, %68
  store i32 %72, i32* %70, align 4
  %73 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %3, align 8
  %74 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @ISP_PIPELINE_STREAM_SINGLESHOT, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %86

78:                                               ; preds = %67
  %79 = load %struct.isp_pipeline*, %struct.isp_pipeline** %4, align 8
  %80 = call i64 @isp_pipeline_ready(%struct.isp_pipeline* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %78
  %83 = load %struct.isp_pipeline*, %struct.isp_pipeline** %4, align 8
  %84 = load i64, i64* @ISP_PIPELINE_STREAM_SINGLESHOT, align 8
  %85 = call i32 @omap3isp_pipeline_set_stream(%struct.isp_pipeline* %83, i64 %84)
  br label %86

86:                                               ; preds = %82, %78, %67
  %87 = load %struct.isp_buffer*, %struct.isp_buffer** %6, align 8
  %88 = icmp ne %struct.isp_buffer* %87, null
  %89 = zext i1 %88 to i32
  store i32 %89, i32* %2, align 4
  br label %90

90:                                               ; preds = %86, %54, %37, %30, %18
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local %struct.isp_pipeline* @to_isp_pipeline(i32*) #1

declare dso_local %struct.isp_device* @to_isp_device(%struct.isp_ccdc_device*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i64 @ccdc_sbl_wait_idle(%struct.isp_ccdc_device*, i32) #1

declare dso_local i32 @dev_info(i32, i8*) #1

declare dso_local i32 @media_entity_enum_set(i32*, i32*) #1

declare dso_local i32 @omap3isp_pipeline_cancel_stream(%struct.isp_pipeline*) #1

declare dso_local i32 @ccdc_has_all_fields(%struct.isp_ccdc_device*) #1

declare dso_local %struct.isp_buffer* @omap3isp_video_buffer_next(%struct.TYPE_4__*) #1

declare dso_local i32 @ccdc_set_outaddr(%struct.isp_ccdc_device*, i32) #1

declare dso_local i64 @isp_pipeline_ready(%struct.isp_pipeline*) #1

declare dso_local i32 @omap3isp_pipeline_set_stream(%struct.isp_pipeline*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
