; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/emac/extr_emac-mac.c_emac_mac_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/emac/extr_emac-mac.c_emac_mac_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.emac_adapter = type { i64, i32, i32, i32, i64, i64, i64, i64, %struct.phy_device* }
%struct.phy_device = type { i64, i64, i64, i64 }

@EMAC_TXQ_CTRL_0 = common dso_local global i64 0, align 8
@TXQ_EN = common dso_local global i32 0, align 4
@EMAC_RXQ_CTRL_0 = common dso_local global i64 0, align 8
@RXQ_EN = common dso_local global i32 0, align 4
@EMAC_MAC_CTRL = common dso_local global i64 0, align 8
@EMAC_EMAC_WRAPPER_CSR1 = common dso_local global i64 0, align 8
@TXEN = common dso_local global i32 0, align 4
@RXEN = common dso_local global i32 0, align 4
@RXFC = common dso_local global i32 0, align 4
@TXFC = common dso_local global i32 0, align 4
@SPEED_MASK = common dso_local global i32 0, align 4
@SPEED_1000 = common dso_local global i64 0, align 8
@FREQ_MODE = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i64 0, align 8
@FULLD = common dso_local global i32 0, align 4
@CRCE = common dso_local global i32 0, align 4
@PCRCE = common dso_local global i32 0, align 4
@PRLEN_SHFT = common dso_local global i32 0, align 4
@PRLEN_BMSK = common dso_local global i32 0, align 4
@BROAD_EN = common dso_local global i32 0, align 4
@FLCHK = common dso_local global i32 0, align 4
@RX_CHKSUM_EN = common dso_local global i32 0, align 4
@HUGEN = common dso_local global i32 0, align 4
@VLAN_STRIP = common dso_local global i32 0, align 4
@TPAUSE = common dso_local global i32 0, align 4
@SIMR = common dso_local global i32 0, align 4
@HUGE = common dso_local global i32 0, align 4
@MULTI_ALL = common dso_local global i32 0, align 4
@DEBUG_MODE = common dso_local global i32 0, align 4
@SINGLE_PAUSE_MODE = common dso_local global i32 0, align 4
@EMAC_IRQ_MOD_TIM_INIT = common dso_local global i64 0, align 8
@INT_RD_CLR_EN = common dso_local global i32 0, align 4
@LPW_MODE = common dso_local global i32 0, align 4
@IRQ_MODERATOR_EN = common dso_local global i32 0, align 4
@IRQ_MODERATOR2_EN = common dso_local global i32 0, align 4
@EMAC_DMA_MAS_CTRL = common dso_local global i64 0, align 8
@EMAC_ATHR_HEADER_CTRL = common dso_local global i64 0, align 8
@HEADER_ENABLE = common dso_local global i32 0, align 4
@HEADER_CNT_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.emac_adapter*)* @emac_mac_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emac_mac_start(%struct.emac_adapter* %0) #0 {
  %2 = alloca %struct.emac_adapter*, align 8
  %3 = alloca %struct.phy_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.emac_adapter* %0, %struct.emac_adapter** %2, align 8
  %6 = load %struct.emac_adapter*, %struct.emac_adapter** %2, align 8
  %7 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %6, i32 0, i32 8
  %8 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  store %struct.phy_device* %8, %struct.phy_device** %3, align 8
  %9 = load %struct.emac_adapter*, %struct.emac_adapter** %2, align 8
  %10 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %9, i32 0, i32 4
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @EMAC_TXQ_CTRL_0, align 8
  %13 = add nsw i64 %11, %12
  %14 = load i32, i32* @TXQ_EN, align 4
  %15 = call i32 @emac_reg_update32(i64 %13, i32 0, i32 %14)
  %16 = load %struct.emac_adapter*, %struct.emac_adapter** %2, align 8
  %17 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %16, i32 0, i32 4
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @EMAC_RXQ_CTRL_0, align 8
  %20 = add nsw i64 %18, %19
  %21 = load i32, i32* @RXQ_EN, align 4
  %22 = call i32 @emac_reg_update32(i64 %20, i32 0, i32 %21)
  %23 = load %struct.emac_adapter*, %struct.emac_adapter** %2, align 8
  %24 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %23, i32 0, i32 4
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @EMAC_MAC_CTRL, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @readl(i64 %27)
  store i32 %28, i32* %4, align 4
  %29 = load %struct.emac_adapter*, %struct.emac_adapter** %2, align 8
  %30 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %29, i32 0, i32 5
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @EMAC_EMAC_WRAPPER_CSR1, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @readl(i64 %33)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* @TXEN, align 4
  %36 = load i32, i32* @RXEN, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* %4, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* @RXFC, align 4
  %41 = load i32, i32* @TXFC, align 4
  %42 = or i32 %40, %41
  %43 = xor i32 %42, -1
  %44 = load i32, i32* %4, align 4
  %45 = and i32 %44, %43
  store i32 %45, i32* %4, align 4
  %46 = load %struct.emac_adapter*, %struct.emac_adapter** %2, align 8
  %47 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %46, i32 0, i32 7
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %66

