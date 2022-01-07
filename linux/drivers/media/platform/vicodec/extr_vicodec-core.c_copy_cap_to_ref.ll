; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vicodec/extr_vicodec-core.c_copy_cap_to_ref.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vicodec/extr_vicodec-core.c_copy_cap_to_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_fwht_pixfmt_info = type { i32, i32, i64 }
%struct.v4l2_fwht_state = type { i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@V4L2_PIX_FMT_NV24 = common dso_local global i64 0, align 8
@V4L2_PIX_FMT_NV42 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.v4l2_fwht_pixfmt_info*, %struct.v4l2_fwht_state*)* @copy_cap_to_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_cap_to_ref(i32* %0, %struct.v4l2_fwht_pixfmt_info* %1, %struct.v4l2_fwht_state* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.v4l2_fwht_pixfmt_info*, align 8
  %6 = alloca %struct.v4l2_fwht_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.v4l2_fwht_pixfmt_info* %1, %struct.v4l2_fwht_pixfmt_info** %5, align 8
  store %struct.v4l2_fwht_state* %2, %struct.v4l2_fwht_state** %6, align 8
  %15 = load %struct.v4l2_fwht_state*, %struct.v4l2_fwht_state** %6, align 8
  %16 = getelementptr inbounds %struct.v4l2_fwht_state, %struct.v4l2_fwht_state* %15, i32 0, i32 4
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %8, align 8
  %19 = load %struct.v4l2_fwht_state*, %struct.v4l2_fwht_state** %6, align 8
  %20 = getelementptr inbounds %struct.v4l2_fwht_state, %struct.v4l2_fwht_state* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %9, align 4
  %22 = load %struct.v4l2_fwht_state*, %struct.v4l2_fwht_state** %6, align 8
  %23 = getelementptr inbounds %struct.v4l2_fwht_state, %struct.v4l2_fwht_state* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %10, align 4
  store i32 0, i32* %7, align 4
  br label %25

25:                                               ; preds = %124, %3
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.v4l2_fwht_pixfmt_info*, %struct.v4l2_fwht_pixfmt_info** %5, align 8
  %28 = getelementptr inbounds %struct.v4l2_fwht_pixfmt_info, %struct.v4l2_fwht_pixfmt_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %127

31:                                               ; preds = %25
  %32 = load i32, i32* %7, align 4
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %37, label %34

34:                                               ; preds = %31
  %35 = load i32, i32* %7, align 4
  %36 = icmp eq i32 %35, 2
  br i1 %36, label %37, label %41

37:                                               ; preds = %34, %31
  %38 = load %struct.v4l2_fwht_pixfmt_info*, %struct.v4l2_fwht_pixfmt_info** %5, align 8
  %39 = getelementptr inbounds %struct.v4l2_fwht_pixfmt_info, %struct.v4l2_fwht_pixfmt_info* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  br label %42

41:                                               ; preds = %34
  br label %42

42:                                               ; preds = %41, %37
  %43 = phi i32 [ %40, %37 ], [ 1, %41 ]
  store i32 %43, i32* %12, align 4
  %44 = load i32*, i32** %4, align 8
  store i32* %44, i32** %13, align 8
  %45 = load i32*, i32** %8, align 8
  store i32* %45, i32** %14, align 8
  %46 = load %struct.v4l2_fwht_pixfmt_info*, %struct.v4l2_fwht_pixfmt_info** %5, align 8
  %47 = getelementptr inbounds %struct.v4l2_fwht_pixfmt_info, %struct.v4l2_fwht_pixfmt_info* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp eq i32 %48, 3
  br i1 %49, label %50, label %58

50:                                               ; preds = %42
  %51 = load i32, i32* %7, align 4
  %52 = icmp eq i32 %51, 1
  br i1 %52, label %53, label %58

53:                                               ; preds = %50
  %54 = load i32, i32* %9, align 4
  %55 = udiv i32 %54, 2
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %10, align 4
  %57 = udiv i32 %56, 2
  store i32 %57, i32* %10, align 4
  br label %58

58:                                               ; preds = %53, %50, %42
  %59 = load i32, i32* %7, align 4
  %60 = icmp eq i32 %59, 1
  br i1 %60, label %61, label %78

61:                                               ; preds = %58
  %62 = load %struct.v4l2_fwht_pixfmt_info*, %struct.v4l2_fwht_pixfmt_info** %5, align 8
  %63 = getelementptr inbounds %struct.v4l2_fwht_pixfmt_info, %struct.v4l2_fwht_pixfmt_info* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @V4L2_PIX_FMT_NV24, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %73, label %67

67:                                               ; preds = %61
  %68 = load %struct.v4l2_fwht_pixfmt_info*, %struct.v4l2_fwht_pixfmt_info** %5, align 8
  %69 = getelementptr inbounds %struct.v4l2_fwht_pixfmt_info, %struct.v4l2_fwht_pixfmt_info* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @V4L2_PIX_FMT_NV42, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %78

73:                                               ; preds = %67, %61
  %74 = load i32, i32* %9, align 4
  %75 = mul i32 %74, 2
  store i32 %75, i32* %9, align 4
  %76 = load i32, i32* %10, align 4
  %77 = mul i32 %76, 2
  store i32 %77, i32* %10, align 4
  br label %78

78:                                               ; preds = %73, %67, %58
  store i32 0, i32* %11, align 4
  br label %79

79:                                               ; preds = %100, %78
  %80 = load i32, i32* %11, align 4
  %81 = load %struct.v4l2_fwht_state*, %struct.v4l2_fwht_state** %6, align 8
  %82 = getelementptr inbounds %struct.v4l2_fwht_state, %struct.v4l2_fwht_state* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* %12, align 4
  %85 = udiv i32 %83, %84
  %86 = icmp ult i32 %80, %85
  br i1 %86, label %87, label %103

87:                                               ; preds = %79
  %88 = load i32*, i32** %14, align 8
  %89 = load i32*, i32** %13, align 8
  %90 = load i32, i32* %10, align 4
  %91 = call i32 @memcpy(i32* %88, i32* %89, i32 %90)
  %92 = load i32, i32* %10, align 4
  %93 = load i32*, i32** %14, align 8
  %94 = zext i32 %92 to i64
  %95 = getelementptr inbounds i32, i32* %93, i64 %94
  store i32* %95, i32** %14, align 8
  %96 = load i32, i32* %9, align 4
  %97 = load i32*, i32** %13, align 8
  %98 = zext i32 %96 to i64
  %99 = getelementptr inbounds i32, i32* %97, i64 %98
  store i32* %99, i32** %13, align 8
  br label %100

100:                                              ; preds = %87
  %101 = load i32, i32* %11, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %11, align 4
  br label %79

103:                                              ; preds = %79
  %104 = load i32, i32* %9, align 4
  %105 = load %struct.v4l2_fwht_state*, %struct.v4l2_fwht_state** %6, align 8
  %106 = getelementptr inbounds %struct.v4l2_fwht_state, %struct.v4l2_fwht_state* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %12, align 4
  %109 = udiv i32 %107, %108
  %110 = mul i32 %104, %109
  %111 = load i32*, i32** %4, align 8
  %112 = zext i32 %110 to i64
  %113 = getelementptr inbounds i32, i32* %111, i64 %112
  store i32* %113, i32** %4, align 8
  %114 = load i32, i32* %10, align 4
  %115 = load %struct.v4l2_fwht_state*, %struct.v4l2_fwht_state** %6, align 8
  %116 = getelementptr inbounds %struct.v4l2_fwht_state, %struct.v4l2_fwht_state* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* %12, align 4
  %119 = udiv i32 %117, %118
  %120 = mul i32 %114, %119
  %121 = load i32*, i32** %8, align 8
  %122 = zext i32 %120 to i64
  %123 = getelementptr inbounds i32, i32* %121, i64 %122
  store i32* %123, i32** %8, align 8
  br label %124

124:                                              ; preds = %103
  %125 = load i32, i32* %7, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %7, align 4
  br label %25

127:                                              ; preds = %25
  ret void
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
