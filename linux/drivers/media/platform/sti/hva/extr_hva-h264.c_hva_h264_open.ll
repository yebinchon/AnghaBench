; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sti/hva/extr_hva-h264.c_hva_h264_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sti/hva/extr_hva-h264.c_hva_h264_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hva_ctx = type { i32, i8*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }
%struct.device = type { i32 }
%struct.hva_h264_ctx = type { i32, i32, i32, i32 }
%struct.hva_dev = type { i64 }

@.str = private unnamed_addr constant [43 x i8] c"%s   not enough esram (max:%d request:%d)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SLICE_HEADER_SIZE = common dso_local global i32 0, align 4
@BRC_DATA_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"hva sequence info\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"%s   failed to allocate sequence info buffer\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"hva reference frame\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"%s   failed to allocate reference frame buffer\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"hva reconstructed frame\00", align 1
@.str.6 = private unnamed_addr constant [52 x i8] c"%s   failed to allocate reconstructed frame buffer\0A\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"hva task descriptor\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"%s   failed to allocate task descriptor\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hva_ctx*)* @hva_h264_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hva_h264_open(%struct.hva_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hva_ctx*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.hva_h264_ctx*, align 8
  %6 = alloca %struct.hva_dev*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.hva_ctx* %0, %struct.hva_ctx** %3, align 8
  %11 = load %struct.hva_ctx*, %struct.hva_ctx** %3, align 8
  %12 = call %struct.device* @ctx_to_dev(%struct.hva_ctx* %11)
  store %struct.device* %12, %struct.device** %4, align 8
  %13 = load %struct.hva_ctx*, %struct.hva_ctx** %3, align 8
  %14 = call %struct.hva_dev* @ctx_to_hdev(%struct.hva_ctx* %13)
  store %struct.hva_dev* %14, %struct.hva_dev** %6, align 8
  %15 = load %struct.hva_ctx*, %struct.hva_ctx** %3, align 8
  %16 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %7, align 8
  %19 = load %struct.hva_ctx*, %struct.hva_ctx** %3, align 8
  %20 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %8, align 8
  %23 = load i64, i64* %7, align 8
  %24 = call i64 @SEARCH_WINDOW_BUFFER_MAX_SIZE(i64 %23)
  %25 = load i64, i64* %7, align 8
  %26 = call i64 @LOCAL_RECONSTRUCTED_BUFFER_MAX_SIZE(i64 %25)
  %27 = add nsw i64 %24, %26
  %28 = load i64, i64* %7, align 8
  %29 = load i64, i64* %8, align 8
  %30 = call i32 @max(i64 %28, i64 %29)
  %31 = call i64 @CTX_MB_BUFFER_MAX_SIZE(i32 %30)
  %32 = add nsw i64 %27, %31
  %33 = load i64, i64* %7, align 8
  %34 = call i64 @CABAC_CONTEXT_BUFFER_MAX_SIZE(i64 %33)
  %35 = add nsw i64 %32, %34
  store i64 %35, i64* %9, align 8
  %36 = load %struct.hva_dev*, %struct.hva_dev** %6, align 8
  %37 = getelementptr inbounds %struct.hva_dev, %struct.hva_dev* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %9, align 8
  %40 = icmp slt i64 %38, %39
  br i1 %40, label %41, label %53

41:                                               ; preds = %1
  %42 = load %struct.device*, %struct.device** %4, align 8
  %43 = load %struct.hva_ctx*, %struct.hva_ctx** %3, align 8
  %44 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.hva_dev*, %struct.hva_dev** %6, align 8
  %47 = getelementptr inbounds %struct.hva_dev, %struct.hva_dev* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* %9, align 8
  %50 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %42, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %45, i64 %48, i64 %49)
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %10, align 4
  br label %161

