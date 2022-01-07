; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/coda/extr_coda-bit.c_coda_alloc_context_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/coda/extr_coda-bit.c_coda_alloc_context_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coda_ctx = type { %struct.TYPE_6__, %struct.TYPE_6__, %struct.TYPE_6__, %struct.TYPE_6__, %struct.coda_dev* }
%struct.TYPE_6__ = type { i32 }
%struct.coda_dev = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i64 }
%struct.coda_q_data = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@CODA_PARA_BUF_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"parabuf\00", align 1
@CODA_DX6 = common dso_local global i64 0, align 8
@V4L2_PIX_FMT_H264 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"slicebuf\00", align 1
@CODA_HX4 = common dso_local global i64 0, align 8
@CODA_7541 = common dso_local global i64 0, align 8
@CODA7_PS_BUF_SIZE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"psbuf\00", align 1
@CODA_960 = common dso_local global i64 0, align 8
@CODA9_PS_SAVE_SIZE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [8 x i8] c"workbuf\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.coda_ctx*, %struct.coda_q_data*)* @coda_alloc_context_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @coda_alloc_context_buffers(%struct.coda_ctx* %0, %struct.coda_q_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.coda_ctx*, align 8
  %5 = alloca %struct.coda_q_data*, align 8
  %6 = alloca %struct.coda_dev*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.coda_ctx* %0, %struct.coda_ctx** %4, align 8
  store %struct.coda_q_data* %1, %struct.coda_q_data** %5, align 8
  %9 = load %struct.coda_ctx*, %struct.coda_ctx** %4, align 8
  %10 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %9, i32 0, i32 4
  %11 = load %struct.coda_dev*, %struct.coda_dev** %10, align 8
  store %struct.coda_dev* %11, %struct.coda_dev** %6, align 8
  %12 = load %struct.coda_ctx*, %struct.coda_ctx** %4, align 8
  %13 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %28, label %17

