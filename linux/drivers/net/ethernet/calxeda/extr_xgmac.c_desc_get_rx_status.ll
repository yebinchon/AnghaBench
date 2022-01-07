; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/calxeda/extr_xgmac.c_desc_get_rx_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/calxeda/extr_xgmac.c_desc_get_rx_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgmac_priv = type { i32, %struct.xgmac_extra_stats }
%struct.xgmac_extra_stats = type { i32, i32, i32 }
%struct.xgmac_dma_desc = type { i32, i32 }

@CHECKSUM_UNNECESSARY = common dso_local global i32 0, align 4
@RXDESC_DA_FILTER_FAIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"XGMAC RX : Dest Address filter fail\0A\00", align 1
@RXDESC_FIRST_SEG = common dso_local global i32 0, align 4
@RXDESC_LAST_SEG = common dso_local global i32 0, align 4
@RXDESC_FRAME_TYPE = common dso_local global i32 0, align 4
@RXDESC_EXT_STATUS = common dso_local global i32 0, align 4
@RXDESC_IP_PAYLOAD_MASK = common dso_local global i32 0, align 4
@CHECKSUM_NONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"rx status - frame type=%d, csum = %d, ext stat %08x\0A\00", align 1
@RXDESC_ERROR_SUMMARY = common dso_local global i32 0, align 4
@RXDESC_DESCRIPTOR_ERR = common dso_local global i32 0, align 4
@RXDESC_OVERFLOW_ERR = common dso_local global i32 0, align 4
@RXDESC_GIANT_FRAME = common dso_local global i32 0, align 4
@RXDESC_LENGTH_ERR = common dso_local global i32 0, align 4
@RXDESC_CRC_ERR = common dso_local global i32 0, align 4
@RXDESC_IP_HEADER_ERR = common dso_local global i32 0, align 4
@RXDESC_IP_PAYLOAD_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"IP checksum error - stat %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xgmac_priv*, %struct.xgmac_dma_desc*)* @desc_get_rx_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @desc_get_rx_status(%struct.xgmac_priv* %0, %struct.xgmac_dma_desc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xgmac_priv*, align 8
  %5 = alloca %struct.xgmac_dma_desc*, align 8
  %6 = alloca %struct.xgmac_extra_stats*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.xgmac_priv* %0, %struct.xgmac_priv** %4, align 8
  store %struct.xgmac_dma_desc* %1, %struct.xgmac_dma_desc** %5, align 8
  %10 = load %struct.xgmac_priv*, %struct.xgmac_priv** %4, align 8
  %11 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %10, i32 0, i32 1
  store %struct.xgmac_extra_stats* %11, %struct.xgmac_extra_stats** %6, align 8
  %12 = load i32, i32* @CHECKSUM_UNNECESSARY, align 4
  store i32 %12, i32* %7, align 4
  %13 = load %struct.xgmac_dma_desc*, %struct.xgmac_dma_desc** %5, align 8
  %14 = getelementptr inbounds %struct.xgmac_dma_desc, %struct.xgmac_dma_desc* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @le32_to_cpu(i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load %struct.xgmac_dma_desc*, %struct.xgmac_dma_desc** %5, align 8
  %18 = getelementptr inbounds %struct.xgmac_dma_desc, %struct.xgmac_dma_desc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @le32_to_cpu(i32 %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @RXDESC_DA_FILTER_FAIL, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %2
  %26 = load %struct.xgmac_priv*, %struct.xgmac_priv** %4, align 8
  %27 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 (i32, i8*, ...) @netdev_dbg(i32 %28, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %30 = load %struct.xgmac_extra_stats*, %struct.xgmac_extra_stats** %6, align 8
  %31 = getelementptr inbounds %struct.xgmac_extra_stats, %struct.xgmac_extra_stats* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %31, align 4
  store i32 -1, i32* %3, align 4
  br label %129

34:                                               ; preds = %2
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @RXDESC_FIRST_SEG, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @RXDESC_LAST_SEG, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %39, %34
  store i32 -1, i32* %3, align 4
  br label %129

45:                                               ; preds = %39
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @RXDESC_FRAME_TYPE, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %62

50:                                               ; preds = %45
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* @RXDESC_EXT_STATUS, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %50
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* @RXDESC_IP_PAYLOAD_MASK, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %55
  %61 = load i32, i32* @CHECKSUM_NONE, align 4
  store i32 %61, i32* %7, align 4
  br label %62

62:                                               ; preds = %60, %55, %50, %45
  %63 = load %struct.xgmac_priv*, %struct.xgmac_priv** %4, align 8
  %64 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* @RXDESC_FRAME_TYPE, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  %70 = zext i1 %69 to i64
  %71 = select i1 %69, i32 1, i32 0
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* %9, align 4
  %74 = call i32 (i32, i8*, ...) @netdev_dbg(i32 %65, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %71, i32 %72, i32 %73)
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* @RXDESC_ERROR_SUMMARY, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %81, label %79

79:                                               ; preds = %62
  %80 = load i32, i32* %7, align 4
  store i32 %80, i32* %3, align 4
  br label %129

81:                                               ; preds = %62
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* @RXDESC_DESCRIPTOR_ERR, align 4
  %84 = load i32, i32* @RXDESC_OVERFLOW_ERR, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* @RXDESC_GIANT_FRAME, align 4
  %87 = or i32 %85, %86
  %88 = load i32, i32* @RXDESC_LENGTH_ERR, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* @RXDESC_CRC_ERR, align 4
  %91 = or i32 %89, %90
  %92 = and i32 %82, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %81
  store i32 -1, i32* %3, align 4
  br label %129

95:                                               ; preds = %81
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* @RXDESC_EXT_STATUS, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %127

100:                                              ; preds = %95
  %101 = load i32, i32* %9, align 4
  %102 = load i32, i32* @RXDESC_IP_HEADER_ERR, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %100
  %106 = load %struct.xgmac_extra_stats*, %struct.xgmac_extra_stats** %6, align 8
  %107 = getelementptr inbounds %struct.xgmac_extra_stats, %struct.xgmac_extra_stats* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %107, align 4
  br label %110

110:                                              ; preds = %105, %100
  %111 = load i32, i32* %9, align 4
  %112 = load i32, i32* @RXDESC_IP_PAYLOAD_ERR, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %110
  %116 = load %struct.xgmac_extra_stats*, %struct.xgmac_extra_stats** %6, align 8
  %117 = getelementptr inbounds %struct.xgmac_extra_stats, %struct.xgmac_extra_stats* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %117, align 4
  br label %120

120:                                              ; preds = %115, %110
  %121 = load %struct.xgmac_priv*, %struct.xgmac_priv** %4, align 8
  %122 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* %9, align 4
  %125 = call i32 (i32, i8*, ...) @netdev_dbg(i32 %123, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %124)
  %126 = load i32, i32* @CHECKSUM_NONE, align 4
  store i32 %126, i32* %3, align 4
  br label %129

127:                                              ; preds = %95
  %128 = load i32, i32* %7, align 4
  store i32 %128, i32* %3, align 4
  br label %129

129:                                              ; preds = %127, %120, %94, %79, %44, %25
  %130 = load i32, i32* %3, align 4
  ret i32 %130
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @netdev_dbg(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
