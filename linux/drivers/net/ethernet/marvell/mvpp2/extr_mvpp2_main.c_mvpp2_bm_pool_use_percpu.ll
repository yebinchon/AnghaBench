; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_bm_pool_use_percpu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_bm_pool_use_percpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.mvpp2_bm_pool = type { i32, i32, i32, i64 }
%struct.mvpp2_port = type { i32, %struct.TYPE_9__*, %struct.TYPE_7__* }
%struct.TYPE_9__ = type { %struct.mvpp2_bm_pool* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"Invalid pool %d\0A\00", align 1
@mvpp2_pools = common dso_local global %struct.TYPE_8__* null, align 8
@MVPP2_SKB_SHINFO_SIZE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"pool %d: %d of %d allocated\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mvpp2_bm_pool* (%struct.mvpp2_port*, i32, i32, i32)* @mvpp2_bm_pool_use_percpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mvpp2_bm_pool* @mvpp2_bm_pool_use_percpu(%struct.mvpp2_port* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.mvpp2_bm_pool*, align 8
  %6 = alloca %struct.mvpp2_port*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mvpp2_bm_pool*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mvpp2_port* %0, %struct.mvpp2_port** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.mvpp2_port*, %struct.mvpp2_port** %6, align 8
  %14 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %13, i32 0, i32 1
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = load %struct.mvpp2_bm_pool*, %struct.mvpp2_bm_pool** %16, align 8
  %18 = load i32, i32* %8, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.mvpp2_bm_pool, %struct.mvpp2_bm_pool* %17, i64 %19
  store %struct.mvpp2_bm_pool* %20, %struct.mvpp2_bm_pool** %10, align 8
  %21 = load i32, i32* %8, align 4
  %22 = load %struct.mvpp2_port*, %struct.mvpp2_port** %6, align 8
  %23 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = mul nsw i32 %24, 2
  %26 = icmp ugt i32 %21, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %4
  %28 = load %struct.mvpp2_port*, %struct.mvpp2_port** %6, align 8
  %29 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %28, i32 0, i32 2
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %29, align 8
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @netdev_err(%struct.TYPE_7__* %30, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %31)
  store %struct.mvpp2_bm_pool* null, %struct.mvpp2_bm_pool** %5, align 8
  br label %101

33:                                               ; preds = %4
  %34 = load %struct.mvpp2_bm_pool*, %struct.mvpp2_bm_pool** %10, align 8
  %35 = getelementptr inbounds %struct.mvpp2_bm_pool, %struct.mvpp2_bm_pool* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %90

38:                                               ; preds = %33
  %39 = load %struct.mvpp2_bm_pool*, %struct.mvpp2_bm_pool** %10, align 8
  %40 = getelementptr inbounds %struct.mvpp2_bm_pool, %struct.mvpp2_bm_pool* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %12, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %38
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** @mvpp2_pools, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %12, align 4
  br label %64

51:                                               ; preds = %38
  %52 = load %struct.mvpp2_port*, %struct.mvpp2_port** %6, align 8
  %53 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %52, i32 0, i32 2
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.mvpp2_port*, %struct.mvpp2_port** %6, align 8
  %59 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %58, i32 0, i32 1
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %59, align 8
  %61 = load %struct.mvpp2_bm_pool*, %struct.mvpp2_bm_pool** %10, align 8
  %62 = load i32, i32* %12, align 4
  %63 = call i32 @mvpp2_bm_bufs_free(i32 %57, %struct.TYPE_9__* %60, %struct.mvpp2_bm_pool* %61, i32 %62)
  br label %64

64:                                               ; preds = %51, %44
  %65 = load i32, i32* %9, align 4
  %66 = load %struct.mvpp2_bm_pool*, %struct.mvpp2_bm_pool** %10, align 8
  %67 = getelementptr inbounds %struct.mvpp2_bm_pool, %struct.mvpp2_bm_pool* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @MVPP2_RX_BUF_SIZE(i32 %68)
  %70 = call i64 @SKB_DATA_ALIGN(i32 %69)
  %71 = load i64, i64* @MVPP2_SKB_SHINFO_SIZE, align 8
  %72 = add nsw i64 %70, %71
  %73 = load %struct.mvpp2_bm_pool*, %struct.mvpp2_bm_pool** %10, align 8
  %74 = getelementptr inbounds %struct.mvpp2_bm_pool, %struct.mvpp2_bm_pool* %73, i32 0, i32 3
  store i64 %72, i64* %74, align 8
  %75 = load %struct.mvpp2_port*, %struct.mvpp2_port** %6, align 8
  %76 = load %struct.mvpp2_bm_pool*, %struct.mvpp2_bm_pool** %10, align 8
  %77 = load i32, i32* %12, align 4
  %78 = call i32 @mvpp2_bm_bufs_add(%struct.mvpp2_port* %75, %struct.mvpp2_bm_pool* %76, i32 %77)
  store i32 %78, i32* %11, align 4
  %79 = load i32, i32* %11, align 4
  %80 = load i32, i32* %12, align 4
  %81 = icmp ne i32 %79, %80
  br i1 %81, label %82, label %89

82:                                               ; preds = %64
  %83 = load %struct.mvpp2_bm_pool*, %struct.mvpp2_bm_pool** %10, align 8
  %84 = getelementptr inbounds %struct.mvpp2_bm_pool, %struct.mvpp2_bm_pool* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* %11, align 4
  %87 = load i32, i32* %12, align 4
  %88 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %85, i32 %86, i32 %87)
  store %struct.mvpp2_bm_pool* null, %struct.mvpp2_bm_pool** %5, align 8
  br label %101

89:                                               ; preds = %64
  br label %90

90:                                               ; preds = %89, %33
  %91 = load %struct.mvpp2_port*, %struct.mvpp2_port** %6, align 8
  %92 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %91, i32 0, i32 1
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %92, align 8
  %94 = load %struct.mvpp2_bm_pool*, %struct.mvpp2_bm_pool** %10, align 8
  %95 = load %struct.mvpp2_bm_pool*, %struct.mvpp2_bm_pool** %10, align 8
  %96 = getelementptr inbounds %struct.mvpp2_bm_pool, %struct.mvpp2_bm_pool* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @MVPP2_RX_BUF_SIZE(i32 %97)
  %99 = call i32 @mvpp2_bm_pool_bufsize_set(%struct.TYPE_9__* %93, %struct.mvpp2_bm_pool* %94, i32 %98)
  %100 = load %struct.mvpp2_bm_pool*, %struct.mvpp2_bm_pool** %10, align 8
  store %struct.mvpp2_bm_pool* %100, %struct.mvpp2_bm_pool** %5, align 8
  br label %101

101:                                              ; preds = %90, %82, %27
  %102 = load %struct.mvpp2_bm_pool*, %struct.mvpp2_bm_pool** %5, align 8
  ret %struct.mvpp2_bm_pool* %102
}

declare dso_local i32 @netdev_err(%struct.TYPE_7__*, i8*, i32) #1

declare dso_local i32 @mvpp2_bm_bufs_free(i32, %struct.TYPE_9__*, %struct.mvpp2_bm_pool*, i32) #1

declare dso_local i64 @SKB_DATA_ALIGN(i32) #1

declare dso_local i32 @MVPP2_RX_BUF_SIZE(i32) #1

declare dso_local i32 @mvpp2_bm_bufs_add(%struct.mvpp2_port*, %struct.mvpp2_bm_pool*, i32) #1

declare dso_local i32 @WARN(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @mvpp2_bm_pool_bufsize_set(%struct.TYPE_9__*, %struct.mvpp2_bm_pool*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