50:                                               ; preds = %1
  %51 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %52 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.emac_adapter*, %struct.emac_adapter** %2, align 8
  %55 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %54, i32 0, i32 0
  store i64 %53, i64* %55, align 8
  %56 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %57 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %60 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %58, %61
  %63 = zext i1 %62 to i32
  %64 = load %struct.emac_adapter*, %struct.emac_adapter** %2, align 8
  %65 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 8
  br label %66

66:                                               ; preds = %50, %1
  %67 = load %struct.emac_adapter*, %struct.emac_adapter** %2, align 8
  %68 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %66
  %72 = load i32, i32* @RXFC, align 4
  br label %74

73:                                               ; preds = %66
  br label %74

74:                                               ; preds = %73, %71
  %75 = phi i32 [ %72, %71 ], [ 0, %73 ]
  %76 = load i32, i32* %4, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %4, align 4
  %78 = load %struct.emac_adapter*, %struct.emac_adapter** %2, align 8
  %79 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %74
  %83 = load i32, i32* @TXFC, align 4
  br label %85

84:                                               ; preds = %74
  br label %85

85:                                               ; preds = %84, %82
  %86 = phi i32 [ %83, %82 ], [ 0, %84 ]
  %87 = load i32, i32* %4, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %4, align 4
  %89 = load i32, i32* @SPEED_MASK, align 4
  %90 = xor i32 %89, -1
  %91 = load i32, i32* %4, align 4
  %92 = and i32 %91, %90
  store i32 %92, i32* %4, align 4
  %93 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %94 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @SPEED_1000, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %105

98:                                               ; preds = %85
  %99 = call i32 @SPEED(i32 2)
  %100 = load i32, i32* %4, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %4, align 4
  %102 = load i32, i32* @FREQ_MODE, align 4
  %103 = load i32, i32* %5, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %5, align 4
  br label %113

105:                                              ; preds = %85
  %106 = call i32 @SPEED(i32 1)
  %107 = load i32, i32* %4, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %4, align 4
  %109 = load i32, i32* @FREQ_MODE, align 4
  %110 = xor i32 %109, -1
  %111 = load i32, i32* %5, align 4
  %112 = and i32 %111, %110
  store i32 %112, i32* %5, align 4
  br label %113

113:                                              ; preds = %105, %98
  %114 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %115 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %114, i32 0, i32 3
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @DUPLEX_FULL, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %123

119:                                              ; preds = %113
  %120 = load i32, i32* @FULLD, align 4
  %121 = load i32, i32* %4, align 4
  %122 = or i32 %121, %120
  store i32 %122, i32* %4, align 4
  br label %128

123:                                              ; preds = %113
  %124 = load i32, i32* @FULLD, align 4
  %125 = xor i32 %124, -1
  %126 = load i32, i32* %4, align 4
  %127 = and i32 %126, %125
  store i32 %127, i32* %4, align 4
  br label %128

128:                                              ; preds = %123, %119
  %129 = load i32, i32* @CRCE, align 4
  %130 = load i32, i32* @PCRCE, align 4
  %131 = or i32 %129, %130
  %132 = load i32, i32* %4, align 4
  %133 = or i32 %132, %131
  store i32 %133, i32* %4, align 4
  %134 = load %struct.emac_adapter*, %struct.emac_adapter** %2, align 8
  %135 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @PRLEN_SHFT, align 4
  %138 = shl i32 %136, %137
  %139 = load i32, i32* @PRLEN_BMSK, align 4
  %140 = and i32 %138, %139
  %141 = load i32, i32* %4, align 4
  %142 = or i32 %141, %140
  store i32 %142, i32* %4, align 4
  %143 = load i32, i32* @BROAD_EN, align 4
  %144 = load i32, i32* %4, align 4
  %145 = or i32 %144, %143
  store i32 %145, i32* %4, align 4
  %146 = load i32, i32* @FLCHK, align 4
  %147 = load i32, i32* %4, align 4
  %148 = or i32 %147, %146
  store i32 %148, i32* %4, align 4
  %149 = load i32, i32* @RX_CHKSUM_EN, align 4
  %150 = xor i32 %149, -1
  %151 = load i32, i32* %4, align 4
  %152 = and i32 %151, %150
  store i32 %152, i32* %4, align 4
  %153 = load i32, i32* @HUGEN, align 4
  %154 = load i32, i32* @VLAN_STRIP, align 4
  %155 = or i32 %153, %154
  %156 = load i32, i32* @TPAUSE, align 4
  %157 = or i32 %155, %156
  %158 = load i32, i32* @SIMR, align 4
  %159 = or i32 %157, %158
  %160 = load i32, i32* @HUGE, align 4
  %161 = or i32 %159, %160
  %162 = load i32, i32* @MULTI_ALL, align 4
  %163 = or i32 %161, %162
  %164 = load i32, i32* @DEBUG_MODE, align 4
  %165 = or i32 %163, %164
  %166 = load i32, i32* @SINGLE_PAUSE_MODE, align 4
  %167 = or i32 %165, %166
  %168 = xor i32 %167, -1
  %169 = load i32, i32* %4, align 4
  %170 = and i32 %169, %168
  store i32 %170, i32* %4, align 4
  %171 = load %struct.emac_adapter*, %struct.emac_adapter** %2, align 8
  %172 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %171, i32 0, i32 6
  %173 = load i64, i64* %172, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %177

