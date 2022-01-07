; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_vpe.c_vpe_buf_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_vpe.c_vpe_buf_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_buffer = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.vb2_v4l2_buffer = type { i64 }
%struct.vpe_ctx = type { i32 }
%struct.vpe_q_data = type { i32, i32, i64* }

@.str = private unnamed_addr constant [10 x i8] c"type: %d\0A\00", align 1
@V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE = common dso_local global i32 0, align 4
@Q_IS_INTERLACED = common dso_local global i32 0, align 4
@V4L2_FIELD_NONE = common dso_local global i64 0, align 8
@V4L2_FIELD_TOP = common dso_local global i64 0, align 8
@V4L2_FIELD_BOTTOM = common dso_local global i64 0, align 8
@V4L2_FIELD_SEQ_TB = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"data will not fit into plane (%lu < %lu)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vb2_buffer*)* @vpe_buf_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpe_buf_prepare(%struct.vb2_buffer* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vb2_buffer*, align 8
  %4 = alloca %struct.vb2_v4l2_buffer*, align 8
  %5 = alloca %struct.vpe_ctx*, align 8
  %6 = alloca %struct.vpe_q_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.vb2_buffer* %0, %struct.vb2_buffer** %3, align 8
  %9 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %10 = call %struct.vb2_v4l2_buffer* @to_vb2_v4l2_buffer(%struct.vb2_buffer* %9)
  store %struct.vb2_v4l2_buffer* %10, %struct.vb2_v4l2_buffer** %4, align 8
  %11 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %12 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = call %struct.vpe_ctx* @vb2_get_drv_priv(%struct.TYPE_2__* %13)
  store %struct.vpe_ctx* %14, %struct.vpe_ctx** %5, align 8
  %15 = load %struct.vpe_ctx*, %struct.vpe_ctx** %5, align 8
  %16 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %19 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @vpe_dbg(i32 %17, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load %struct.vpe_ctx*, %struct.vpe_ctx** %5, align 8
  %25 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %26 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.vpe_q_data* @get_q_data(%struct.vpe_ctx* %24, i32 %29)
  store %struct.vpe_q_data* %30, %struct.vpe_q_data** %6, align 8
  %31 = load %struct.vpe_q_data*, %struct.vpe_q_data** %6, align 8
  %32 = getelementptr inbounds %struct.vpe_q_data, %struct.vpe_q_data* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %8, align 4
  %34 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %35 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %75

41:                                               ; preds = %1
  %42 = load %struct.vpe_q_data*, %struct.vpe_q_data** %6, align 8
  %43 = getelementptr inbounds %struct.vpe_q_data, %struct.vpe_q_data* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @Q_IS_INTERLACED, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %41
  %49 = load i64, i64* @V4L2_FIELD_NONE, align 8
  %50 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %4, align 8
  %51 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %50, i32 0, i32 0
  store i64 %49, i64* %51, align 8
  br label %74

52:                                               ; preds = %41
  %53 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %4, align 8
  %54 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @V4L2_FIELD_TOP, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %73

58:                                               ; preds = %52
  %59 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %4, align 8
  %60 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @V4L2_FIELD_BOTTOM, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %73

64:                                               ; preds = %58
  %65 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %4, align 8
  %66 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @V4L2_FIELD_SEQ_TB, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %64
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %2, align 4
  br label %133

73:                                               ; preds = %64, %58, %52
  br label %74

74:                                               ; preds = %73, %48
  br label %75

75:                                               ; preds = %74, %1
  store i32 0, i32* %7, align 4
  br label %76

76:                                               ; preds = %110, %75
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* %8, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %113

80:                                               ; preds = %76
  %81 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %82 = load i32, i32* %7, align 4
  %83 = call i64 @vb2_plane_size(%struct.vb2_buffer* %81, i32 %82)
  %84 = load %struct.vpe_q_data*, %struct.vpe_q_data** %6, align 8
  %85 = getelementptr inbounds %struct.vpe_q_data, %struct.vpe_q_data* %84, i32 0, i32 2
  %86 = load i64*, i64** %85, align 8
  %87 = load i32, i32* %7, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i64, i64* %86, i64 %88
  %90 = load i64, i64* %89, align 8
  %91 = icmp slt i64 %83, %90
  br i1 %91, label %92, label %109

92:                                               ; preds = %80
  %93 = load %struct.vpe_ctx*, %struct.vpe_ctx** %5, align 8
  %94 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %97 = load i32, i32* %7, align 4
  %98 = call i64 @vb2_plane_size(%struct.vb2_buffer* %96, i32 %97)
  %99 = load %struct.vpe_q_data*, %struct.vpe_q_data** %6, align 8
  %100 = getelementptr inbounds %struct.vpe_q_data, %struct.vpe_q_data* %99, i32 0, i32 2
  %101 = load i64*, i64** %100, align 8
  %102 = load i32, i32* %7, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i64, i64* %101, i64 %103
  %105 = load i64, i64* %104, align 8
  %106 = call i32 @vpe_err(i32 %95, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i64 %98, i64 %105)
  %107 = load i32, i32* @EINVAL, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %2, align 4
  br label %133

109:                                              ; preds = %80
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %7, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %7, align 4
  br label %76

113:                                              ; preds = %76
  store i32 0, i32* %7, align 4
  br label %114

114:                                              ; preds = %129, %113
  %115 = load i32, i32* %7, align 4
  %116 = load i32, i32* %8, align 4
  %117 = icmp slt i32 %115, %116
  br i1 %117, label %118, label %132

118:                                              ; preds = %114
  %119 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %120 = load i32, i32* %7, align 4
  %121 = load %struct.vpe_q_data*, %struct.vpe_q_data** %6, align 8
  %122 = getelementptr inbounds %struct.vpe_q_data, %struct.vpe_q_data* %121, i32 0, i32 2
  %123 = load i64*, i64** %122, align 8
  %124 = load i32, i32* %7, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i64, i64* %123, i64 %125
  %127 = load i64, i64* %126, align 8
  %128 = call i32 @vb2_set_plane_payload(%struct.vb2_buffer* %119, i32 %120, i64 %127)
  br label %129

129:                                              ; preds = %118
  %130 = load i32, i32* %7, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %7, align 4
  br label %114

132:                                              ; preds = %114
  store i32 0, i32* %2, align 4
  br label %133

133:                                              ; preds = %132, %92, %70
  %134 = load i32, i32* %2, align 4
  ret i32 %134
}

declare dso_local %struct.vb2_v4l2_buffer* @to_vb2_v4l2_buffer(%struct.vb2_buffer*) #1

declare dso_local %struct.vpe_ctx* @vb2_get_drv_priv(%struct.TYPE_2__*) #1

declare dso_local i32 @vpe_dbg(i32, i8*, i32) #1

declare dso_local %struct.vpe_q_data* @get_q_data(%struct.vpe_ctx*, i32) #1

declare dso_local i64 @vb2_plane_size(%struct.vb2_buffer*, i32) #1

declare dso_local i32 @vpe_err(i32, i8*, i64, i64) #1

declare dso_local i32 @vb2_set_plane_payload(%struct.vb2_buffer*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
