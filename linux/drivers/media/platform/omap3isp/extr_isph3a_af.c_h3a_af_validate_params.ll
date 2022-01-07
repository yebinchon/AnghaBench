; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_isph3a_af.c_h3a_af_validate_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_isph3a_af.c_h3a_af_validate_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ispstat = type { i32 }
%struct.omap3isp_h3a_af_config = type { i64, %struct.omap3isp_h3a_af_iir, %struct.omap3isp_h3a_af_paxel }
%struct.omap3isp_h3a_af_iir = type { i64, i64*, i64* }
%struct.omap3isp_h3a_af_paxel = type { i32, i32, i32, i32, i32, i64 }

@OMAP3ISP_AF_PAXEL_HORIZONTAL_COUNT_MIN = common dso_local global i32 0, align 4
@OMAP3ISP_AF_PAXEL_HORIZONTAL_COUNT_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@OMAP3ISP_AF_PAXEL_VERTICAL_COUNT_MIN = common dso_local global i32 0, align 4
@OMAP3ISP_AF_PAXEL_VERTICAL_COUNT_MAX = common dso_local global i32 0, align 4
@OMAP3ISP_AF_PAXEL_HEIGHT_MIN = common dso_local global i32 0, align 4
@OMAP3ISP_AF_PAXEL_HEIGHT_MAX = common dso_local global i32 0, align 4
@OMAP3ISP_AF_PAXEL_WIDTH_MIN = common dso_local global i32 0, align 4
@OMAP3ISP_AF_PAXEL_WIDTH_MAX = common dso_local global i32 0, align 4
@OMAP3ISP_AF_PAXEL_INCREMENT_MIN = common dso_local global i32 0, align 4
@OMAP3ISP_AF_PAXEL_INCREMENT_MAX = common dso_local global i32 0, align 4
@OMAP3ISP_AF_PAXEL_HZSTART_MIN = common dso_local global i32 0, align 4
@OMAP3ISP_AF_PAXEL_HZSTART_MAX = common dso_local global i32 0, align 4
@OMAP3ISP_AF_NUM_COEF = common dso_local global i32 0, align 4
@OMAP3ISP_AF_COEF_MAX = common dso_local global i64 0, align 8
@OMAP3ISP_AF_IIRSH_MIN = common dso_local global i32 0, align 4
@OMAP3ISP_AF_IIRSH_MAX = common dso_local global i32 0, align 4
@OMAP3ISP_AF_MAX_BUF_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ispstat*, i8*)* @h3a_af_validate_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @h3a_af_validate_params(%struct.ispstat* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ispstat*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.omap3isp_h3a_af_config*, align 8
  %7 = alloca %struct.omap3isp_h3a_af_paxel*, align 8
  %8 = alloca %struct.omap3isp_h3a_af_iir*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.ispstat* %0, %struct.ispstat** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.omap3isp_h3a_af_config*
  store %struct.omap3isp_h3a_af_config* %12, %struct.omap3isp_h3a_af_config** %6, align 8
  %13 = load %struct.omap3isp_h3a_af_config*, %struct.omap3isp_h3a_af_config** %6, align 8
  %14 = getelementptr inbounds %struct.omap3isp_h3a_af_config, %struct.omap3isp_h3a_af_config* %13, i32 0, i32 2
  store %struct.omap3isp_h3a_af_paxel* %14, %struct.omap3isp_h3a_af_paxel** %7, align 8
  %15 = load %struct.omap3isp_h3a_af_config*, %struct.omap3isp_h3a_af_config** %6, align 8
  %16 = getelementptr inbounds %struct.omap3isp_h3a_af_config, %struct.omap3isp_h3a_af_config* %15, i32 0, i32 1
  store %struct.omap3isp_h3a_af_iir* %16, %struct.omap3isp_h3a_af_iir** %8, align 8
  %17 = load %struct.omap3isp_h3a_af_paxel*, %struct.omap3isp_h3a_af_paxel** %7, align 8
  %18 = getelementptr inbounds %struct.omap3isp_h3a_af_paxel, %struct.omap3isp_h3a_af_paxel* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @OMAP3ISP_AF_PAXEL_HORIZONTAL_COUNT_MIN, align 4
  %21 = load i32, i32* @OMAP3ISP_AF_PAXEL_HORIZONTAL_COUNT_MAX, align 4
  %22 = call i64 @IS_OUT_OF_BOUNDS(i32 %19, i32 %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %201

27:                                               ; preds = %2
  %28 = load %struct.omap3isp_h3a_af_paxel*, %struct.omap3isp_h3a_af_paxel** %7, align 8
  %29 = getelementptr inbounds %struct.omap3isp_h3a_af_paxel, %struct.omap3isp_h3a_af_paxel* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @OMAP3ISP_AF_PAXEL_VERTICAL_COUNT_MIN, align 4
  %32 = load i32, i32* @OMAP3ISP_AF_PAXEL_VERTICAL_COUNT_MAX, align 4
  %33 = call i64 @IS_OUT_OF_BOUNDS(i32 %30, i32 %31, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %27
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %201

38:                                               ; preds = %27
  %39 = load %struct.omap3isp_h3a_af_paxel*, %struct.omap3isp_h3a_af_paxel** %7, align 8
  %40 = getelementptr inbounds %struct.omap3isp_h3a_af_paxel, %struct.omap3isp_h3a_af_paxel* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @OMAP3ISP_AF_PAXEL_HEIGHT_MIN, align 4
  %43 = load i32, i32* @OMAP3ISP_AF_PAXEL_HEIGHT_MAX, align 4
  %44 = call i64 @IS_OUT_OF_BOUNDS(i32 %41, i32 %42, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %38
  %47 = load %struct.omap3isp_h3a_af_paxel*, %struct.omap3isp_h3a_af_paxel** %7, align 8
  %48 = getelementptr inbounds %struct.omap3isp_h3a_af_paxel, %struct.omap3isp_h3a_af_paxel* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = srem i32 %49, 2
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %46, %38
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %201

55:                                               ; preds = %46
  %56 = load %struct.omap3isp_h3a_af_paxel*, %struct.omap3isp_h3a_af_paxel** %7, align 8
  %57 = getelementptr inbounds %struct.omap3isp_h3a_af_paxel, %struct.omap3isp_h3a_af_paxel* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @OMAP3ISP_AF_PAXEL_WIDTH_MIN, align 4
  %60 = load i32, i32* @OMAP3ISP_AF_PAXEL_WIDTH_MAX, align 4
  %61 = call i64 @IS_OUT_OF_BOUNDS(i32 %58, i32 %59, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %69, label %63

63:                                               ; preds = %55
  %64 = load %struct.omap3isp_h3a_af_paxel*, %struct.omap3isp_h3a_af_paxel** %7, align 8
  %65 = getelementptr inbounds %struct.omap3isp_h3a_af_paxel, %struct.omap3isp_h3a_af_paxel* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = srem i32 %66, 2
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %63, %55
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %3, align 4
  br label %201

72:                                               ; preds = %63
  %73 = load %struct.omap3isp_h3a_af_paxel*, %struct.omap3isp_h3a_af_paxel** %7, align 8
  %74 = getelementptr inbounds %struct.omap3isp_h3a_af_paxel, %struct.omap3isp_h3a_af_paxel* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @OMAP3ISP_AF_PAXEL_INCREMENT_MIN, align 4
  %77 = load i32, i32* @OMAP3ISP_AF_PAXEL_INCREMENT_MAX, align 4
  %78 = call i64 @IS_OUT_OF_BOUNDS(i32 %75, i32 %76, i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %86, label %80

80:                                               ; preds = %72
  %81 = load %struct.omap3isp_h3a_af_paxel*, %struct.omap3isp_h3a_af_paxel** %7, align 8
  %82 = getelementptr inbounds %struct.omap3isp_h3a_af_paxel, %struct.omap3isp_h3a_af_paxel* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 8
  %84 = srem i32 %83, 2
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %80, %72
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %3, align 4
  br label %201

89:                                               ; preds = %80
  %90 = load %struct.omap3isp_h3a_af_paxel*, %struct.omap3isp_h3a_af_paxel** %7, align 8
  %91 = getelementptr inbounds %struct.omap3isp_h3a_af_paxel, %struct.omap3isp_h3a_af_paxel* %90, i32 0, i32 5
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.omap3isp_h3a_af_iir*, %struct.omap3isp_h3a_af_iir** %8, align 8
  %94 = getelementptr inbounds %struct.omap3isp_h3a_af_iir, %struct.omap3isp_h3a_af_iir* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp slt i64 %92, %95
  br i1 %96, label %106, label %97

97:                                               ; preds = %89
  %98 = load %struct.omap3isp_h3a_af_paxel*, %struct.omap3isp_h3a_af_paxel** %7, align 8
  %99 = getelementptr inbounds %struct.omap3isp_h3a_af_paxel, %struct.omap3isp_h3a_af_paxel* %98, i32 0, i32 5
  %100 = load i64, i64* %99, align 8
  %101 = trunc i64 %100 to i32
  %102 = load i32, i32* @OMAP3ISP_AF_PAXEL_HZSTART_MIN, align 4
  %103 = load i32, i32* @OMAP3ISP_AF_PAXEL_HZSTART_MAX, align 4
  %104 = call i64 @IS_OUT_OF_BOUNDS(i32 %101, i32 %102, i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %97, %89
  %107 = load i32, i32* @EINVAL, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %3, align 4
  br label %201

109:                                              ; preds = %97
  store i32 0, i32* %9, align 4
  br label %110

110:                                              ; preds = %141, %109
  %111 = load i32, i32* %9, align 4
  %112 = load i32, i32* @OMAP3ISP_AF_NUM_COEF, align 4
  %113 = icmp slt i32 %111, %112
  br i1 %113, label %114, label %144

114:                                              ; preds = %110
  %115 = load %struct.omap3isp_h3a_af_iir*, %struct.omap3isp_h3a_af_iir** %8, align 8
  %116 = getelementptr inbounds %struct.omap3isp_h3a_af_iir, %struct.omap3isp_h3a_af_iir* %115, i32 0, i32 1
  %117 = load i64*, i64** %116, align 8
  %118 = load i32, i32* %9, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i64, i64* %117, i64 %119
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @OMAP3ISP_AF_COEF_MAX, align 8
  %123 = icmp sgt i64 %121, %122
  br i1 %123, label %124, label %127

124:                                              ; preds = %114
  %125 = load i32, i32* @EINVAL, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %3, align 4
  br label %201

127:                                              ; preds = %114
  %128 = load %struct.omap3isp_h3a_af_iir*, %struct.omap3isp_h3a_af_iir** %8, align 8
  %129 = getelementptr inbounds %struct.omap3isp_h3a_af_iir, %struct.omap3isp_h3a_af_iir* %128, i32 0, i32 2
  %130 = load i64*, i64** %129, align 8
  %131 = load i32, i32* %9, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i64, i64* %130, i64 %132
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @OMAP3ISP_AF_COEF_MAX, align 8
  %136 = icmp sgt i64 %134, %135
  br i1 %136, label %137, label %140

137:                                              ; preds = %127
  %138 = load i32, i32* @EINVAL, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %3, align 4
  br label %201

140:                                              ; preds = %127
  br label %141

141:                                              ; preds = %140
  %142 = load i32, i32* %9, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %9, align 4
  br label %110

144:                                              ; preds = %110
  %145 = load %struct.omap3isp_h3a_af_iir*, %struct.omap3isp_h3a_af_iir** %8, align 8
  %146 = getelementptr inbounds %struct.omap3isp_h3a_af_iir, %struct.omap3isp_h3a_af_iir* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = trunc i64 %147 to i32
  %149 = load i32, i32* @OMAP3ISP_AF_IIRSH_MIN, align 4
  %150 = load i32, i32* @OMAP3ISP_AF_IIRSH_MAX, align 4
  %151 = call i64 @IS_OUT_OF_BOUNDS(i32 %148, i32 %149, i32 %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %144
  %154 = load i32, i32* @EINVAL, align 4
  %155 = sub nsw i32 0, %154
  store i32 %155, i32* %3, align 4
  br label %201

156:                                              ; preds = %144
  %157 = load %struct.omap3isp_h3a_af_paxel*, %struct.omap3isp_h3a_af_paxel** %7, align 8
  %158 = getelementptr inbounds %struct.omap3isp_h3a_af_paxel, %struct.omap3isp_h3a_af_paxel* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.omap3isp_h3a_af_paxel*, %struct.omap3isp_h3a_af_paxel** %7, align 8
  %161 = getelementptr inbounds %struct.omap3isp_h3a_af_paxel, %struct.omap3isp_h3a_af_paxel* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = mul nsw i32 %159, %162
  %164 = icmp sgt i32 %163, 9
  br i1 %164, label %165, label %177

165:                                              ; preds = %156
  %166 = load %struct.omap3isp_h3a_af_paxel*, %struct.omap3isp_h3a_af_paxel** %7, align 8
  %167 = getelementptr inbounds %struct.omap3isp_h3a_af_paxel, %struct.omap3isp_h3a_af_paxel* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.omap3isp_h3a_af_paxel*, %struct.omap3isp_h3a_af_paxel** %7, align 8
  %170 = getelementptr inbounds %struct.omap3isp_h3a_af_paxel, %struct.omap3isp_h3a_af_paxel* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 8
  %172 = mul nsw i32 %168, %171
  %173 = icmp eq i32 %172, 12
  br i1 %173, label %174, label %177

174:                                              ; preds = %165
  %175 = load i32, i32* @EINVAL, align 4
  %176 = sub nsw i32 0, %175
  store i32 %176, i32* %3, align 4
  br label %201

177:                                              ; preds = %165, %156
  %178 = load %struct.omap3isp_h3a_af_config*, %struct.omap3isp_h3a_af_config** %6, align 8
  %179 = call i64 @h3a_af_get_buf_size(%struct.omap3isp_h3a_af_config* %178)
  store i64 %179, i64* %10, align 8
  %180 = load i64, i64* %10, align 8
  %181 = load %struct.omap3isp_h3a_af_config*, %struct.omap3isp_h3a_af_config** %6, align 8
  %182 = getelementptr inbounds %struct.omap3isp_h3a_af_config, %struct.omap3isp_h3a_af_config* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = icmp sgt i64 %180, %183
  br i1 %184, label %185, label %189

185:                                              ; preds = %177
  %186 = load i64, i64* %10, align 8
  %187 = load %struct.omap3isp_h3a_af_config*, %struct.omap3isp_h3a_af_config** %6, align 8
  %188 = getelementptr inbounds %struct.omap3isp_h3a_af_config, %struct.omap3isp_h3a_af_config* %187, i32 0, i32 0
  store i64 %186, i64* %188, align 8
  br label %200

189:                                              ; preds = %177
  %190 = load %struct.omap3isp_h3a_af_config*, %struct.omap3isp_h3a_af_config** %6, align 8
  %191 = getelementptr inbounds %struct.omap3isp_h3a_af_config, %struct.omap3isp_h3a_af_config* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = load i64, i64* @OMAP3ISP_AF_MAX_BUF_SIZE, align 8
  %194 = icmp sgt i64 %192, %193
  br i1 %194, label %195, label %199

195:                                              ; preds = %189
  %196 = load i64, i64* @OMAP3ISP_AF_MAX_BUF_SIZE, align 8
  %197 = load %struct.omap3isp_h3a_af_config*, %struct.omap3isp_h3a_af_config** %6, align 8
  %198 = getelementptr inbounds %struct.omap3isp_h3a_af_config, %struct.omap3isp_h3a_af_config* %197, i32 0, i32 0
  store i64 %196, i64* %198, align 8
  br label %199

199:                                              ; preds = %195, %189
  br label %200

200:                                              ; preds = %199, %185
  store i32 0, i32* %3, align 4
  br label %201

201:                                              ; preds = %200, %174, %153, %137, %124, %106, %86, %69, %52, %35, %24
  %202 = load i32, i32* %3, align 4
  ret i32 %202
}

declare dso_local i64 @IS_OUT_OF_BOUNDS(i32, i32, i32) #1

declare dso_local i64 @h3a_af_get_buf_size(%struct.omap3isp_h3a_af_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