175:                                              ; preds = %128
  %176 = load i32, i32* @SINGLE_PAUSE_MODE, align 4
  br label %178

177:                                              ; preds = %128
  br label %178

178:                                              ; preds = %177, %175
  %179 = phi i32 [ %176, %175 ], [ 0, %177 ]
  %180 = load i32, i32* %4, align 4
  %181 = or i32 %180, %179
  store i32 %181, i32* %4, align 4
  %182 = load i32, i32* %5, align 4
  %183 = load %struct.emac_adapter*, %struct.emac_adapter** %2, align 8
  %184 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %183, i32 0, i32 5
  %185 = load i64, i64* %184, align 8
  %186 = load i64, i64* @EMAC_EMAC_WRAPPER_CSR1, align 8
  %187 = add nsw i64 %185, %186
  %188 = call i32 @writel_relaxed(i32 %182, i64 %187)
  %189 = load i32, i32* %4, align 4
  %190 = load %struct.emac_adapter*, %struct.emac_adapter** %2, align 8
  %191 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %190, i32 0, i32 4
  %192 = load i64, i64* %191, align 8
  %193 = load i64, i64* @EMAC_MAC_CTRL, align 8
  %194 = add nsw i64 %192, %193
  %195 = call i32 @writel_relaxed(i32 %189, i64 %194)
  %196 = load %struct.emac_adapter*, %struct.emac_adapter** %2, align 8
  %197 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %196, i32 0, i32 3
  %198 = load i32, i32* %197, align 8
  %199 = load %struct.emac_adapter*, %struct.emac_adapter** %2, align 8
  %200 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %199, i32 0, i32 4
  %201 = load i64, i64* %200, align 8
  %202 = load i64, i64* @EMAC_IRQ_MOD_TIM_INIT, align 8
  %203 = add nsw i64 %201, %202
  %204 = call i32 @writel_relaxed(i32 %198, i64 %203)
  %205 = load i32, i32* @INT_RD_CLR_EN, align 4
  %206 = load i32, i32* @LPW_MODE, align 4
  %207 = or i32 %205, %206
  %208 = load i32, i32* @IRQ_MODERATOR_EN, align 4
  %209 = or i32 %207, %208
  %210 = load i32, i32* @IRQ_MODERATOR2_EN, align 4
  %211 = or i32 %209, %210
  %212 = load %struct.emac_adapter*, %struct.emac_adapter** %2, align 8
  %213 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %212, i32 0, i32 4
  %214 = load i64, i64* %213, align 8
  %215 = load i64, i64* @EMAC_DMA_MAS_CTRL, align 8
  %216 = add nsw i64 %214, %215
  %217 = call i32 @writel_relaxed(i32 %211, i64 %216)
  %218 = load %struct.emac_adapter*, %struct.emac_adapter** %2, align 8
  %219 = call i32 @emac_mac_mode_config(%struct.emac_adapter* %218)
  %220 = load %struct.emac_adapter*, %struct.emac_adapter** %2, align 8
  %221 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %220, i32 0, i32 4
  %222 = load i64, i64* %221, align 8
  %223 = load i64, i64* @EMAC_ATHR_HEADER_CTRL, align 8
  %224 = add nsw i64 %222, %223
  %225 = load i32, i32* @HEADER_ENABLE, align 4
  %226 = load i32, i32* @HEADER_CNT_EN, align 4
  %227 = or i32 %225, %226
  %228 = call i32 @emac_reg_update32(i64 %224, i32 %227, i32 0)
  ret void
}

declare dso_local i32 @emac_reg_update32(i64, i32, i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @SPEED(i32) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @emac_mac_mode_config(%struct.emac_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
