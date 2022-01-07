; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_vdec.c_vdec_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_vdec.c_vdec_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32* }
%struct.venus_core = type { i32, i32 }
%struct.venus_inst = type { i32, i32, %struct.TYPE_3__, i32, i32, i32, i64, i32, i32, %struct.venus_core*, i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@VIDC_SESSION_TYPE_DEC = common dso_local global i32 0, align 4
@VENUS_DEC_STATE_DEINIT = common dso_local global i32 0, align 4
@vdec_hfi_ops = common dso_local global i32 0, align 4
@vdec_m2m_ops = common dso_local global i32 0, align 4
@m2m_queue_init = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @vdec_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vdec_open(%struct.file* %0) #0 {
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
  %10 = call %struct.venus_inst* @kzalloc(i32 88, i32 %9)
  store %struct.venus_inst* %10, %struct.venus_inst** %5, align 8
  %11 = load %struct.venus_inst*, %struct.venus_inst** %5, align 8
  %12 = icmp ne %struct.venus_inst* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %149

16:                                               ; preds = %1
  %17 = load %struct.venus_inst*, %struct.venus_inst** %5, align 8
  %18 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %17, i32 0, i32 14
  %19 = call i32 @INIT_LIST_HEAD(i32* %18)
  %20 = load %struct.venus_inst*, %struct.venus_inst** %5, align 8
  %21 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %20, i32 0, i32 13
  %22 = call i32 @INIT_LIST_HEAD(i32* %21)
  %23 = load %struct.venus_inst*, %struct.venus_inst** %5, align 8
  %24 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %23, i32 0, i32 12
  %25 = call i32 @INIT_LIST_HEAD(i32* %24)
  %26 = load %struct.venus_inst*, %struct.venus_inst** %5, align 8
  %27 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %26, i32 0, i32 11
  %28 = call i32 @INIT_LIST_HEAD(i32* %27)
  %29 = load %struct.venus_inst*, %struct.venus_inst** %5, align 8
  %30 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %29, i32 0, i32 10
  %31 = call i32 @mutex_init(i32* %30)
  %32 = load %struct.venus_core*, %struct.venus_core** %4, align 8
  %33 = load %struct.venus_inst*, %struct.venus_inst** %5, align 8
  %34 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %33, i32 0, i32 9
  store %struct.venus_core* %32, %struct.venus_core** %34, align 8
  %35 = load i32, i32* @VIDC_SESSION_TYPE_DEC, align 4
  %36 = load %struct.venus_inst*, %struct.venus_inst** %5, align 8
  %37 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %36, i32 0, i32 8
  store i32 %35, i32* %37, align 4
  %38 = load %struct.venus_inst*, %struct.venus_inst** %5, align 8
  %39 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %38, i32 0, i32 0
  store i32 1, i32* %39, align 8
  %40 = load i32, i32* @VENUS_DEC_STATE_DEINIT, align 4
  %41 = load %struct.venus_inst*, %struct.venus_inst** %5, align 8
  %42 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %41, i32 0, i32 7
  store i32 %40, i32* %42, align 8
  %43 = load %struct.venus_inst*, %struct.venus_inst** %5, align 8
  %44 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %43, i32 0, i32 6
  store i64 0, i64* %44, align 8
  %45 = load %struct.venus_inst*, %struct.venus_inst** %5, align 8
  %46 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %45, i32 0, i32 5
  %47 = call i32 @init_waitqueue_head(i32* %46)
  %48 = load %struct.venus_inst*, %struct.venus_inst** %5, align 8
  %49 = call i32 @venus_helper_init_instance(%struct.venus_inst* %48)
  %50 = load %struct.venus_core*, %struct.venus_core** %4, align 8
  %51 = getelementptr inbounds %struct.venus_core, %struct.venus_core* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @pm_runtime_get_sync(i32 %52)
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %16
  br label %145

57:                                               ; preds = %16
  %58 = load %struct.venus_inst*, %struct.venus_inst** %5, align 8
  %59 = call i32 @vdec_ctrl_init(%struct.venus_inst* %58)
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  br label %140

63:                                               ; preds = %57
  %64 = load %struct.venus_inst*, %struct.venus_inst** %5, align 8
  %65 = call i32 @hfi_session_create(%struct.venus_inst* %64, i32* @vdec_hfi_ops)
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* %6, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %63
  br label %137

69:                                               ; preds = %63
  %70 = load %struct.venus_inst*, %struct.venus_inst** %5, align 8
  %71 = call i32 @vdec_inst_init(%struct.venus_inst* %70)
  %72 = call i32 @v4l2_m2m_init(i32* @vdec_m2m_ops)
  %73 = load %struct.venus_inst*, %struct.venus_inst** %5, align 8
  %74 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  %75 = load %struct.venus_inst*, %struct.venus_inst** %5, align 8
  %76 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i64 @IS_ERR(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %69
  %81 = load %struct.venus_inst*, %struct.venus_inst** %5, align 8
  %82 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @PTR_ERR(i32 %83)
  store i32 %84, i32* %6, align 4
  br label %134

85:                                               ; preds = %69
  %86 = load %struct.venus_inst*, %struct.venus_inst** %5, align 8
  %87 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.venus_inst*, %struct.venus_inst** %5, align 8
  %90 = load i32, i32* @m2m_queue_init, align 4
  %91 = call i32 @v4l2_m2m_ctx_init(i32 %88, %struct.venus_inst* %89, i32 %90)
  %92 = load %struct.venus_inst*, %struct.venus_inst** %5, align 8
  %93 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %92, i32 0, i32 3
  store i32 %91, i32* %93, align 8
  %94 = load %struct.venus_inst*, %struct.venus_inst** %5, align 8
  %95 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 8
  %97 = call i64 @IS_ERR(i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %85
  %100 = load %struct.venus_inst*, %struct.venus_inst** %5, align 8
  %101 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @PTR_ERR(i32 %102)
  store i32 %103, i32* %6, align 4
  br label %129

104:                                              ; preds = %85
  %105 = load %struct.venus_inst*, %struct.venus_inst** %5, align 8
  %106 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %105, i32 0, i32 2
  %107 = load %struct.venus_core*, %struct.venus_core** %4, align 8
  %108 = getelementptr inbounds %struct.venus_core, %struct.venus_core* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @v4l2_fh_init(%struct.TYPE_3__* %106, i32 %109)
  %111 = load %struct.venus_inst*, %struct.venus_inst** %5, align 8
  %112 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %111, i32 0, i32 4
  %113 = load %struct.venus_inst*, %struct.venus_inst** %5, align 8
  %114 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 1
  store i32* %112, i32** %115, align 8
  %116 = load %struct.venus_inst*, %struct.venus_inst** %5, align 8
  %117 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %116, i32 0, i32 2
  %118 = call i32 @v4l2_fh_add(%struct.TYPE_3__* %117)
  %119 = load %struct.venus_inst*, %struct.venus_inst** %5, align 8
  %120 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.venus_inst*, %struct.venus_inst** %5, align 8
  %123 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 0
  store i32 %121, i32* %124, align 8
  %125 = load %struct.venus_inst*, %struct.venus_inst** %5, align 8
  %126 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %125, i32 0, i32 2
  %127 = load %struct.file*, %struct.file** %3, align 8
  %128 = getelementptr inbounds %struct.file, %struct.file* %127, i32 0, i32 0
  store %struct.TYPE_3__* %126, %struct.TYPE_3__** %128, align 8
  store i32 0, i32* %2, align 4
  br label %149

129:                                              ; preds = %99
  %130 = load %struct.venus_inst*, %struct.venus_inst** %5, align 8
  %131 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @v4l2_m2m_release(i32 %132)
  br label %134

134:                                              ; preds = %129, %80
  %135 = load %struct.venus_inst*, %struct.venus_inst** %5, align 8
  %136 = call i32 @hfi_session_destroy(%struct.venus_inst* %135)
  br label %137

137:                                              ; preds = %134, %68
  %138 = load %struct.venus_inst*, %struct.venus_inst** %5, align 8
  %139 = call i32 @vdec_ctrl_deinit(%struct.venus_inst* %138)
  br label %140

140:                                              ; preds = %137, %62
  %141 = load %struct.venus_core*, %struct.venus_core** %4, align 8
  %142 = getelementptr inbounds %struct.venus_core, %struct.venus_core* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @pm_runtime_put_sync(i32 %143)
  br label %145

145:                                              ; preds = %140, %56
  %146 = load %struct.venus_inst*, %struct.venus_inst** %5, align 8
  %147 = call i32 @kfree(%struct.venus_inst* %146)
  %148 = load i32, i32* %6, align 4
  store i32 %148, i32* %2, align 4
  br label %149

149:                                              ; preds = %145, %104, %13
  %150 = load i32, i32* %2, align 4
  ret i32 %150
}

declare dso_local %struct.venus_core* @video_drvdata(%struct.file*) #1

declare dso_local %struct.venus_inst* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @venus_helper_init_instance(%struct.venus_inst*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @vdec_ctrl_init(%struct.venus_inst*) #1

declare dso_local i32 @hfi_session_create(%struct.venus_inst*, i32*) #1

declare dso_local i32 @vdec_inst_init(%struct.venus_inst*) #1

declare dso_local i32 @v4l2_m2m_init(i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @v4l2_m2m_ctx_init(i32, %struct.venus_inst*, i32) #1

declare dso_local i32 @v4l2_fh_init(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @v4l2_fh_add(%struct.TYPE_3__*) #1

declare dso_local i32 @v4l2_m2m_release(i32) #1

declare dso_local i32 @hfi_session_destroy(%struct.venus_inst*) #1

declare dso_local i32 @vdec_ctrl_deinit(%struct.venus_inst*) #1

declare dso_local i32 @pm_runtime_put_sync(i32) #1

declare dso_local i32 @kfree(%struct.venus_inst*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
