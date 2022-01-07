; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-is.c_fimc_is_hw_initialize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-is.c_fimc_is_hw_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fimc_is = type { i32, i32, %struct.TYPE_10__, i32, %struct.TYPE_9__, %struct.TYPE_8__*, %struct.TYPE_7__, i32*, %struct.TYPE_6__* }
%struct.TYPE_10__ = type { i64, i32*, i32* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i64* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.device }
%struct.device = type { i32 }

@fimc_is_hw_initialize.config_ids = internal constant [4 x i32] [i32 129, i32 128, i32 131, i32 130], align 16
@IS_ST_SETFILE_LOADED = common dso_local global i32 0, align 4
@FIMC_IS_CONFIG_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"get setfile address timed out\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"setfile.base: %#x\0A\00", align 1
@FIMC_IS_SETFILE_6A3 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"loading setfile timed out\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"setfile: base: %#x, size: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"FIMC-IS Setfile info: %s\0A\00", align 1
@MAX_SHARED_COUNT = common dso_local global i32 0, align 4
@FIMC_IS_MAGIC_NUMBER = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [21 x i8] c"magic number error!\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [45 x i8] c"shared region: %pad, parameter region: %pad\0A\00", align 1
@FIMC_IS_SHARED_REGION_OFFSET = common dso_local global i32 0, align 4
@IS_ST_STREAM_OFF = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [20 x i8] c"stream off timeout\0A\00", align 1
@IS_ST_INIT_DONE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [40 x i8] c"initialization sequence completed (%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fimc_is_hw_initialize(%struct.fimc_is* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fimc_is*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.fimc_is* %0, %struct.fimc_is** %3, align 8
  %8 = load %struct.fimc_is*, %struct.fimc_is** %3, align 8
  %9 = getelementptr inbounds %struct.fimc_is, %struct.fimc_is* %8, i32 0, i32 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %4, align 8
  %12 = load %struct.fimc_is*, %struct.fimc_is** %3, align 8
  %13 = load %struct.fimc_is*, %struct.fimc_is** %3, align 8
  %14 = getelementptr inbounds %struct.fimc_is, %struct.fimc_is* %13, i32 0, i32 7
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = call i32 @fimc_is_hw_open_sensor(%struct.fimc_is* %12, i32* %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* %7, align 4
  store i32 %21, i32* %2, align 4
  br label %164

22:                                               ; preds = %1
  %23 = load %struct.fimc_is*, %struct.fimc_is** %3, align 8
  %24 = call i32 @fimc_is_hw_get_setfile_addr(%struct.fimc_is* %23)
  %25 = load %struct.fimc_is*, %struct.fimc_is** %3, align 8
  %26 = load i32, i32* @IS_ST_SETFILE_LOADED, align 4
  %27 = load i32, i32* @FIMC_IS_CONFIG_TIMEOUT, align 4
  %28 = call i32 @fimc_is_wait_event(%struct.fimc_is* %25, i32 %26, i32 1, i32 %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %22
  %32 = load %struct.device*, %struct.device** %4, align 8
  %33 = call i32 @dev_err(%struct.device* %32, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* %7, align 4
  store i32 %34, i32* %2, align 4
  br label %164

35:                                               ; preds = %22
  %36 = load %struct.fimc_is*, %struct.fimc_is** %3, align 8
  %37 = getelementptr inbounds %struct.fimc_is, %struct.fimc_is* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = call i32 (i8*, i32*, ...) @pr_debug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32* %39)
  %41 = load %struct.fimc_is*, %struct.fimc_is** %3, align 8
  %42 = load i32, i32* @FIMC_IS_SETFILE_6A3, align 4
  %43 = call i32 @fimc_is_load_setfile(%struct.fimc_is* %41, i32 %42)
  %44 = load i32, i32* @IS_ST_SETFILE_LOADED, align 4
  %45 = load %struct.fimc_is*, %struct.fimc_is** %3, align 8
  %46 = getelementptr inbounds %struct.fimc_is, %struct.fimc_is* %45, i32 0, i32 1
  %47 = call i32 @clear_bit(i32 %44, i32* %46)
  %48 = load %struct.fimc_is*, %struct.fimc_is** %3, align 8
  %49 = call i32 @fimc_is_hw_load_setfile(%struct.fimc_is* %48)
  %50 = load %struct.fimc_is*, %struct.fimc_is** %3, align 8
  %51 = load i32, i32* @IS_ST_SETFILE_LOADED, align 4
  %52 = load i32, i32* @FIMC_IS_CONFIG_TIMEOUT, align 4
  %53 = call i32 @fimc_is_wait_event(%struct.fimc_is* %50, i32 %51, i32 1, i32 %52)
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %35
  %57 = load %struct.device*, %struct.device** %4, align 8
  %58 = call i32 @dev_err(%struct.device* %57, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %59 = load i32, i32* %7, align 4
  store i32 %59, i32* %2, align 4
  br label %164

60:                                               ; preds = %35
  %61 = load %struct.fimc_is*, %struct.fimc_is** %3, align 8
  %62 = getelementptr inbounds %struct.fimc_is, %struct.fimc_is* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 2
  %64 = load i32*, i32** %63, align 8
  %65 = load %struct.fimc_is*, %struct.fimc_is** %3, align 8
  %66 = getelementptr inbounds %struct.fimc_is, %struct.fimc_is* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = call i32 (i8*, i32*, ...) @pr_debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32* %64, i32* %68)
  %70 = load %struct.fimc_is*, %struct.fimc_is** %3, align 8
  %71 = getelementptr inbounds %struct.fimc_is, %struct.fimc_is* %70, i32 0, i32 6
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @pr_info(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %73)
  %75 = load %struct.fimc_is*, %struct.fimc_is** %3, align 8
  %76 = getelementptr inbounds %struct.fimc_is, %struct.fimc_is* %75, i32 0, i32 5
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = load i64*, i64** %78, align 8
  %80 = load i32, i32* @MAX_SHARED_COUNT, align 4
  %81 = sub nsw i32 %80, 1
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i64, i64* %79, i64 %82
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @FIMC_IS_MAGIC_NUMBER, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %87, label %92

87:                                               ; preds = %60
  %88 = load %struct.device*, %struct.device** %4, align 8
  %89 = call i32 @dev_err(%struct.device* %88, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  %90 = load i32, i32* @EIO, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %2, align 4
  br label %164

92:                                               ; preds = %60
  %93 = load %struct.fimc_is*, %struct.fimc_is** %3, align 8
  %94 = getelementptr inbounds %struct.fimc_is, %struct.fimc_is* %93, i32 0, i32 4
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 0
  %96 = load i32, i32* @FIMC_IS_SHARED_REGION_OFFSET, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load %struct.fimc_is*, %struct.fimc_is** %3, align 8
  %100 = getelementptr inbounds %struct.fimc_is, %struct.fimc_is* %99, i32 0, i32 3
  %101 = call i32 (i8*, i32*, ...) @pr_debug(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0), i32* %98, i32* %100)
  %102 = load %struct.fimc_is*, %struct.fimc_is** %3, align 8
  %103 = getelementptr inbounds %struct.fimc_is, %struct.fimc_is* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 0
  store i64 0, i64* %104, align 8
  %105 = load %struct.fimc_is*, %struct.fimc_is** %3, align 8
  %106 = call i32 @fimc_is_hw_stream_off(%struct.fimc_is* %105)
  %107 = load %struct.fimc_is*, %struct.fimc_is** %3, align 8
  %108 = load i32, i32* @IS_ST_STREAM_OFF, align 4
  %109 = load i32, i32* @FIMC_IS_CONFIG_TIMEOUT, align 4
  %110 = call i32 @fimc_is_wait_event(%struct.fimc_is* %107, i32 %108, i32 1, i32 %109)
  store i32 %110, i32* %7, align 4
  %111 = load i32, i32* %7, align 4
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %92
  %114 = load %struct.device*, %struct.device** %4, align 8
  %115 = call i32 @dev_err(%struct.device* %114, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  %116 = load i32, i32* %7, align 4
  store i32 %116, i32* %2, align 4
  br label %164

117:                                              ; preds = %92
  %118 = load %struct.fimc_is*, %struct.fimc_is** %3, align 8
  %119 = getelementptr inbounds %struct.fimc_is, %struct.fimc_is* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = sext i32 %120 to i64
  %122 = inttoptr i64 %121 to i8*
  store i8* %122, i8** %5, align 8
  store i32 0, i32* %6, align 4
  br label %123

123:                                              ; preds = %147, %117
  %124 = load i32, i32* %6, align 4
  %125 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([4 x i32], [4 x i32]* @fimc_is_hw_initialize.config_ids, i64 0, i64 0))
  %126 = icmp slt i32 %124, %125
  br i1 %126, label %127, label %150

127:                                              ; preds = %123
  %128 = load i32, i32* %6, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds [4 x i32], [4 x i32]* @fimc_is_hw_initialize.config_ids, i64 0, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.fimc_is*, %struct.fimc_is** %3, align 8
  %133 = getelementptr inbounds %struct.fimc_is, %struct.fimc_is* %132, i32 0, i32 0
  store i32 %131, i32* %133, align 8
  %134 = load %struct.fimc_is*, %struct.fimc_is** %3, align 8
  %135 = call i32 @fimc_is_set_initial_params(%struct.fimc_is* %134)
  %136 = load %struct.fimc_is*, %struct.fimc_is** %3, align 8
  %137 = call i32 @fimc_is_itf_s_param(%struct.fimc_is* %136, i32 1)
  store i32 %137, i32* %7, align 4
  %138 = load i32, i32* %7, align 4
  %139 = icmp slt i32 %138, 0
  br i1 %139, label %140, label %146

140:                                              ; preds = %127
  %141 = load i8*, i8** %5, align 8
  %142 = ptrtoint i8* %141 to i32
  %143 = load %struct.fimc_is*, %struct.fimc_is** %3, align 8
  %144 = getelementptr inbounds %struct.fimc_is, %struct.fimc_is* %143, i32 0, i32 0
  store i32 %142, i32* %144, align 8
  %145 = load i32, i32* %7, align 4
  store i32 %145, i32* %2, align 4
  br label %164

146:                                              ; preds = %127
  br label %147

147:                                              ; preds = %146
  %148 = load i32, i32* %6, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %6, align 4
  br label %123

150:                                              ; preds = %123
  %151 = load i8*, i8** %5, align 8
  %152 = ptrtoint i8* %151 to i32
  %153 = load %struct.fimc_is*, %struct.fimc_is** %3, align 8
  %154 = getelementptr inbounds %struct.fimc_is, %struct.fimc_is* %153, i32 0, i32 0
  store i32 %152, i32* %154, align 8
  %155 = load i32, i32* @IS_ST_INIT_DONE, align 4
  %156 = load %struct.fimc_is*, %struct.fimc_is** %3, align 8
  %157 = getelementptr inbounds %struct.fimc_is, %struct.fimc_is* %156, i32 0, i32 1
  %158 = call i32 @set_bit(i32 %155, i32* %157)
  %159 = load %struct.device*, %struct.device** %4, align 8
  %160 = load %struct.fimc_is*, %struct.fimc_is** %3, align 8
  %161 = getelementptr inbounds %struct.fimc_is, %struct.fimc_is* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = call i32 @dev_info(%struct.device* %159, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i64 0, i64 0), i32 %162)
  store i32 0, i32* %2, align 4
  br label %164

164:                                              ; preds = %150, %140, %113, %87, %56, %31, %20
  %165 = load i32, i32* %2, align 4
  ret i32 %165
}

declare dso_local i32 @fimc_is_hw_open_sensor(%struct.fimc_is*, i32*) #1

declare dso_local i32 @fimc_is_hw_get_setfile_addr(%struct.fimc_is*) #1

declare dso_local i32 @fimc_is_wait_event(%struct.fimc_is*, i32, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @pr_debug(i8*, i32*, ...) #1

declare dso_local i32 @fimc_is_load_setfile(%struct.fimc_is*, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @fimc_is_hw_load_setfile(%struct.fimc_is*) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @fimc_is_hw_stream_off(%struct.fimc_is*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @fimc_is_set_initial_params(%struct.fimc_is*) #1

declare dso_local i32 @fimc_is_itf_s_param(%struct.fimc_is*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
