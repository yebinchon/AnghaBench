; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_isphist.c_hist_comp_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_isphist.c_hist_comp_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ispstat = type { %struct.omap3isp_hist_config* }
%struct.omap3isp_hist_config = type { i64, i64, i64, i64*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64, i64, i64 }

@OMAP3ISP_HIST_MAX_WG = common dso_local global i32 0, align 4
@OMAP3ISP_HIST_CFA_FOVEONX3 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ispstat*, %struct.omap3isp_hist_config*)* @hist_comp_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hist_comp_params(%struct.ispstat* %0, %struct.omap3isp_hist_config* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ispstat*, align 8
  %5 = alloca %struct.omap3isp_hist_config*, align 8
  %6 = alloca %struct.omap3isp_hist_config*, align 8
  %7 = alloca i32, align 4
  store %struct.ispstat* %0, %struct.ispstat** %4, align 8
  store %struct.omap3isp_hist_config* %1, %struct.omap3isp_hist_config** %5, align 8
  %8 = load %struct.ispstat*, %struct.ispstat** %4, align 8
  %9 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %8, i32 0, i32 0
  %10 = load %struct.omap3isp_hist_config*, %struct.omap3isp_hist_config** %9, align 8
  store %struct.omap3isp_hist_config* %10, %struct.omap3isp_hist_config** %6, align 8
  %11 = load %struct.omap3isp_hist_config*, %struct.omap3isp_hist_config** %6, align 8
  %12 = getelementptr inbounds %struct.omap3isp_hist_config, %struct.omap3isp_hist_config* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.omap3isp_hist_config*, %struct.omap3isp_hist_config** %5, align 8
  %15 = getelementptr inbounds %struct.omap3isp_hist_config, %struct.omap3isp_hist_config* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %13, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %171

19:                                               ; preds = %2
  %20 = load %struct.omap3isp_hist_config*, %struct.omap3isp_hist_config** %6, align 8
  %21 = getelementptr inbounds %struct.omap3isp_hist_config, %struct.omap3isp_hist_config* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.omap3isp_hist_config*, %struct.omap3isp_hist_config** %5, align 8
  %24 = getelementptr inbounds %struct.omap3isp_hist_config, %struct.omap3isp_hist_config* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %22, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  store i32 1, i32* %3, align 4
  br label %171

28:                                               ; preds = %19
  %29 = load %struct.omap3isp_hist_config*, %struct.omap3isp_hist_config** %6, align 8
  %30 = getelementptr inbounds %struct.omap3isp_hist_config, %struct.omap3isp_hist_config* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.omap3isp_hist_config*, %struct.omap3isp_hist_config** %5, align 8
  %33 = getelementptr inbounds %struct.omap3isp_hist_config, %struct.omap3isp_hist_config* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %31, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  store i32 1, i32* %3, align 4
  br label %171

37:                                               ; preds = %28
  store i32 0, i32* %7, align 4
  br label %38

38:                                               ; preds = %71, %37
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @OMAP3ISP_HIST_MAX_WG, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %74

42:                                               ; preds = %38
  %43 = load i32, i32* %7, align 4
  %44 = icmp eq i32 %43, 3
  br i1 %44, label %45, label %52

45:                                               ; preds = %42
  %46 = load %struct.omap3isp_hist_config*, %struct.omap3isp_hist_config** %5, align 8
  %47 = getelementptr inbounds %struct.omap3isp_hist_config, %struct.omap3isp_hist_config* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @OMAP3ISP_HIST_CFA_FOVEONX3, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  br label %74

52:                                               ; preds = %45, %42
  %53 = load %struct.omap3isp_hist_config*, %struct.omap3isp_hist_config** %6, align 8
  %54 = getelementptr inbounds %struct.omap3isp_hist_config, %struct.omap3isp_hist_config* %53, i32 0, i32 3
  %55 = load i64*, i64** %54, align 8
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i64, i64* %55, i64 %57
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.omap3isp_hist_config*, %struct.omap3isp_hist_config** %5, align 8
  %61 = getelementptr inbounds %struct.omap3isp_hist_config, %struct.omap3isp_hist_config* %60, i32 0, i32 3
  %62 = load i64*, i64** %61, align 8
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i64, i64* %62, i64 %64
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %59, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %52
  store i32 1, i32* %3, align 4
  br label %171

69:                                               ; preds = %52
  br label %70

70:                                               ; preds = %69
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %7, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %7, align 4
  br label %38

74:                                               ; preds = %51, %38
  %75 = load %struct.omap3isp_hist_config*, %struct.omap3isp_hist_config** %6, align 8
  %76 = getelementptr inbounds %struct.omap3isp_hist_config, %struct.omap3isp_hist_config* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.omap3isp_hist_config*, %struct.omap3isp_hist_config** %5, align 8
  %79 = getelementptr inbounds %struct.omap3isp_hist_config, %struct.omap3isp_hist_config* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 8
  %81 = icmp ne i32 %77, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %74
  store i32 1, i32* %3, align 4
  br label %171

83:                                               ; preds = %74
  store i32 0, i32* %7, align 4
  br label %84

84:                                               ; preds = %167, %83
  %85 = load i32, i32* %7, align 4
  %86 = load %struct.omap3isp_hist_config*, %struct.omap3isp_hist_config** %5, align 8
  %87 = getelementptr inbounds %struct.omap3isp_hist_config, %struct.omap3isp_hist_config* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 8
  %89 = icmp slt i32 %85, %88
  br i1 %89, label %90, label %170

90:                                               ; preds = %84
  %91 = load %struct.omap3isp_hist_config*, %struct.omap3isp_hist_config** %6, align 8
  %92 = getelementptr inbounds %struct.omap3isp_hist_config, %struct.omap3isp_hist_config* %91, i32 0, i32 5
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = load i32, i32* %7, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.omap3isp_hist_config*, %struct.omap3isp_hist_config** %5, align 8
  %100 = getelementptr inbounds %struct.omap3isp_hist_config, %struct.omap3isp_hist_config* %99, i32 0, i32 5
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %100, align 8
  %102 = load i32, i32* %7, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %98, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %90
  store i32 1, i32* %3, align 4
  br label %171

109:                                              ; preds = %90
  %110 = load %struct.omap3isp_hist_config*, %struct.omap3isp_hist_config** %6, align 8
  %111 = getelementptr inbounds %struct.omap3isp_hist_config, %struct.omap3isp_hist_config* %110, i32 0, i32 5
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** %111, align 8
  %113 = load i32, i32* %7, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.omap3isp_hist_config*, %struct.omap3isp_hist_config** %5, align 8
  %119 = getelementptr inbounds %struct.omap3isp_hist_config, %struct.omap3isp_hist_config* %118, i32 0, i32 5
  %120 = load %struct.TYPE_2__*, %struct.TYPE_2__** %119, align 8
  %121 = load i32, i32* %7, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %117, %125
  br i1 %126, label %127, label %128

127:                                              ; preds = %109
  store i32 1, i32* %3, align 4
  br label %171

128:                                              ; preds = %109
  %129 = load %struct.omap3isp_hist_config*, %struct.omap3isp_hist_config** %6, align 8
  %130 = getelementptr inbounds %struct.omap3isp_hist_config, %struct.omap3isp_hist_config* %129, i32 0, i32 5
  %131 = load %struct.TYPE_2__*, %struct.TYPE_2__** %130, align 8
  %132 = load i32, i32* %7, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 2
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.omap3isp_hist_config*, %struct.omap3isp_hist_config** %5, align 8
  %138 = getelementptr inbounds %struct.omap3isp_hist_config, %struct.omap3isp_hist_config* %137, i32 0, i32 5
  %139 = load %struct.TYPE_2__*, %struct.TYPE_2__** %138, align 8
  %140 = load i32, i32* %7, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 2
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %136, %144
  br i1 %145, label %146, label %147

146:                                              ; preds = %128
  store i32 1, i32* %3, align 4
  br label %171

147:                                              ; preds = %128
  %148 = load %struct.omap3isp_hist_config*, %struct.omap3isp_hist_config** %6, align 8
  %149 = getelementptr inbounds %struct.omap3isp_hist_config, %struct.omap3isp_hist_config* %148, i32 0, i32 5
  %150 = load %struct.TYPE_2__*, %struct.TYPE_2__** %149, align 8
  %151 = load i32, i32* %7, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i32 0, i32 3
  %155 = load i64, i64* %154, align 8
  %156 = load %struct.omap3isp_hist_config*, %struct.omap3isp_hist_config** %5, align 8
  %157 = getelementptr inbounds %struct.omap3isp_hist_config, %struct.omap3isp_hist_config* %156, i32 0, i32 5
  %158 = load %struct.TYPE_2__*, %struct.TYPE_2__** %157, align 8
  %159 = load i32, i32* %7, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i32 0, i32 3
  %163 = load i64, i64* %162, align 8
  %164 = icmp ne i64 %155, %163
  br i1 %164, label %165, label %166

165:                                              ; preds = %147
  store i32 1, i32* %3, align 4
  br label %171

166:                                              ; preds = %147
  br label %167

167:                                              ; preds = %166
  %168 = load i32, i32* %7, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %7, align 4
  br label %84

170:                                              ; preds = %84
  store i32 0, i32* %3, align 4
  br label %171

171:                                              ; preds = %170, %165, %146, %127, %108, %82, %68, %36, %27, %18
  %172 = load i32, i32* %3, align 4
  ret i32 %172
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