17:                                               ; preds = %2
  %18 = load %struct.coda_ctx*, %struct.coda_ctx** %4, align 8
  %19 = load %struct.coda_ctx*, %struct.coda_ctx** %4, align 8
  %20 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %19, i32 0, i32 3
  %21 = load i64, i64* @CODA_PARA_BUF_SIZE, align 8
  %22 = call i32 @coda_alloc_context_buf(%struct.coda_ctx* %18, %struct.TYPE_6__* %20, i64 %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %17
  %26 = load i32, i32* %8, align 4
  store i32 %26, i32* %3, align 4
  br label %150

27:                                               ; preds = %17
  br label %28

28:                                               ; preds = %27, %2
  %29 = load %struct.coda_dev*, %struct.coda_dev** %6, align 8
  %30 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %29, i32 0, i32 0
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @CODA_DX6, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %150

37:                                               ; preds = %28
  %38 = load %struct.coda_ctx*, %struct.coda_ctx** %4, align 8
  %39 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %74, label %43

43:                                               ; preds = %37
  %44 = load %struct.coda_q_data*, %struct.coda_q_data** %5, align 8
  %45 = getelementptr inbounds %struct.coda_q_data, %struct.coda_q_data* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @V4L2_PIX_FMT_H264, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %74

49:                                               ; preds = %43
  %50 = load %struct.coda_q_data*, %struct.coda_q_data** %5, align 8
  %51 = getelementptr inbounds %struct.coda_q_data, %struct.coda_q_data* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @DIV_ROUND_UP(i32 %53, i32 16)
  %55 = load %struct.coda_q_data*, %struct.coda_q_data** %5, align 8
  %56 = getelementptr inbounds %struct.coda_q_data, %struct.coda_q_data* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @DIV_ROUND_UP(i32 %58, i32 16)
  %60 = mul nsw i32 %54, %59
  %61 = mul nsw i32 %60, 3200
  %62 = sdiv i32 %61, 8
  %63 = add nsw i32 %62, 512
  %64 = sext i32 %63 to i64
  store i64 %64, i64* %7, align 8
  %65 = load %struct.coda_ctx*, %struct.coda_ctx** %4, align 8
  %66 = load %struct.coda_ctx*, %struct.coda_ctx** %4, align 8
  %67 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %66, i32 0, i32 2
  %68 = load i64, i64* %7, align 8
  %69 = call i32 @coda_alloc_context_buf(%struct.coda_ctx* %65, %struct.TYPE_6__* %67, i64 %68, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %8, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %49
  br label %146

73:                                               ; preds = %49
  br label %74

74:                                               ; preds = %73, %43, %37
  %75 = load %struct.coda_ctx*, %struct.coda_ctx** %4, align 8
  %76 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %106, label %80

80:                                               ; preds = %74
  %81 = load %struct.coda_dev*, %struct.coda_dev** %6, align 8
  %82 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %81, i32 0, i32 0
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @CODA_HX4, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %96, label %88

88:                                               ; preds = %80
  %89 = load %struct.coda_dev*, %struct.coda_dev** %6, align 8
  %90 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %89, i32 0, i32 0
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @CODA_7541, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %106

96:                                               ; preds = %88, %80
  %97 = load %struct.coda_ctx*, %struct.coda_ctx** %4, align 8
  %98 = load %struct.coda_ctx*, %struct.coda_ctx** %4, align 8
  %99 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %98, i32 0, i32 1
  %100 = load i64, i64* @CODA7_PS_BUF_SIZE, align 8
  %101 = call i32 @coda_alloc_context_buf(%struct.coda_ctx* %97, %struct.TYPE_6__* %99, i64 %100, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  store i32 %101, i32* %8, align 4
  %102 = load i32, i32* %8, align 4
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %96
  br label %146

105:                                              ; preds = %96
  br label %106

106:                                              ; preds = %105, %88, %74
  %107 = load %struct.coda_ctx*, %struct.coda_ctx** %4, align 8
  %108 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %145, label %112

112:                                              ; preds = %106
  %113 = load %struct.coda_dev*, %struct.coda_dev** %6, align 8
  %114 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %113, i32 0, i32 0
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  store i64 %117, i64* %7, align 8
  %118 = load %struct.coda_dev*, %struct.coda_dev** %6, align 8
  %119 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %118, i32 0, i32 0
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @CODA_960, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %135

125:                                              ; preds = %112
  %126 = load %struct.coda_q_data*, %struct.coda_q_data** %5, align 8
  %127 = getelementptr inbounds %struct.coda_q_data, %struct.coda_q_data* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @V4L2_PIX_FMT_H264, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %131, label %135

131:                                              ; preds = %125
  %132 = load i64, i64* @CODA9_PS_SAVE_SIZE, align 8
  %133 = load i64, i64* %7, align 8
  %134 = add i64 %133, %132
  store i64 %134, i64* %7, align 8
  br label %135

135:                                              ; preds = %131, %125, %112
  %136 = load %struct.coda_ctx*, %struct.coda_ctx** %4, align 8
  %137 = load %struct.coda_ctx*, %struct.coda_ctx** %4, align 8
  %138 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %137, i32 0, i32 0
  %139 = load i64, i64* %7, align 8
  %140 = call i32 @coda_alloc_context_buf(%struct.coda_ctx* %136, %struct.TYPE_6__* %138, i64 %139, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  store i32 %140, i32* %8, align 4
  %141 = load i32, i32* %8, align 4
  %142 = icmp slt i32 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %135
  br label %146

144:                                              ; preds = %135
  br label %145

145:                                              ; preds = %144, %106
  store i32 0, i32* %3, align 4
  br label %150

146:                                              ; preds = %143, %104, %72
  %147 = load %struct.coda_ctx*, %struct.coda_ctx** %4, align 8
  %148 = call i32 @coda_free_context_buffers(%struct.coda_ctx* %147)
  %149 = load i32, i32* %8, align 4
  store i32 %149, i32* %3, align 4
  br label %150

150:                                              ; preds = %146, %145, %36, %25
  %151 = load i32, i32* %3, align 4
  ret i32 %151
}

declare dso_local i32 @coda_alloc_context_buf(%struct.coda_ctx*, %struct.TYPE_6__*, i64, i8*) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @coda_free_context_buffers(%struct.coda_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
