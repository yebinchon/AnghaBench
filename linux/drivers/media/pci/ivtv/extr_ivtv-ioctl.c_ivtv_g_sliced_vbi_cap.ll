; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-ioctl.c_ivtv_g_sliced_vbi_cap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-ioctl.c_ivtv_g_sliced_vbi_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_sliced_vbi_cap = type { i64, i32**, i32 }
%struct.ivtv = type { i32, i64, i64 }
%struct.TYPE_2__ = type { %struct.ivtv* }

@V4L2_SLICED_VBI_625 = common dso_local global i32 0, align 4
@V4L2_SLICED_VBI_525 = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_SLICED_VBI_CAPTURE = common dso_local global i64 0, align 8
@V4L2_BUF_TYPE_SLICED_VBI_OUTPUT = common dso_local global i64 0, align 8
@V4L2_CAP_SLICED_VBI_OUTPUT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@V4L2_SLICED_CAPTION_525 = common dso_local global i8* null, align 8
@V4L2_SLICED_WSS_625 = common dso_local global i32 0, align 4
@V4L2_SLICED_VPS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_sliced_vbi_cap*)* @ivtv_g_sliced_vbi_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ivtv_g_sliced_vbi_cap(%struct.file* %0, i8* %1, %struct.v4l2_sliced_vbi_cap* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_sliced_vbi_cap*, align 8
  %8 = alloca %struct.ivtv*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_sliced_vbi_cap* %2, %struct.v4l2_sliced_vbi_cap** %7, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = call %struct.TYPE_2__* @fh2id(i8* %12)
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.ivtv*, %struct.ivtv** %14, align 8
  store %struct.ivtv* %15, %struct.ivtv** %8, align 8
  %16 = load %struct.ivtv*, %struct.ivtv** %8, align 8
  %17 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* @V4L2_SLICED_VBI_625, align 4
  br label %24

22:                                               ; preds = %3
  %23 = load i32, i32* @V4L2_SLICED_VBI_525, align 4
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi i32 [ %21, %20 ], [ %23, %22 ]
  store i32 %25, i32* %9, align 4
  %26 = load %struct.v4l2_sliced_vbi_cap*, %struct.v4l2_sliced_vbi_cap** %7, align 8
  %27 = getelementptr inbounds %struct.v4l2_sliced_vbi_cap, %struct.v4l2_sliced_vbi_cap* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @V4L2_BUF_TYPE_SLICED_VBI_CAPTURE, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %68

31:                                               ; preds = %24
  store i32 0, i32* %10, align 4
  br label %32

32:                                               ; preds = %64, %31
  %33 = load i32, i32* %10, align 4
  %34 = icmp slt i32 %33, 2
  br i1 %34, label %35, label %67

35:                                               ; preds = %32
  store i32 0, i32* %11, align 4
  br label %36

36:                                               ; preds = %60, %35
  %37 = load i32, i32* %11, align 4
  %38 = icmp slt i32 %37, 24
  br i1 %38, label %39, label %63

39:                                               ; preds = %36
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %11, align 4
  %42 = load %struct.ivtv*, %struct.ivtv** %8, align 8
  %43 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = call i64 @valid_service_line(i32 %40, i32 %41, i64 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %59

47:                                               ; preds = %39
  %48 = load i32, i32* %9, align 4
  %49 = load %struct.v4l2_sliced_vbi_cap*, %struct.v4l2_sliced_vbi_cap** %7, align 8
  %50 = getelementptr inbounds %struct.v4l2_sliced_vbi_cap, %struct.v4l2_sliced_vbi_cap* %49, i32 0, i32 1
  %51 = load i32**, i32*** %50, align 8
  %52 = load i32, i32* %10, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32*, i32** %51, i64 %53
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %11, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  store i32 %48, i32* %58, align 4
  br label %59

59:                                               ; preds = %47, %39
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %11, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %11, align 4
  br label %36

63:                                               ; preds = %36
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %10, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %10, align 4
  br label %32

67:                                               ; preds = %32
  br label %126

68:                                               ; preds = %24
  %69 = load %struct.v4l2_sliced_vbi_cap*, %struct.v4l2_sliced_vbi_cap** %7, align 8
  %70 = getelementptr inbounds %struct.v4l2_sliced_vbi_cap, %struct.v4l2_sliced_vbi_cap* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @V4L2_BUF_TYPE_SLICED_VBI_OUTPUT, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %122

74:                                               ; preds = %68
  %75 = load %struct.ivtv*, %struct.ivtv** %8, align 8
  %76 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @V4L2_CAP_SLICED_VBI_OUTPUT, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %74
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %4, align 4
  br label %159

84:                                               ; preds = %74
  %85 = load %struct.ivtv*, %struct.ivtv** %8, align 8
  %86 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %106

89:                                               ; preds = %84
  %90 = load i8*, i8** @V4L2_SLICED_CAPTION_525, align 8
  %91 = ptrtoint i8* %90 to i32
  %92 = load %struct.v4l2_sliced_vbi_cap*, %struct.v4l2_sliced_vbi_cap** %7, align 8
  %93 = getelementptr inbounds %struct.v4l2_sliced_vbi_cap, %struct.v4l2_sliced_vbi_cap* %92, i32 0, i32 1
  %94 = load i32**, i32*** %93, align 8
  %95 = getelementptr inbounds i32*, i32** %94, i64 0
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 21
  store i32 %91, i32* %97, align 4
  %98 = load i8*, i8** @V4L2_SLICED_CAPTION_525, align 8
  %99 = ptrtoint i8* %98 to i32
  %100 = load %struct.v4l2_sliced_vbi_cap*, %struct.v4l2_sliced_vbi_cap** %7, align 8
  %101 = getelementptr inbounds %struct.v4l2_sliced_vbi_cap, %struct.v4l2_sliced_vbi_cap* %100, i32 0, i32 1
  %102 = load i32**, i32*** %101, align 8
  %103 = getelementptr inbounds i32*, i32** %102, i64 1
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 21
  store i32 %99, i32* %105, align 4
  br label %121

106:                                              ; preds = %84
  %107 = load i32, i32* @V4L2_SLICED_WSS_625, align 4
  %108 = load %struct.v4l2_sliced_vbi_cap*, %struct.v4l2_sliced_vbi_cap** %7, align 8
  %109 = getelementptr inbounds %struct.v4l2_sliced_vbi_cap, %struct.v4l2_sliced_vbi_cap* %108, i32 0, i32 1
  %110 = load i32**, i32*** %109, align 8
  %111 = getelementptr inbounds i32*, i32** %110, i64 0
  %112 = load i32*, i32** %111, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 23
  store i32 %107, i32* %113, align 4
  %114 = load i32, i32* @V4L2_SLICED_VPS, align 4
  %115 = load %struct.v4l2_sliced_vbi_cap*, %struct.v4l2_sliced_vbi_cap** %7, align 8
  %116 = getelementptr inbounds %struct.v4l2_sliced_vbi_cap, %struct.v4l2_sliced_vbi_cap* %115, i32 0, i32 1
  %117 = load i32**, i32*** %116, align 8
  %118 = getelementptr inbounds i32*, i32** %117, i64 0
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 16
  store i32 %114, i32* %120, align 4
  br label %121

121:                                              ; preds = %106, %89
  br label %125

122:                                              ; preds = %68
  %123 = load i32, i32* @EINVAL, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %4, align 4
  br label %159

125:                                              ; preds = %121
  br label %126

126:                                              ; preds = %125, %67
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %127

127:                                              ; preds = %152, %126
  %128 = load i32, i32* %10, align 4
  %129 = icmp slt i32 %128, 2
  br i1 %129, label %130, label %155

130:                                              ; preds = %127
  store i32 0, i32* %11, align 4
  br label %131

131:                                              ; preds = %148, %130
  %132 = load i32, i32* %11, align 4
  %133 = icmp slt i32 %132, 24
  br i1 %133, label %134, label %151

134:                                              ; preds = %131
  %135 = load %struct.v4l2_sliced_vbi_cap*, %struct.v4l2_sliced_vbi_cap** %7, align 8
  %136 = getelementptr inbounds %struct.v4l2_sliced_vbi_cap, %struct.v4l2_sliced_vbi_cap* %135, i32 0, i32 1
  %137 = load i32**, i32*** %136, align 8
  %138 = load i32, i32* %10, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32*, i32** %137, i64 %139
  %141 = load i32*, i32** %140, align 8
  %142 = load i32, i32* %11, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* %9, align 4
  %147 = or i32 %146, %145
  store i32 %147, i32* %9, align 4
  br label %148

148:                                              ; preds = %134
  %149 = load i32, i32* %11, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %11, align 4
  br label %131

151:                                              ; preds = %131
  br label %152

152:                                              ; preds = %151
  %153 = load i32, i32* %10, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %10, align 4
  br label %127

155:                                              ; preds = %127
  %156 = load i32, i32* %9, align 4
  %157 = load %struct.v4l2_sliced_vbi_cap*, %struct.v4l2_sliced_vbi_cap** %7, align 8
  %158 = getelementptr inbounds %struct.v4l2_sliced_vbi_cap, %struct.v4l2_sliced_vbi_cap* %157, i32 0, i32 2
  store i32 %156, i32* %158, align 8
  store i32 0, i32* %4, align 4
  br label %159

159:                                              ; preds = %155, %122, %81
  %160 = load i32, i32* %4, align 4
  ret i32 %160
}

declare dso_local %struct.TYPE_2__* @fh2id(i8*) #1

declare dso_local i64 @valid_service_line(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
