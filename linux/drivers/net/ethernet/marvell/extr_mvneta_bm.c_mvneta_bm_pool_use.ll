; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mvneta_bm.c_mvneta_bm_pool_use.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mvneta_bm.c_mvneta_bm_pool_use.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvneta_bm_pool = type { i64, i32, i32, i32, i32, %struct.mvneta_bm*, %struct.hwbm_pool }
%struct.hwbm_pool = type { i32, i32, %struct.mvneta_bm_pool*, i32, i64 }
%struct.mvneta_bm = type { %struct.TYPE_2__*, %struct.mvneta_bm_pool* }
%struct.TYPE_2__ = type { i32 }

@MVNETA_BM_LONG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"long pool cannot be shared by the ports\0A\00", align 1
@MVNETA_BM_SHORT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [52 x i8] c"mixing pools' types between the ports is forbidden\0A\00", align 1
@MVNETA_BM_FREE = common dso_local global i64 0, align 8
@mvneta_bm_construct = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"fail to create pool %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"pool %d: %d of %d allocated\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mvneta_bm_pool* @mvneta_bm_pool_use(%struct.mvneta_bm* %0, i64 %1, i32 %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.mvneta_bm_pool*, align 8
  %7 = alloca %struct.mvneta_bm*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.mvneta_bm_pool*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.hwbm_pool*, align 8
  store %struct.mvneta_bm* %0, %struct.mvneta_bm** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %16 = load %struct.mvneta_bm*, %struct.mvneta_bm** %7, align 8
  %17 = getelementptr inbounds %struct.mvneta_bm, %struct.mvneta_bm* %16, i32 0, i32 1
  %18 = load %struct.mvneta_bm_pool*, %struct.mvneta_bm_pool** %17, align 8
  %19 = load i64, i64* %8, align 8
  %20 = getelementptr inbounds %struct.mvneta_bm_pool, %struct.mvneta_bm_pool* %18, i64 %19
  store %struct.mvneta_bm_pool* %20, %struct.mvneta_bm_pool** %12, align 8
  %21 = load %struct.mvneta_bm_pool*, %struct.mvneta_bm_pool** %12, align 8
  %22 = getelementptr inbounds %struct.mvneta_bm_pool, %struct.mvneta_bm_pool* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @MVNETA_BM_LONG, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %40

26:                                               ; preds = %5
  %27 = load %struct.mvneta_bm_pool*, %struct.mvneta_bm_pool** %12, align 8
  %28 = getelementptr inbounds %struct.mvneta_bm_pool, %struct.mvneta_bm_pool* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load i64, i64* %10, align 8
  %31 = trunc i64 %30 to i32
  %32 = shl i32 1, %31
  %33 = icmp ne i32 %29, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %26
  %35 = load %struct.mvneta_bm*, %struct.mvneta_bm** %7, align 8
  %36 = getelementptr inbounds %struct.mvneta_bm, %struct.mvneta_bm* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = call i32 (i32*, i8*, ...) @dev_err(i32* %38, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  store %struct.mvneta_bm_pool* null, %struct.mvneta_bm_pool** %6, align 8
  br label %150

40:                                               ; preds = %26, %5
  %41 = load %struct.mvneta_bm_pool*, %struct.mvneta_bm_pool** %12, align 8
  %42 = getelementptr inbounds %struct.mvneta_bm_pool, %struct.mvneta_bm_pool* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @MVNETA_BM_SHORT, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %59

46:                                               ; preds = %40
  %47 = load %struct.mvneta_bm_pool*, %struct.mvneta_bm_pool** %12, align 8
  %48 = getelementptr inbounds %struct.mvneta_bm_pool, %struct.mvneta_bm_pool* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i32, i32* %9, align 4
  %51 = zext i32 %50 to i64
  %52 = icmp ne i64 %49, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %46
  %54 = load %struct.mvneta_bm*, %struct.mvneta_bm** %7, align 8
  %55 = getelementptr inbounds %struct.mvneta_bm, %struct.mvneta_bm* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = call i32 (i32*, i8*, ...) @dev_err(i32* %57, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  store %struct.mvneta_bm_pool* null, %struct.mvneta_bm_pool** %6, align 8
  br label %150

59:                                               ; preds = %46, %40
  %60 = load %struct.mvneta_bm_pool*, %struct.mvneta_bm_pool** %12, align 8
  %61 = getelementptr inbounds %struct.mvneta_bm_pool, %struct.mvneta_bm_pool* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %69, label %64

64:                                               ; preds = %59
  %65 = load i32, i32* %9, align 4
  %66 = zext i32 %65 to i64
  %67 = load i64, i64* @MVNETA_BM_SHORT, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %64, %59
  %70 = load i32, i32* %11, align 4
  %71 = load %struct.mvneta_bm_pool*, %struct.mvneta_bm_pool** %12, align 8
  %72 = getelementptr inbounds %struct.mvneta_bm_pool, %struct.mvneta_bm_pool* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 4
  br label %73

73:                                               ; preds = %69, %64
  %74 = load %struct.mvneta_bm_pool*, %struct.mvneta_bm_pool** %12, align 8
  %75 = getelementptr inbounds %struct.mvneta_bm_pool, %struct.mvneta_bm_pool* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @MVNETA_BM_FREE, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %148

79:                                               ; preds = %73
  %80 = load %struct.mvneta_bm_pool*, %struct.mvneta_bm_pool** %12, align 8
  %81 = getelementptr inbounds %struct.mvneta_bm_pool, %struct.mvneta_bm_pool* %80, i32 0, i32 6
  store %struct.hwbm_pool* %81, %struct.hwbm_pool** %15, align 8
  %82 = load %struct.mvneta_bm*, %struct.mvneta_bm** %7, align 8
  %83 = load %struct.mvneta_bm_pool*, %struct.mvneta_bm_pool** %12, align 8
  %84 = getelementptr inbounds %struct.mvneta_bm_pool, %struct.mvneta_bm_pool* %83, i32 0, i32 5
  store %struct.mvneta_bm* %82, %struct.mvneta_bm** %84, align 8
  %85 = load i32, i32* %9, align 4
  %86 = zext i32 %85 to i64
  %87 = load %struct.mvneta_bm_pool*, %struct.mvneta_bm_pool** %12, align 8
  %88 = getelementptr inbounds %struct.mvneta_bm_pool, %struct.mvneta_bm_pool* %87, i32 0, i32 0
  store i64 %86, i64* %88, align 8
  %89 = load %struct.mvneta_bm_pool*, %struct.mvneta_bm_pool** %12, align 8
  %90 = getelementptr inbounds %struct.mvneta_bm_pool, %struct.mvneta_bm_pool* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @MVNETA_RX_BUF_SIZE(i32 %91)
  %93 = load %struct.mvneta_bm_pool*, %struct.mvneta_bm_pool** %12, align 8
  %94 = getelementptr inbounds %struct.mvneta_bm_pool, %struct.mvneta_bm_pool* %93, i32 0, i32 3
  store i32 %92, i32* %94, align 8
  %95 = load %struct.mvneta_bm_pool*, %struct.mvneta_bm_pool** %12, align 8
  %96 = getelementptr inbounds %struct.mvneta_bm_pool, %struct.mvneta_bm_pool* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @MVNETA_RX_BUF_SIZE(i32 %97)
  %99 = call i64 @SKB_DATA_ALIGN(i32 %98)
  %100 = call i64 @SKB_DATA_ALIGN(i32 4)
  %101 = add nsw i64 %99, %100
  %102 = load %struct.hwbm_pool*, %struct.hwbm_pool** %15, align 8
  %103 = getelementptr inbounds %struct.hwbm_pool, %struct.hwbm_pool* %102, i32 0, i32 4
  store i64 %101, i64* %103, align 8
  %104 = load i32, i32* @mvneta_bm_construct, align 4
  %105 = load %struct.hwbm_pool*, %struct.hwbm_pool** %15, align 8
  %106 = getelementptr inbounds %struct.hwbm_pool, %struct.hwbm_pool* %105, i32 0, i32 3
  store i32 %104, i32* %106, align 8
  %107 = load %struct.mvneta_bm_pool*, %struct.mvneta_bm_pool** %12, align 8
  %108 = load %struct.hwbm_pool*, %struct.hwbm_pool** %15, align 8
  %109 = getelementptr inbounds %struct.hwbm_pool, %struct.hwbm_pool* %108, i32 0, i32 2
  store %struct.mvneta_bm_pool* %107, %struct.mvneta_bm_pool** %109, align 8
  %110 = load %struct.hwbm_pool*, %struct.hwbm_pool** %15, align 8
  %111 = getelementptr inbounds %struct.hwbm_pool, %struct.hwbm_pool* %110, i32 0, i32 1
  %112 = call i32 @mutex_init(i32* %111)
  %113 = load %struct.mvneta_bm*, %struct.mvneta_bm** %7, align 8
  %114 = load %struct.mvneta_bm_pool*, %struct.mvneta_bm_pool** %12, align 8
  %115 = call i32 @mvneta_bm_pool_create(%struct.mvneta_bm* %113, %struct.mvneta_bm_pool* %114)
  store i32 %115, i32* %14, align 4
  %116 = load i32, i32* %14, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %127

118:                                              ; preds = %79
  %119 = load %struct.mvneta_bm*, %struct.mvneta_bm** %7, align 8
  %120 = getelementptr inbounds %struct.mvneta_bm, %struct.mvneta_bm* %119, i32 0, i32 0
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 0
  %123 = load %struct.mvneta_bm_pool*, %struct.mvneta_bm_pool** %12, align 8
  %124 = getelementptr inbounds %struct.mvneta_bm_pool, %struct.mvneta_bm_pool* %123, i32 0, i32 4
  %125 = load i32, i32* %124, align 4
  %126 = call i32 (i32*, i8*, ...) @dev_err(i32* %122, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %125)
  store %struct.mvneta_bm_pool* null, %struct.mvneta_bm_pool** %6, align 8
  br label %150

127:                                              ; preds = %79
  %128 = load %struct.hwbm_pool*, %struct.hwbm_pool** %15, align 8
  %129 = load %struct.hwbm_pool*, %struct.hwbm_pool** %15, align 8
  %130 = getelementptr inbounds %struct.hwbm_pool, %struct.hwbm_pool* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @hwbm_pool_add(%struct.hwbm_pool* %128, i32 %131)
  store i32 %132, i32* %13, align 4
  %133 = load i32, i32* %13, align 4
  %134 = load %struct.hwbm_pool*, %struct.hwbm_pool** %15, align 8
  %135 = getelementptr inbounds %struct.hwbm_pool, %struct.hwbm_pool* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = icmp ne i32 %133, %136
  br i1 %137, label %138, label %147

138:                                              ; preds = %127
  %139 = load %struct.mvneta_bm_pool*, %struct.mvneta_bm_pool** %12, align 8
  %140 = getelementptr inbounds %struct.mvneta_bm_pool, %struct.mvneta_bm_pool* %139, i32 0, i32 4
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* %13, align 4
  %143 = load %struct.hwbm_pool*, %struct.hwbm_pool** %15, align 8
  %144 = getelementptr inbounds %struct.hwbm_pool, %struct.hwbm_pool* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %141, i32 %142, i32 %145)
  store %struct.mvneta_bm_pool* null, %struct.mvneta_bm_pool** %6, align 8
  br label %150

147:                                              ; preds = %127
  br label %148

148:                                              ; preds = %147, %73
  %149 = load %struct.mvneta_bm_pool*, %struct.mvneta_bm_pool** %12, align 8
  store %struct.mvneta_bm_pool* %149, %struct.mvneta_bm_pool** %6, align 8
  br label %150

150:                                              ; preds = %148, %138, %118, %53, %34
  %151 = load %struct.mvneta_bm_pool*, %struct.mvneta_bm_pool** %6, align 8
  ret %struct.mvneta_bm_pool* %151
}

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @MVNETA_RX_BUF_SIZE(i32) #1

declare dso_local i64 @SKB_DATA_ALIGN(i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @mvneta_bm_pool_create(%struct.mvneta_bm*, %struct.mvneta_bm_pool*) #1

declare dso_local i32 @hwbm_pool_add(%struct.hwbm_pool*, i32) #1

declare dso_local i32 @WARN(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
