; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vicodec/extr_codec-v4l2-fwht.c_prepare_raw_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vicodec/extr_codec-v4l2-fwht.c_prepare_raw_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fwht_raw_frame = type { i32*, i32*, i32*, i32*, i32, i32, i32, i32, i32 }
%struct.v4l2_fwht_pixfmt_info = type { i32, i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fwht_raw_frame*, %struct.v4l2_fwht_pixfmt_info*, i32*, i32)* @prepare_raw_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prepare_raw_frame(%struct.fwht_raw_frame* %0, %struct.v4l2_fwht_pixfmt_info* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.fwht_raw_frame*, align 8
  %7 = alloca %struct.v4l2_fwht_pixfmt_info*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.fwht_raw_frame* %0, %struct.fwht_raw_frame** %6, align 8
  store %struct.v4l2_fwht_pixfmt_info* %1, %struct.v4l2_fwht_pixfmt_info** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load i32*, i32** %8, align 8
  %11 = load %struct.fwht_raw_frame*, %struct.fwht_raw_frame** %6, align 8
  %12 = getelementptr inbounds %struct.fwht_raw_frame, %struct.fwht_raw_frame* %11, i32 0, i32 0
  store i32* %10, i32** %12, align 8
  %13 = load %struct.v4l2_fwht_pixfmt_info*, %struct.v4l2_fwht_pixfmt_info** %7, align 8
  %14 = getelementptr inbounds %struct.v4l2_fwht_pixfmt_info, %struct.v4l2_fwht_pixfmt_info* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.fwht_raw_frame*, %struct.fwht_raw_frame** %6, align 8
  %17 = getelementptr inbounds %struct.fwht_raw_frame, %struct.fwht_raw_frame* %16, i32 0, i32 8
  store i32 %15, i32* %17, align 8
  %18 = load %struct.v4l2_fwht_pixfmt_info*, %struct.v4l2_fwht_pixfmt_info** %7, align 8
  %19 = getelementptr inbounds %struct.v4l2_fwht_pixfmt_info, %struct.v4l2_fwht_pixfmt_info* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.fwht_raw_frame*, %struct.fwht_raw_frame** %6, align 8
  %22 = getelementptr inbounds %struct.fwht_raw_frame, %struct.fwht_raw_frame* %21, i32 0, i32 7
  store i32 %20, i32* %22, align 4
  %23 = load %struct.v4l2_fwht_pixfmt_info*, %struct.v4l2_fwht_pixfmt_info** %7, align 8
  %24 = getelementptr inbounds %struct.v4l2_fwht_pixfmt_info, %struct.v4l2_fwht_pixfmt_info* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.fwht_raw_frame*, %struct.fwht_raw_frame** %6, align 8
  %27 = getelementptr inbounds %struct.fwht_raw_frame, %struct.fwht_raw_frame* %26, i32 0, i32 6
  store i32 %25, i32* %27, align 8
  %28 = load %struct.v4l2_fwht_pixfmt_info*, %struct.v4l2_fwht_pixfmt_info** %7, align 8
  %29 = getelementptr inbounds %struct.v4l2_fwht_pixfmt_info, %struct.v4l2_fwht_pixfmt_info* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.fwht_raw_frame*, %struct.fwht_raw_frame** %6, align 8
  %32 = getelementptr inbounds %struct.fwht_raw_frame, %struct.fwht_raw_frame* %31, i32 0, i32 5
  store i32 %30, i32* %32, align 4
  %33 = load %struct.fwht_raw_frame*, %struct.fwht_raw_frame** %6, align 8
  %34 = getelementptr inbounds %struct.fwht_raw_frame, %struct.fwht_raw_frame* %33, i32 0, i32 3
  store i32* null, i32** %34, align 8
  %35 = load %struct.v4l2_fwht_pixfmt_info*, %struct.v4l2_fwht_pixfmt_info** %7, align 8
  %36 = getelementptr inbounds %struct.v4l2_fwht_pixfmt_info, %struct.v4l2_fwht_pixfmt_info* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.fwht_raw_frame*, %struct.fwht_raw_frame** %6, align 8
  %39 = getelementptr inbounds %struct.fwht_raw_frame, %struct.fwht_raw_frame* %38, i32 0, i32 4
  store i32 %37, i32* %39, align 8
  %40 = load i32*, i32** %8, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %51, label %42

42:                                               ; preds = %4
  %43 = load %struct.fwht_raw_frame*, %struct.fwht_raw_frame** %6, align 8
  %44 = getelementptr inbounds %struct.fwht_raw_frame, %struct.fwht_raw_frame* %43, i32 0, i32 0
  store i32* null, i32** %44, align 8
  %45 = load %struct.fwht_raw_frame*, %struct.fwht_raw_frame** %6, align 8
  %46 = getelementptr inbounds %struct.fwht_raw_frame, %struct.fwht_raw_frame* %45, i32 0, i32 2
  store i32* null, i32** %46, align 8
  %47 = load %struct.fwht_raw_frame*, %struct.fwht_raw_frame** %6, align 8
  %48 = getelementptr inbounds %struct.fwht_raw_frame, %struct.fwht_raw_frame* %47, i32 0, i32 1
  store i32* null, i32** %48, align 8
  %49 = load %struct.fwht_raw_frame*, %struct.fwht_raw_frame** %6, align 8
  %50 = getelementptr inbounds %struct.fwht_raw_frame, %struct.fwht_raw_frame* %49, i32 0, i32 3
  store i32* null, i32** %50, align 8
  store i32 0, i32* %5, align 4
  br label %392

51:                                               ; preds = %4
  %52 = load %struct.v4l2_fwht_pixfmt_info*, %struct.v4l2_fwht_pixfmt_info** %7, align 8
  %53 = getelementptr inbounds %struct.v4l2_fwht_pixfmt_info, %struct.v4l2_fwht_pixfmt_info* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  switch i32 %54, label %388 [
    i32 149, label %55
    i32 132, label %60
    i32 129, label %78
    i32 131, label %96
    i32 146, label %114
    i32 145, label %114
    i32 143, label %114
    i32 144, label %129
    i32 141, label %129
    i32 142, label %129
    i32 130, label %144
    i32 128, label %157
    i32 136, label %170
    i32 135, label %186
    i32 140, label %202
    i32 148, label %202
    i32 153, label %218
    i32 139, label %234
    i32 133, label %234
    i32 147, label %234
    i32 152, label %251
    i32 134, label %251
    i32 154, label %267
    i32 155, label %289
    i32 150, label %311
    i32 151, label %328
    i32 137, label %350
    i32 138, label %366
  ]

55:                                               ; preds = %51
  %56 = load %struct.fwht_raw_frame*, %struct.fwht_raw_frame** %6, align 8
  %57 = getelementptr inbounds %struct.fwht_raw_frame, %struct.fwht_raw_frame* %56, i32 0, i32 2
  store i32* null, i32** %57, align 8
  %58 = load %struct.fwht_raw_frame*, %struct.fwht_raw_frame** %6, align 8
  %59 = getelementptr inbounds %struct.fwht_raw_frame, %struct.fwht_raw_frame* %58, i32 0, i32 1
  store i32* null, i32** %59, align 8
  br label %391

60:                                               ; preds = %51
  %61 = load %struct.fwht_raw_frame*, %struct.fwht_raw_frame** %6, align 8
  %62 = getelementptr inbounds %struct.fwht_raw_frame, %struct.fwht_raw_frame* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %9, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load %struct.fwht_raw_frame*, %struct.fwht_raw_frame** %6, align 8
  %68 = getelementptr inbounds %struct.fwht_raw_frame, %struct.fwht_raw_frame* %67, i32 0, i32 2
  store i32* %66, i32** %68, align 8
  %69 = load %struct.fwht_raw_frame*, %struct.fwht_raw_frame** %6, align 8
  %70 = getelementptr inbounds %struct.fwht_raw_frame, %struct.fwht_raw_frame* %69, i32 0, i32 2
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %9, align 4
  %73 = udiv i32 %72, 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %71, i64 %74
  %76 = load %struct.fwht_raw_frame*, %struct.fwht_raw_frame** %6, align 8
  %77 = getelementptr inbounds %struct.fwht_raw_frame, %struct.fwht_raw_frame* %76, i32 0, i32 1
  store i32* %75, i32** %77, align 8
  br label %391

78:                                               ; preds = %51
  %79 = load %struct.fwht_raw_frame*, %struct.fwht_raw_frame** %6, align 8
  %80 = getelementptr inbounds %struct.fwht_raw_frame, %struct.fwht_raw_frame* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %9, align 4
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load %struct.fwht_raw_frame*, %struct.fwht_raw_frame** %6, align 8
  %86 = getelementptr inbounds %struct.fwht_raw_frame, %struct.fwht_raw_frame* %85, i32 0, i32 1
  store i32* %84, i32** %86, align 8
  %87 = load %struct.fwht_raw_frame*, %struct.fwht_raw_frame** %6, align 8
  %88 = getelementptr inbounds %struct.fwht_raw_frame, %struct.fwht_raw_frame* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %9, align 4
  %91 = udiv i32 %90, 4
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %89, i64 %92
  %94 = load %struct.fwht_raw_frame*, %struct.fwht_raw_frame** %6, align 8
  %95 = getelementptr inbounds %struct.fwht_raw_frame, %struct.fwht_raw_frame* %94, i32 0, i32 2
  store i32* %93, i32** %95, align 8
  br label %391

96:                                               ; preds = %51
  %97 = load %struct.fwht_raw_frame*, %struct.fwht_raw_frame** %6, align 8
  %98 = getelementptr inbounds %struct.fwht_raw_frame, %struct.fwht_raw_frame* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %9, align 4
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load %struct.fwht_raw_frame*, %struct.fwht_raw_frame** %6, align 8
  %104 = getelementptr inbounds %struct.fwht_raw_frame, %struct.fwht_raw_frame* %103, i32 0, i32 2
  store i32* %102, i32** %104, align 8
  %105 = load %struct.fwht_raw_frame*, %struct.fwht_raw_frame** %6, align 8
  %106 = getelementptr inbounds %struct.fwht_raw_frame, %struct.fwht_raw_frame* %105, i32 0, i32 2
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* %9, align 4
  %109 = udiv i32 %108, 2
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %107, i64 %110
  %112 = load %struct.fwht_raw_frame*, %struct.fwht_raw_frame** %6, align 8
  %113 = getelementptr inbounds %struct.fwht_raw_frame, %struct.fwht_raw_frame* %112, i32 0, i32 1
  store i32* %111, i32** %113, align 8
  br label %391

114:                                              ; preds = %51, %51, %51
  %115 = load %struct.fwht_raw_frame*, %struct.fwht_raw_frame** %6, align 8
  %116 = getelementptr inbounds %struct.fwht_raw_frame, %struct.fwht_raw_frame* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = load i32, i32* %9, align 4
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  %121 = load %struct.fwht_raw_frame*, %struct.fwht_raw_frame** %6, align 8
  %122 = getelementptr inbounds %struct.fwht_raw_frame, %struct.fwht_raw_frame* %121, i32 0, i32 2
  store i32* %120, i32** %122, align 8
  %123 = load %struct.fwht_raw_frame*, %struct.fwht_raw_frame** %6, align 8
  %124 = getelementptr inbounds %struct.fwht_raw_frame, %struct.fwht_raw_frame* %123, i32 0, i32 2
  %125 = load i32*, i32** %124, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 1
  %127 = load %struct.fwht_raw_frame*, %struct.fwht_raw_frame** %6, align 8
  %128 = getelementptr inbounds %struct.fwht_raw_frame, %struct.fwht_raw_frame* %127, i32 0, i32 1
  store i32* %126, i32** %128, align 8
  br label %391

129:                                              ; preds = %51, %51, %51
  %130 = load %struct.fwht_raw_frame*, %struct.fwht_raw_frame** %6, align 8
  %131 = getelementptr inbounds %struct.fwht_raw_frame, %struct.fwht_raw_frame* %130, i32 0, i32 0
  %132 = load i32*, i32** %131, align 8
  %133 = load i32, i32* %9, align 4
  %134 = zext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  %136 = load %struct.fwht_raw_frame*, %struct.fwht_raw_frame** %6, align 8
  %137 = getelementptr inbounds %struct.fwht_raw_frame, %struct.fwht_raw_frame* %136, i32 0, i32 1
  store i32* %135, i32** %137, align 8
  %138 = load %struct.fwht_raw_frame*, %struct.fwht_raw_frame** %6, align 8
  %139 = getelementptr inbounds %struct.fwht_raw_frame, %struct.fwht_raw_frame* %138, i32 0, i32 1
  %140 = load i32*, i32** %139, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 1
  %142 = load %struct.fwht_raw_frame*, %struct.fwht_raw_frame** %6, align 8
  %143 = getelementptr inbounds %struct.fwht_raw_frame, %struct.fwht_raw_frame* %142, i32 0, i32 2
  store i32* %141, i32** %143, align 8
  br label %391

144:                                              ; preds = %51
  %145 = load %struct.fwht_raw_frame*, %struct.fwht_raw_frame** %6, align 8
  %146 = getelementptr inbounds %struct.fwht_raw_frame, %struct.fwht_raw_frame* %145, i32 0, i32 0
  %147 = load i32*, i32** %146, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 1
  %149 = load %struct.fwht_raw_frame*, %struct.fwht_raw_frame** %6, align 8
  %150 = getelementptr inbounds %struct.fwht_raw_frame, %struct.fwht_raw_frame* %149, i32 0, i32 2
  store i32* %148, i32** %150, align 8
  %151 = load %struct.fwht_raw_frame*, %struct.fwht_raw_frame** %6, align 8
  %152 = getelementptr inbounds %struct.fwht_raw_frame, %struct.fwht_raw_frame* %151, i32 0, i32 2
  %153 = load i32*, i32** %152, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 2
  %155 = load %struct.fwht_raw_frame*, %struct.fwht_raw_frame** %6, align 8
  %156 = getelementptr inbounds %struct.fwht_raw_frame, %struct.fwht_raw_frame* %155, i32 0, i32 1
  store i32* %154, i32** %156, align 8
  br label %391

157:                                              ; preds = %51
  %158 = load %struct.fwht_raw_frame*, %struct.fwht_raw_frame** %6, align 8
  %159 = getelementptr inbounds %struct.fwht_raw_frame, %struct.fwht_raw_frame* %158, i32 0, i32 0
  %160 = load i32*, i32** %159, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 1
  %162 = load %struct.fwht_raw_frame*, %struct.fwht_raw_frame** %6, align 8
  %163 = getelementptr inbounds %struct.fwht_raw_frame, %struct.fwht_raw_frame* %162, i32 0, i32 1
  store i32* %161, i32** %163, align 8
  %164 = load %struct.fwht_raw_frame*, %struct.fwht_raw_frame** %6, align 8
  %165 = getelementptr inbounds %struct.fwht_raw_frame, %struct.fwht_raw_frame* %164, i32 0, i32 1
  %166 = load i32*, i32** %165, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 2
  %168 = load %struct.fwht_raw_frame*, %struct.fwht_raw_frame** %6, align 8
  %169 = getelementptr inbounds %struct.fwht_raw_frame, %struct.fwht_raw_frame* %168, i32 0, i32 2
  store i32* %167, i32** %169, align 8
  br label %391

170:                                              ; preds = %51
  %171 = load %struct.fwht_raw_frame*, %struct.fwht_raw_frame** %6, align 8
  %172 = getelementptr inbounds %struct.fwht_raw_frame, %struct.fwht_raw_frame* %171, i32 0, i32 0
  %173 = load i32*, i32** %172, align 8
  %174 = load %struct.fwht_raw_frame*, %struct.fwht_raw_frame** %6, align 8
  %175 = getelementptr inbounds %struct.fwht_raw_frame, %struct.fwht_raw_frame* %174, i32 0, i32 2
  store i32* %173, i32** %175, align 8
  %176 = load %struct.fwht_raw_frame*, %struct.fwht_raw_frame** %6, align 8
  %177 = getelementptr inbounds %struct.fwht_raw_frame, %struct.fwht_raw_frame* %176, i32 0, i32 2
  %178 = load i32*, i32** %177, align 8
  %179 = getelementptr inbounds i32, i32* %178, i64 2
  %180 = load %struct.fwht_raw_frame*, %struct.fwht_raw_frame** %6, align 8
  %181 = getelementptr inbounds %struct.fwht_raw_frame, %struct.fwht_raw_frame* %180, i32 0, i32 1
  store i32* %179, i32** %181, align 8
  %182 = load %struct.fwht_raw_frame*, %struct.fwht_raw_frame** %6, align 8
  %183 = getelementptr inbounds %struct.fwht_raw_frame, %struct.fwht_raw_frame* %182, i32 0, i32 0
  %184 = load i32*, i32** %183, align 8
  %185 = getelementptr inbounds i32, i32* %184, i32 1
  store i32* %185, i32** %183, align 8
  br label %391

186:                                              ; preds = %51
  %187 = load %struct.fwht_raw_frame*, %struct.fwht_raw_frame** %6, align 8
  %188 = getelementptr inbounds %struct.fwht_raw_frame, %struct.fwht_raw_frame* %187, i32 0, i32 0
  %189 = load i32*, i32** %188, align 8
  %190 = load %struct.fwht_raw_frame*, %struct.fwht_raw_frame** %6, align 8
  %191 = getelementptr inbounds %struct.fwht_raw_frame, %struct.fwht_raw_frame* %190, i32 0, i32 1
  store i32* %189, i32** %191, align 8
  %192 = load %struct.fwht_raw_frame*, %struct.fwht_raw_frame** %6, align 8
  %193 = getelementptr inbounds %struct.fwht_raw_frame, %struct.fwht_raw_frame* %192, i32 0, i32 1
  %194 = load i32*, i32** %193, align 8
  %195 = getelementptr inbounds i32, i32* %194, i64 2
  %196 = load %struct.fwht_raw_frame*, %struct.fwht_raw_frame** %6, align 8
  %197 = getelementptr inbounds %struct.fwht_raw_frame, %struct.fwht_raw_frame* %196, i32 0, i32 2
  store i32* %195, i32** %197, align 8
  %198 = load %struct.fwht_raw_frame*, %struct.fwht_raw_frame** %6, align 8
  %199 = getelementptr inbounds %struct.fwht_raw_frame, %struct.fwht_raw_frame* %198, i32 0, i32 0
  %200 = load i32*, i32** %199, align 8
  %201 = getelementptr inbounds i32, i32* %200, i32 1
  store i32* %201, i32** %199, align 8
  br label %391

202:                                              ; preds = %51, %51
  %203 = load %struct.fwht_raw_frame*, %struct.fwht_raw_frame** %6, align 8
  %204 = getelementptr inbounds %struct.fwht_raw_frame, %struct.fwht_raw_frame* %203, i32 0, i32 0
  %205 = load i32*, i32** %204, align 8
  %206 = load %struct.fwht_raw_frame*, %struct.fwht_raw_frame** %6, align 8
  %207 = getelementptr inbounds %struct.fwht_raw_frame, %struct.fwht_raw_frame* %206, i32 0, i32 1
  store i32* %205, i32** %207, align 8
  %208 = load %struct.fwht_raw_frame*, %struct.fwht_raw_frame** %6, align 8
  %209 = getelementptr inbounds %struct.fwht_raw_frame, %struct.fwht_raw_frame* %208, i32 0, i32 1
  %210 = load i32*, i32** %209, align 8
  %211 = getelementptr inbounds i32, i32* %210, i64 2
  %212 = load %struct.fwht_raw_frame*, %struct.fwht_raw_frame** %6, align 8
  %213 = getelementptr inbounds %struct.fwht_raw_frame, %struct.fwht_raw_frame* %212, i32 0, i32 2
  store i32* %211, i32** %213, align 8
  %214 = load %struct.fwht_raw_frame*, %struct.fwht_raw_frame** %6, align 8
  %215 = getelementptr inbounds %struct.fwht_raw_frame, %struct.fwht_raw_frame* %214, i32 0, i32 0
  %216 = load i32*, i32** %215, align 8
  %217 = getelementptr inbounds i32, i32* %216, i32 1
  store i32* %217, i32** %215, align 8
  br label %391

218:                                              ; preds = %51
  %219 = load %struct.fwht_raw_frame*, %struct.fwht_raw_frame** %6, align 8
  %220 = getelementptr inbounds %struct.fwht_raw_frame, %struct.fwht_raw_frame* %219, i32 0, i32 0
  %221 = load i32*, i32** %220, align 8
  %222 = load %struct.fwht_raw_frame*, %struct.fwht_raw_frame** %6, align 8
  %223 = getelementptr inbounds %struct.fwht_raw_frame, %struct.fwht_raw_frame* %222, i32 0, i32 2
  store i32* %221, i32** %223, align 8
  %224 = load %struct.fwht_raw_frame*, %struct.fwht_raw_frame** %6, align 8
  %225 = getelementptr inbounds %struct.fwht_raw_frame, %struct.fwht_raw_frame* %224, i32 0, i32 2
  %226 = load i32*, i32** %225, align 8
  %227 = getelementptr inbounds i32, i32* %226, i64 2
  %228 = load %struct.fwht_raw_frame*, %struct.fwht_raw_frame** %6, align 8
  %229 = getelementptr inbounds %struct.fwht_raw_frame, %struct.fwht_raw_frame* %228, i32 0, i32 1
  store i32* %227, i32** %229, align 8
  %230 = load %struct.fwht_raw_frame*, %struct.fwht_raw_frame** %6, align 8
  %231 = getelementptr inbounds %struct.fwht_raw_frame, %struct.fwht_raw_frame* %230, i32 0, i32 0
  %232 = load i32*, i32** %231, align 8
  %233 = getelementptr inbounds i32, i32* %232, i32 1
  store i32* %233, i32** %231, align 8
  br label %391

234:                                              ; preds = %51, %51, %51
  %235 = load %struct.fwht_raw_frame*, %struct.fwht_raw_frame** %6, align 8
  %236 = getelementptr inbounds %struct.fwht_raw_frame, %struct.fwht_raw_frame* %235, i32 0, i32 0
  %237 = load i32*, i32** %236, align 8
  %238 = getelementptr inbounds i32, i32* %237, i64 1
  %239 = load %struct.fwht_raw_frame*, %struct.fwht_raw_frame** %6, align 8
  %240 = getelementptr inbounds %struct.fwht_raw_frame, %struct.fwht_raw_frame* %239, i32 0, i32 1
  store i32* %238, i32** %240, align 8
  %241 = load %struct.fwht_raw_frame*, %struct.fwht_raw_frame** %6, align 8
  %242 = getelementptr inbounds %struct.fwht_raw_frame, %struct.fwht_raw_frame* %241, i32 0, i32 1
  %243 = load i32*, i32** %242, align 8
  %244 = getelementptr inbounds i32, i32* %243, i64 2
  %245 = load %struct.fwht_raw_frame*, %struct.fwht_raw_frame** %6, align 8
  %246 = getelementptr inbounds %struct.fwht_raw_frame, %struct.fwht_raw_frame* %245, i32 0, i32 2
  store i32* %244, i32** %246, align 8
  %247 = load %struct.fwht_raw_frame*, %struct.fwht_raw_frame** %6, align 8
  %248 = getelementptr inbounds %struct.fwht_raw_frame, %struct.fwht_raw_frame* %247, i32 0, i32 0
  %249 = load i32*, i32** %248, align 8
  %250 = getelementptr inbounds i32, i32* %249, i64 2
  store i32* %250, i32** %248, align 8
  br label %391

251:                                              ; preds = %51, %51
  %252 = load %struct.fwht_raw_frame*, %struct.fwht_raw_frame** %6, align 8
  %253 = getelementptr inbounds %struct.fwht_raw_frame, %struct.fwht_raw_frame* %252, i32 0, i32 0
  %254 = load i32*, i32** %253, align 8
  %255 = load %struct.fwht_raw_frame*, %struct.fwht_raw_frame** %6, align 8
  %256 = getelementptr inbounds %struct.fwht_raw_frame, %struct.fwht_raw_frame* %255, i32 0, i32 2
  store i32* %254, i32** %256, align 8
  %257 = load %struct.fwht_raw_frame*, %struct.fwht_raw_frame** %6, align 8
  %258 = getelementptr inbounds %struct.fwht_raw_frame, %struct.fwht_raw_frame* %257, i32 0, i32 2
  %259 = load i32*, i32** %258, align 8
  %260 = getelementptr inbounds i32, i32* %259, i64 2
  %261 = load %struct.fwht_raw_frame*, %struct.fwht_raw_frame** %6, align 8
  %262 = getelementptr inbounds %struct.fwht_raw_frame, %struct.fwht_raw_frame* %261, i32 0, i32 1
  store i32* %260, i32** %262, align 8
  %263 = load %struct.fwht_raw_frame*, %struct.fwht_raw_frame** %6, align 8
  %264 = getelementptr inbounds %struct.fwht_raw_frame, %struct.fwht_raw_frame* %263, i32 0, i32 0
  %265 = load i32*, i32** %264, align 8
  %266 = getelementptr inbounds i32, i32* %265, i32 1
  store i32* %266, i32** %264, align 8
  br label %391

267:                                              ; preds = %51
  %268 = load %struct.fwht_raw_frame*, %struct.fwht_raw_frame** %6, align 8
  %269 = getelementptr inbounds %struct.fwht_raw_frame, %struct.fwht_raw_frame* %268, i32 0, i32 0
  %270 = load i32*, i32** %269, align 8
  %271 = load %struct.fwht_raw_frame*, %struct.fwht_raw_frame** %6, align 8
  %272 = getelementptr inbounds %struct.fwht_raw_frame, %struct.fwht_raw_frame* %271, i32 0, i32 3
  store i32* %270, i32** %272, align 8
  %273 = load %struct.fwht_raw_frame*, %struct.fwht_raw_frame** %6, align 8
  %274 = getelementptr inbounds %struct.fwht_raw_frame, %struct.fwht_raw_frame* %273, i32 0, i32 0
  %275 = load i32*, i32** %274, align 8
  %276 = getelementptr inbounds i32, i32* %275, i64 1
  %277 = load %struct.fwht_raw_frame*, %struct.fwht_raw_frame** %6, align 8
  %278 = getelementptr inbounds %struct.fwht_raw_frame, %struct.fwht_raw_frame* %277, i32 0, i32 1
  store i32* %276, i32** %278, align 8
  %279 = load %struct.fwht_raw_frame*, %struct.fwht_raw_frame** %6, align 8
  %280 = getelementptr inbounds %struct.fwht_raw_frame, %struct.fwht_raw_frame* %279, i32 0, i32 1
  %281 = load i32*, i32** %280, align 8
  %282 = getelementptr inbounds i32, i32* %281, i64 2
  %283 = load %struct.fwht_raw_frame*, %struct.fwht_raw_frame** %6, align 8
  %284 = getelementptr inbounds %struct.fwht_raw_frame, %struct.fwht_raw_frame* %283, i32 0, i32 2
  store i32* %282, i32** %284, align 8
  %285 = load %struct.fwht_raw_frame*, %struct.fwht_raw_frame** %6, align 8
  %286 = getelementptr inbounds %struct.fwht_raw_frame, %struct.fwht_raw_frame* %285, i32 0, i32 0
  %287 = load i32*, i32** %286, align 8
  %288 = getelementptr inbounds i32, i32* %287, i64 2
  store i32* %288, i32** %286, align 8
  br label %391

289:                                              ; preds = %51
  %290 = load %struct.fwht_raw_frame*, %struct.fwht_raw_frame** %6, align 8
  %291 = getelementptr inbounds %struct.fwht_raw_frame, %struct.fwht_raw_frame* %290, i32 0, i32 0
  %292 = load i32*, i32** %291, align 8
  %293 = load %struct.fwht_raw_frame*, %struct.fwht_raw_frame** %6, align 8
  %294 = getelementptr inbounds %struct.fwht_raw_frame, %struct.fwht_raw_frame* %293, i32 0, i32 2
  store i32* %292, i32** %294, align 8
  %295 = load %struct.fwht_raw_frame*, %struct.fwht_raw_frame** %6, align 8
  %296 = getelementptr inbounds %struct.fwht_raw_frame, %struct.fwht_raw_frame* %295, i32 0, i32 2
  %297 = load i32*, i32** %296, align 8
  %298 = getelementptr inbounds i32, i32* %297, i64 2
  %299 = load %struct.fwht_raw_frame*, %struct.fwht_raw_frame** %6, align 8
  %300 = getelementptr inbounds %struct.fwht_raw_frame, %struct.fwht_raw_frame* %299, i32 0, i32 1
  store i32* %298, i32** %300, align 8
  %301 = load %struct.fwht_raw_frame*, %struct.fwht_raw_frame** %6, align 8
  %302 = getelementptr inbounds %struct.fwht_raw_frame, %struct.fwht_raw_frame* %301, i32 0, i32 0
  %303 = load i32*, i32** %302, align 8
  %304 = getelementptr inbounds i32, i32* %303, i32 1
  store i32* %304, i32** %302, align 8
  %305 = load %struct.fwht_raw_frame*, %struct.fwht_raw_frame** %6, align 8
  %306 = getelementptr inbounds %struct.fwht_raw_frame, %struct.fwht_raw_frame* %305, i32 0, i32 1
  %307 = load i32*, i32** %306, align 8
  %308 = getelementptr inbounds i32, i32* %307, i64 1
  %309 = load %struct.fwht_raw_frame*, %struct.fwht_raw_frame** %6, align 8
  %310 = getelementptr inbounds %struct.fwht_raw_frame, %struct.fwht_raw_frame* %309, i32 0, i32 3
  store i32* %308, i32** %310, align 8
  br label %391

311:                                              ; preds = %51
  %312 = load %struct.fwht_raw_frame*, %struct.fwht_raw_frame** %6, align 8
  %313 = getelementptr inbounds %struct.fwht_raw_frame, %struct.fwht_raw_frame* %312, i32 0, i32 0
  %314 = load i32*, i32** %313, align 8
  %315 = getelementptr inbounds i32, i32* %314, i64 1
  %316 = load %struct.fwht_raw_frame*, %struct.fwht_raw_frame** %6, align 8
  %317 = getelementptr inbounds %struct.fwht_raw_frame, %struct.fwht_raw_frame* %316, i32 0, i32 2
  store i32* %315, i32** %317, align 8
  %318 = load %struct.fwht_raw_frame*, %struct.fwht_raw_frame** %6, align 8
  %319 = getelementptr inbounds %struct.fwht_raw_frame, %struct.fwht_raw_frame* %318, i32 0, i32 2
  %320 = load i32*, i32** %319, align 8
  %321 = getelementptr inbounds i32, i32* %320, i64 2
  %322 = load %struct.fwht_raw_frame*, %struct.fwht_raw_frame** %6, align 8
  %323 = getelementptr inbounds %struct.fwht_raw_frame, %struct.fwht_raw_frame* %322, i32 0, i32 1
  store i32* %321, i32** %323, align 8
  %324 = load %struct.fwht_raw_frame*, %struct.fwht_raw_frame** %6, align 8
  %325 = getelementptr inbounds %struct.fwht_raw_frame, %struct.fwht_raw_frame* %324, i32 0, i32 0
  %326 = load i32*, i32** %325, align 8
  %327 = getelementptr inbounds i32, i32* %326, i64 2
  store i32* %327, i32** %325, align 8
  br label %391

328:                                              ; preds = %51
  %329 = load %struct.fwht_raw_frame*, %struct.fwht_raw_frame** %6, align 8
  %330 = getelementptr inbounds %struct.fwht_raw_frame, %struct.fwht_raw_frame* %329, i32 0, i32 0
  %331 = load i32*, i32** %330, align 8
  %332 = load %struct.fwht_raw_frame*, %struct.fwht_raw_frame** %6, align 8
  %333 = getelementptr inbounds %struct.fwht_raw_frame, %struct.fwht_raw_frame* %332, i32 0, i32 3
  store i32* %331, i32** %333, align 8
  %334 = load %struct.fwht_raw_frame*, %struct.fwht_raw_frame** %6, align 8
  %335 = getelementptr inbounds %struct.fwht_raw_frame, %struct.fwht_raw_frame* %334, i32 0, i32 0
  %336 = load i32*, i32** %335, align 8
  %337 = getelementptr inbounds i32, i32* %336, i64 1
  %338 = load %struct.fwht_raw_frame*, %struct.fwht_raw_frame** %6, align 8
  %339 = getelementptr inbounds %struct.fwht_raw_frame, %struct.fwht_raw_frame* %338, i32 0, i32 2
  store i32* %337, i32** %339, align 8
  %340 = load %struct.fwht_raw_frame*, %struct.fwht_raw_frame** %6, align 8
  %341 = getelementptr inbounds %struct.fwht_raw_frame, %struct.fwht_raw_frame* %340, i32 0, i32 2
  %342 = load i32*, i32** %341, align 8
  %343 = getelementptr inbounds i32, i32* %342, i64 2
  %344 = load %struct.fwht_raw_frame*, %struct.fwht_raw_frame** %6, align 8
  %345 = getelementptr inbounds %struct.fwht_raw_frame, %struct.fwht_raw_frame* %344, i32 0, i32 1
  store i32* %343, i32** %345, align 8
  %346 = load %struct.fwht_raw_frame*, %struct.fwht_raw_frame** %6, align 8
  %347 = getelementptr inbounds %struct.fwht_raw_frame, %struct.fwht_raw_frame* %346, i32 0, i32 0
  %348 = load i32*, i32** %347, align 8
  %349 = getelementptr inbounds i32, i32* %348, i64 2
  store i32* %349, i32** %347, align 8
  br label %391

350:                                              ; preds = %51
  %351 = load %struct.fwht_raw_frame*, %struct.fwht_raw_frame** %6, align 8
  %352 = getelementptr inbounds %struct.fwht_raw_frame, %struct.fwht_raw_frame* %351, i32 0, i32 0
  %353 = load i32*, i32** %352, align 8
  %354 = load %struct.fwht_raw_frame*, %struct.fwht_raw_frame** %6, align 8
  %355 = getelementptr inbounds %struct.fwht_raw_frame, %struct.fwht_raw_frame* %354, i32 0, i32 1
  store i32* %353, i32** %355, align 8
  %356 = load %struct.fwht_raw_frame*, %struct.fwht_raw_frame** %6, align 8
  %357 = getelementptr inbounds %struct.fwht_raw_frame, %struct.fwht_raw_frame* %356, i32 0, i32 1
  %358 = load i32*, i32** %357, align 8
  %359 = getelementptr inbounds i32, i32* %358, i64 2
  %360 = load %struct.fwht_raw_frame*, %struct.fwht_raw_frame** %6, align 8
  %361 = getelementptr inbounds %struct.fwht_raw_frame, %struct.fwht_raw_frame* %360, i32 0, i32 2
  store i32* %359, i32** %361, align 8
  %362 = load %struct.fwht_raw_frame*, %struct.fwht_raw_frame** %6, align 8
  %363 = getelementptr inbounds %struct.fwht_raw_frame, %struct.fwht_raw_frame* %362, i32 0, i32 0
  %364 = load i32*, i32** %363, align 8
  %365 = getelementptr inbounds i32, i32* %364, i32 1
  store i32* %365, i32** %363, align 8
  br label %391

366:                                              ; preds = %51
  %367 = load %struct.fwht_raw_frame*, %struct.fwht_raw_frame** %6, align 8
  %368 = getelementptr inbounds %struct.fwht_raw_frame, %struct.fwht_raw_frame* %367, i32 0, i32 0
  %369 = load i32*, i32** %368, align 8
  %370 = getelementptr inbounds i32, i32* %369, i64 3
  %371 = load %struct.fwht_raw_frame*, %struct.fwht_raw_frame** %6, align 8
  %372 = getelementptr inbounds %struct.fwht_raw_frame, %struct.fwht_raw_frame* %371, i32 0, i32 3
  store i32* %370, i32** %372, align 8
  %373 = load %struct.fwht_raw_frame*, %struct.fwht_raw_frame** %6, align 8
  %374 = getelementptr inbounds %struct.fwht_raw_frame, %struct.fwht_raw_frame* %373, i32 0, i32 0
  %375 = load i32*, i32** %374, align 8
  %376 = load %struct.fwht_raw_frame*, %struct.fwht_raw_frame** %6, align 8
  %377 = getelementptr inbounds %struct.fwht_raw_frame, %struct.fwht_raw_frame* %376, i32 0, i32 1
  store i32* %375, i32** %377, align 8
  %378 = load %struct.fwht_raw_frame*, %struct.fwht_raw_frame** %6, align 8
  %379 = getelementptr inbounds %struct.fwht_raw_frame, %struct.fwht_raw_frame* %378, i32 0, i32 1
  %380 = load i32*, i32** %379, align 8
  %381 = getelementptr inbounds i32, i32* %380, i64 2
  %382 = load %struct.fwht_raw_frame*, %struct.fwht_raw_frame** %6, align 8
  %383 = getelementptr inbounds %struct.fwht_raw_frame, %struct.fwht_raw_frame* %382, i32 0, i32 2
  store i32* %381, i32** %383, align 8
  %384 = load %struct.fwht_raw_frame*, %struct.fwht_raw_frame** %6, align 8
  %385 = getelementptr inbounds %struct.fwht_raw_frame, %struct.fwht_raw_frame* %384, i32 0, i32 0
  %386 = load i32*, i32** %385, align 8
  %387 = getelementptr inbounds i32, i32* %386, i32 1
  store i32* %387, i32** %385, align 8
  br label %391

388:                                              ; preds = %51
  %389 = load i32, i32* @EINVAL, align 4
  %390 = sub nsw i32 0, %389
  store i32 %390, i32* %5, align 4
  br label %392

391:                                              ; preds = %366, %350, %328, %311, %289, %267, %251, %234, %218, %202, %186, %170, %157, %144, %129, %114, %96, %78, %60, %55
  store i32 0, i32* %5, align 4
  br label %392

392:                                              ; preds = %391, %388, %42
  %393 = load i32, i32* %5, align 4
  ret i32 %393
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
