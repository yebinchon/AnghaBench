; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mvneta.c_mvneta_bm_update_mtu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mvneta.c_mvneta_bm_update_mtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvneta_port = type { i32, i32, i32*, %struct.mvneta_bm_pool*, %struct.mvneta_bm_pool* }
%struct.mvneta_bm_pool = type { i32, i32, i32, %struct.hwbm_pool }
%struct.hwbm_pool = type { i32, i64, i64 }

@.str = private unnamed_addr constant [36 x i8] c"cannot free all buffers in pool %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"pool %d: %d of %d allocated\0A\00", align 1
@MVNETA_ACC_MODE = common dso_local global i32 0, align 4
@MVNETA_ACC_MODE_EXT1 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"fail to update MTU, fall back to software BM\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mvneta_port*, i32)* @mvneta_bm_update_mtu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvneta_bm_update_mtu(%struct.mvneta_port* %0, i32 %1) #0 {
  %3 = alloca %struct.mvneta_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mvneta_bm_pool*, align 8
  %6 = alloca %struct.hwbm_pool*, align 8
  %7 = alloca i32, align 4
  store %struct.mvneta_port* %0, %struct.mvneta_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.mvneta_port*, %struct.mvneta_port** %3, align 8
  %9 = getelementptr inbounds %struct.mvneta_port, %struct.mvneta_port* %8, i32 0, i32 4
  %10 = load %struct.mvneta_bm_pool*, %struct.mvneta_bm_pool** %9, align 8
  store %struct.mvneta_bm_pool* %10, %struct.mvneta_bm_pool** %5, align 8
  %11 = load %struct.mvneta_bm_pool*, %struct.mvneta_bm_pool** %5, align 8
  %12 = getelementptr inbounds %struct.mvneta_bm_pool, %struct.mvneta_bm_pool* %11, i32 0, i32 3
  store %struct.hwbm_pool* %12, %struct.hwbm_pool** %6, align 8
  %13 = load %struct.mvneta_port*, %struct.mvneta_port** %3, align 8
  %14 = getelementptr inbounds %struct.mvneta_port, %struct.mvneta_port* %13, i32 0, i32 2
  %15 = load i32*, i32** %14, align 8
  %16 = load %struct.mvneta_bm_pool*, %struct.mvneta_bm_pool** %5, align 8
  %17 = load %struct.mvneta_port*, %struct.mvneta_port** %3, align 8
  %18 = getelementptr inbounds %struct.mvneta_port, %struct.mvneta_port* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = shl i32 1, %19
  %21 = call i32 @mvneta_bm_bufs_free(i32* %15, %struct.mvneta_bm_pool* %16, i32 %20)
  %22 = load %struct.hwbm_pool*, %struct.hwbm_pool** %6, align 8
  %23 = getelementptr inbounds %struct.hwbm_pool, %struct.hwbm_pool* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %2
  %27 = load %struct.mvneta_bm_pool*, %struct.mvneta_bm_pool** %5, align 8
  %28 = getelementptr inbounds %struct.mvneta_bm_pool, %struct.mvneta_bm_pool* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 (i32, i8*, i32, ...) @WARN(i32 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %29)
  br label %79

31:                                               ; preds = %2
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @MVNETA_RX_PKT_SIZE(i32 %32)
  %34 = load %struct.mvneta_bm_pool*, %struct.mvneta_bm_pool** %5, align 8
  %35 = getelementptr inbounds %struct.mvneta_bm_pool, %struct.mvneta_bm_pool* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 8
  %36 = load %struct.mvneta_bm_pool*, %struct.mvneta_bm_pool** %5, align 8
  %37 = getelementptr inbounds %struct.mvneta_bm_pool, %struct.mvneta_bm_pool* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @MVNETA_RX_BUF_SIZE(i32 %38)
  %40 = load %struct.mvneta_bm_pool*, %struct.mvneta_bm_pool** %5, align 8
  %41 = getelementptr inbounds %struct.mvneta_bm_pool, %struct.mvneta_bm_pool* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = call i64 @SKB_DATA_ALIGN(i32 4)
  %43 = load %struct.mvneta_bm_pool*, %struct.mvneta_bm_pool** %5, align 8
  %44 = getelementptr inbounds %struct.mvneta_bm_pool, %struct.mvneta_bm_pool* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @MVNETA_RX_BUF_SIZE(i32 %45)
  %47 = call i64 @SKB_DATA_ALIGN(i32 %46)
  %48 = add nsw i64 %42, %47
  %49 = load %struct.hwbm_pool*, %struct.hwbm_pool** %6, align 8
  %50 = getelementptr inbounds %struct.hwbm_pool, %struct.hwbm_pool* %49, i32 0, i32 1
  store i64 %48, i64* %50, align 8
  %51 = load %struct.hwbm_pool*, %struct.hwbm_pool** %6, align 8
  %52 = load %struct.hwbm_pool*, %struct.hwbm_pool** %6, align 8
  %53 = getelementptr inbounds %struct.hwbm_pool, %struct.hwbm_pool* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @hwbm_pool_add(%struct.hwbm_pool* %51, i32 %54)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = load %struct.hwbm_pool*, %struct.hwbm_pool** %6, align 8
  %58 = getelementptr inbounds %struct.hwbm_pool, %struct.hwbm_pool* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %56, %59
  br i1 %60, label %61, label %70

