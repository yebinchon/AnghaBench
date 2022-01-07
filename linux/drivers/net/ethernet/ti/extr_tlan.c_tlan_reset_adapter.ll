; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_tlan.c_tlan_reset_adapter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_tlan.c_tlan_reset_adapter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.tlan_priv = type { i32, i32, i32, i64, i64, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }

@TLAN_HOST_CMD = common dso_local global i32 0, align 4
@TLAN_HC_AD_RST = common dso_local global i32 0, align 4
@TLAN_HC_INT_OFF = common dso_local global i32 0, align 4
@TLAN_AREG_0 = common dso_local global i32 0, align 4
@TLAN_HASH_2 = common dso_local global i32 0, align 4
@TLAN_NET_CFG_1FRAG = common dso_local global i32 0, align 4
@TLAN_NET_CFG_1CHAN = common dso_local global i32 0, align 4
@TLAN_NET_CFG_PHY_EN = common dso_local global i32 0, align 4
@TLAN_NET_CONFIG = common dso_local global i32 0, align 4
@TLAN_HC_LD_TMR = common dso_local global i32 0, align 4
@TLAN_HC_LD_THR = common dso_local global i32 0, align 4
@TLAN_NET_SIO = common dso_local global i32 0, align 4
@TLAN_DIO_ADR = common dso_local global i32 0, align 4
@TLAN_DIO_DATA = common dso_local global i32 0, align 4
@TLAN_NET_SIO_NMRST = common dso_local global i32 0, align 4
@TLAN_ID_TX_EOC = common dso_local global i32 0, align 4
@TLAN_ID_RX_EOC = common dso_local global i32 0, align 4
@TLAN_INT_DIS = common dso_local global i32 0, align 4
@TLAN_ADAPTER_BIT_RATE_PHY = common dso_local global i32 0, align 4
@TLAN_NET_CFG_BIT = common dso_local global i32 0, align 4
@TLAN_ACOMMIT = common dso_local global i32 0, align 4
@TLAN_DUPLEX_FULL = common dso_local global i64 0, align 8
@TLAN_ADAPTER_USE_INTERN_10 = common dso_local global i32 0, align 4
@TLAN_ADAPTER_UNMANAGED_PHY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @tlan_reset_adapter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tlan_reset_adapter(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.tlan_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = call %struct.tlan_priv* @netdev_priv(%struct.net_device* %8)
  store %struct.tlan_priv* %9, %struct.tlan_priv** %3, align 8
  %10 = load %struct.tlan_priv*, %struct.tlan_priv** %3, align 8
  %11 = getelementptr inbounds %struct.tlan_priv, %struct.tlan_priv* %10, i32 0, i32 0
  store i32 0, i32* %11, align 8
  %12 = load %struct.tlan_priv*, %struct.tlan_priv** %3, align 8
  %13 = getelementptr inbounds %struct.tlan_priv, %struct.tlan_priv* %12, i32 0, i32 6
  store i64 0, i64* %13, align 8
  %14 = load %struct.net_device*, %struct.net_device** %2, align 8
  %15 = call i32 @netif_carrier_off(%struct.net_device* %14)
  %16 = load %struct.net_device*, %struct.net_device** %2, align 8
  %17 = getelementptr inbounds %struct.net_device, %struct.net_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @TLAN_HOST_CMD, align 4
  %20 = add nsw i32 %18, %19
  %21 = call i32 @inl(i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* @TLAN_HC_AD_RST, align 4
  %23 = load i32, i32* %6, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.net_device*, %struct.net_device** %2, align 8
  %27 = getelementptr inbounds %struct.net_device, %struct.net_device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @TLAN_HOST_CMD, align 4
  %30 = add nsw i32 %28, %29
  %31 = call i32 @outl(i32 %25, i32 %30)
  %32 = call i32 @udelay(i32 1000)
  %33 = load %struct.net_device*, %struct.net_device** %2, align 8
  %34 = getelementptr inbounds %struct.net_device, %struct.net_device* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @TLAN_HOST_CMD, align 4
  %37 = add nsw i32 %35, %36
  %38 = call i32 @inl(i32 %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* @TLAN_HC_INT_OFF, align 4
  %40 = load i32, i32* %6, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.net_device*, %struct.net_device** %2, align 8
  %44 = getelementptr inbounds %struct.net_device, %struct.net_device* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @TLAN_HOST_CMD, align 4
  %47 = add nsw i32 %45, %46
  %48 = call i32 @outl(i32 %42, i32 %47)
  %49 = load i32, i32* @TLAN_AREG_0, align 4
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %60, %1
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* @TLAN_HASH_2, align 4
  %53 = icmp sle i32 %51, %52
  br i1 %53, label %54, label %63

54:                                               ; preds = %50
  %55 = load %struct.net_device*, %struct.net_device** %2, align 8
  %56 = getelementptr inbounds %struct.net_device, %struct.net_device* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @tlan_dio_write32(i32 %57, i32 %58, i32 0)
  br label %60

60:                                               ; preds = %54
  %61 = load i32, i32* %4, align 4
  %62 = add nsw i32 %61, 4
  store i32 %62, i32* %4, align 4
  br label %50

63:                                               ; preds = %50
  %64 = load i32, i32* @TLAN_NET_CFG_1FRAG, align 4
  %65 = load i32, i32* @TLAN_NET_CFG_1CHAN, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @TLAN_NET_CFG_PHY_EN, align 4
  %68 = or i32 %66, %67
  store i32 %68, i32* %6, align 4
  %69 = load %struct.net_device*, %struct.net_device** %2, align 8
  %70 = getelementptr inbounds %struct.net_device, %struct.net_device* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @TLAN_NET_CONFIG, align 4
  %73 = load i32, i32* %6, align 4
  %74 = call i32 @tlan_dio_write16(i32 %71, i32 %72, i32 %73)
  %75 = load i32, i32* @TLAN_HC_LD_TMR, align 4
  %76 = or i32 %75, 63
  %77 = load %struct.net_device*, %struct.net_device** %2, align 8
  %78 = getelementptr inbounds %struct.net_device, %struct.net_device* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @TLAN_HOST_CMD, align 4
  %81 = add nsw i32 %79, %80
  %82 = call i32 @outl(i32 %76, i32 %81)
  %83 = load i32, i32* @TLAN_HC_LD_THR, align 4
  %84 = or i32 %83, 9
  %85 = load %struct.net_device*, %struct.net_device** %2, align 8
  %86 = getelementptr inbounds %struct.net_device, %struct.net_device* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @TLAN_HOST_CMD, align 4
  %89 = add nsw i32 %87, %88
  %90 = call i32 @outl(i32 %84, i32 %89)
  %91 = load i32, i32* @TLAN_NET_SIO, align 4
  %92 = load %struct.net_device*, %struct.net_device** %2, align 8
  %93 = getelementptr inbounds %struct.net_device, %struct.net_device* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @TLAN_DIO_ADR, align 4
  %96 = add nsw i32 %94, %95
  %97 = call i32 @outw(i32 %91, i32 %96)
  %98 = load %struct.net_device*, %struct.net_device** %2, align 8
  %99 = getelementptr inbounds %struct.net_device, %struct.net_device* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @TLAN_DIO_DATA, align 4
  %102 = add nsw i32 %100, %101
  %103 = load i32, i32* @TLAN_NET_SIO, align 4
  %104 = add nsw i32 %102, %103
  store i32 %104, i32* %5, align 4
  %105 = load i32, i32* @TLAN_NET_SIO_NMRST, align 4
  %106 = load i32, i32* %5, align 4
  %107 = call i32 @tlan_set_bit(i32 %105, i32 %106)
  %108 = load %struct.tlan_priv*, %struct.tlan_priv** %3, align 8
  %109 = getelementptr inbounds %struct.tlan_priv, %struct.tlan_priv* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = icmp sge i32 %110, 48
  br i1 %111, label %112, label %122

112:                                              ; preds = %63
  %113 = load i32, i32* @TLAN_ID_TX_EOC, align 4
  %114 = load i32, i32* @TLAN_ID_RX_EOC, align 4
  %115 = or i32 %113, %114
  store i32 %115, i32* %7, align 4
  %116 = load %struct.net_device*, %struct.net_device** %2, align 8
  %117 = getelementptr inbounds %struct.net_device, %struct.net_device* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @TLAN_INT_DIS, align 4
  %120 = load i32, i32* %7, align 4
  %121 = call i32 @tlan_dio_write8(i32 %118, i32 %119, i32 %120)
  br label %122

122:                                              ; preds = %112, %63
  %123 = load %struct.net_device*, %struct.net_device** %2, align 8
  %124 = call i32 @tlan_phy_detect(%struct.net_device* %123)
  %125 = load i32, i32* @TLAN_NET_CFG_1FRAG, align 4
  %126 = load i32, i32* @TLAN_NET_CFG_1CHAN, align 4
  %127 = or i32 %125, %126
  store i32 %127, i32* %6, align 4
  %128 = load %struct.tlan_priv*, %struct.tlan_priv** %3, align 8
  %129 = getelementptr inbounds %struct.tlan_priv, %struct.tlan_priv* %128, i32 0, i32 5
  %130 = load %struct.TYPE_2__*, %struct.TYPE_2__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @TLAN_ADAPTER_BIT_RATE_PHY, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %172

136:                                              ; preds = %122
  %137 = load i32, i32* @TLAN_NET_CFG_BIT, align 4
  %138 = load i32, i32* %6, align 4
  %139 = or i32 %138, %137
  store i32 %139, i32* %6, align 4
  %140 = load %struct.tlan_priv*, %struct.tlan_priv** %3, align 8
  %141 = getelementptr inbounds %struct.tlan_priv, %struct.tlan_priv* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = icmp eq i32 %142, 1
  br i1 %143, label %144, label %150

144:                                              ; preds = %136
  %145 = load %struct.net_device*, %struct.net_device** %2, align 8
  %146 = getelementptr inbounds %struct.net_device, %struct.net_device* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @TLAN_ACOMMIT, align 4
  %149 = call i32 @tlan_dio_write8(i32 %147, i32 %148, i32 10)
  br label %171

150:                                              ; preds = %136
  %151 = load %struct.tlan_priv*, %struct.tlan_priv** %3, align 8
  %152 = getelementptr inbounds %struct.tlan_priv, %struct.tlan_priv* %151, i32 0, i32 3
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @TLAN_DUPLEX_FULL, align 8
  %155 = icmp eq i64 %153, %154
  br i1 %155, label %156, label %164

156:                                              ; preds = %150
  %157 = load %struct.net_device*, %struct.net_device** %2, align 8
  %158 = getelementptr inbounds %struct.net_device, %struct.net_device* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* @TLAN_ACOMMIT, align 4
  %161 = call i32 @tlan_dio_write8(i32 %159, i32 %160, i32 0)
  %162 = load %struct.tlan_priv*, %struct.tlan_priv** %3, align 8
  %163 = getelementptr inbounds %struct.tlan_priv, %struct.tlan_priv* %162, i32 0, i32 0
  store i32 1, i32* %163, align 8
  br label %170

164:                                              ; preds = %150
  %165 = load %struct.net_device*, %struct.net_device** %2, align 8
  %166 = getelementptr inbounds %struct.net_device, %struct.net_device* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* @TLAN_ACOMMIT, align 4
  %169 = call i32 @tlan_dio_write8(i32 %167, i32 %168, i32 8)
  br label %170

170:                                              ; preds = %164, %156
  br label %171

171:                                              ; preds = %170, %144
  br label %172

172:                                              ; preds = %171, %122
  %173 = load %struct.tlan_priv*, %struct.tlan_priv** %3, align 8
  %174 = getelementptr inbounds %struct.tlan_priv, %struct.tlan_priv* %173, i32 0, i32 4
  %175 = load i64, i64* %174, align 8
  %176 = icmp eq i64 %175, 0
  br i1 %176, label %186, label %177

177:                                              ; preds = %172
  %178 = load %struct.tlan_priv*, %struct.tlan_priv** %3, align 8
  %179 = getelementptr inbounds %struct.tlan_priv, %struct.tlan_priv* %178, i32 0, i32 5
  %180 = load %struct.TYPE_2__*, %struct.TYPE_2__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* @TLAN_ADAPTER_USE_INTERN_10, align 4
  %184 = and i32 %182, %183
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %190

186:                                              ; preds = %177, %172
  %187 = load i32, i32* @TLAN_NET_CFG_PHY_EN, align 4
  %188 = load i32, i32* %6, align 4
  %189 = or i32 %188, %187
  store i32 %189, i32* %6, align 4
  br label %190

190:                                              ; preds = %186, %177
  %191 = load %struct.net_device*, %struct.net_device** %2, align 8
  %192 = getelementptr inbounds %struct.net_device, %struct.net_device* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = load i32, i32* @TLAN_NET_CONFIG, align 4
  %195 = load i32, i32* %6, align 4
  %196 = call i32 @tlan_dio_write16(i32 %193, i32 %194, i32 %195)
  %197 = load %struct.tlan_priv*, %struct.tlan_priv** %3, align 8
  %198 = getelementptr inbounds %struct.tlan_priv, %struct.tlan_priv* %197, i32 0, i32 5
  %199 = load %struct.TYPE_2__*, %struct.TYPE_2__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = load i32, i32* @TLAN_ADAPTER_UNMANAGED_PHY, align 4
  %203 = and i32 %201, %202
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %208

205:                                              ; preds = %190
  %206 = load %struct.net_device*, %struct.net_device** %2, align 8
  %207 = call i32 @tlan_finish_reset(%struct.net_device* %206)
  br label %211

208:                                              ; preds = %190
  %209 = load %struct.net_device*, %struct.net_device** %2, align 8
  %210 = call i32 @tlan_phy_power_down(%struct.net_device* %209)
  br label %211

211:                                              ; preds = %208, %205
  ret void
}

declare dso_local %struct.tlan_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @inl(i32) #1

declare dso_local i32 @outl(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @tlan_dio_write32(i32, i32, i32) #1

declare dso_local i32 @tlan_dio_write16(i32, i32, i32) #1

declare dso_local i32 @outw(i32, i32) #1

declare dso_local i32 @tlan_set_bit(i32, i32) #1

declare dso_local i32 @tlan_dio_write8(i32, i32, i32) #1

declare dso_local i32 @tlan_phy_detect(%struct.net_device*) #1

declare dso_local i32 @tlan_finish_reset(%struct.net_device*) #1

declare dso_local i32 @tlan_phy_power_down(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
