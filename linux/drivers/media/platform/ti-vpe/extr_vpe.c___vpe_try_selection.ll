; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_vpe.c___vpe_try_selection.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_vpe.c___vpe_try_selection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vpe_ctx = type { i32 }
%struct.v4l2_selection = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64, i32 }
%struct.vpe_q_data = type { i32, i32, i64 }

@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i64 0, align 8
@V4L2_BUF_TYPE_VIDEO_OUTPUT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@Q_DATA_INTERLACED_SEQ_TB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"negative values for top and left\0A\00", align 1
@MIN_W = common dso_local global i32 0, align 4
@MIN_H = common dso_local global i32 0, align 4
@H_ALIGN = common dso_local global i32 0, align 4
@S_ALIGN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vpe_ctx*, %struct.v4l2_selection*)* @__vpe_try_selection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__vpe_try_selection(%struct.vpe_ctx* %0, %struct.v4l2_selection* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vpe_ctx*, align 8
  %5 = alloca %struct.v4l2_selection*, align 8
  %6 = alloca %struct.vpe_q_data*, align 8
  %7 = alloca i32, align 4
  store %struct.vpe_ctx* %0, %struct.vpe_ctx** %4, align 8
  store %struct.v4l2_selection* %1, %struct.v4l2_selection** %5, align 8
  %8 = load %struct.v4l2_selection*, %struct.v4l2_selection** %5, align 8
  %9 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %22

13:                                               ; preds = %2
  %14 = load %struct.v4l2_selection*, %struct.v4l2_selection** %5, align 8
  %15 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_OUTPUT, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %13
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %170

22:                                               ; preds = %13, %2
  %23 = load %struct.vpe_ctx*, %struct.vpe_ctx** %4, align 8
  %24 = load %struct.v4l2_selection*, %struct.v4l2_selection** %5, align 8
  %25 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call %struct.vpe_q_data* @get_q_data(%struct.vpe_ctx* %23, i64 %26)
  store %struct.vpe_q_data* %27, %struct.vpe_q_data** %6, align 8
  %28 = load %struct.vpe_q_data*, %struct.vpe_q_data** %6, align 8
  %29 = icmp ne %struct.vpe_q_data* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %22
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %170

33:                                               ; preds = %22
  %34 = load %struct.v4l2_selection*, %struct.v4l2_selection** %5, align 8
  %35 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  switch i32 %36, label %57 [
    i32 129, label %37
    i32 128, label %47
  ]

37:                                               ; preds = %33
  %38 = load %struct.v4l2_selection*, %struct.v4l2_selection** %5, align 8
  %39 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_OUTPUT, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %170

46:                                               ; preds = %37
  br label %60

47:                                               ; preds = %33
  %48 = load %struct.v4l2_selection*, %struct.v4l2_selection** %5, align 8
  %49 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %170

56:                                               ; preds = %47
  br label %60

57:                                               ; preds = %33
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  br label %170

60:                                               ; preds = %56, %46
  %61 = load %struct.vpe_q_data*, %struct.vpe_q_data** %6, align 8
  %62 = getelementptr inbounds %struct.vpe_q_data, %struct.vpe_q_data* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @Q_DATA_INTERLACED_SEQ_TB, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %60
  %68 = load %struct.vpe_q_data*, %struct.vpe_q_data** %6, align 8
  %69 = getelementptr inbounds %struct.vpe_q_data, %struct.vpe_q_data* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = sdiv i32 %70, 2
  store i32 %71, i32* %7, align 4
  br label %76

72:                                               ; preds = %60
  %73 = load %struct.vpe_q_data*, %struct.vpe_q_data** %6, align 8
  %74 = getelementptr inbounds %struct.vpe_q_data, %struct.vpe_q_data* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %7, align 4
  br label %76

76:                                               ; preds = %72, %67
  %77 = load %struct.v4l2_selection*, %struct.v4l2_selection** %5, align 8
  %78 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp slt i64 %80, 0
  br i1 %81, label %88, label %82

82:                                               ; preds = %76
  %83 = load %struct.v4l2_selection*, %struct.v4l2_selection** %5, align 8
  %84 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = icmp slt i64 %86, 0
  br i1 %87, label %88, label %99

88:                                               ; preds = %82, %76
  %89 = load %struct.vpe_ctx*, %struct.vpe_ctx** %4, align 8
  %90 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @vpe_err(i32 %91, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %93 = load %struct.v4l2_selection*, %struct.v4l2_selection** %5, align 8
  %94 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 1
  store i64 0, i64* %95, align 8
  %96 = load %struct.v4l2_selection*, %struct.v4l2_selection** %5, align 8
  %97 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  store i64 0, i64* %98, align 8
  br label %99

99:                                               ; preds = %88, %82
  %100 = load %struct.v4l2_selection*, %struct.v4l2_selection** %5, align 8
  %101 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 2
  %103 = load i32, i32* @MIN_W, align 4
  %104 = load %struct.vpe_q_data*, %struct.vpe_q_data** %6, align 8
  %105 = getelementptr inbounds %struct.vpe_q_data, %struct.vpe_q_data* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.v4l2_selection*, %struct.v4l2_selection** %5, align 8
  %108 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 3
  %110 = load i32, i32* @MIN_H, align 4
  %111 = load i32, i32* %7, align 4
  %112 = load i32, i32* @H_ALIGN, align 4
  %113 = load i32, i32* @S_ALIGN, align 4
  %114 = call i32 @v4l_bound_align_image(i64* %102, i32 %103, i64 %106, i32 1, i32* %109, i32 %110, i32 %111, i32 %112, i32 %113)
  %115 = load %struct.v4l2_selection*, %struct.v4l2_selection** %5, align 8
  %116 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.v4l2_selection*, %struct.v4l2_selection** %5, align 8
  %120 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %119, i32 0, i32 2
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 2
  %122 = load i64, i64* %121, align 8
  %123 = add nsw i64 %118, %122
  %124 = load %struct.vpe_q_data*, %struct.vpe_q_data** %6, align 8
  %125 = getelementptr inbounds %struct.vpe_q_data, %struct.vpe_q_data* %124, i32 0, i32 2
  %126 = load i64, i64* %125, align 8
  %127 = icmp sgt i64 %123, %126
  br i1 %127, label %128, label %140

128:                                              ; preds = %99
  %129 = load %struct.vpe_q_data*, %struct.vpe_q_data** %6, align 8
  %130 = getelementptr inbounds %struct.vpe_q_data, %struct.vpe_q_data* %129, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  %132 = load %struct.v4l2_selection*, %struct.v4l2_selection** %5, align 8
  %133 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %132, i32 0, i32 2
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 2
  %135 = load i64, i64* %134, align 8
  %136 = sub nsw i64 %131, %135
  %137 = load %struct.v4l2_selection*, %struct.v4l2_selection** %5, align 8
  %138 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %137, i32 0, i32 2
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 1
  store i64 %136, i64* %139, align 8
  br label %140

140:                                              ; preds = %128, %99
  %141 = load %struct.v4l2_selection*, %struct.v4l2_selection** %5, align 8
  %142 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %141, i32 0, i32 2
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load %struct.v4l2_selection*, %struct.v4l2_selection** %5, align 8
  %146 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %145, i32 0, i32 2
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 8
  %149 = sext i32 %148 to i64
  %150 = add nsw i64 %144, %149
  %151 = load %struct.vpe_q_data*, %struct.vpe_q_data** %6, align 8
  %152 = getelementptr inbounds %struct.vpe_q_data, %struct.vpe_q_data* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = sext i32 %153 to i64
  %155 = icmp sgt i64 %150, %154
  br i1 %155, label %156, label %169

156:                                              ; preds = %140
  %157 = load %struct.vpe_q_data*, %struct.vpe_q_data** %6, align 8
  %158 = getelementptr inbounds %struct.vpe_q_data, %struct.vpe_q_data* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.v4l2_selection*, %struct.v4l2_selection** %5, align 8
  %161 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %160, i32 0, i32 2
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i32 0, i32 3
  %163 = load i32, i32* %162, align 8
  %164 = sub nsw i32 %159, %163
  %165 = sext i32 %164 to i64
  %166 = load %struct.v4l2_selection*, %struct.v4l2_selection** %5, align 8
  %167 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %166, i32 0, i32 2
  %168 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i32 0, i32 0
  store i64 %165, i64* %168, align 8
  br label %169

169:                                              ; preds = %156, %140
  store i32 0, i32* %3, align 4
  br label %170

170:                                              ; preds = %169, %57, %53, %43, %30, %19
  %171 = load i32, i32* %3, align 4
  ret i32 %171
}

declare dso_local %struct.vpe_q_data* @get_q_data(%struct.vpe_ctx*, i64) #1

declare dso_local i32 @vpe_err(i32, i8*) #1

declare dso_local i32 @v4l_bound_align_image(i64*, i32, i64, i32, i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
