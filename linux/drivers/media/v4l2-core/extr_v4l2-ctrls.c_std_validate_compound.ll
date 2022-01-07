; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-ctrls.c_std_validate_compound.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-ctrls.c_std_validate_compound.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_ctrl = type { i32, i32 }
%union.v4l2_ctrl_ptr = type { i8* }
%struct.v4l2_ctrl_mpeg2_slice_params = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.v4l2_ctrl_vp8_frame_header = type { i32, i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_ctrl*, i32, i8*)* @std_validate_compound to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @std_validate_compound(%struct.v4l2_ctrl* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %union.v4l2_ctrl_ptr, align 8
  %6 = alloca %struct.v4l2_ctrl*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.v4l2_ctrl_mpeg2_slice_params*, align 8
  %9 = alloca %struct.v4l2_ctrl_vp8_frame_header*, align 8
  %10 = alloca i8*, align 8
  %11 = getelementptr inbounds %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr* %5, i32 0, i32 0
  store i8* %2, i8** %11, align 8
  store %struct.v4l2_ctrl* %0, %struct.v4l2_ctrl** %6, align 8
  store i32 %1, i32* %7, align 4
  %12 = bitcast %union.v4l2_ctrl_ptr* %5 to i8**
  %13 = load i8*, i8** %12, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %6, align 8
  %16 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = mul nsw i32 %14, %17
  %19 = sext i32 %18 to i64
  %20 = getelementptr i8, i8* %13, i64 %19
  store i8* %20, i8** %10, align 8
  %21 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %6, align 8
  %22 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %97 [
    i32 132, label %24
    i32 133, label %63
    i32 139, label %64
    i32 134, label %65
    i32 137, label %65
    i32 136, label %65
    i32 135, label %65
    i32 138, label %65
    i32 131, label %66
  ]

24:                                               ; preds = %3
  %25 = load i8*, i8** %10, align 8
  %26 = bitcast i8* %25 to %struct.v4l2_ctrl_mpeg2_slice_params*
  store %struct.v4l2_ctrl_mpeg2_slice_params* %26, %struct.v4l2_ctrl_mpeg2_slice_params** %8, align 8
  %27 = load %struct.v4l2_ctrl_mpeg2_slice_params*, %struct.v4l2_ctrl_mpeg2_slice_params** %8, align 8
  %28 = getelementptr inbounds %struct.v4l2_ctrl_mpeg2_slice_params, %struct.v4l2_ctrl_mpeg2_slice_params* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  switch i32 %30, label %32 [
    i32 1, label %31
    i32 2, label %31
    i32 3, label %31
  ]

31:                                               ; preds = %24, %24, %24
  br label %35

32:                                               ; preds = %24
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %101

35:                                               ; preds = %31
  %36 = load %struct.v4l2_ctrl_mpeg2_slice_params*, %struct.v4l2_ctrl_mpeg2_slice_params** %8, align 8
  %37 = getelementptr inbounds %struct.v4l2_ctrl_mpeg2_slice_params, %struct.v4l2_ctrl_mpeg2_slice_params* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  switch i32 %39, label %41 [
    i32 0, label %40
    i32 1, label %40
    i32 2, label %40
    i32 3, label %40
  ]

40:                                               ; preds = %35, %35, %35, %35
  br label %44

41:                                               ; preds = %35
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %101

44:                                               ; preds = %40
  %45 = load %struct.v4l2_ctrl_mpeg2_slice_params*, %struct.v4l2_ctrl_mpeg2_slice_params** %8, align 8
  %46 = getelementptr inbounds %struct.v4l2_ctrl_mpeg2_slice_params, %struct.v4l2_ctrl_mpeg2_slice_params* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  switch i32 %48, label %50 [
    i32 1, label %49
    i32 2, label %49
    i32 3, label %49
  ]

49:                                               ; preds = %44, %44, %44
  br label %53

50:                                               ; preds = %44
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %101

53:                                               ; preds = %49
  %54 = load %struct.v4l2_ctrl_mpeg2_slice_params*, %struct.v4l2_ctrl_mpeg2_slice_params** %8, align 8
  %55 = getelementptr inbounds %struct.v4l2_ctrl_mpeg2_slice_params, %struct.v4l2_ctrl_mpeg2_slice_params* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  switch i32 %57, label %59 [
    i32 129, label %58
    i32 128, label %58
    i32 130, label %58
  ]

58:                                               ; preds = %53, %53, %53
  br label %62

59:                                               ; preds = %53
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %4, align 4
  br label %101

62:                                               ; preds = %58
  br label %100

63:                                               ; preds = %3
  br label %100

64:                                               ; preds = %3
  br label %100

65:                                               ; preds = %3, %3, %3, %3, %3
  br label %100

66:                                               ; preds = %3
  %67 = load i8*, i8** %10, align 8
  %68 = bitcast i8* %67 to %struct.v4l2_ctrl_vp8_frame_header*
  store %struct.v4l2_ctrl_vp8_frame_header* %68, %struct.v4l2_ctrl_vp8_frame_header** %9, align 8
  %69 = load %struct.v4l2_ctrl_vp8_frame_header*, %struct.v4l2_ctrl_vp8_frame_header** %9, align 8
  %70 = getelementptr inbounds %struct.v4l2_ctrl_vp8_frame_header, %struct.v4l2_ctrl_vp8_frame_header* %69, i32 0, i32 5
  %71 = load i32, i32* %70, align 4
  switch i32 %71, label %73 [
    i32 1, label %72
    i32 2, label %72
    i32 4, label %72
    i32 8, label %72
  ]

72:                                               ; preds = %66, %66, %66, %66
  br label %76

73:                                               ; preds = %66
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %4, align 4
  br label %101

76:                                               ; preds = %72
  %77 = load %struct.v4l2_ctrl_vp8_frame_header*, %struct.v4l2_ctrl_vp8_frame_header** %9, align 8
  %78 = getelementptr inbounds %struct.v4l2_ctrl_vp8_frame_header, %struct.v4l2_ctrl_vp8_frame_header* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @zero_padding(i32 %79)
  %81 = load %struct.v4l2_ctrl_vp8_frame_header*, %struct.v4l2_ctrl_vp8_frame_header** %9, align 8
  %82 = getelementptr inbounds %struct.v4l2_ctrl_vp8_frame_header, %struct.v4l2_ctrl_vp8_frame_header* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @zero_padding(i32 %83)
  %85 = load %struct.v4l2_ctrl_vp8_frame_header*, %struct.v4l2_ctrl_vp8_frame_header** %9, align 8
  %86 = getelementptr inbounds %struct.v4l2_ctrl_vp8_frame_header, %struct.v4l2_ctrl_vp8_frame_header* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @zero_padding(i32 %87)
  %89 = load %struct.v4l2_ctrl_vp8_frame_header*, %struct.v4l2_ctrl_vp8_frame_header** %9, align 8
  %90 = getelementptr inbounds %struct.v4l2_ctrl_vp8_frame_header, %struct.v4l2_ctrl_vp8_frame_header* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @zero_padding(i32 %91)
  %93 = load %struct.v4l2_ctrl_vp8_frame_header*, %struct.v4l2_ctrl_vp8_frame_header** %9, align 8
  %94 = getelementptr inbounds %struct.v4l2_ctrl_vp8_frame_header, %struct.v4l2_ctrl_vp8_frame_header* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @zero_padding(i32 %95)
  br label %100

97:                                               ; preds = %3
  %98 = load i32, i32* @EINVAL, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %4, align 4
  br label %101

100:                                              ; preds = %76, %65, %64, %63, %62
  store i32 0, i32* %4, align 4
  br label %101

101:                                              ; preds = %100, %97, %73, %59, %50, %41, %32
  %102 = load i32, i32* %4, align 4
  ret i32 %102
}

declare dso_local i32 @zero_padding(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
