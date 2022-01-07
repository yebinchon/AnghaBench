; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_dec.c_s5p_mfc_queue_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_dec.c_s5p_mfc_queue_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_queue = type { i32, i32 }
%struct.device = type { i32 }
%struct.s5p_mfc_ctx = type { i64, i32, i32, i32, i32, %struct.s5p_mfc_dev* }
%struct.s5p_mfc_dev = type { %struct.device** }

@MFCINST_INIT = common dso_local global i64 0, align 8
@V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE = common dso_local global i32 0, align 4
@MFC_MAX_BUFFERS = common dso_local global i32 0, align 4
@MFCINST_HEAD_PARSED = common dso_local global i64 0, align 8
@V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE = common dso_local global i32 0, align 4
@MFC_MAX_EXTRA_DPB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"State seems invalid. State = %d, vq->type = %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Buffer count=%d, plane count=%d\0A\00", align 1
@BANK_L_CTX = common dso_local global i64 0, align 8
@BANK_R_CTX = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [68 x i8] c"This video node is dedicated to decoding. Decoding not initialized\0A\00", align 1
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
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.s5p_mfc_ctx* @fh_to_ctx(i32 %16)
  store %struct.s5p_mfc_ctx* %17, %struct.s5p_mfc_ctx** %12, align 8
  %18 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %12, align 8
  %19 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %18, i32 0, i32 5
  %20 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %19, align 8
  store %struct.s5p_mfc_dev* %20, %struct.s5p_mfc_dev** %13, align 8
  %21 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %12, align 8
  %22 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @MFCINST_INIT, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %48

26:                                               ; preds = %5
  %27 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %28 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %48

32:                                               ; preds = %26
  %33 = load i32*, i32** %9, align 8
  store i32 1, i32* %33, align 4
  %34 = load i32*, i32** %8, align 8
  %35 = load i32, i32* %34, align 4
  %36 = icmp ult i32 %35, 1
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i32*, i32** %8, align 8
  store i32 1, i32* %38, align 4
  br label %39

39:                                               ; preds = %37, %32
  %40 = load i32*, i32** %8, align 8
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @MFC_MAX_BUFFERS, align 4
  %43 = icmp ugt i32 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load i32, i32* @MFC_MAX_BUFFERS, align 4
  %46 = load i32*, i32** %8, align 8
  store i32 %45, i32* %46, align 4
  br label %47

47:                                               ; preds = %44, %39
  br label %109

48:                                               ; preds = %26, %5
  %49 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %12, align 8
  %50 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @MFCINST_HEAD_PARSED, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %98

54:                                               ; preds = %48
  %55 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %56 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %98

60:                                               ; preds = %54
  %61 = load i32*, i32** %9, align 8
  store i32 2, i32* %61, align 4
  %62 = load i32*, i32** %8, align 8
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %12, align 8
  %65 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = icmp ult i32 %63, %66
  br i1 %67, label %68, label %73

68:                                               ; preds = %60
  %69 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %12, align 8
  %70 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load i32*, i32** %8, align 8
  store i32 %71, i32* %72, align 4
  br label %73

73:                                               ; preds = %68, %60
  %74 = load i32*, i32** %8, align 8
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %12, align 8
  %77 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @MFC_MAX_EXTRA_DPB, align 4
  %80 = add i32 %78, %79
  %81 = icmp ugt i32 %75, %80
  br i1 %81, label %82, label %89

82:                                               ; preds = %73
  %83 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %12, align 8
  %84 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @MFC_MAX_EXTRA_DPB, align 4
  %87 = add i32 %85, %86
  %88 = load i32*, i32** %8, align 8
  store i32 %87, i32* %88, align 4
  br label %89

89:                                               ; preds = %82, %73
  %90 = load i32*, i32** %8, align 8
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @MFC_MAX_BUFFERS, align 4
  %93 = icmp ugt i32 %91, %92
  br i1 %93, label %94, label %97

94:                                               ; preds = %89
  %95 = load i32, i32* @MFC_MAX_BUFFERS, align 4
  %96 = load i32*, i32** %8, align 8
  store i32 %95, i32* %96, align 4
  br label %97

97:                                               ; preds = %94, %89
  br label %108

98:                                               ; preds = %54, %48
  %99 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %12, align 8
  %100 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %103 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 (i8*, ...) @mfc_err(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i64 %101, i32 %104)
  %106 = load i32, i32* @EINVAL, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %6, align 4
  br label %207

108:                                              ; preds = %97
  br label %109

109:                                              ; preds = %108, %47
  %110 = load i32*, i32** %8, align 8
  %111 = load i32, i32* %110, align 4
  %112 = load i32*, i32** %9, align 8
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @mfc_debug(i32 2, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %111, i32 %113)
  %115 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %12, align 8
  %116 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @MFCINST_HEAD_PARSED, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %173

120:                                              ; preds = %109
  %121 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %122 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE, align 4
  %125 = icmp eq i32 %123, %124
  br i1 %125, label %126, label %173

