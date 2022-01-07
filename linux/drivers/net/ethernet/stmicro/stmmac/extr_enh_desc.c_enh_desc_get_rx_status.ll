; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_enh_desc.c_enh_desc_get_rx_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_enh_desc.c_enh_desc_get_rx_status.c"
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
@RDES0_OVERFLOW_ERROR = common dso_local global i32 0, align 4
@RDES0_IPC_CSUM_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"\09IPC Csum Error/Giant frame\0A\00", align 1
@RDES0_COLLISION = common dso_local global i32 0, align 4
@RDES0_RECEIVE_WATCHDOG = common dso_local global i32 0, align 4
@RDES0_MII_ERROR = common dso_local global i32 0, align 4
@RDES0_CRC_ERROR = common dso_local global i32 0, align 4
@RDES0_FRAME_TYPE = common dso_local global i32 0, align 4
@ERDES0_RX_MAC_ADDR = common dso_local global i32 0, align 4
@RDES0_DRIBBLING = common dso_local global i32 0, align 4
@RDES0_SA_FILTER_FAIL = common dso_local global i32 0, align 4
@RDES0_DA_FILTER_FAIL = common dso_local global i32 0, align 4
@RDES0_LENGTH_ERROR = common dso_local global i32 0, align 4
@RDES0_VLAN_TAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.stmmac_extra_stats*, %struct.dma_desc*)* @enh_desc_get_rx_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enh_desc_get_rx_status(i8* %0, %struct.stmmac_extra_stats* %1, %struct.dma_desc* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.stmmac_extra_stats*, align 8
  %7 = alloca %struct.dma_desc*, align 8
  %8 = alloca %struct.net_device_stats*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.stmmac_extra_stats* %1, %struct.stmmac_extra_stats** %6, align 8
  store %struct.dma_desc* %2, %struct.dma_desc** %7, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.net_device_stats*
  store %struct.net_device_stats* %12, %struct.net_device_stats** %8, align 8
  %13 = load %struct.dma_desc*, %struct.dma_desc** %7, align 8
  %14 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @le32_to_cpu(i32 %15)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* @good_frame, align 4
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* @RDES0_OWN, align 4
  %20 = and i32 %18, %19
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i32, i32* @dma_own, align 4
  store i32 %24, i32* %4, align 4
  br label %209

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
  %35 = load %struct.net_device_stats*, %struct.net_device_stats** %8, align 8
  %36 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %36, align 4
  %39 = load i32, i32* @discard_frame, align 4
  store i32 %39, i32* %4, align 4
  br label %209

40:                                               ; preds = %25
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* @RDES0_ERROR_SUMMARY, align 4
  %43 = and i32 %41, %42
  %44 = call i64 @unlikely(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %130

46:                                               ; preds = %40
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* @RDES0_DESCRIPTOR_ERROR, align 4
  %49 = and i32 %47, %48
  %50 = call i64 @unlikely(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %46
  %53 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %6, align 8
  %54 = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %53, i32 0, i32 9
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %54, align 4
  %57 = load %struct.net_device_stats*, %struct.net_device_stats** %8, align 8
  %58 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %58, align 4
  br label %61

61:                                               ; preds = %52, %46
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* @RDES0_OVERFLOW_ERROR, align 4
  %64 = and i32 %62, %63
  %65 = call i64 @unlikely(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %61
  %68 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %6, align 8
  %69 = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %68, i32 0, i32 8
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %69, align 4
  br label %72

72:                                               ; preds = %67, %61
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* @RDES0_IPC_CSUM_ERROR, align 4
  %75 = and i32 %73, %74
  %76 = call i64 @unlikely(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %72
  %79 = call i32 @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %80

80:                                               ; preds = %78, %72
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* @RDES0_COLLISION, align 4
  %83 = and i32 %81, %82
  %84 = call i64 @unlikely(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %80
  %87 = load %struct.net_device_stats*, %struct.net_device_stats** %8, align 8
  %88 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %88, align 4
  br label %91

91:                                               ; preds = %86, %80
  %92 = load i32, i32* %9, align 4
  %93 = load i32, i32* @RDES0_RECEIVE_WATCHDOG, align 4
  %94 = and i32 %92, %93
  %95 = call i64 @unlikely(i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %91
  %98 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %6, align 8
  %99 = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %98, i32 0, i32 7
  %100 = load i32, i32* %99, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %99, align 4
  br label %102

102:                                              ; preds = %97, %91
  %103 = load i32, i32* %9, align 4
  %104 = load i32, i32* @RDES0_MII_ERROR, align 4
  %105 = and i32 %103, %104
  %106 = call i64 @unlikely(i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %102
  %109 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %6, align 8
  %110 = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %109, i32 0, i32 6
  %111 = load i32, i32* %110, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %110, align 4
  br label %113

113:                                              ; preds = %108, %102
  %114 = load i32, i32* %9, align 4
  %115 = load i32, i32* @RDES0_CRC_ERROR, align 4
  %116 = and i32 %114, %115
  %117 = call i64 @unlikely(i32 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %128

119:                                              ; preds = %113
  %120 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %6, align 8
  %121 = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %120, i32 0, i32 5
  %122 = load i32, i32* %121, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %121, align 4
  %124 = load %struct.net_device_stats*, %struct.net_device_stats** %8, align 8
  %125 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %125, align 4
  br label %128

128:                                              ; preds = %119, %113
  %129 = load i32, i32* @discard_frame, align 4
  store i32 %129, i32* %10, align 4
  br label %130

130:                                              ; preds = %128, %40
  %131 = load i32, i32* %10, align 4
  %132 = load i32, i32* @good_frame, align 4
  %133 = icmp eq i32 %131, %132
  %134 = zext i1 %133 to i32
  %135 = call i64 @likely(i32 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %160

137:                                              ; preds = %130
  %138 = load i32, i32* %9, align 4
  %139 = load i32, i32* @RDES0_IPC_CSUM_ERROR, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  %142 = xor i1 %141, true
  %143 = xor i1 %142, true
  %144 = zext i1 %143 to i32
  %145 = load i32, i32* %9, align 4
  %146 = load i32, i32* @RDES0_FRAME_TYPE, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  %149 = xor i1 %148, true
  %150 = xor i1 %149, true
  %151 = zext i1 %150 to i32
  %152 = load i32, i32* %9, align 4
  %153 = load i32, i32* @ERDES0_RX_MAC_ADDR, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  %156 = xor i1 %155, true
  %157 = xor i1 %156, true
  %158 = zext i1 %157 to i32
  %159 = call i32 @enh_desc_coe_rdes0(i32 %144, i32 %151, i32 %158)
  store i32 %159, i32* %10, align 4
  br label %160

160:                                              ; preds = %137, %130
  %161 = load i32, i32* %9, align 4
  %162 = load i32, i32* @RDES0_DRIBBLING, align 4
  %163 = and i32 %161, %162
  %164 = call i64 @unlikely(i32 %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %171

166:                                              ; preds = %160
  %167 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %6, align 8
  %168 = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %167, i32 0, i32 4
  %169 = load i32, i32* %168, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %168, align 4
  br label %171

171:                                              ; preds = %166, %160
  %172 = load i32, i32* %9, align 4
  %173 = load i32, i32* @RDES0_SA_FILTER_FAIL, align 4
  %174 = and i32 %172, %173
  %175 = call i64 @unlikely(i32 %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %183

177:                                              ; preds = %171
  %178 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %6, align 8
  %179 = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %178, i32 0, i32 3
  %180 = load i32, i32* %179, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %179, align 4
  %182 = load i32, i32* @discard_frame, align 4
  store i32 %182, i32* %10, align 4
  br label %183

183:                                              ; preds = %177, %171
  %184 = load i32, i32* %9, align 4
  %185 = load i32, i32* @RDES0_DA_FILTER_FAIL, align 4
  %186 = and i32 %184, %185
  %187 = call i64 @unlikely(i32 %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %195

189:                                              ; preds = %183
  %190 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %6, align 8
  %191 = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %191, align 4
  %194 = load i32, i32* @discard_frame, align 4
  store i32 %194, i32* %10, align 4
  br label %195

195:                                              ; preds = %189, %183
  %196 = load i32, i32* %9, align 4
  %197 = load i32, i32* @RDES0_LENGTH_ERROR, align 4
  %198 = and i32 %196, %197
  %199 = call i64 @unlikely(i32 %198)
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %207

201:                                              ; preds = %195
  %202 = load %struct.stmmac_extra_stats*, %struct.stmmac_extra_stats** %6, align 8
  %203 = getelementptr inbounds %struct.stmmac_extra_stats, %struct.stmmac_extra_stats* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %203, align 4
  %206 = load i32, i32* @discard_frame, align 4
  store i32 %206, i32* %10, align 4
  br label %207

207:                                              ; preds = %201, %195
  %208 = load i32, i32* %10, align 4
  store i32 %208, i32* %4, align 4
  br label %209

209:                                              ; preds = %207, %34, %23
  %210 = load i32, i32* %4, align 4
  ret i32 %210
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @enh_desc_coe_rdes0(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