53:                                               ; preds = %1
  %54 = load %struct.device*, %struct.device** %4, align 8
  %55 = load i32, i32* @GFP_KERNEL, align 4
  %56 = call %struct.hva_h264_ctx* @devm_kzalloc(%struct.device* %54, i32 16, i32 %55)
  store %struct.hva_h264_ctx* %56, %struct.hva_h264_ctx** %5, align 8
  %57 = load %struct.hva_h264_ctx*, %struct.hva_h264_ctx** %5, align 8
  %58 = icmp ne %struct.hva_h264_ctx* %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %53
  %60 = load i32, i32* @ENOMEM, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %10, align 4
  br label %161

62:                                               ; preds = %53
  %63 = load %struct.hva_ctx*, %struct.hva_ctx** %3, align 8
  %64 = load i64, i64* %7, align 8
  %65 = load i64, i64* %8, align 8
  %66 = call i32 @DATA_SIZE(i64 %64, i64 %65)
  %67 = mul nsw i32 2, %66
  %68 = load i32, i32* @SLICE_HEADER_SIZE, align 4
  %69 = add nsw i32 %67, %68
  %70 = load i32, i32* @BRC_DATA_SIZE, align 4
  %71 = add nsw i32 %69, %70
  %72 = load %struct.hva_h264_ctx*, %struct.hva_h264_ctx** %5, align 8
  %73 = getelementptr inbounds %struct.hva_h264_ctx, %struct.hva_h264_ctx* %72, i32 0, i32 0
  %74 = call i32 @hva_mem_alloc(%struct.hva_ctx* %63, i32 %71, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32* %73)
  store i32 %74, i32* %10, align 4
  %75 = load i32, i32* %10, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %62
  %78 = load %struct.device*, %struct.device** %4, align 8
  %79 = load %struct.hva_ctx*, %struct.hva_ctx** %3, align 8
  %80 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %78, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %81)
  br label %157

83:                                               ; preds = %62
  %84 = load %struct.hva_ctx*, %struct.hva_ctx** %3, align 8
  %85 = load i64, i64* %7, align 8
  %86 = load i64, i64* %8, align 8
  %87 = mul nsw i64 %85, %86
  %88 = mul nsw i64 %87, 3
  %89 = sdiv i64 %88, 2
  %90 = trunc i64 %89 to i32
  %91 = load %struct.hva_h264_ctx*, %struct.hva_h264_ctx** %5, align 8
  %92 = getelementptr inbounds %struct.hva_h264_ctx, %struct.hva_h264_ctx* %91, i32 0, i32 1
  %93 = call i32 @hva_mem_alloc(%struct.hva_ctx* %84, i32 %90, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32* %92)
  store i32 %93, i32* %10, align 4
  %94 = load i32, i32* %10, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %83
  %97 = load %struct.device*, %struct.device** %4, align 8
  %98 = load %struct.hva_ctx*, %struct.hva_ctx** %3, align 8
  %99 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %97, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0), i32 %100)
  br label %151

102:                                              ; preds = %83
  %103 = load %struct.hva_ctx*, %struct.hva_ctx** %3, align 8
  %104 = load i64, i64* %7, align 8
  %105 = load i64, i64* %8, align 8
  %106 = mul nsw i64 %104, %105
  %107 = mul nsw i64 %106, 3
  %108 = sdiv i64 %107, 2
  %109 = trunc i64 %108 to i32
  %110 = load %struct.hva_h264_ctx*, %struct.hva_h264_ctx** %5, align 8
  %111 = getelementptr inbounds %struct.hva_h264_ctx, %struct.hva_h264_ctx* %110, i32 0, i32 2
  %112 = call i32 @hva_mem_alloc(%struct.hva_ctx* %103, i32 %109, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32* %111)
  store i32 %112, i32* %10, align 4
  %113 = load i32, i32* %10, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %102
  %116 = load %struct.device*, %struct.device** %4, align 8
  %117 = load %struct.hva_ctx*, %struct.hva_ctx** %3, align 8
  %118 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %116, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6, i64 0, i64 0), i32 %119)
  br label %145

121:                                              ; preds = %102
  %122 = load %struct.hva_ctx*, %struct.hva_ctx** %3, align 8
  %123 = load %struct.hva_h264_ctx*, %struct.hva_h264_ctx** %5, align 8
  %124 = getelementptr inbounds %struct.hva_h264_ctx, %struct.hva_h264_ctx* %123, i32 0, i32 3
  %125 = call i32 @hva_mem_alloc(%struct.hva_ctx* %122, i32 4, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i32* %124)
  store i32 %125, i32* %10, align 4
  %126 = load i32, i32* %10, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %134