61:                                               ; preds = %31
  %62 = load %struct.mvneta_bm_pool*, %struct.mvneta_bm_pool** %5, align 8
  %63 = getelementptr inbounds %struct.mvneta_bm_pool, %struct.mvneta_bm_pool* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %7, align 4
  %66 = load %struct.hwbm_pool*, %struct.hwbm_pool** %6, align 8
  %67 = getelementptr inbounds %struct.hwbm_pool, %struct.hwbm_pool* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 (i32, i8*, i32, ...) @WARN(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %64, i32 %65, i32 %68)
  br label %79

70:                                               ; preds = %31
  %71 = load %struct.mvneta_port*, %struct.mvneta_port** %3, align 8
  %72 = load %struct.mvneta_bm_pool*, %struct.mvneta_bm_pool** %5, align 8
  %73 = getelementptr inbounds %struct.mvneta_bm_pool, %struct.mvneta_bm_pool* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.mvneta_bm_pool*, %struct.mvneta_bm_pool** %5, align 8
  %76 = getelementptr inbounds %struct.mvneta_bm_pool, %struct.mvneta_bm_pool* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @mvneta_bm_pool_bufsize_set(%struct.mvneta_port* %71, i32 %74, i32 %77)
  br label %112

79:                                               ; preds = %61, %26
  %80 = load %struct.mvneta_port*, %struct.mvneta_port** %3, align 8
  %81 = getelementptr inbounds %struct.mvneta_port, %struct.mvneta_port* %80, i32 0, i32 2
  %82 = load i32*, i32** %81, align 8
  %83 = load %struct.mvneta_port*, %struct.mvneta_port** %3, align 8
  %84 = getelementptr inbounds %struct.mvneta_port, %struct.mvneta_port* %83, i32 0, i32 4
  %85 = load %struct.mvneta_bm_pool*, %struct.mvneta_bm_pool** %84, align 8
  %86 = load %struct.mvneta_port*, %struct.mvneta_port** %3, align 8
  %87 = getelementptr inbounds %struct.mvneta_port, %struct.mvneta_port* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = shl i32 1, %88
  %90 = call i32 @mvneta_bm_pool_destroy(i32* %82, %struct.mvneta_bm_pool* %85, i32 %89)
  %91 = load %struct.mvneta_port*, %struct.mvneta_port** %3, align 8
  %92 = getelementptr inbounds %struct.mvneta_port, %struct.mvneta_port* %91, i32 0, i32 2
  %93 = load i32*, i32** %92, align 8
  %94 = load %struct.mvneta_port*, %struct.mvneta_port** %3, align 8
  %95 = getelementptr inbounds %struct.mvneta_port, %struct.mvneta_port* %94, i32 0, i32 3
  %96 = load %struct.mvneta_bm_pool*, %struct.mvneta_bm_pool** %95, align 8
  %97 = load %struct.mvneta_port*, %struct.mvneta_port** %3, align 8
  %98 = getelementptr inbounds %struct.mvneta_port, %struct.mvneta_port* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = shl i32 1, %99
  %101 = call i32 @mvneta_bm_pool_destroy(i32* %93, %struct.mvneta_bm_pool* %96, i32 %100)
  %102 = load %struct.mvneta_port*, %struct.mvneta_port** %3, align 8
  %103 = getelementptr inbounds %struct.mvneta_port, %struct.mvneta_port* %102, i32 0, i32 2
  store i32* null, i32** %103, align 8
  %104 = load %struct.mvneta_port*, %struct.mvneta_port** %3, align 8
  %105 = load i32, i32* @MVNETA_ACC_MODE, align 4
  %106 = load i32, i32* @MVNETA_ACC_MODE_EXT1, align 4
  %107 = call i32 @mvreg_write(%struct.mvneta_port* %104, i32 %105, i32 %106)
  %108 = load %struct.mvneta_port*, %struct.mvneta_port** %3, align 8
  %109 = getelementptr inbounds %struct.mvneta_port, %struct.mvneta_port* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @netdev_info(i32 %110, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  br label %112

112:                                              ; preds = %79, %70
  ret void
}

declare dso_local i32 @mvneta_bm_bufs_free(i32*, %struct.mvneta_bm_pool*, i32) #1

declare dso_local i32 @WARN(i32, i8*, i32, ...) #1

declare dso_local i32 @MVNETA_RX_PKT_SIZE(i32) #1

declare dso_local i32 @MVNETA_RX_BUF_SIZE(i32) #1

declare dso_local i64 @SKB_DATA_ALIGN(i32) #1

declare dso_local i32 @hwbm_pool_add(%struct.hwbm_pool*, i32) #1

declare dso_local i32 @mvneta_bm_pool_bufsize_set(%struct.mvneta_port*, i32, i32) #1

declare dso_local i32 @mvneta_bm_pool_destroy(i32*, %struct.mvneta_bm_pool*, i32) #1

declare dso_local i32 @mvreg_write(%struct.mvneta_port*, i32, i32) #1

declare dso_local i32 @netdev_info(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
