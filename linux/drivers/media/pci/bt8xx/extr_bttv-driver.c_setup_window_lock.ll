; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-driver.c_setup_window_lock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-driver.c_setup_window_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bttv_fh = type { %struct.TYPE_18__*, %struct.TYPE_17__, i32 }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_17__ = type { i32, i32, i32, %struct.TYPE_19__, %struct.v4l2_clip* }
%struct.TYPE_19__ = type { i32, i32 }
%struct.v4l2_clip = type { i32 }
%struct.bttv = type { %struct.TYPE_16__*, %struct.TYPE_15__, %struct.TYPE_12__ }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__, i32* }
%struct.TYPE_11__ = type { i32, i32 }
%struct.v4l2_window = type { i32, i32, %struct.TYPE_19__, i32 }
%struct.bttv_buffer = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@FORMAT_FLAGS_PACKED = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@RESOURCE_OVERLAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bttv_fh*, %struct.bttv*, %struct.v4l2_window*, i32)* @setup_window_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_window_lock(%struct.bttv_fh* %0, %struct.bttv* %1, %struct.v4l2_window* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bttv_fh*, align 8
  %7 = alloca %struct.bttv*, align 8
  %8 = alloca %struct.v4l2_window*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.v4l2_clip*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.bttv_buffer*, align 8
  store %struct.bttv_fh* %0, %struct.bttv_fh** %6, align 8
  store %struct.bttv* %1, %struct.bttv** %7, align 8
  store %struct.v4l2_window* %2, %struct.v4l2_window** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.v4l2_clip* null, %struct.v4l2_clip** %10, align 8
  store i32 0, i32* %13, align 4
  %15 = load %struct.bttv_fh*, %struct.bttv_fh** %6, align 8
  %16 = getelementptr inbounds %struct.bttv_fh, %struct.bttv_fh* %15, i32 0, i32 0
  %17 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %18 = icmp eq %struct.TYPE_18__* null, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %218

22:                                               ; preds = %4
  %23 = load %struct.bttv_fh*, %struct.bttv_fh** %6, align 8
  %24 = getelementptr inbounds %struct.bttv_fh, %struct.bttv_fh* %23, i32 0, i32 0
  %25 = load %struct.TYPE_18__*, %struct.TYPE_18__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @FORMAT_FLAGS_PACKED, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %22
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %5, align 4
  br label %218

34:                                               ; preds = %22
  %35 = load %struct.bttv_fh*, %struct.bttv_fh** %6, align 8
  %36 = load %struct.v4l2_window*, %struct.v4l2_window** %8, align 8
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @verify_window_lock(%struct.bttv_fh* %35, %struct.v4l2_window* %36, i32 %37, i32 %38)
  store i32 %39, i32* %13, align 4
  %40 = load i32, i32* %13, align 4
  %41 = icmp ne i32 0, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %34
  %43 = load i32, i32* %13, align 4
  store i32 %43, i32* %5, align 4
  br label %218

44:                                               ; preds = %34
  %45 = load %struct.v4l2_window*, %struct.v4l2_window** %8, align 8
  %46 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %11, align 4
  %49 = add nsw i32 %48, 4
  %50 = sext i32 %49 to i64
  %51 = mul i64 4, %50
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %12, align 4
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* @GFP_KERNEL, align 4
  %55 = call %struct.v4l2_clip* @kmalloc(i32 %53, i32 %54)
  store %struct.v4l2_clip* %55, %struct.v4l2_clip** %10, align 8
  %56 = load %struct.v4l2_clip*, %struct.v4l2_clip** %10, align 8
  %57 = icmp eq %struct.v4l2_clip* null, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %44
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %5, align 4
  br label %218

61:                                               ; preds = %44
  %62 = load i32, i32* %11, align 4
  %63 = icmp sgt i32 %62, 0
  br i1 %63, label %64, label %81

64:                                               ; preds = %61
  %65 = load %struct.v4l2_clip*, %struct.v4l2_clip** %10, align 8
  %66 = load %struct.v4l2_window*, %struct.v4l2_window** %8, align 8
  %67 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %11, align 4
  %70 = sext i32 %69 to i64
  %71 = mul i64 4, %70
  %72 = trunc i64 %71 to i32
  %73 = call i64 @copy_from_user(%struct.v4l2_clip* %65, i32 %68, i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %64
  %76 = load %struct.v4l2_clip*, %struct.v4l2_clip** %10, align 8
  %77 = call i32 @kfree(%struct.v4l2_clip* %76)
  %78 = load i32, i32* @EFAULT, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %5, align 4
  br label %218

80:                                               ; preds = %64
  br label %81

81:                                               ; preds = %80, %61
  %82 = load %struct.bttv*, %struct.bttv** %7, align 8
  %83 = getelementptr inbounds %struct.bttv, %struct.bttv* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = icmp ne i32* null, %85
  br i1 %86, label %87, label %103

87:                                               ; preds = %81
  %88 = load %struct.bttv*, %struct.bttv** %7, align 8
  %89 = getelementptr inbounds %struct.bttv, %struct.bttv* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.bttv*, %struct.bttv** %7, align 8
  %94 = getelementptr inbounds %struct.bttv, %struct.bttv* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.v4l2_window*, %struct.v4l2_window** %8, align 8
  %99 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %98, i32 0, i32 2
  %100 = load %struct.v4l2_clip*, %struct.v4l2_clip** %10, align 8
  %101 = load i32, i32* %11, align 4
  %102 = call i32 @btcx_screen_clips(i32 %92, i32 %97, %struct.TYPE_19__* %99, %struct.v4l2_clip* %100, i32 %101)
  store i32 %102, i32* %11, align 4
  br label %103

103:                                              ; preds = %87, %81
  %104 = load %struct.v4l2_clip*, %struct.v4l2_clip** %10, align 8
  %105 = load i32, i32* %11, align 4
  %106 = call i32 @btcx_sort_clips(%struct.v4l2_clip* %104, i32 %105)
  %107 = load %struct.bttv_fh*, %struct.bttv_fh** %6, align 8
  %108 = getelementptr inbounds %struct.bttv_fh, %struct.bttv_fh* %107, i32 0, i32 0
  %109 = load %struct.TYPE_18__*, %struct.TYPE_18__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  switch i32 %111, label %125 [
    i32 8, label %112
    i32 24, label %112
    i32 16, label %118
    i32 32, label %124
  ]

112:                                              ; preds = %103, %103
  %113 = load %struct.v4l2_window*, %struct.v4l2_window** %8, align 8
  %114 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %113, i32 0, i32 2
  %115 = load %struct.v4l2_clip*, %struct.v4l2_clip** %10, align 8
  %116 = load i32, i32* %11, align 4
  %117 = call i32 @btcx_align(%struct.TYPE_19__* %114, %struct.v4l2_clip* %115, i32 %116, i32 3)
  br label %127

118:                                              ; preds = %103
  %119 = load %struct.v4l2_window*, %struct.v4l2_window** %8, align 8
  %120 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %119, i32 0, i32 2
  %121 = load %struct.v4l2_clip*, %struct.v4l2_clip** %10, align 8
  %122 = load i32, i32* %11, align 4
  %123 = call i32 @btcx_align(%struct.TYPE_19__* %120, %struct.v4l2_clip* %121, i32 %122, i32 1)
  br label %127

124:                                              ; preds = %103
  br label %127

125:                                              ; preds = %103
  %126 = call i32 (...) @BUG()
  br label %127

127:                                              ; preds = %125, %124, %118, %112
  %128 = load %struct.bttv_fh*, %struct.bttv_fh** %6, align 8
  %129 = getelementptr inbounds %struct.bttv_fh, %struct.bttv_fh* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %129, i32 0, i32 4
  %131 = load %struct.v4l2_clip*, %struct.v4l2_clip** %130, align 8
  %132 = call i32 @kfree(%struct.v4l2_clip* %131)
  %133 = load %struct.v4l2_clip*, %struct.v4l2_clip** %10, align 8
  %134 = load %struct.bttv_fh*, %struct.bttv_fh** %6, align 8
  %135 = getelementptr inbounds %struct.bttv_fh, %struct.bttv_fh* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %135, i32 0, i32 4
  store %struct.v4l2_clip* %133, %struct.v4l2_clip** %136, align 8
  %137 = load i32, i32* %11, align 4
  %138 = load %struct.bttv_fh*, %struct.bttv_fh** %6, align 8
  %139 = getelementptr inbounds %struct.bttv_fh, %struct.bttv_fh* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %139, i32 0, i32 0
  store i32 %137, i32* %140, align 8
  %141 = load %struct.bttv_fh*, %struct.bttv_fh** %6, align 8
  %142 = getelementptr inbounds %struct.bttv_fh, %struct.bttv_fh* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %142, i32 0, i32 3
  %144 = load %struct.v4l2_window*, %struct.v4l2_window** %8, align 8
  %145 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %144, i32 0, i32 2
  %146 = bitcast %struct.TYPE_19__* %143 to i8*
  %147 = bitcast %struct.TYPE_19__* %145 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %146, i8* align 4 %147, i64 8, i1 false)
  %148 = load %struct.v4l2_window*, %struct.v4l2_window** %8, align 8
  %149 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.bttv_fh*, %struct.bttv_fh** %6, align 8
  %152 = getelementptr inbounds %struct.bttv_fh, %struct.bttv_fh* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %152, i32 0, i32 2
  store i32 %150, i32* %153, align 8
  %154 = load %struct.bttv_fh*, %struct.bttv_fh** %6, align 8
  %155 = getelementptr inbounds %struct.bttv_fh, %struct.bttv_fh* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %155, i32 0, i32 1
  store i32 1, i32* %156, align 4
  %157 = load %struct.v4l2_window*, %struct.v4l2_window** %8, align 8
  %158 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %157, i32 0, i32 2
  %159 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.bttv*, %struct.bttv** %7, align 8
  %162 = getelementptr inbounds %struct.bttv, %struct.bttv* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %164, i32 0, i32 1
  store i32 %160, i32* %165, align 4
  %166 = load %struct.v4l2_window*, %struct.v4l2_window** %8, align 8
  %167 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %166, i32 0, i32 2
  %168 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.bttv*, %struct.bttv** %7, align 8
  %171 = getelementptr inbounds %struct.bttv, %struct.bttv* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %172, i32 0, i32 1
  %174 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %173, i32 0, i32 0
  store i32 %169, i32* %174, align 4
  %175 = load %struct.v4l2_window*, %struct.v4l2_window** %8, align 8
  %176 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.bttv*, %struct.bttv** %7, align 8
  %179 = getelementptr inbounds %struct.bttv, %struct.bttv* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %180, i32 0, i32 0
  store i32 %177, i32* %181, align 8
  store i32 0, i32* %13, align 4
  %182 = load %struct.bttv_fh*, %struct.bttv_fh** %6, align 8
  %183 = load i32, i32* @RESOURCE_OVERLAY, align 4
  %184 = call i64 @check_btres(%struct.bttv_fh* %182, i32 %183)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %216

186:                                              ; preds = %127
  %187 = call %struct.bttv_buffer* @videobuf_sg_alloc(i32 4)
  store %struct.bttv_buffer* %187, %struct.bttv_buffer** %14, align 8
  %188 = load %struct.bttv*, %struct.bttv** %7, align 8
  %189 = getelementptr inbounds %struct.bttv, %struct.bttv* %188, i32 0, i32 0
  %190 = load %struct.TYPE_16__*, %struct.TYPE_16__** %189, align 8
  %191 = load %struct.bttv_fh*, %struct.bttv_fh** %6, align 8
  %192 = getelementptr inbounds %struct.bttv_fh, %struct.bttv_fh* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 8
  %194 = icmp ne i32 %193, 0
  %195 = xor i1 %194, true
  %196 = xor i1 %195, true
  %197 = zext i1 %196 to i32
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %190, i64 %198
  %200 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = load %struct.bttv_buffer*, %struct.bttv_buffer** %14, align 8
  %203 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %202, i32 0, i32 0
  store i32 %201, i32* %203, align 4
  %204 = load %struct.bttv*, %struct.bttv** %7, align 8
  %205 = load %struct.bttv_fh*, %struct.bttv_fh** %6, align 8
  %206 = getelementptr inbounds %struct.bttv_fh, %struct.bttv_fh* %205, i32 0, i32 1
  %207 = load %struct.bttv_fh*, %struct.bttv_fh** %6, align 8
  %208 = getelementptr inbounds %struct.bttv_fh, %struct.bttv_fh* %207, i32 0, i32 0
  %209 = load %struct.TYPE_18__*, %struct.TYPE_18__** %208, align 8
  %210 = load %struct.bttv_buffer*, %struct.bttv_buffer** %14, align 8
  %211 = call i32 @bttv_overlay_risc(%struct.bttv* %204, %struct.TYPE_17__* %206, %struct.TYPE_18__* %209, %struct.bttv_buffer* %210)
  %212 = load %struct.bttv*, %struct.bttv** %7, align 8
  %213 = load %struct.bttv_fh*, %struct.bttv_fh** %6, align 8
  %214 = load %struct.bttv_buffer*, %struct.bttv_buffer** %14, align 8
  %215 = call i32 @bttv_switch_overlay(%struct.bttv* %212, %struct.bttv_fh* %213, %struct.bttv_buffer* %214)
  store i32 %215, i32* %13, align 4
  br label %216

216:                                              ; preds = %186, %127
  %217 = load i32, i32* %13, align 4
  store i32 %217, i32* %5, align 4
  br label %218

218:                                              ; preds = %216, %75, %58, %42, %31, %19
  %219 = load i32, i32* %5, align 4
  ret i32 %219
}

declare dso_local i32 @verify_window_lock(%struct.bttv_fh*, %struct.v4l2_window*, i32, i32) #1

declare dso_local %struct.v4l2_clip* @kmalloc(i32, i32) #1

declare dso_local i64 @copy_from_user(%struct.v4l2_clip*, i32, i32) #1

declare dso_local i32 @kfree(%struct.v4l2_clip*) #1

declare dso_local i32 @btcx_screen_clips(i32, i32, %struct.TYPE_19__*, %struct.v4l2_clip*, i32) #1

declare dso_local i32 @btcx_sort_clips(%struct.v4l2_clip*, i32) #1

declare dso_local i32 @btcx_align(%struct.TYPE_19__*, %struct.v4l2_clip*, i32, i32) #1

declare dso_local i32 @BUG(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @check_btres(%struct.bttv_fh*, i32) #1

declare dso_local %struct.bttv_buffer* @videobuf_sg_alloc(i32) #1

declare dso_local i32 @bttv_overlay_risc(%struct.bttv*, %struct.TYPE_17__*, %struct.TYPE_18__*, %struct.bttv_buffer*) #1

declare dso_local i32 @bttv_switch_overlay(%struct.bttv*, %struct.bttv_fh*, %struct.bttv_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
