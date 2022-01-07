; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_netcp_core.c_netcp_txpipe_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_netcp_core.c_netcp_txpipe_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netcp_tx_pipe = type { i32*, i32*, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.knav_dma_cfg = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32 }

@DMA_MEM_TO_DEV = common dso_local global i32 0, align 4
@DMA_PRIO_MED_L = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"failed opening tx chan(%s)\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"tx-pipe-%s\00", align 1
@KNAV_QUEUE_SHARED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"Could not open DMA queue for channel \22%s\22: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"opened tx pipe %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @netcp_txpipe_open(%struct.netcp_tx_pipe* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.netcp_tx_pipe*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.knav_dma_cfg, align 4
  %6 = alloca i32, align 4
  %7 = alloca [16 x i32], align 16
  store %struct.netcp_tx_pipe* %0, %struct.netcp_tx_pipe** %3, align 8
  %8 = load %struct.netcp_tx_pipe*, %struct.netcp_tx_pipe** %3, align 8
  %9 = getelementptr inbounds %struct.netcp_tx_pipe, %struct.netcp_tx_pipe* %8, i32 0, i32 4
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.device*, %struct.device** %11, align 8
  store %struct.device* %12, %struct.device** %4, align 8
  store i32 0, i32* %6, align 4
  %13 = call i32 @memset(%struct.knav_dma_cfg* %5, i32 0, i32 16)
  %14 = load i32, i32* @DMA_MEM_TO_DEV, align 4
  %15 = getelementptr inbounds %struct.knav_dma_cfg, %struct.knav_dma_cfg* %5, i32 0, i32 1
  store i32 %14, i32* %15, align 4
  %16 = getelementptr inbounds %struct.knav_dma_cfg, %struct.knav_dma_cfg* %5, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  store i32 0, i32* %18, align 4
  %19 = getelementptr inbounds %struct.knav_dma_cfg, %struct.knav_dma_cfg* %5, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  store i32 0, i32* %21, align 4
  %22 = load i32, i32* @DMA_PRIO_MED_L, align 4
  %23 = getelementptr inbounds %struct.knav_dma_cfg, %struct.knav_dma_cfg* %5, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 2
  store i32 %22, i32* %25, align 4
  %26 = load %struct.device*, %struct.device** %4, align 8
  %27 = load %struct.netcp_tx_pipe*, %struct.netcp_tx_pipe** %3, align 8
  %28 = getelementptr inbounds %struct.netcp_tx_pipe, %struct.netcp_tx_pipe* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = call i32* @knav_dma_open_channel(%struct.device* %26, i32 %29, %struct.knav_dma_cfg* %5)
  %31 = load %struct.netcp_tx_pipe*, %struct.netcp_tx_pipe** %3, align 8
  %32 = getelementptr inbounds %struct.netcp_tx_pipe, %struct.netcp_tx_pipe* %31, i32 0, i32 0
  store i32* %30, i32** %32, align 8
  %33 = load %struct.netcp_tx_pipe*, %struct.netcp_tx_pipe** %3, align 8
  %34 = getelementptr inbounds %struct.netcp_tx_pipe, %struct.netcp_tx_pipe* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = call i64 @IS_ERR(i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %50

38:                                               ; preds = %1
  %39 = load %struct.device*, %struct.device** %4, align 8
  %40 = load %struct.netcp_tx_pipe*, %struct.netcp_tx_pipe** %3, align 8
  %41 = getelementptr inbounds %struct.netcp_tx_pipe, %struct.netcp_tx_pipe* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = sext i32 %42 to i64
  %44 = inttoptr i64 %43 to i32*
  %45 = call i32 (%struct.device*, i8*, i32*, ...) @dev_err(%struct.device* %39, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32* %44)
  %46 = load %struct.netcp_tx_pipe*, %struct.netcp_tx_pipe** %3, align 8
  %47 = getelementptr inbounds %struct.netcp_tx_pipe, %struct.netcp_tx_pipe* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = call i32 @PTR_ERR(i32* %48)
  store i32 %49, i32* %6, align 4
  br label %81

50:                                               ; preds = %1
  %51 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 0
  %52 = load %struct.device*, %struct.device** %4, align 8
  %53 = call i8* @dev_name(%struct.device* %52)
  %54 = call i32 @snprintf(i32* %51, i32 64, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %53)
  %55 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 0
  %56 = load %struct.netcp_tx_pipe*, %struct.netcp_tx_pipe** %3, align 8
  %57 = getelementptr inbounds %struct.netcp_tx_pipe, %struct.netcp_tx_pipe* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @KNAV_QUEUE_SHARED, align 4
  %60 = call i32* @knav_queue_open(i32* %55, i32 %58, i32 %59)
  %61 = load %struct.netcp_tx_pipe*, %struct.netcp_tx_pipe** %3, align 8
  %62 = getelementptr inbounds %struct.netcp_tx_pipe, %struct.netcp_tx_pipe* %61, i32 0, i32 1
  store i32* %60, i32** %62, align 8
  %63 = load %struct.netcp_tx_pipe*, %struct.netcp_tx_pipe** %3, align 8
  %64 = getelementptr inbounds %struct.netcp_tx_pipe, %struct.netcp_tx_pipe* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = call i64 @IS_ERR(i32* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %77

68:                                               ; preds = %50
  %69 = load %struct.device*, %struct.device** %4, align 8
  %70 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 0
  %71 = load i32, i32* %6, align 4
  %72 = call i32 (%struct.device*, i8*, i32*, ...) @dev_err(%struct.device* %69, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32* %70, i32 %71)
  %73 = load %struct.netcp_tx_pipe*, %struct.netcp_tx_pipe** %3, align 8
  %74 = getelementptr inbounds %struct.netcp_tx_pipe, %struct.netcp_tx_pipe* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = call i32 @PTR_ERR(i32* %75)
  store i32 %76, i32* %6, align 4
  br label %81

77:                                               ; preds = %50
  %78 = load %struct.device*, %struct.device** %4, align 8
  %79 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 0
  %80 = call i32 @dev_dbg(%struct.device* %78, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32* %79)
  store i32 0, i32* %2, align 4
  br label %96

81:                                               ; preds = %68, %38
  %82 = load %struct.netcp_tx_pipe*, %struct.netcp_tx_pipe** %3, align 8
  %83 = getelementptr inbounds %struct.netcp_tx_pipe, %struct.netcp_tx_pipe* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = call i32 @IS_ERR_OR_NULL(i32* %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %92, label %87

87:                                               ; preds = %81
  %88 = load %struct.netcp_tx_pipe*, %struct.netcp_tx_pipe** %3, align 8
  %89 = getelementptr inbounds %struct.netcp_tx_pipe, %struct.netcp_tx_pipe* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = call i32 @knav_dma_close_channel(i32* %90)
  br label %92

92:                                               ; preds = %87, %81
  %93 = load %struct.netcp_tx_pipe*, %struct.netcp_tx_pipe** %3, align 8
  %94 = getelementptr inbounds %struct.netcp_tx_pipe, %struct.netcp_tx_pipe* %93, i32 0, i32 0
  store i32* null, i32** %94, align 8
  %95 = load i32, i32* %6, align 4
  store i32 %95, i32* %2, align 4
  br label %96

96:                                               ; preds = %92, %77
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

declare dso_local i32 @memset(%struct.knav_dma_cfg*, i32, i32) #1

declare dso_local i32* @knav_dma_open_channel(%struct.device*, i32, %struct.knav_dma_cfg*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32*, ...) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @snprintf(i32*, i32, i8*, i8*) #1

declare dso_local i8* @dev_name(%struct.device*) #1

declare dso_local i32* @knav_queue_open(i32*, i32, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32*) #1

declare dso_local i32 @IS_ERR_OR_NULL(i32*) #1

declare dso_local i32 @knav_dma_close_channel(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
