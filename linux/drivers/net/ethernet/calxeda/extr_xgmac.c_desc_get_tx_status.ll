; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/calxeda/extr_xgmac.c_desc_get_tx_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/calxeda/extr_xgmac.c_desc_get_tx_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgmac_priv = type { i32, i32, %struct.xgmac_extra_stats }
%struct.xgmac_extra_stats = type { i32, i32, i32, i32, i32, i32 }
%struct.xgmac_dma_desc = type { i32 }

@TXDESC_ERROR_SUMMARY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"tx desc error = 0x%08x\0A\00", align 1
@TXDESC_JABBER_TIMEOUT = common dso_local global i32 0, align 4
@TXDESC_FRAME_FLUSHED = common dso_local global i32 0, align 4
@TXDESC_UNDERFLOW_ERR = common dso_local global i32 0, align 4
@TXDESC_IP_HEADER_ERR = common dso_local global i32 0, align 4
@TXDESC_LOCAL_FAULT = common dso_local global i32 0, align 4
@TXDESC_REMOTE_FAULT = common dso_local global i32 0, align 4
@TXDESC_PAYLOAD_CSUM_ERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xgmac_priv*, %struct.xgmac_dma_desc*)* @desc_get_tx_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @desc_get_tx_status(%struct.xgmac_priv* %0, %struct.xgmac_dma_desc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xgmac_priv*, align 8
  %5 = alloca %struct.xgmac_dma_desc*, align 8
  %6 = alloca %struct.xgmac_extra_stats*, align 8
  %7 = alloca i32, align 4
  store %struct.xgmac_priv* %0, %struct.xgmac_priv** %4, align 8
  store %struct.xgmac_dma_desc* %1, %struct.xgmac_dma_desc** %5, align 8
  %8 = load %struct.xgmac_priv*, %struct.xgmac_priv** %4, align 8
  %9 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %8, i32 0, i32 2
  store %struct.xgmac_extra_stats* %9, %struct.xgmac_extra_stats** %6, align 8
  %10 = load %struct.xgmac_dma_desc*, %struct.xgmac_dma_desc** %5, align 8
  %11 = getelementptr inbounds %struct.xgmac_dma_desc, %struct.xgmac_dma_desc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @le32_to_cpu(i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @TXDESC_ERROR_SUMMARY, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %95

19:                                               ; preds = %2
  %20 = load %struct.xgmac_priv*, %struct.xgmac_priv** %4, align 8
  %21 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @netdev_dbg(i32 %22, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @TXDESC_JABBER_TIMEOUT, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %19
  %30 = load %struct.xgmac_extra_stats*, %struct.xgmac_extra_stats** %6, align 8
  %31 = getelementptr inbounds %struct.xgmac_extra_stats, %struct.xgmac_extra_stats* %30, i32 0, i32 5
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %31, align 4
  br label %34

34:                                               ; preds = %29, %19
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @TXDESC_FRAME_FLUSHED, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load %struct.xgmac_extra_stats*, %struct.xgmac_extra_stats** %6, align 8
  %41 = getelementptr inbounds %struct.xgmac_extra_stats, %struct.xgmac_extra_stats* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %41, align 4
  br label %44

44:                                               ; preds = %39, %34
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @TXDESC_UNDERFLOW_ERR, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = load %struct.xgmac_priv*, %struct.xgmac_priv** %4, align 8
  %51 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @xgmac_dma_flush_tx_fifo(i32 %52)
  br label %54

54:                                               ; preds = %49, %44
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @TXDESC_IP_HEADER_ERR, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %54
  %60 = load %struct.xgmac_extra_stats*, %struct.xgmac_extra_stats** %6, align 8
  %61 = getelementptr inbounds %struct.xgmac_extra_stats, %struct.xgmac_extra_stats* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 4
  br label %64

64:                                               ; preds = %59, %54
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* @TXDESC_LOCAL_FAULT, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %64
  %70 = load %struct.xgmac_extra_stats*, %struct.xgmac_extra_stats** %6, align 8
  %71 = getelementptr inbounds %struct.xgmac_extra_stats, %struct.xgmac_extra_stats* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %71, align 4
  br label %74

74:                                               ; preds = %69, %64
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* @TXDESC_REMOTE_FAULT, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %74
  %80 = load %struct.xgmac_extra_stats*, %struct.xgmac_extra_stats** %6, align 8
  %81 = getelementptr inbounds %struct.xgmac_extra_stats, %struct.xgmac_extra_stats* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %81, align 4
  br label %84

84:                                               ; preds = %79, %74
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* @TXDESC_PAYLOAD_CSUM_ERR, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %84
  %90 = load %struct.xgmac_extra_stats*, %struct.xgmac_extra_stats** %6, align 8
  %91 = getelementptr inbounds %struct.xgmac_extra_stats, %struct.xgmac_extra_stats* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %91, align 4
  br label %94

94:                                               ; preds = %89, %84
  store i32 -1, i32* %3, align 4
  br label %95

95:                                               ; preds = %94, %18
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @netdev_dbg(i32, i8*, i32) #1

declare dso_local i32 @xgmac_dma_flush_tx_fifo(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