128:                                              ; preds = %121
  %129 = load %struct.device*, %struct.device** %4, align 8
  %130 = load %struct.hva_ctx*, %struct.hva_ctx** %3, align 8
  %131 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %129, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0), i32 %132)
  br label %139

134:                                              ; preds = %121
  %135 = load %struct.hva_h264_ctx*, %struct.hva_h264_ctx** %5, align 8
  %136 = bitcast %struct.hva_h264_ctx* %135 to i8*
  %137 = load %struct.hva_ctx*, %struct.hva_ctx** %3, align 8
  %138 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %137, i32 0, i32 1
  store i8* %136, i8** %138, align 8
  store i32 0, i32* %2, align 4
  br label %167

139:                                              ; preds = %128
  %140 = load %struct.hva_ctx*, %struct.hva_ctx** %3, align 8
  %141 = load %struct.hva_h264_ctx*, %struct.hva_h264_ctx** %5, align 8
  %142 = getelementptr inbounds %struct.hva_h264_ctx, %struct.hva_h264_ctx* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @hva_mem_free(%struct.hva_ctx* %140, i32 %143)
  br label %145

145:                                              ; preds = %139, %115
  %146 = load %struct.hva_ctx*, %struct.hva_ctx** %3, align 8
  %147 = load %struct.hva_h264_ctx*, %struct.hva_h264_ctx** %5, align 8
  %148 = getelementptr inbounds %struct.hva_h264_ctx, %struct.hva_h264_ctx* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @hva_mem_free(%struct.hva_ctx* %146, i32 %149)
  br label %151

151:                                              ; preds = %145, %96
  %152 = load %struct.hva_ctx*, %struct.hva_ctx** %3, align 8
  %153 = load %struct.hva_h264_ctx*, %struct.hva_h264_ctx** %5, align 8
  %154 = getelementptr inbounds %struct.hva_h264_ctx, %struct.hva_h264_ctx* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @hva_mem_free(%struct.hva_ctx* %152, i32 %155)
  br label %157

157:                                              ; preds = %151, %77
  %158 = load %struct.device*, %struct.device** %4, align 8
  %159 = load %struct.hva_h264_ctx*, %struct.hva_h264_ctx** %5, align 8
  %160 = call i32 @devm_kfree(%struct.device* %158, %struct.hva_h264_ctx* %159)
  br label %161

161:                                              ; preds = %157, %59, %41
  %162 = load %struct.hva_ctx*, %struct.hva_ctx** %3, align 8
  %163 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %163, align 8
  %166 = load i32, i32* %10, align 4
  store i32 %166, i32* %2, align 4
  br label %167

167:                                              ; preds = %161, %134
  %168 = load i32, i32* %2, align 4
  ret i32 %168
}

declare dso_local %struct.device* @ctx_to_dev(%struct.hva_ctx*) #1

declare dso_local %struct.hva_dev* @ctx_to_hdev(%struct.hva_ctx*) #1

declare dso_local i64 @SEARCH_WINDOW_BUFFER_MAX_SIZE(i64) #1

declare dso_local i64 @LOCAL_RECONSTRUCTED_BUFFER_MAX_SIZE(i64) #1

declare dso_local i64 @CTX_MB_BUFFER_MAX_SIZE(i32) #1

declare dso_local i32 @max(i64, i64) #1

declare dso_local i64 @CABAC_CONTEXT_BUFFER_MAX_SIZE(i64) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, ...) #1

declare dso_local %struct.hva_h264_ctx* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @hva_mem_alloc(%struct.hva_ctx*, i32, i8*, i32*) #1

declare dso_local i32 @DATA_SIZE(i64, i64) #1

declare dso_local i32 @hva_mem_free(%struct.hva_ctx*, i32) #1

declare dso_local i32 @devm_kfree(%struct.device*, %struct.hva_h264_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
