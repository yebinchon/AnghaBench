; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/extr_hip04_eth.c_hip04_config_fifo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/extr_hip04_eth.c_hip04_config_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hip04_priv = type { i32, i32, i32, i64, i32 }

@PPE_CFG_STS_MODE = common dso_local global i64 0, align 8
@PPE_CFG_STS_RX_PKT_CNT_RC = common dso_local global i32 0, align 4
@PPE_CFG_POOL_GRP = common dso_local global i64 0, align 8
@PPE_CFG_QOS_VMID_GRP_SHIFT = common dso_local global i32 0, align 4
@PPE_CFG_QOS_VMID_MODE = common dso_local global i32 0, align 4
@PPE_CFG_QOS_VMID_GEN = common dso_local global i64 0, align 8
@RX_BUF_SIZE = common dso_local global i32 0, align 4
@PPE_BUF_SIZE_SHIFT = common dso_local global i32 0, align 4
@PPE_CFG_RX_BUF_SIZE = common dso_local global i64 0, align 8
@RX_DESC_NUM = common dso_local global i32 0, align 4
@PPE_CFG_RX_DEPTH_SHIFT = common dso_local global i32 0, align 4
@PPE_CFG_RX_FIFO_FSFU = common dso_local global i32 0, align 4
@PPE_CFG_RX_START_SHIFT = common dso_local global i32 0, align 4
@PPE_CFG_RX_FIFO_SIZE = common dso_local global i64 0, align 8
@NET_IP_ALIGN = common dso_local global i32 0, align 4
@PPE_CFG_RX_CTRL_ALIGN_SHIFT = common dso_local global i32 0, align 4
@PPE_CFG_RX_CTRL_REG = common dso_local global i64 0, align 8
@PPE_CFG_RX_PKT_ALIGN = common dso_local global i32 0, align 4
@PPE_CFG_RX_PKT_MODE_REG = common dso_local global i64 0, align 8
@PPE_CFG_BUS_LOCAL_REL = common dso_local global i32 0, align 4
@PPE_CFG_BUS_BIG_ENDIEN = common dso_local global i32 0, align 4
@PPE_CFG_BUS_CTRL_REG = common dso_local global i64 0, align 8
@GMAC_PPE_RX_PKT_MAX_LEN = common dso_local global i32 0, align 4
@PPE_CFG_MAX_FRAME_LEN_REG = common dso_local global i64 0, align 8
@GMAC_MAX_PKT_LEN = common dso_local global i32 0, align 4
@GE_MAX_FRM_SIZE_REG = common dso_local global i64 0, align 8
@GMAC_MIN_PKT_LEN = common dso_local global i32 0, align 4
@GE_SHORT_RUNTS_THR_REG = common dso_local global i64 0, align 8
@GE_TRANSMIT_CONTROL_REG = common dso_local global i64 0, align 8
@GE_TX_AUTO_NEG = common dso_local global i32 0, align 4
@GE_TX_ADD_CRC = common dso_local global i32 0, align 4
@GE_TX_SHORT_PAD_THROUGH = common dso_local global i32 0, align 4
@GE_RX_STRIP_CRC = common dso_local global i32 0, align 4
@GE_CF_CRC_STRIP_REG = common dso_local global i64 0, align 8
@GE_RECV_CONTROL_REG = common dso_local global i64 0, align 8
@GE_RX_STRIP_PAD = common dso_local global i32 0, align 4
@GE_RX_PAD_EN = common dso_local global i32 0, align 4
@GE_AUTO_NEG_CTL = common dso_local global i32 0, align 4
@GE_TX_LOCAL_PAGE_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hip04_priv*)* @hip04_config_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hip04_config_fifo(%struct.hip04_priv* %0) #0 {
  %2 = alloca %struct.hip04_priv*, align 8
  %3 = alloca i32, align 4
  store %struct.hip04_priv* %0, %struct.hip04_priv** %2, align 8
  %4 = load %struct.hip04_priv*, %struct.hip04_priv** %2, align 8
  %5 = getelementptr inbounds %struct.hip04_priv, %struct.hip04_priv* %4, i32 0, i32 3
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @PPE_CFG_STS_MODE, align 8
  %8 = add nsw i64 %6, %7
  %9 = call i32 @readl_relaxed(i64 %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* @PPE_CFG_STS_RX_PKT_CNT_RC, align 4
  %11 = load i32, i32* %3, align 4
  %12 = or i32 %11, %10
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = load %struct.hip04_priv*, %struct.hip04_priv** %2, align 8
  %15 = getelementptr inbounds %struct.hip04_priv, %struct.hip04_priv* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @PPE_CFG_STS_MODE, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @writel_relaxed(i32 %13, i64 %18)
  %20 = load %struct.hip04_priv*, %struct.hip04_priv** %2, align 8
  %21 = getelementptr inbounds %struct.hip04_priv, %struct.hip04_priv* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @BIT(i32 %22)
  store i32 %23, i32* %3, align 4
  %24 = load %struct.hip04_priv*, %struct.hip04_priv** %2, align 8
  %25 = getelementptr inbounds %struct.hip04_priv, %struct.hip04_priv* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.hip04_priv*, %struct.hip04_priv** %2, align 8
  %28 = getelementptr inbounds %struct.hip04_priv, %struct.hip04_priv* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = mul nsw i32 %29, 4
  %31 = sext i32 %30 to i64
  %32 = load i64, i64* @PPE_CFG_POOL_GRP, align 8
  %33 = add nsw i64 %31, %32
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @regmap_write(i32 %26, i64 %33, i32 %34)
  %36 = load %struct.hip04_priv*, %struct.hip04_priv** %2, align 8
  %37 = getelementptr inbounds %struct.hip04_priv, %struct.hip04_priv* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @PPE_CFG_QOS_VMID_GRP_SHIFT, align 4
  %40 = shl i32 %38, %39
  store i32 %40, i32* %3, align 4
  %41 = load i32, i32* @PPE_CFG_QOS_VMID_MODE, align 4
  %42 = load i32, i32* %3, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %3, align 4
  %44 = load i32, i32* %3, align 4
  %45 = load %struct.hip04_priv*, %struct.hip04_priv** %2, align 8
  %46 = getelementptr inbounds %struct.hip04_priv, %struct.hip04_priv* %45, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @PPE_CFG_QOS_VMID_GEN, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @writel_relaxed(i32 %44, i64 %49)
  %51 = load i32, i32* @RX_BUF_SIZE, align 4
  %52 = load i32, i32* @PPE_BUF_SIZE_SHIFT, align 4
  %53 = ashr i32 %51, %52
  store i32 %53, i32* %3, align 4
  %54 = load %struct.hip04_priv*, %struct.hip04_priv** %2, align 8
  %55 = getelementptr inbounds %struct.hip04_priv, %struct.hip04_priv* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.hip04_priv*, %struct.hip04_priv** %2, align 8
  %58 = getelementptr inbounds %struct.hip04_priv, %struct.hip04_priv* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = mul nsw i32 %59, 4
  %61 = sext i32 %60 to i64
  %62 = load i64, i64* @PPE_CFG_RX_BUF_SIZE, align 8
  %63 = add nsw i64 %61, %62
  %64 = load i32, i32* %3, align 4
  %65 = call i32 @regmap_write(i32 %56, i64 %63, i32 %64)
  %66 = load i32, i32* @RX_DESC_NUM, align 4
  %67 = load i32, i32* @PPE_CFG_RX_DEPTH_SHIFT, align 4
  %68 = shl i32 %66, %67
  store i32 %68, i32* %3, align 4
  %69 = load i32, i32* @PPE_CFG_RX_FIFO_FSFU, align 4
  %70 = load i32, i32* %3, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %3, align 4
  %72 = load %struct.hip04_priv*, %struct.hip04_priv** %2, align 8
  %73 = getelementptr inbounds %struct.hip04_priv, %struct.hip04_priv* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @PPE_CFG_RX_START_SHIFT, align 4
  %76 = shl i32 %74, %75
  %77 = load i32, i32* %3, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %3, align 4
  %79 = load %struct.hip04_priv*, %struct.hip04_priv** %2, align 8
  %80 = getelementptr inbounds %struct.hip04_priv, %struct.hip04_priv* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.hip04_priv*, %struct.hip04_priv** %2, align 8
  %83 = getelementptr inbounds %struct.hip04_priv, %struct.hip04_priv* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = mul nsw i32 %84, 4
  %86 = sext i32 %85 to i64
  %87 = load i64, i64* @PPE_CFG_RX_FIFO_SIZE, align 8
  %88 = add nsw i64 %86, %87
  %89 = load i32, i32* %3, align 4
  %90 = call i32 @regmap_write(i32 %81, i64 %88, i32 %89)
  %91 = load i32, i32* @NET_IP_ALIGN, align 4
  %92 = load i32, i32* @PPE_CFG_RX_CTRL_ALIGN_SHIFT, align 4
  %93 = shl i32 %91, %92
  store i32 %93, i32* %3, align 4
  %94 = load i32, i32* %3, align 4
  %95 = load %struct.hip04_priv*, %struct.hip04_priv** %2, align 8
  %96 = getelementptr inbounds %struct.hip04_priv, %struct.hip04_priv* %95, i32 0, i32 3
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @PPE_CFG_RX_CTRL_REG, align 8
  %99 = add nsw i64 %97, %98
  %100 = call i32 @writel_relaxed(i32 %94, i64 %99)
  %101 = load i32, i32* @PPE_CFG_RX_PKT_ALIGN, align 4
  store i32 %101, i32* %3, align 4
  %102 = load i32, i32* %3, align 4
  %103 = load %struct.hip04_priv*, %struct.hip04_priv** %2, align 8
  %104 = getelementptr inbounds %struct.hip04_priv, %struct.hip04_priv* %103, i32 0, i32 3
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @PPE_CFG_RX_PKT_MODE_REG, align 8
  %107 = add nsw i64 %105, %106
  %108 = call i32 @writel_relaxed(i32 %102, i64 %107)
  %109 = load i32, i32* @PPE_CFG_BUS_LOCAL_REL, align 4
  %110 = load i32, i32* @PPE_CFG_BUS_BIG_ENDIEN, align 4
  %111 = or i32 %109, %110
  store i32 %111, i32* %3, align 4
  %112 = load i32, i32* %3, align 4
  %113 = load %struct.hip04_priv*, %struct.hip04_priv** %2, align 8
  %114 = getelementptr inbounds %struct.hip04_priv, %struct.hip04_priv* %113, i32 0, i32 3
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @PPE_CFG_BUS_CTRL_REG, align 8
  %117 = add nsw i64 %115, %116
  %118 = call i32 @writel_relaxed(i32 %112, i64 %117)
  %119 = load i32, i32* @GMAC_PPE_RX_PKT_MAX_LEN, align 4
  store i32 %119, i32* %3, align 4
  %120 = load i32, i32* %3, align 4
  %121 = load %struct.hip04_priv*, %struct.hip04_priv** %2, align 8
  %122 = getelementptr inbounds %struct.hip04_priv, %struct.hip04_priv* %121, i32 0, i32 3
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @PPE_CFG_MAX_FRAME_LEN_REG, align 8
  %125 = add nsw i64 %123, %124
  %126 = call i32 @writel_relaxed(i32 %120, i64 %125)
  %127 = load i32, i32* @GMAC_MAX_PKT_LEN, align 4
  store i32 %127, i32* %3, align 4
  %128 = load i32, i32* %3, align 4
  %129 = load %struct.hip04_priv*, %struct.hip04_priv** %2, align 8
  %130 = getelementptr inbounds %struct.hip04_priv, %struct.hip04_priv* %129, i32 0, i32 3
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @GE_MAX_FRM_SIZE_REG, align 8
  %133 = add nsw i64 %131, %132
  %134 = call i32 @writel_relaxed(i32 %128, i64 %133)
  %135 = load i32, i32* @GMAC_MIN_PKT_LEN, align 4
  store i32 %135, i32* %3, align 4
  %136 = load i32, i32* %3, align 4
  %137 = load %struct.hip04_priv*, %struct.hip04_priv** %2, align 8
  %138 = getelementptr inbounds %struct.hip04_priv, %struct.hip04_priv* %137, i32 0, i32 3
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @GE_SHORT_RUNTS_THR_REG, align 8
  %141 = add nsw i64 %139, %140
  %142 = call i32 @writel_relaxed(i32 %136, i64 %141)
  %143 = load %struct.hip04_priv*, %struct.hip04_priv** %2, align 8
  %144 = getelementptr inbounds %struct.hip04_priv, %struct.hip04_priv* %143, i32 0, i32 3
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @GE_TRANSMIT_CONTROL_REG, align 8
  %147 = add nsw i64 %145, %146
  %148 = call i32 @readl_relaxed(i64 %147)
  store i32 %148, i32* %3, align 4
  %149 = load i32, i32* @GE_TX_AUTO_NEG, align 4
  %150 = load i32, i32* @GE_TX_ADD_CRC, align 4
  %151 = or i32 %149, %150
  %152 = load i32, i32* @GE_TX_SHORT_PAD_THROUGH, align 4
  %153 = or i32 %151, %152
  %154 = load i32, i32* %3, align 4
  %155 = or i32 %154, %153
  store i32 %155, i32* %3, align 4
  %156 = load i32, i32* %3, align 4
  %157 = load %struct.hip04_priv*, %struct.hip04_priv** %2, align 8
  %158 = getelementptr inbounds %struct.hip04_priv, %struct.hip04_priv* %157, i32 0, i32 3
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @GE_TRANSMIT_CONTROL_REG, align 8
  %161 = add nsw i64 %159, %160
  %162 = call i32 @writel_relaxed(i32 %156, i64 %161)
  %163 = load i32, i32* @GE_RX_STRIP_CRC, align 4
  store i32 %163, i32* %3, align 4
  %164 = load i32, i32* %3, align 4
  %165 = load %struct.hip04_priv*, %struct.hip04_priv** %2, align 8
  %166 = getelementptr inbounds %struct.hip04_priv, %struct.hip04_priv* %165, i32 0, i32 3
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* @GE_CF_CRC_STRIP_REG, align 8
  %169 = add nsw i64 %167, %168
  %170 = call i32 @writel_relaxed(i32 %164, i64 %169)
  %171 = load %struct.hip04_priv*, %struct.hip04_priv** %2, align 8
  %172 = getelementptr inbounds %struct.hip04_priv, %struct.hip04_priv* %171, i32 0, i32 3
  %173 = load i64, i64* %172, align 8
  %174 = load i64, i64* @GE_RECV_CONTROL_REG, align 8
  %175 = add nsw i64 %173, %174
  %176 = call i32 @readl_relaxed(i64 %175)
  store i32 %176, i32* %3, align 4
  %177 = load i32, i32* @GE_RX_STRIP_PAD, align 4
  %178 = load i32, i32* @GE_RX_PAD_EN, align 4
  %179 = or i32 %177, %178
  %180 = load i32, i32* %3, align 4
  %181 = or i32 %180, %179
  store i32 %181, i32* %3, align 4
  %182 = load i32, i32* %3, align 4
  %183 = load %struct.hip04_priv*, %struct.hip04_priv** %2, align 8
  %184 = getelementptr inbounds %struct.hip04_priv, %struct.hip04_priv* %183, i32 0, i32 3
  %185 = load i64, i64* %184, align 8
  %186 = load i64, i64* @GE_RECV_CONTROL_REG, align 8
  %187 = add nsw i64 %185, %186
  %188 = call i32 @writel_relaxed(i32 %182, i64 %187)
  %189 = load i32, i32* @GE_AUTO_NEG_CTL, align 4
  store i32 %189, i32* %3, align 4
  %190 = load i32, i32* %3, align 4
  %191 = load %struct.hip04_priv*, %struct.hip04_priv** %2, align 8
  %192 = getelementptr inbounds %struct.hip04_priv, %struct.hip04_priv* %191, i32 0, i32 3
  %193 = load i64, i64* %192, align 8
  %194 = load i64, i64* @GE_TX_LOCAL_PAGE_REG, align 8
  %195 = add nsw i64 %193, %194
  %196 = call i32 @writel_relaxed(i32 %190, i64 %195)
  ret void
}

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @regmap_write(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
