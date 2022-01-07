; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/vdec/extr_vdec_vp9_if.c_validate_vsi_array_indexes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/vdec/extr_vdec_vp9_if.c_validate_vsi_array_indexes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vdec_vp9_inst = type { i32 }
%struct.vdec_vp9_vsi = type { i32, i32, i32 }

@VP9_MAX_FRM_BUF_NUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Invalid vsi->sf_frm_idx=%u.\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Invalid vsi->frm_to_show_idx=%u.\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Invalid vsi->new_fb_idx=%u.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vdec_vp9_inst*, %struct.vdec_vp9_vsi*)* @validate_vsi_array_indexes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_vsi_array_indexes(%struct.vdec_vp9_inst* %0, %struct.vdec_vp9_vsi* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vdec_vp9_inst*, align 8
  %5 = alloca %struct.vdec_vp9_vsi*, align 8
  store %struct.vdec_vp9_inst* %0, %struct.vdec_vp9_inst** %4, align 8
  store %struct.vdec_vp9_vsi* %1, %struct.vdec_vp9_vsi** %5, align 8
  %6 = load %struct.vdec_vp9_vsi*, %struct.vdec_vp9_vsi** %5, align 8
  %7 = getelementptr inbounds %struct.vdec_vp9_vsi, %struct.vdec_vp9_vsi* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @VP9_MAX_FRM_BUF_NUM, align 4
  %10 = sub nsw i32 %9, 1
  %11 = icmp sge i32 %8, %10
  br i1 %11, label %12, label %20

12:                                               ; preds = %2
  %13 = load %struct.vdec_vp9_inst*, %struct.vdec_vp9_inst** %4, align 8
  %14 = load %struct.vdec_vp9_vsi*, %struct.vdec_vp9_vsi** %5, align 8
  %15 = getelementptr inbounds %struct.vdec_vp9_vsi, %struct.vdec_vp9_vsi* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @mtk_vcodec_err(%struct.vdec_vp9_inst* %13, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* @EIO, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %49

20:                                               ; preds = %2
  %21 = load %struct.vdec_vp9_vsi*, %struct.vdec_vp9_vsi** %5, align 8
  %22 = getelementptr inbounds %struct.vdec_vp9_vsi, %struct.vdec_vp9_vsi* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @VP9_MAX_FRM_BUF_NUM, align 4
  %25 = icmp sge i32 %23, %24
  br i1 %25, label %26, label %34

26:                                               ; preds = %20
  %27 = load %struct.vdec_vp9_inst*, %struct.vdec_vp9_inst** %4, align 8
  %28 = load %struct.vdec_vp9_vsi*, %struct.vdec_vp9_vsi** %5, align 8
  %29 = getelementptr inbounds %struct.vdec_vp9_vsi, %struct.vdec_vp9_vsi* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @mtk_vcodec_err(%struct.vdec_vp9_inst* %27, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* @EIO, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %49

34:                                               ; preds = %20
  %35 = load %struct.vdec_vp9_vsi*, %struct.vdec_vp9_vsi** %5, align 8
  %36 = getelementptr inbounds %struct.vdec_vp9_vsi, %struct.vdec_vp9_vsi* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @VP9_MAX_FRM_BUF_NUM, align 4
  %39 = icmp sge i32 %37, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %34
  %41 = load %struct.vdec_vp9_inst*, %struct.vdec_vp9_inst** %4, align 8
  %42 = load %struct.vdec_vp9_vsi*, %struct.vdec_vp9_vsi** %5, align 8
  %43 = getelementptr inbounds %struct.vdec_vp9_vsi, %struct.vdec_vp9_vsi* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @mtk_vcodec_err(%struct.vdec_vp9_inst* %41, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* @EIO, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %49

48:                                               ; preds = %34
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %48, %40, %26, %12
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @mtk_vcodec_err(%struct.vdec_vp9_inst*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
