; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_isphist.c_hist_validate_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_isphist.c_hist_validate_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ispstat = type { i32 }
%struct.omap3isp_hist_config = type { i64, i32, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@OMAP3ISP_HIST_CFA_FOVEONX3 = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@OMAP3ISP_HIST_MIN_REGIONS = common dso_local global i32 0, align 4
@OMAP3ISP_HIST_MAX_REGIONS = common dso_local global i32 0, align 4
@ISPHIST_REG_START_END_MASK = common dso_local global i32 0, align 4
@OMAP3ISP_HIST_BINS_256 = common dso_local global i32 0, align 4
@OMAP3ISP_HIST_BINS_128 = common dso_local global i32 0, align 4
@OMAP3ISP_HIST_BINS_64 = common dso_local global i32 0, align 4
@OMAP3ISP_HIST_MAX_BUF_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ispstat*, i8*)* @hist_validate_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hist_validate_params(%struct.ispstat* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ispstat*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.omap3isp_hist_config*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.ispstat* %0, %struct.ispstat** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.omap3isp_hist_config*
  store %struct.omap3isp_hist_config* %10, %struct.omap3isp_hist_config** %6, align 8
  %11 = load %struct.omap3isp_hist_config*, %struct.omap3isp_hist_config** %6, align 8
  %12 = getelementptr inbounds %struct.omap3isp_hist_config, %struct.omap3isp_hist_config* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @OMAP3ISP_HIST_CFA_FOVEONX3, align 8
  %15 = icmp sgt i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %209

19:                                               ; preds = %2
  %20 = load %struct.omap3isp_hist_config*, %struct.omap3isp_hist_config** %6, align 8
  %21 = getelementptr inbounds %struct.omap3isp_hist_config, %struct.omap3isp_hist_config* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @OMAP3ISP_HIST_MIN_REGIONS, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %31, label %25

25:                                               ; preds = %19
  %26 = load %struct.omap3isp_hist_config*, %struct.omap3isp_hist_config** %6, align 8
  %27 = getelementptr inbounds %struct.omap3isp_hist_config, %struct.omap3isp_hist_config* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @OMAP3ISP_HIST_MAX_REGIONS, align 4
  %30 = icmp sgt i32 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %25, %19
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %209

34:                                               ; preds = %25
  store i32 0, i32* %7, align 4
  br label %35

35:                                               ; preds = %148, %34
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.omap3isp_hist_config*, %struct.omap3isp_hist_config** %6, align 8
  %38 = getelementptr inbounds %struct.omap3isp_hist_config, %struct.omap3isp_hist_config* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = icmp slt i32 %36, %39
  br i1 %40, label %41, label %151

41:                                               ; preds = %35
  %42 = load %struct.omap3isp_hist_config*, %struct.omap3isp_hist_config** %6, align 8
  %43 = getelementptr inbounds %struct.omap3isp_hist_config, %struct.omap3isp_hist_config* %42, i32 0, i32 4
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @ISPHIST_REG_START_END_MASK, align 4
  %51 = xor i32 %50, -1
  %52 = and i32 %49, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %41
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  br label %209

57:                                               ; preds = %41
  %58 = load %struct.omap3isp_hist_config*, %struct.omap3isp_hist_config** %6, align 8
  %59 = getelementptr inbounds %struct.omap3isp_hist_config, %struct.omap3isp_hist_config* %58, i32 0, i32 4
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = load i32, i32* %7, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @ISPHIST_REG_START_END_MASK, align 4
  %67 = xor i32 %66, -1
  %68 = and i32 %65, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %57
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %3, align 4
  br label %209

73:                                               ; preds = %57
  %74 = load %struct.omap3isp_hist_config*, %struct.omap3isp_hist_config** %6, align 8
  %75 = getelementptr inbounds %struct.omap3isp_hist_config, %struct.omap3isp_hist_config* %74, i32 0, i32 4
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = load i32, i32* %7, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @ISPHIST_REG_START_END_MASK, align 4
  %83 = xor i32 %82, -1
  %84 = and i32 %81, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %73
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %3, align 4
  br label %209

89:                                               ; preds = %73
  %90 = load %struct.omap3isp_hist_config*, %struct.omap3isp_hist_config** %6, align 8
  %91 = getelementptr inbounds %struct.omap3isp_hist_config, %struct.omap3isp_hist_config* %90, i32 0, i32 4
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = load i32, i32* %7, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @ISPHIST_REG_START_END_MASK, align 4
  %99 = xor i32 %98, -1
  %100 = and i32 %97, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %89
  %103 = load i32, i32* @EINVAL, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %3, align 4
  br label %209

105:                                              ; preds = %89
  %106 = load %struct.omap3isp_hist_config*, %struct.omap3isp_hist_config** %6, align 8
  %107 = getelementptr inbounds %struct.omap3isp_hist_config, %struct.omap3isp_hist_config* %106, i32 0, i32 4
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** %107, align 8
  %109 = load i32, i32* %7, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.omap3isp_hist_config*, %struct.omap3isp_hist_config** %6, align 8
  %115 = getelementptr inbounds %struct.omap3isp_hist_config, %struct.omap3isp_hist_config* %114, i32 0, i32 4
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** %115, align 8
  %117 = load i32, i32* %7, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = icmp sgt i32 %113, %121
  br i1 %122, label %123, label %126

123:                                              ; preds = %105
  %124 = load i32, i32* @EINVAL, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %3, align 4
  br label %209

126:                                              ; preds = %105
  %127 = load %struct.omap3isp_hist_config*, %struct.omap3isp_hist_config** %6, align 8
  %128 = getelementptr inbounds %struct.omap3isp_hist_config, %struct.omap3isp_hist_config* %127, i32 0, i32 4
  %129 = load %struct.TYPE_2__*, %struct.TYPE_2__** %128, align 8
  %130 = load i32, i32* %7, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.omap3isp_hist_config*, %struct.omap3isp_hist_config** %6, align 8
  %136 = getelementptr inbounds %struct.omap3isp_hist_config, %struct.omap3isp_hist_config* %135, i32 0, i32 4
  %137 = load %struct.TYPE_2__*, %struct.TYPE_2__** %136, align 8
  %138 = load i32, i32* %7, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 4
  %143 = icmp sgt i32 %134, %142
  br i1 %143, label %144, label %147

144:                                              ; preds = %126
  %145 = load i32, i32* @EINVAL, align 4
  %146 = sub nsw i32 0, %145
  store i32 %146, i32* %3, align 4
  br label %209

147:                                              ; preds = %126
  br label %148

148:                                              ; preds = %147
  %149 = load i32, i32* %7, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %7, align 4
  br label %35

151:                                              ; preds = %35
  %152 = load %struct.omap3isp_hist_config*, %struct.omap3isp_hist_config** %6, align 8
  %153 = getelementptr inbounds %struct.omap3isp_hist_config, %struct.omap3isp_hist_config* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 8
  switch i32 %154, label %175 [
    i32 1, label %155
    i32 2, label %165
  ]

155:                                              ; preds = %151
  %156 = load %struct.omap3isp_hist_config*, %struct.omap3isp_hist_config** %6, align 8
  %157 = getelementptr inbounds %struct.omap3isp_hist_config, %struct.omap3isp_hist_config* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* @OMAP3ISP_HIST_BINS_256, align 4
  %160 = icmp sgt i32 %158, %159
  br i1 %160, label %161, label %164

161:                                              ; preds = %155
  %162 = load i32, i32* @EINVAL, align 4
  %163 = sub nsw i32 0, %162
  store i32 %163, i32* %3, align 4
  br label %209

164:                                              ; preds = %155
  br label %185

165:                                              ; preds = %151
  %166 = load %struct.omap3isp_hist_config*, %struct.omap3isp_hist_config** %6, align 8
  %167 = getelementptr inbounds %struct.omap3isp_hist_config, %struct.omap3isp_hist_config* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* @OMAP3ISP_HIST_BINS_128, align 4
  %170 = icmp sgt i32 %168, %169
  br i1 %170, label %171, label %174

171:                                              ; preds = %165
  %172 = load i32, i32* @EINVAL, align 4
  %173 = sub nsw i32 0, %172
  store i32 %173, i32* %3, align 4
  br label %209

174:                                              ; preds = %165
  br label %185

175:                                              ; preds = %151
  %176 = load %struct.omap3isp_hist_config*, %struct.omap3isp_hist_config** %6, align 8
  %177 = getelementptr inbounds %struct.omap3isp_hist_config, %struct.omap3isp_hist_config* %176, i32 0, i32 3
  %178 = load i32, i32* %177, align 8
  %179 = load i32, i32* @OMAP3ISP_HIST_BINS_64, align 4
  %180 = icmp sgt i32 %178, %179
  br i1 %180, label %181, label %184

181:                                              ; preds = %175
  %182 = load i32, i32* @EINVAL, align 4
  %183 = sub nsw i32 0, %182
  store i32 %183, i32* %3, align 4
  br label %209

184:                                              ; preds = %175
  br label %185

185:                                              ; preds = %184, %174, %164
  %186 = load %struct.omap3isp_hist_config*, %struct.omap3isp_hist_config** %6, align 8
  %187 = call i64 @hist_get_buf_size(%struct.omap3isp_hist_config* %186)
  store i64 %187, i64* %8, align 8
  %188 = load i64, i64* %8, align 8
  %189 = load %struct.omap3isp_hist_config*, %struct.omap3isp_hist_config** %6, align 8
  %190 = getelementptr inbounds %struct.omap3isp_hist_config, %struct.omap3isp_hist_config* %189, i32 0, i32 2
  %191 = load i64, i64* %190, align 8
  %192 = icmp sgt i64 %188, %191
  br i1 %192, label %193, label %197

193:                                              ; preds = %185
  %194 = load i64, i64* %8, align 8
  %195 = load %struct.omap3isp_hist_config*, %struct.omap3isp_hist_config** %6, align 8
  %196 = getelementptr inbounds %struct.omap3isp_hist_config, %struct.omap3isp_hist_config* %195, i32 0, i32 2
  store i64 %194, i64* %196, align 8
  br label %208

197:                                              ; preds = %185
  %198 = load %struct.omap3isp_hist_config*, %struct.omap3isp_hist_config** %6, align 8
  %199 = getelementptr inbounds %struct.omap3isp_hist_config, %struct.omap3isp_hist_config* %198, i32 0, i32 2
  %200 = load i64, i64* %199, align 8
  %201 = load i64, i64* @OMAP3ISP_HIST_MAX_BUF_SIZE, align 8
  %202 = icmp sgt i64 %200, %201
  br i1 %202, label %203, label %207

203:                                              ; preds = %197
  %204 = load i64, i64* @OMAP3ISP_HIST_MAX_BUF_SIZE, align 8
  %205 = load %struct.omap3isp_hist_config*, %struct.omap3isp_hist_config** %6, align 8
  %206 = getelementptr inbounds %struct.omap3isp_hist_config, %struct.omap3isp_hist_config* %205, i32 0, i32 2
  store i64 %204, i64* %206, align 8
  br label %207

207:                                              ; preds = %203, %197
  br label %208

208:                                              ; preds = %207, %193
  store i32 0, i32* %3, align 4
  br label %209

209:                                              ; preds = %208, %181, %171, %161, %144, %123, %102, %86, %70, %54, %31, %16
  %210 = load i32, i32* %3, align 4
  ret i32 %210
}

declare dso_local i64 @hist_get_buf_size(%struct.omap3isp_hist_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
