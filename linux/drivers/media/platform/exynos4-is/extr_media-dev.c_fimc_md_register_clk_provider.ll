; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_media-dev.c_fimc_md_register_clk_provider.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_media-dev.c_fimc_md_register_clk_provider.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fimc_md = type { %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.cam_clk_provider }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.device }
%struct.device = type { i32 }
%struct.cam_clk_provider = type { i64, %struct.TYPE_7__, i32, i32*, %struct.cam_clk* }
%struct.TYPE_7__ = type { i64, i32* }
%struct.cam_clk = type { %struct.TYPE_8__, %struct.fimc_md* }
%struct.TYPE_8__ = type { %struct.clk_init_data* }
%struct.clk_init_data = type { i8**, i32, i32, i32, i32* }

@FIMC_MAX_CAMCLKS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"clock-output-names\00", align 1
@cam_clk_ops = common dso_local global i32 0, align 4
@CLK_SET_RATE_PARENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"failed to register clock: %s (%ld)\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"clk provider not registered\0A\00", align 1
@of_clk_src_onecell_get = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fimc_md*)* @fimc_md_register_clk_provider to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fimc_md_register_clk_provider(%struct.fimc_md* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fimc_md*, align 8
  %4 = alloca %struct.cam_clk_provider*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.cam_clk*, align 8
  %9 = alloca %struct.clk_init_data, align 8
  %10 = alloca i8*, align 8
  store %struct.fimc_md* %0, %struct.fimc_md** %3, align 8
  %11 = load %struct.fimc_md*, %struct.fimc_md** %3, align 8
  %12 = getelementptr inbounds %struct.fimc_md, %struct.fimc_md* %11, i32 0, i32 2
  store %struct.cam_clk_provider* %12, %struct.cam_clk_provider** %4, align 8
  %13 = load %struct.fimc_md*, %struct.fimc_md** %3, align 8
  %14 = getelementptr inbounds %struct.fimc_md, %struct.fimc_md* %13, i32 0, i32 1
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  store %struct.device* %16, %struct.device** %5, align 8
  store i32 0, i32* %6, align 4
  br label %17

17:                                               ; preds = %102, %1
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @FIMC_MAX_CAMCLKS, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %105

21:                                               ; preds = %17
  %22 = load %struct.cam_clk_provider*, %struct.cam_clk_provider** %4, align 8
  %23 = getelementptr inbounds %struct.cam_clk_provider, %struct.cam_clk_provider* %22, i32 0, i32 4
  %24 = load %struct.cam_clk*, %struct.cam_clk** %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.cam_clk, %struct.cam_clk* %24, i64 %26
  store %struct.cam_clk* %27, %struct.cam_clk** %8, align 8
  %28 = load %struct.device*, %struct.device** %5, align 8
  %29 = getelementptr inbounds %struct.device, %struct.device* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %6, align 4
  %32 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %9, i32 0, i32 2
  %33 = call i32 @of_property_read_string_index(i32 %30, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %31, i32* %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %21
  br label %105

37:                                               ; preds = %21
  %38 = load %struct.fimc_md*, %struct.fimc_md** %3, align 8
  %39 = getelementptr inbounds %struct.fimc_md, %struct.fimc_md* %38, i32 0, i32 0
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i8* @__clk_get_name(i32 %45)
  store i8* %46, i8** %10, align 8
  %47 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %9, i32 0, i32 0
  store i8** %10, i8*** %47, align 8
  %48 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %9, i32 0, i32 1
  store i32 1, i32* %48, align 8
  %49 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %9, i32 0, i32 4
  store i32* @cam_clk_ops, i32** %49, align 8
  %50 = load i32, i32* @CLK_SET_RATE_PARENT, align 4
  %51 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %9, i32 0, i32 3
  store i32 %50, i32* %51, align 8
  %52 = load %struct.cam_clk*, %struct.cam_clk** %8, align 8
  %53 = getelementptr inbounds %struct.cam_clk, %struct.cam_clk* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  store %struct.clk_init_data* %9, %struct.clk_init_data** %54, align 8
  %55 = load %struct.fimc_md*, %struct.fimc_md** %3, align 8
  %56 = load %struct.cam_clk*, %struct.cam_clk** %8, align 8
  %57 = getelementptr inbounds %struct.cam_clk, %struct.cam_clk* %56, i32 0, i32 1
  store %struct.fimc_md* %55, %struct.fimc_md** %57, align 8
  %58 = load %struct.cam_clk*, %struct.cam_clk** %8, align 8
  %59 = getelementptr inbounds %struct.cam_clk, %struct.cam_clk* %58, i32 0, i32 0
  %60 = call i32 @clk_register(i32* null, %struct.TYPE_8__* %59)
  %61 = load %struct.cam_clk_provider*, %struct.cam_clk_provider** %4, align 8
  %62 = getelementptr inbounds %struct.cam_clk_provider, %struct.cam_clk_provider* %61, i32 0, i32 3
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %6, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  store i32 %60, i32* %66, align 4
  %67 = load %struct.cam_clk_provider*, %struct.cam_clk_provider** %4, align 8
  %68 = getelementptr inbounds %struct.cam_clk_provider, %struct.cam_clk_provider* %67, i32 0, i32 3
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %6, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = call i64 @IS_ERR(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %97

76:                                               ; preds = %37
  %77 = load %struct.device*, %struct.device** %5, align 8
  %78 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %9, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.cam_clk_provider*, %struct.cam_clk_provider** %4, align 8
  %81 = getelementptr inbounds %struct.cam_clk_provider, %struct.cam_clk_provider* %80, i32 0, i32 3
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %6, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @PTR_ERR(i32 %86)
  %88 = call i32 @dev_err(%struct.device* %77, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %79, i32 %87)
  %89 = load %struct.cam_clk_provider*, %struct.cam_clk_provider** %4, align 8
  %90 = getelementptr inbounds %struct.cam_clk_provider, %struct.cam_clk_provider* %89, i32 0, i32 3
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* %6, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @PTR_ERR(i32 %95)
  store i32 %96, i32* %7, align 4
  br label %142

97:                                               ; preds = %37
  %98 = load %struct.cam_clk_provider*, %struct.cam_clk_provider** %4, align 8
  %99 = getelementptr inbounds %struct.cam_clk_provider, %struct.cam_clk_provider* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = add nsw i64 %100, 1
  store i64 %101, i64* %99, align 8
  br label %102

102:                                              ; preds = %97
  %103 = load i32, i32* %6, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %6, align 4
  br label %17

105:                                              ; preds = %36, %17
  %106 = load %struct.cam_clk_provider*, %struct.cam_clk_provider** %4, align 8
  %107 = getelementptr inbounds %struct.cam_clk_provider, %struct.cam_clk_provider* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = icmp eq i64 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %105
  %111 = load %struct.device*, %struct.device** %5, align 8
  %112 = call i32 @dev_warn(%struct.device* %111, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %146

113:                                              ; preds = %105
  %114 = load %struct.cam_clk_provider*, %struct.cam_clk_provider** %4, align 8
  %115 = getelementptr inbounds %struct.cam_clk_provider, %struct.cam_clk_provider* %114, i32 0, i32 3
  %116 = load i32*, i32** %115, align 8
  %117 = load %struct.cam_clk_provider*, %struct.cam_clk_provider** %4, align 8
  %118 = getelementptr inbounds %struct.cam_clk_provider, %struct.cam_clk_provider* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 1
  store i32* %116, i32** %119, align 8
  %120 = load %struct.cam_clk_provider*, %struct.cam_clk_provider** %4, align 8
  %121 = getelementptr inbounds %struct.cam_clk_provider, %struct.cam_clk_provider* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.cam_clk_provider*, %struct.cam_clk_provider** %4, align 8
  %124 = getelementptr inbounds %struct.cam_clk_provider, %struct.cam_clk_provider* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 0
  store i64 %122, i64* %125, align 8
  %126 = load %struct.device*, %struct.device** %5, align 8
  %127 = getelementptr inbounds %struct.device, %struct.device* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.cam_clk_provider*, %struct.cam_clk_provider** %4, align 8
  %130 = getelementptr inbounds %struct.cam_clk_provider, %struct.cam_clk_provider* %129, i32 0, i32 2
  store i32 %128, i32* %130, align 8
  %131 = load %struct.device*, %struct.device** %5, align 8
  %132 = getelementptr inbounds %struct.device, %struct.device* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @of_clk_src_onecell_get, align 4
  %135 = load %struct.cam_clk_provider*, %struct.cam_clk_provider** %4, align 8
  %136 = getelementptr inbounds %struct.cam_clk_provider, %struct.cam_clk_provider* %135, i32 0, i32 1
  %137 = call i32 @of_clk_add_provider(i32 %133, i32 %134, %struct.TYPE_7__* %136)
  store i32 %137, i32* %7, align 4
  %138 = load i32, i32* %7, align 4
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %113
  store i32 0, i32* %2, align 4
  br label %146

141:                                              ; preds = %113
  br label %142

142:                                              ; preds = %141, %76
  %143 = load %struct.fimc_md*, %struct.fimc_md** %3, align 8
  %144 = call i32 @fimc_md_unregister_clk_provider(%struct.fimc_md* %143)
  %145 = load i32, i32* %7, align 4
  store i32 %145, i32* %2, align 4
  br label %146

146:                                              ; preds = %142, %140, %110
  %147 = load i32, i32* %2, align 4
  ret i32 %147
}

declare dso_local i32 @of_property_read_string_index(i32, i8*, i32, i32*) #1

declare dso_local i8* @__clk_get_name(i32) #1

declare dso_local i32 @clk_register(i32*, %struct.TYPE_8__*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

declare dso_local i32 @of_clk_add_provider(i32, i32, %struct.TYPE_7__*) #1

declare dso_local i32 @fimc_md_unregister_clk_provider(%struct.fimc_md*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