126:                                              ; preds = %120
  %127 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %12, align 8
  %128 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = load i32*, i32** %10, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 0
  store i32 %129, i32* %131, align 4
  %132 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %12, align 8
  %133 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 8
  %135 = load i32*, i32** %10, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 1
  store i32 %134, i32* %136, align 4
  %137 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %13, align 8
  %138 = call i64 @IS_MFCV6_PLUS(%struct.s5p_mfc_dev* %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %151

140:                                              ; preds = %126
  %141 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %12, align 8
  %142 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %141, i32 0, i32 5
  %143 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %142, align 8
  %144 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %143, i32 0, i32 0
  %145 = load %struct.device**, %struct.device*** %144, align 8
  %146 = load i64, i64* @BANK_L_CTX, align 8
  %147 = getelementptr inbounds %struct.device*, %struct.device** %145, i64 %146
  %148 = load %struct.device*, %struct.device** %147, align 8
  %149 = load %struct.device**, %struct.device*** %11, align 8
  %150 = getelementptr inbounds %struct.device*, %struct.device** %149, i64 0
  store %struct.device* %148, %struct.device** %150, align 8
  br label %162

151:                                              ; preds = %126
  %152 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %12, align 8
  %153 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %152, i32 0, i32 5
  %154 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %153, align 8
  %155 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %154, i32 0, i32 0
  %156 = load %struct.device**, %struct.device*** %155, align 8
  %157 = load i64, i64* @BANK_R_CTX, align 8
  %158 = getelementptr inbounds %struct.device*, %struct.device** %156, i64 %157
  %159 = load %struct.device*, %struct.device** %158, align 8
  %160 = load %struct.device**, %struct.device*** %11, align 8
  %161 = getelementptr inbounds %struct.device*, %struct.device** %160, i64 0
  store %struct.device* %159, %struct.device** %161, align 8
  br label %162

162:                                              ; preds = %151, %140
  %163 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %12, align 8
  %164 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %163, i32 0, i32 5
  %165 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %164, align 8
  %166 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %165, i32 0, i32 0
  %167 = load %struct.device**, %struct.device*** %166, align 8
  %168 = load i64, i64* @BANK_L_CTX, align 8
  %169 = getelementptr inbounds %struct.device*, %struct.device** %167, i64 %168
  %170 = load %struct.device*, %struct.device** %169, align 8
  %171 = load %struct.device**, %struct.device*** %11, align 8
  %172 = getelementptr inbounds %struct.device*, %struct.device** %171, i64 1
  store %struct.device* %170, %struct.device** %172, align 8
  br label %206

173:                                              ; preds = %120, %109
  %174 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %175 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE, align 4
  %178 = icmp eq i32 %176, %177
  br i1 %178, label %179, label %201

179:                                              ; preds = %173
  %180 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %12, align 8
  %181 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = load i64, i64* @MFCINST_INIT, align 8
  %184 = icmp eq i64 %182, %183
  br i1 %184, label %185, label %201

185:                                              ; preds = %179
  %186 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %12, align 8
  %187 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %186, i32 0, i32 4
  %188 = load i32, i32* %187, align 4
  %189 = load i32*, i32** %10, align 8
  %190 = getelementptr inbounds i32, i32* %189, i64 0
  store i32 %188, i32* %190, align 4
  %191 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %12, align 8
  %192 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %191, i32 0, i32 5
  %193 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %192, align 8
  %194 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %193, i32 0, i32 0
  %195 = load %struct.device**, %struct.device*** %194, align 8
  %196 = load i64, i64* @BANK_L_CTX, align 8
  %197 = getelementptr inbounds %struct.device*, %struct.device** %195, i64 %196
  %198 = load %struct.device*, %struct.device** %197, align 8
  %199 = load %struct.device**, %struct.device*** %11, align 8
  %200 = getelementptr inbounds %struct.device*, %struct.device** %199, i64 0
  store %struct.device* %198, %struct.device** %200, align 8
  br label %205

201:                                              ; preds = %179, %173
  %202 = call i32 (i8*, ...) @mfc_err(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.2, i64 0, i64 0))
  %203 = load i32, i32* @EINVAL, align 4
  %204 = sub nsw i32 0, %203
  store i32 %204, i32* %6, align 4
  br label %207

205:                                              ; preds = %185
  br label %206

206:                                              ; preds = %205, %162
  store i32 0, i32* %6, align 4
  br label %207

207:                                              ; preds = %206, %201, %98
  %208 = load i32, i32* %6, align 4
  ret i32 %208
}

declare dso_local %struct.s5p_mfc_ctx* @fh_to_ctx(i32) #1

declare dso_local i32 @mfc_err(i8*, ...) #1

declare dso_local i32 @mfc_debug(i32, i8*, i32, i32) #1

declare dso_local i64 @IS_MFCV6_PLUS(%struct.s5p_mfc_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
