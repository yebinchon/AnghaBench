; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-kthread-cap.c_vivid_precalc_copy_rects.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-kthread-cap.c_vivid_precalc_copy_rects.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vivid_dev = type { %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.TYPE_2__, %struct.v4l2_rect, i64, %struct.v4l2_rect, i64, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.TYPE_2__, i32, i32 }
%struct.v4l2_rect = type { i64, i64, i32, i32, i32, i32, i64, i64 }
%struct.TYPE_2__ = type { i64, i64 }

@.str = private unnamed_addr constant [80 x i8] c"loop_vid_copy: %dx%d@%dx%d loop_vid_out: %dx%d@%dx%d loop_vid_cap: %dx%d@%dx%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [91 x i8] c"loop_fb_copy: %dx%d@%dx%d loop_vid_overlay: %dx%d@%dx%d loop_vid_overlay_cap: %dx%d@%dx%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vivid_dev*)* @vivid_precalc_copy_rects to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vivid_precalc_copy_rects(%struct.vivid_dev* %0) #0 {
  %2 = alloca %struct.vivid_dev*, align 8
  %3 = alloca %struct.v4l2_rect, align 8
  %4 = alloca %struct.v4l2_rect, align 8
  store %struct.vivid_dev* %0, %struct.vivid_dev** %2, align 8
  %5 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %3, i32 0, i32 0
  store i64 0, i64* %5, align 8
  %6 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %3, i32 0, i32 1
  store i64 0, i64* %6, align 8
  %7 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %3, i32 0, i32 2
  %8 = load %struct.vivid_dev*, %struct.vivid_dev** %2, align 8
  %9 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %8, i32 0, i32 13
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %7, align 8
  %11 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %3, i32 0, i32 3
  %12 = load %struct.vivid_dev*, %struct.vivid_dev** %2, align 8
  %13 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %12, i32 0, i32 12
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %11, align 4
  %15 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %3, i32 0, i32 4
  store i32 0, i32* %15, align 8
  %16 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %3, i32 0, i32 5
  store i32 0, i32* %16, align 4
  %17 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %3, i32 0, i32 6
  store i64 0, i64* %17, align 8
  %18 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %3, i32 0, i32 7
  store i64 0, i64* %18, align 8
  %19 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %4, i32 0, i32 0
  %20 = load %struct.vivid_dev*, %struct.vivid_dev** %2, align 8
  %21 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %20, i32 0, i32 7
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %19, align 8
  %23 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %4, i32 0, i32 1
  %24 = load %struct.vivid_dev*, %struct.vivid_dev** %2, align 8
  %25 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %24, i32 0, i32 5
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %23, align 8
  %27 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %4, i32 0, i32 2
  %28 = load %struct.vivid_dev*, %struct.vivid_dev** %2, align 8
  %29 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %28, i32 0, i32 6
  %30 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %27, align 8
  %32 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %4, i32 0, i32 3
  %33 = load %struct.vivid_dev*, %struct.vivid_dev** %2, align 8
  %34 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %33, i32 0, i32 6
  %35 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %32, align 4
  %37 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %4, i32 0, i32 4
  store i32 0, i32* %37, align 8
  %38 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %4, i32 0, i32 5
  store i32 0, i32* %38, align 4
  %39 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %4, i32 0, i32 6
  store i64 0, i64* %39, align 8
  %40 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %4, i32 0, i32 7
  store i64 0, i64* %40, align 8
  %41 = load %struct.vivid_dev*, %struct.vivid_dev** %2, align 8
  %42 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %41, i32 0, i32 8
  %43 = load %struct.vivid_dev*, %struct.vivid_dev** %2, align 8
  %44 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %43, i32 0, i32 4
  %45 = load %struct.vivid_dev*, %struct.vivid_dev** %2, align 8
  %46 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %45, i32 0, i32 6
  %47 = call i32 @v4l2_rect_intersect(%struct.v4l2_rect* %42, %struct.v4l2_rect* %44, %struct.v4l2_rect* %46)
  %48 = load %struct.vivid_dev*, %struct.vivid_dev** %2, align 8
  %49 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %48, i32 0, i32 10
  %50 = load %struct.vivid_dev*, %struct.vivid_dev** %2, align 8
  %51 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %50, i32 0, i32 8
  %52 = bitcast %struct.v4l2_rect* %49 to i8*
  %53 = bitcast %struct.v4l2_rect* %51 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %52, i8* align 8 %53, i64 48, i1 false)
  %54 = load %struct.vivid_dev*, %struct.vivid_dev** %2, align 8
  %55 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %54, i32 0, i32 10
  %56 = load %struct.vivid_dev*, %struct.vivid_dev** %2, align 8
  %57 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %56, i32 0, i32 6
  %58 = load %struct.vivid_dev*, %struct.vivid_dev** %2, align 8
  %59 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %58, i32 0, i32 11
  %60 = call i32 @v4l2_rect_scale(%struct.v4l2_rect* %55, %struct.v4l2_rect* %57, %struct.TYPE_2__* %59)
  %61 = load %struct.vivid_dev*, %struct.vivid_dev** %2, align 8
  %62 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %61, i32 0, i32 11
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.vivid_dev*, %struct.vivid_dev** %2, align 8
  %66 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %65, i32 0, i32 10
  %67 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = add nsw i64 %68, %64
  store i64 %69, i64* %67, align 8
  %70 = load %struct.vivid_dev*, %struct.vivid_dev** %2, align 8
  %71 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %70, i32 0, i32 11
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.vivid_dev*, %struct.vivid_dev** %2, align 8
  %75 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %74, i32 0, i32 10
  %76 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = add nsw i64 %77, %73
  store i64 %78, i64* %76, align 8
  %79 = load %struct.vivid_dev*, %struct.vivid_dev** %2, align 8
  %80 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %79, i32 0, i32 9
  %81 = load %struct.vivid_dev*, %struct.vivid_dev** %2, align 8
  %82 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %81, i32 0, i32 8
  %83 = bitcast %struct.v4l2_rect* %80 to i8*
  %84 = bitcast %struct.v4l2_rect* %82 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %83, i8* align 8 %84, i64 48, i1 false)
  %85 = load %struct.vivid_dev*, %struct.vivid_dev** %2, align 8
  %86 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %85, i32 0, i32 9
  %87 = load %struct.vivid_dev*, %struct.vivid_dev** %2, align 8
  %88 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %87, i32 0, i32 4
  %89 = load %struct.vivid_dev*, %struct.vivid_dev** %2, align 8
  %90 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %89, i32 0, i32 3
  %91 = call i32 @v4l2_rect_scale(%struct.v4l2_rect* %86, %struct.v4l2_rect* %88, %struct.TYPE_2__* %90)
  %92 = load %struct.vivid_dev*, %struct.vivid_dev** %2, align 8
  %93 = load %struct.vivid_dev*, %struct.vivid_dev** %2, align 8
  %94 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %93, i32 0, i32 8
  %95 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.vivid_dev*, %struct.vivid_dev** %2, align 8
  %98 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %97, i32 0, i32 8
  %99 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.vivid_dev*, %struct.vivid_dev** %2, align 8
  %102 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %101, i32 0, i32 8
  %103 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.vivid_dev*, %struct.vivid_dev** %2, align 8
  %106 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %105, i32 0, i32 8
  %107 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.vivid_dev*, %struct.vivid_dev** %2, align 8
  %110 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %109, i32 0, i32 10
  %111 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.vivid_dev*, %struct.vivid_dev** %2, align 8
  %114 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %113, i32 0, i32 10
  %115 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.vivid_dev*, %struct.vivid_dev** %2, align 8
  %118 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %117, i32 0, i32 10
  %119 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.vivid_dev*, %struct.vivid_dev** %2, align 8
  %122 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %121, i32 0, i32 10
  %123 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.vivid_dev*, %struct.vivid_dev** %2, align 8
  %126 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %125, i32 0, i32 9
  %127 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.vivid_dev*, %struct.vivid_dev** %2, align 8
  %130 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %129, i32 0, i32 9
  %131 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.vivid_dev*, %struct.vivid_dev** %2, align 8
  %134 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %133, i32 0, i32 9
  %135 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.vivid_dev*, %struct.vivid_dev** %2, align 8
  %138 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %137, i32 0, i32 9
  %139 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = call i32 @dprintk(%struct.vivid_dev* %92, i32 1, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str, i64 0, i64 0), i32 %96, i32 %100, i64 %104, i64 %108, i32 %112, i32 %116, i64 %120, i64 %124, i32 %128, i32 %132, i64 %136, i64 %140)
  %142 = call i32 @v4l2_rect_intersect(%struct.v4l2_rect* %4, %struct.v4l2_rect* %3, %struct.v4l2_rect* %4)
  %143 = load %struct.vivid_dev*, %struct.vivid_dev** %2, align 8
  %144 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %143, i32 0, i32 6
  %145 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = load %struct.vivid_dev*, %struct.vivid_dev** %2, align 8
  %148 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %147, i32 0, i32 7
  %149 = load i64, i64* %148, align 8
  %150 = sub nsw i64 %146, %149
  %151 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %4, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = add nsw i64 %152, %150
  store i64 %153, i64* %151, align 8
  %154 = load %struct.vivid_dev*, %struct.vivid_dev** %2, align 8
  %155 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %154, i32 0, i32 6
  %156 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = load %struct.vivid_dev*, %struct.vivid_dev** %2, align 8
  %159 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %158, i32 0, i32 5
  %160 = load i64, i64* %159, align 8
  %161 = sub nsw i64 %157, %160
  %162 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %4, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = add nsw i64 %163, %161
  store i64 %164, i64* %162, align 8
  %165 = load %struct.vivid_dev*, %struct.vivid_dev** %2, align 8
  %166 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %165, i32 0, i32 1
  %167 = load %struct.vivid_dev*, %struct.vivid_dev** %2, align 8
  %168 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %167, i32 0, i32 8
  %169 = call i32 @v4l2_rect_intersect(%struct.v4l2_rect* %166, %struct.v4l2_rect* %4, %struct.v4l2_rect* %168)
  %170 = load %struct.vivid_dev*, %struct.vivid_dev** %2, align 8
  %171 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %170, i32 0, i32 2
  %172 = load %struct.vivid_dev*, %struct.vivid_dev** %2, align 8
  %173 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %172, i32 0, i32 1
  %174 = bitcast %struct.v4l2_rect* %171 to i8*
  %175 = bitcast %struct.v4l2_rect* %173 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %174, i8* align 8 %175, i64 48, i1 false)
  %176 = load %struct.vivid_dev*, %struct.vivid_dev** %2, align 8
  %177 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %176, i32 0, i32 6
  %178 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %177, i32 0, i32 1
  %179 = load i64, i64* %178, align 8
  %180 = load %struct.vivid_dev*, %struct.vivid_dev** %2, align 8
  %181 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %180, i32 0, i32 7
  %182 = load i64, i64* %181, align 8
  %183 = sub nsw i64 %179, %182
  %184 = load %struct.vivid_dev*, %struct.vivid_dev** %2, align 8
  %185 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %184, i32 0, i32 2
  %186 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %185, i32 0, i32 1
  %187 = load i64, i64* %186, align 8
  %188 = sub nsw i64 %187, %183
  store i64 %188, i64* %186, align 8
  %189 = load %struct.vivid_dev*, %struct.vivid_dev** %2, align 8
  %190 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %189, i32 0, i32 6
  %191 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = load %struct.vivid_dev*, %struct.vivid_dev** %2, align 8
  %194 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %193, i32 0, i32 5
  %195 = load i64, i64* %194, align 8
  %196 = sub nsw i64 %192, %195
  %197 = load %struct.vivid_dev*, %struct.vivid_dev** %2, align 8
  %198 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %197, i32 0, i32 2
  %199 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = sub nsw i64 %200, %196
  store i64 %201, i64* %199, align 8
  %202 = load %struct.vivid_dev*, %struct.vivid_dev** %2, align 8
  %203 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %202, i32 0, i32 0
  %204 = load %struct.vivid_dev*, %struct.vivid_dev** %2, align 8
  %205 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %204, i32 0, i32 1
  %206 = bitcast %struct.v4l2_rect* %203 to i8*
  %207 = bitcast %struct.v4l2_rect* %205 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %206, i8* align 8 %207, i64 48, i1 false)
  %208 = load %struct.vivid_dev*, %struct.vivid_dev** %2, align 8
  %209 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %208, i32 0, i32 0
  %210 = load %struct.vivid_dev*, %struct.vivid_dev** %2, align 8
  %211 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %210, i32 0, i32 4
  %212 = load %struct.vivid_dev*, %struct.vivid_dev** %2, align 8
  %213 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %212, i32 0, i32 3
  %214 = call i32 @v4l2_rect_scale(%struct.v4l2_rect* %209, %struct.v4l2_rect* %211, %struct.TYPE_2__* %213)
  %215 = load %struct.vivid_dev*, %struct.vivid_dev** %2, align 8
  %216 = load %struct.vivid_dev*, %struct.vivid_dev** %2, align 8
  %217 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %216, i32 0, i32 2
  %218 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %217, i32 0, i32 3
  %219 = load i32, i32* %218, align 4
  %220 = load %struct.vivid_dev*, %struct.vivid_dev** %2, align 8
  %221 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %220, i32 0, i32 2
  %222 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %221, i32 0, i32 2
  %223 = load i32, i32* %222, align 8
  %224 = load %struct.vivid_dev*, %struct.vivid_dev** %2, align 8
  %225 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %224, i32 0, i32 2
  %226 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %225, i32 0, i32 1
  %227 = load i64, i64* %226, align 8
  %228 = load %struct.vivid_dev*, %struct.vivid_dev** %2, align 8
  %229 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %228, i32 0, i32 2
  %230 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %229, i32 0, i32 0
  %231 = load i64, i64* %230, align 8
  %232 = load %struct.vivid_dev*, %struct.vivid_dev** %2, align 8
  %233 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %232, i32 0, i32 1
  %234 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %233, i32 0, i32 3
  %235 = load i32, i32* %234, align 4
  %236 = load %struct.vivid_dev*, %struct.vivid_dev** %2, align 8
  %237 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %236, i32 0, i32 1
  %238 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %237, i32 0, i32 2
  %239 = load i32, i32* %238, align 8
  %240 = load %struct.vivid_dev*, %struct.vivid_dev** %2, align 8
  %241 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %240, i32 0, i32 1
  %242 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %241, i32 0, i32 1
  %243 = load i64, i64* %242, align 8
  %244 = load %struct.vivid_dev*, %struct.vivid_dev** %2, align 8
  %245 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %244, i32 0, i32 1
  %246 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %245, i32 0, i32 0
  %247 = load i64, i64* %246, align 8
  %248 = load %struct.vivid_dev*, %struct.vivid_dev** %2, align 8
  %249 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %248, i32 0, i32 0
  %250 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %249, i32 0, i32 3
  %251 = load i32, i32* %250, align 4
  %252 = load %struct.vivid_dev*, %struct.vivid_dev** %2, align 8
  %253 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %252, i32 0, i32 0
  %254 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %253, i32 0, i32 2
  %255 = load i32, i32* %254, align 8
  %256 = load %struct.vivid_dev*, %struct.vivid_dev** %2, align 8
  %257 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %256, i32 0, i32 0
  %258 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %257, i32 0, i32 1
  %259 = load i64, i64* %258, align 8
  %260 = load %struct.vivid_dev*, %struct.vivid_dev** %2, align 8
  %261 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %260, i32 0, i32 0
  %262 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %261, i32 0, i32 0
  %263 = load i64, i64* %262, align 8
  %264 = call i32 @dprintk(%struct.vivid_dev* %215, i32 1, i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.1, i64 0, i64 0), i32 %219, i32 %223, i64 %227, i64 %231, i32 %235, i32 %239, i64 %243, i64 %247, i32 %251, i32 %255, i64 %259, i64 %263)
  ret void
}

declare dso_local i32 @v4l2_rect_intersect(%struct.v4l2_rect*, %struct.v4l2_rect*, %struct.v4l2_rect*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @v4l2_rect_scale(%struct.v4l2_rect*, %struct.v4l2_rect*, %struct.TYPE_2__*) #1

declare dso_local i32 @dprintk(%struct.vivid_dev*, i32, i8*, i32, i32, i64, i64, i32, i32, i64, i64, i32, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
