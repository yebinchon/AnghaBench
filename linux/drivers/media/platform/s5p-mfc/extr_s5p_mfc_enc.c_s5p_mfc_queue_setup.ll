; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_enc.c_s5p_mfc_queue_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_enc.c_s5p_mfc_queue_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_queue = type { i64, i32 }
%struct.device = type { i32 }
%struct.s5p_mfc_ctx = type { i64, i32, i32, i32, %struct.s5p_mfc_dev*, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.s5p_mfc_dev = type { %struct.device** }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE = common dso_local global i64 0, align 8
@MFCINST_GOT_INST = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"invalid state: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MFC_ENC_CAP_PLANE_COUNT = common dso_local global i32 0, align 4
@MFC_MAX_BUFFERS = common dso_local global i32 0, align 4
@BANK_L_CTX = common dso_local global i64 0, align 8
@V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE = common dso_local global i64 0, align 8
@MFC_ENC_OUT_PLANE_COUNT = common dso_local global i32 0, align 4
@BANK_R_CTX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"invalid queue type: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vb2_queue*, i32*, i32*, i32*, %struct.device**)* @s5p_mfc_queue_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5p_mfc_queue_setup(%struct.vb2_queue* %0, i32* %1, i32* %2, i32* %3, %struct.device** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.vb2_queue*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.device**, align 8
  %12 = alloca %struct.s5p_mfc_ctx*, align 8
  %13 = alloca %struct.s5p_mfc_dev*, align 8
  store %struct.vb2_queue* %0, %struct.vb2_queue** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store %struct.device** %4, %struct.device*** %11, align 8
  %14 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %15 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call %struct.s5p_mfc_ctx* @fh_to_ctx(i32 %16)
  store %struct.s5p_mfc_ctx* %17, %struct.s5p_mfc_ctx** %12, align 8
  %18 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %12, align 8
  %19 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %18, i32 0, i32 4
  %20 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %19, align 8
  store %struct.s5p_mfc_dev* %20, %struct.s5p_mfc_dev** %13, align 8
  %21 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %22 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %84

26:                                               ; preds = %5
  %27 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %12, align 8
  %28 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @MFCINST_GOT_INST, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %26
  %33 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %12, align 8
  %34 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @mfc_err(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i64 %35)
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %6, align 4
  br label %185

39:                                               ; preds = %26
  %40 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %12, align 8
  %41 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %40, i32 0, i32 6
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = icmp ne %struct.TYPE_3__* %42, null
  br i1 %43, label %44, label %51

44:                                               ; preds = %39
  %45 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %12, align 8
  %46 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %45, i32 0, i32 6
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32*, i32** %9, align 8
  store i32 %49, i32* %50, align 4
  br label %54

51:                                               ; preds = %39
  %52 = load i32, i32* @MFC_ENC_CAP_PLANE_COUNT, align 4
  %53 = load i32*, i32** %9, align 8
  store i32 %52, i32* %53, align 4
  br label %54

54:                                               ; preds = %51, %44
  %55 = load i32*, i32** %8, align 8
  %56 = load i32, i32* %55, align 4
  %57 = icmp ult i32 %56, 1
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = load i32*, i32** %8, align 8
  store i32 1, i32* %59, align 4
  br label %60

60:                                               ; preds = %58, %54
  %61 = load i32*, i32** %8, align 8
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @MFC_MAX_BUFFERS, align 4
  %64 = icmp ugt i32 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = load i32, i32* @MFC_MAX_BUFFERS, align 4
  %67 = load i32*, i32** %8, align 8
  store i32 %66, i32* %67, align 4
  br label %68

68:                                               ; preds = %65, %60
  %69 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %12, align 8
  %70 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load i32*, i32** %10, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  store i32 %71, i32* %73, align 4
  %74 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %12, align 8
  %75 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %74, i32 0, i32 4
  %76 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %75, align 8
  %77 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %76, i32 0, i32 0
  %78 = load %struct.device**, %struct.device*** %77, align 8
  %79 = load i64, i64* @BANK_L_CTX, align 8
  %80 = getelementptr inbounds %struct.device*, %struct.device** %78, i64 %79
  %81 = load %struct.device*, %struct.device** %80, align 8
  %82 = load %struct.device**, %struct.device*** %11, align 8
  %83 = getelementptr inbounds %struct.device*, %struct.device** %82, i64 0
  store %struct.device* %81, %struct.device** %83, align 8
  br label %184

84:                                               ; preds = %5
  %85 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %86 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %176

90:                                               ; preds = %84
  %91 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %12, align 8
  %92 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %91, i32 0, i32 5
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %92, align 8
  %94 = icmp ne %struct.TYPE_4__* %93, null
  br i1 %94, label %95, label %102

95:                                               ; preds = %90
  %96 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %12, align 8
  %97 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %96, i32 0, i32 5
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32*, i32** %9, align 8
  store i32 %100, i32* %101, align 4
  br label %105

102:                                              ; preds = %90
  %103 = load i32, i32* @MFC_ENC_OUT_PLANE_COUNT, align 4
  %104 = load i32*, i32** %9, align 8
  store i32 %103, i32* %104, align 4
  br label %105

105:                                              ; preds = %102, %95
  %106 = load i32*, i32** %8, align 8
  %107 = load i32, i32* %106, align 4
  %108 = icmp ult i32 %107, 1
  br i1 %108, label %109, label %111

109:                                              ; preds = %105
  %110 = load i32*, i32** %8, align 8
  store i32 1, i32* %110, align 4
  br label %111

111:                                              ; preds = %109, %105
  %112 = load i32*, i32** %8, align 8
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @MFC_MAX_BUFFERS, align 4
  %115 = icmp ugt i32 %113, %114
  br i1 %115, label %116, label %119

116:                                              ; preds = %111
  %117 = load i32, i32* @MFC_MAX_BUFFERS, align 4
  %118 = load i32*, i32** %8, align 8
  store i32 %117, i32* %118, align 4
  br label %119

119:                                              ; preds = %116, %111
  %120 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %12, align 8
  %121 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = load i32*, i32** %10, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 0
  store i32 %122, i32* %124, align 4
  %125 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %12, align 8
  %126 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 8
  %128 = load i32*, i32** %10, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 1
  store i32 %127, i32* %129, align 4
  %130 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %13, align 8
  %131 = call i64 @IS_MFCV6_PLUS(%struct.s5p_mfc_dev* %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %154

133:                                              ; preds = %119
  %134 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %12, align 8
  %135 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %134, i32 0, i32 4
  %136 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %135, align 8
  %137 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %136, i32 0, i32 0
  %138 = load %struct.device**, %struct.device*** %137, align 8
  %139 = load i64, i64* @BANK_L_CTX, align 8
  %140 = getelementptr inbounds %struct.device*, %struct.device** %138, i64 %139
  %141 = load %struct.device*, %struct.device** %140, align 8
  %142 = load %struct.device**, %struct.device*** %11, align 8
  %143 = getelementptr inbounds %struct.device*, %struct.device** %142, i64 0
  store %struct.device* %141, %struct.device** %143, align 8
  %144 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %12, align 8
  %145 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %144, i32 0, i32 4
  %146 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %145, align 8
  %147 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %146, i32 0, i32 0
  %148 = load %struct.device**, %struct.device*** %147, align 8
  %149 = load i64, i64* @BANK_L_CTX, align 8
  %150 = getelementptr inbounds %struct.device*, %struct.device** %148, i64 %149
  %151 = load %struct.device*, %struct.device** %150, align 8
  %152 = load %struct.device**, %struct.device*** %11, align 8
  %153 = getelementptr inbounds %struct.device*, %struct.device** %152, i64 1
  store %struct.device* %151, %struct.device** %153, align 8
  br label %175

154:                                              ; preds = %119
  %155 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %12, align 8
  %156 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %155, i32 0, i32 4
  %157 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %156, align 8
  %158 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %157, i32 0, i32 0
  %159 = load %struct.device**, %struct.device*** %158, align 8
  %160 = load i64, i64* @BANK_R_CTX, align 8
  %161 = getelementptr inbounds %struct.device*, %struct.device** %159, i64 %160
  %162 = load %struct.device*, %struct.device** %161, align 8
  %163 = load %struct.device**, %struct.device*** %11, align 8
  %164 = getelementptr inbounds %struct.device*, %struct.device** %163, i64 0
  store %struct.device* %162, %struct.device** %164, align 8
  %165 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %12, align 8
  %166 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %165, i32 0, i32 4
  %167 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %166, align 8
  %168 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %167, i32 0, i32 0
  %169 = load %struct.device**, %struct.device*** %168, align 8
  %170 = load i64, i64* @BANK_R_CTX, align 8
  %171 = getelementptr inbounds %struct.device*, %struct.device** %169, i64 %170
  %172 = load %struct.device*, %struct.device** %171, align 8
  %173 = load %struct.device**, %struct.device*** %11, align 8
  %174 = getelementptr inbounds %struct.device*, %struct.device** %173, i64 1
  store %struct.device* %172, %struct.device** %174, align 8
  br label %175

175:                                              ; preds = %154, %133
  br label %183

176:                                              ; preds = %84
  %177 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %178 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = call i32 @mfc_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i64 %179)
  %181 = load i32, i32* @EINVAL, align 4
  %182 = sub nsw i32 0, %181
  store i32 %182, i32* %6, align 4
  br label %185

183:                                              ; preds = %175
  br label %184

184:                                              ; preds = %183, %68
  store i32 0, i32* %6, align 4
  br label %185

185:                                              ; preds = %184, %176, %32
  %186 = load i32, i32* %6, align 4
  ret i32 %186
}

declare dso_local %struct.s5p_mfc_ctx* @fh_to_ctx(i32) #1

declare dso_local i32 @mfc_err(i8*, i64) #1

declare dso_local i64 @IS_MFCV6_PLUS(%struct.s5p_mfc_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
