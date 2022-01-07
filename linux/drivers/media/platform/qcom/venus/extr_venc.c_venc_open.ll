; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_venc.c_venc_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_venc.c_venc_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32* }
%struct.venus_core = type { i32, i32 }
%struct.venus_inst = type { i32, %struct.TYPE_3__, i32, i32, i32, %struct.venus_core*, i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@VIDC_SESSION_TYPE_ENC = common dso_local global i32 0, align 4
@venc_hfi_ops = common dso_local global i32 0, align 4
@venc_m2m_ops = common dso_local global i32 0, align 4
@m2m_queue_init = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @venc_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @venc_open(%struct.file* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.venus_core*, align 8
  %5 = alloca %struct.venus_inst*, align 8
  %6 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  %7 = load %struct.file*, %struct.file** %3, align 8
  %8 = call %struct.venus_core* @video_drvdata(%struct.file* %7)
  store %struct.venus_core* %8, %struct.venus_core** %4, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.venus_inst* @kzalloc(i32 72, i32 %9)
  store %struct.venus_inst* %10, %struct.venus_inst** %5, align 8
  %11 = load %struct.venus_inst*, %struct.venus_inst** %5, align 8
  %12 = icmp ne %struct.venus_inst* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %139

16:                                               ; preds = %1
  %17 = load %struct.venus_inst*, %struct.venus_inst** %5, align 8
  %18 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %17, i32 0, i32 10
  %19 = call i32 @INIT_LIST_HEAD(i32* %18)
  %20 = load %struct.venus_inst*, %struct.venus_inst** %5, align 8
  %21 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %20, i32 0, i32 9
  %22 = call i32 @INIT_LIST_HEAD(i32* %21)
  %23 = load %struct.venus_inst*, %struct.venus_inst** %5, align 8
  %24 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %23, i32 0, i32 8
  %25 = call i32 @INIT_LIST_HEAD(i32* %24)
  %26 = load %struct.venus_inst*, %struct.venus_inst** %5, align 8
  %27 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %26, i32 0, i32 7
  %28 = call i32 @INIT_LIST_HEAD(i32* %27)
  %29 = load %struct.venus_inst*, %struct.venus_inst** %5, align 8
  %30 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %29, i32 0, i32 6
  %31 = call i32 @mutex_init(i32* %30)
  %32 = load %struct.venus_core*, %struct.venus_core** %4, align 8
  %33 = load %struct.venus_inst*, %struct.venus_inst** %5, align 8
  %34 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %33, i32 0, i32 5
  store %struct.venus_core* %32, %struct.venus_core** %34, align 8
  %35 = load i32, i32* @VIDC_SESSION_TYPE_ENC, align 4
  %36 = load %struct.venus_inst*, %struct.venus_inst** %5, align 8
  %37 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %36, i32 0, i32 4
  store i32 %35, i32* %37, align 8
  %38 = load %struct.venus_inst*, %struct.venus_inst** %5, align 8
  %39 = call i32 @venus_helper_init_instance(%struct.venus_inst* %38)
  %40 = load %struct.venus_core*, %struct.venus_core** %4, align 8
  %41 = getelementptr inbounds %struct.venus_core, %struct.venus_core* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @pm_runtime_get_sync(i32 %42)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %16
  br label %135

47:                                               ; preds = %16
  %48 = load %struct.venus_inst*, %struct.venus_inst** %5, align 8
  %49 = call i32 @venc_ctrl_init(%struct.venus_inst* %48)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  br label %130

53:                                               ; preds = %47
  %54 = load %struct.venus_inst*, %struct.venus_inst** %5, align 8
  %55 = call i32 @hfi_session_create(%struct.venus_inst* %54, i32* @venc_hfi_ops)
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  br label %127

59:                                               ; preds = %53
  %60 = load %struct.venus_inst*, %struct.venus_inst** %5, align 8
  %61 = call i32 @venc_inst_init(%struct.venus_inst* %60)
  %62 = call i32 @v4l2_m2m_init(i32* @venc_m2m_ops)
  %63 = load %struct.venus_inst*, %struct.venus_inst** %5, align 8
  %64 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  %65 = load %struct.venus_inst*, %struct.venus_inst** %5, align 8
  %66 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i64 @IS_ERR(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %59
  %71 = load %struct.venus_inst*, %struct.venus_inst** %5, align 8
  %72 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @PTR_ERR(i32 %73)
  store i32 %74, i32* %6, align 4
  br label %124

75:                                               ; preds = %59
  %76 = load %struct.venus_inst*, %struct.venus_inst** %5, align 8
  %77 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.venus_inst*, %struct.venus_inst** %5, align 8
  %80 = load i32, i32* @m2m_queue_init, align 4
  %81 = call i32 @v4l2_m2m_ctx_init(i32 %78, %struct.venus_inst* %79, i32 %80)
  %82 = load %struct.venus_inst*, %struct.venus_inst** %5, align 8
  %83 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %82, i32 0, i32 2
  store i32 %81, i32* %83, align 8
  %84 = load %struct.venus_inst*, %struct.venus_inst** %5, align 8
  %85 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = call i64 @IS_ERR(i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %75
  %90 = load %struct.venus_inst*, %struct.venus_inst** %5, align 8
  %91 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @PTR_ERR(i32 %92)
  store i32 %93, i32* %6, align 4
  br label %119

94:                                               ; preds = %75
  %95 = load %struct.venus_inst*, %struct.venus_inst** %5, align 8
  %96 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %95, i32 0, i32 1
  %97 = load %struct.venus_core*, %struct.venus_core** %4, align 8
  %98 = getelementptr inbounds %struct.venus_core, %struct.venus_core* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @v4l2_fh_init(%struct.TYPE_3__* %96, i32 %99)
  %101 = load %struct.venus_inst*, %struct.venus_inst** %5, align 8
  %102 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %101, i32 0, i32 3
  %103 = load %struct.venus_inst*, %struct.venus_inst** %5, align 8
  %104 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 1
  store i32* %102, i32** %105, align 8
  %106 = load %struct.venus_inst*, %struct.venus_inst** %5, align 8
  %107 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %106, i32 0, i32 1
  %108 = call i32 @v4l2_fh_add(%struct.TYPE_3__* %107)
  %109 = load %struct.venus_inst*, %struct.venus_inst** %5, align 8
  %110 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.venus_inst*, %struct.venus_inst** %5, align 8
  %113 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 0
  store i32 %111, i32* %114, align 8
  %115 = load %struct.venus_inst*, %struct.venus_inst** %5, align 8
  %116 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %115, i32 0, i32 1
  %117 = load %struct.file*, %struct.file** %3, align 8
  %118 = getelementptr inbounds %struct.file, %struct.file* %117, i32 0, i32 0
  store %struct.TYPE_3__* %116, %struct.TYPE_3__** %118, align 8
  store i32 0, i32* %2, align 4
  br label %139

119:                                              ; preds = %89
  %120 = load %struct.venus_inst*, %struct.venus_inst** %5, align 8
  %121 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @v4l2_m2m_release(i32 %122)
  br label %124

124:                                              ; preds = %119, %70
  %125 = load %struct.venus_inst*, %struct.venus_inst** %5, align 8
  %126 = call i32 @hfi_session_destroy(%struct.venus_inst* %125)
  br label %127

127:                                              ; preds = %124, %58
  %128 = load %struct.venus_inst*, %struct.venus_inst** %5, align 8
  %129 = call i32 @venc_ctrl_deinit(%struct.venus_inst* %128)
  br label %130

130:                                              ; preds = %127, %52
  %131 = load %struct.venus_core*, %struct.venus_core** %4, align 8
  %132 = getelementptr inbounds %struct.venus_core, %struct.venus_core* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @pm_runtime_put_sync(i32 %133)
  br label %135

135:                                              ; preds = %130, %46
  %136 = load %struct.venus_inst*, %struct.venus_inst** %5, align 8
  %137 = call i32 @kfree(%struct.venus_inst* %136)
  %138 = load i32, i32* %6, align 4
  store i32 %138, i32* %2, align 4
  br label %139

139:                                              ; preds = %135, %94, %13
  %140 = load i32, i32* %2, align 4
  ret i32 %140
}

declare dso_local %struct.venus_core* @video_drvdata(%struct.file*) #1

declare dso_local %struct.venus_inst* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @venus_helper_init_instance(%struct.venus_inst*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @venc_ctrl_init(%struct.venus_inst*) #1

declare dso_local i32 @hfi_session_create(%struct.venus_inst*, i32*) #1

declare dso_local i32 @venc_inst_init(%struct.venus_inst*) #1

declare dso_local i32 @v4l2_m2m_init(i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @v4l2_m2m_ctx_init(i32, %struct.venus_inst*, i32) #1

declare dso_local i32 @v4l2_fh_init(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @v4l2_fh_add(%struct.TYPE_3__*) #1

declare dso_local i32 @v4l2_m2m_release(i32) #1

declare dso_local i32 @hfi_session_destroy(%struct.venus_inst*) #1

declare dso_local i32 @venc_ctrl_deinit(%struct.venus_inst*) #1

declare dso_local i32 @pm_runtime_put_sync(i32) #1

declare dso_local i32 @kfree(%struct.venus_inst*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
