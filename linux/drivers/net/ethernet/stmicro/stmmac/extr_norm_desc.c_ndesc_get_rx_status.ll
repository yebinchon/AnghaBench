; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_norm_desc.c_ndesc_get_rx_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_norm_desc.c_ndesc_get_rx_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stmmac_extra_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dma_desc = type { i32 }
%struct.net_device_stats = type { i32, i32, i32 }

@good_frame = common dso_local global i32 0, align 4
@RDES0_OWN = common dso_local global i32 0, align 4
@dma_own = common dso_local global i32 0, align 4
@RDES0_LAST_DESCRIPTOR = common dso_local global i32 0, align 4
@discard_frame = common dso_local global i32 0, align 4
@RDES0_ERROR_SUMMARY = common dso_local global i32 0, align 4
@RDES0_DESCRIPTOR_ERROR = common dso_local global i32 0, align 4
@RDES0_SA_FILTER_FAIL = common dso_local global i32 0, align 4
@RDES0_OVERFLOW_ERROR = common dso_local global i32 0, align 4
@RDES0_IPC_CSUM_ERROR = common dso_local global i32 0, align 4
@RDES0_COLLISION = common dso_local global i32 0, align 4
@RDES0_CRC_ERROR = common dso_local global i32 0, align 4
@RDES0_DRIBBLING = common dso_local global i32 0, align 4
@RDES0_LENGTH_ERROR = common dso_local global i32 0, align 4
@RDES0_MII_ERROR = common dso_local global i32 0, align 4
@RDES0_VLAN_TAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.stmmac_extra_stats*, %struct.dma_desc*)* @ndesc_get_rx_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ndesc_get_rx_status(i8* %0, %struct.stmmac_extra_stats* %1, %struct.dma_desc* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.stmmac_extra_stats*, align 8
  %7 = alloca %struct.dma_desc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.net_device_stats*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.stmmac_extra_stats* %1, %struct.stmmac_extra_stats** %6, align 8
  store %struct.dma_desc* %2, %struct.dma_desc** %7, align 8
  %11 = load i32, i32* @good_frame, align 4
  store i32 %11, i32* %8, align 4
  %12 = load %struct.dma_desc*, %struct.dma_desc** %7, align 8
  %13 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @le32_to_cpu(i32 %14)
  store i32 %15, i32* %9, align 4
  %16 = load i8*, i8** %5, align 8
  %17 = bitcast i8* %16 to %struct.net_device_stats*
  store %struct.net_device_stats* %17, %struct.net_device_stats** %10, align 8
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* @RDES0_OWN, align 4
  %20 = and i32 %18, %19
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i32, i32* @dma_own, align 4
  store i32 %24, i32* %4, align 4
  br label %159

25:                                               ; preds = %3
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @RDES0_LAST_DESCRIPTOR, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = call i64 @unlikely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %25
  %35 = load %struct.net_device_stats*, %struct.net_device_stats** %10, align 8
  %36 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %36, align 4
  %39 = load i32, i32* @discard_frame, align 4
  store i32 %39, i32* %4, align 4
  br label %159

40:                                               ; preds = %25
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* @RDES0_ERROR_SUMMARY, align 4
  %43 = and i32 %41, %42
  %44 = call i64 @unlikely(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %122

46:                                               ; preds = %40
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* @RDES0_DESCRIPTOR_ERROR, align 4
  %49 = and i32 %47, %48
  %50 = call i64 @unlikely(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %46
  %53 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %6, align 8
  %54 = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %53, i32 0, i32 9
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %54, align 4
  br label %57

57:                                               ; preds = %52, %46
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* @RDES0_SA_FILTER_FAIL, align 4
  %60 = and i32 %58, %59
  %61 = call i64 @unlikely(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %57
  %64 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %6, align 8
  %65 = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %64, i32 0, i32 8
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %65, align 4
  br label %68

68:                                               ; preds = %63, %57
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* @RDES0_OVERFLOW_ERROR, align 4
  %71 = and i32 %69, %70
  %72 = call i64 @unlikely(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %68
  %75 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %6, align 8
  %76 = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %75, i32 0, i32 7
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %76, align 4
  br label %79

79:                                               ; preds = %74, %68
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* @RDES0_IPC_CSUM_ERROR, align 4
  %82 = and i32 %80, %81
  %83 = call i64 @unlikely(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %79
  %86 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %6, align 8
  %87 = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %86, i32 0, i32 6
  %88 = load i32, i32* %87, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %87, align 4
  br label %90

90:                                               ; preds = %85, %79
  %91 = load i32, i32* %9, align 4
  %92 = load i32, i32* @RDES0_COLLISION, align 4
  %93 = and i32 %91, %92
  %94 = call i64 @unlikely(i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %105

96:                                               ; preds = %90
  %97 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %6, align 8
  %98 = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %97, i32 0, i32 5
  %99 = load i32, i32* %98, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %98, align 4
  %101 = load %struct.net_device_stats*, %struct.net_device_stats** %10, align 8
  %102 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %102, align 4
  br label %105

105:                                              ; preds = %96, %90
  %106 = load i32, i32* %9, align 4
  %107 = load i32, i32* @RDES0_CRC_ERROR, align 4
  %108 = and i32 %106, %107
  %109 = call i64 @unlikely(i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %120

111:                                              ; preds = %105
  %112 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %6, align 8
  %113 = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %113, align 4
  %116 = load %struct.net_device_stats*, %struct.net_device_stats** %10, align 8
  %117 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %117, align 4
  br label %120

120:                                              ; preds = %111, %105
  %121 = load i32, i32* @discard_frame, align 4
  store i32 %121, i32* %8, align 4
  br label %122

122:                                              ; preds = %120, %40
  %123 = load i32, i32* %9, align 4
  %124 = load i32, i32* @RDES0_DRIBBLING, align 4
  %125 = and i32 %123, %124
  %126 = call i64 @unlikely(i32 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %122
  %129 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %6, align 8
  %130 = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %130, align 4
  br label %133

133:                                              ; preds = %128, %122
  %134 = load i32, i32* %9, align 4
  %135 = load i32, i32* @RDES0_LENGTH_ERROR, align 4
  %136 = and i32 %134, %135
  %137 = call i64 @unlikely(i32 %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %145

139:                                              ; preds = %133
  %140 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %6, align 8
  %141 = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %141, align 4
  %144 = load i32, i32* @discard_frame, align 4
  store i32 %144, i32* %8, align 4
  br label %145

145:                                              ; preds = %139, %133
  %146 = load i32, i32* %9, align 4
  %147 = load i32, i32* @RDES0_MII_ERROR, align 4
  %148 = and i32 %146, %147
  %149 = call i64 @unlikely(i32 %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %157

151:                                              ; preds = %145
  %152 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %6, align 8
  %153 = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %153, align 4
  %156 = load i32, i32* @discard_frame, align 4
  store i32 %156, i32* %8, align 4
  br label %157

157:                                              ; preds = %151, %145
  %158 = load i32, i32* %8, align 4
  store i32 %158, i32* %4, align 4
  br label %159

159:                                              ; preds = %157, %34, %23
  %160 = load i32, i32* %4, align 4
  ret i32 %160
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
