; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_adjust_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_adjust_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.tg3 = type { i32, i64, i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i64, i64, i64, i32 }
%struct.phy_device = type { i64, i64, i64, i64, i64 }

@MAC_MODE_PORT_MODE_MASK = common dso_local global i32 0, align 4
@MAC_MODE_HALF_DUPLEX = common dso_local global i32 0, align 4
@SPEED_100 = common dso_local global i64 0, align 8
@SPEED_10 = common dso_local global i64 0, align 8
@MAC_MODE_PORT_MODE_MII = common dso_local global i32 0, align 4
@SPEED_1000 = common dso_local global i64 0, align 8
@ASIC_REV_5785 = common dso_local global i64 0, align 8
@MAC_MODE_PORT_MODE_GMII = common dso_local global i32 0, align 4
@DUPLEX_HALF = common dso_local global i64 0, align 8
@LPA_PAUSE_CAP = common dso_local global i32 0, align 4
@LPA_PAUSE_ASYM = common dso_local global i32 0, align 4
@MAC_MODE = common dso_local global i32 0, align 4
@MAC_MI_STAT = common dso_local global i32 0, align 4
@MAC_MI_STAT_10MBPS_MODE = common dso_local global i32 0, align 4
@MAC_MI_STAT_LNKSTAT_ATTN_ENAB = common dso_local global i32 0, align 4
@MAC_TX_LENGTHS = common dso_local global i32 0, align 4
@TX_LENGTHS_IPG_CRS_SHIFT = common dso_local global i32 0, align 4
@TX_LENGTHS_IPG_SHIFT = common dso_local global i32 0, align 4
@TX_LENGTHS_SLOT_TIME_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @tg3_adjust_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tg3_adjust_link(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.tg3*, align 8
  %9 = alloca %struct.phy_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  store i64 0, i64* %4, align 8
  %10 = load %struct.net_device*, %struct.net_device** %2, align 8
  %11 = call %struct.tg3* @netdev_priv(%struct.net_device* %10)
  store %struct.tg3* %11, %struct.tg3** %8, align 8
  %12 = load %struct.tg3*, %struct.tg3** %8, align 8
  %13 = getelementptr inbounds %struct.tg3, %struct.tg3* %12, i32 0, i32 5
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.tg3*, %struct.tg3** %8, align 8
  %16 = getelementptr inbounds %struct.tg3, %struct.tg3* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 8
  %18 = call %struct.phy_device* @mdiobus_get_phy(i32 %14, i32 %17)
  store %struct.phy_device* %18, %struct.phy_device** %9, align 8
  %19 = load %struct.tg3*, %struct.tg3** %8, align 8
  %20 = getelementptr inbounds %struct.tg3, %struct.tg3* %19, i32 0, i32 2
  %21 = call i32 @spin_lock_bh(i32* %20)
  %22 = load %struct.tg3*, %struct.tg3** %8, align 8
  %23 = getelementptr inbounds %struct.tg3, %struct.tg3* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @MAC_MODE_PORT_MODE_MASK, align 4
  %26 = load i32, i32* @MAC_MODE_HALF_DUPLEX, align 4
  %27 = or i32 %25, %26
  %28 = xor i32 %27, -1
  %29 = and i32 %24, %28
  store i32 %29, i32* %5, align 4
  %30 = load %struct.tg3*, %struct.tg3** %8, align 8
  %31 = getelementptr inbounds %struct.tg3, %struct.tg3* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %3, align 8
  %34 = load %struct.phy_device*, %struct.phy_device** %9, align 8
  %35 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %111

38:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %39 = load %struct.phy_device*, %struct.phy_device** %9, align 8
  %40 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @SPEED_100, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %50, label %44

44:                                               ; preds = %38
  %45 = load %struct.phy_device*, %struct.phy_device** %9, align 8
  %46 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @SPEED_10, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %44, %38
  %51 = load i32, i32* @MAC_MODE_PORT_MODE_MII, align 4
  %52 = load i32, i32* %5, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %5, align 4
  br label %74

54:                                               ; preds = %44
  %55 = load %struct.phy_device*, %struct.phy_device** %9, align 8
  %56 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @SPEED_1000, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %65, label %60

60:                                               ; preds = %54
  %61 = load %struct.tg3*, %struct.tg3** %8, align 8
  %62 = call i64 @tg3_asic_rev(%struct.tg3* %61)
  %63 = load i64, i64* @ASIC_REV_5785, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %60, %54
  %66 = load i32, i32* @MAC_MODE_PORT_MODE_GMII, align 4
  %67 = load i32, i32* %5, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %5, align 4
  br label %73

69:                                               ; preds = %60
  %70 = load i32, i32* @MAC_MODE_PORT_MODE_MII, align 4
  %71 = load i32, i32* %5, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %5, align 4
  br label %73

73:                                               ; preds = %69, %65
  br label %74

74:                                               ; preds = %73, %50
  %75 = load %struct.phy_device*, %struct.phy_device** %9, align 8
  %76 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @DUPLEX_HALF, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %84

80:                                               ; preds = %74
  %81 = load i32, i32* @MAC_MODE_HALF_DUPLEX, align 4
  %82 = load i32, i32* %5, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %5, align 4
  br label %106

84:                                               ; preds = %74
  %85 = load %struct.tg3*, %struct.tg3** %8, align 8
  %86 = getelementptr inbounds %struct.tg3, %struct.tg3* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @mii_advertise_flowctrl(i32 %88)
  store i32 %89, i32* %6, align 4
  %90 = load %struct.phy_device*, %struct.phy_device** %9, align 8
  %91 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %90, i32 0, i32 4
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %84
  %95 = load i32, i32* @LPA_PAUSE_CAP, align 4
  store i32 %95, i32* %7, align 4
  br label %96

96:                                               ; preds = %94, %84
  %97 = load %struct.phy_device*, %struct.phy_device** %9, align 8
  %98 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %97, i32 0, i32 3
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %96
  %102 = load i32, i32* @LPA_PAUSE_ASYM, align 4
  %103 = load i32, i32* %7, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %7, align 4
  br label %105

105:                                              ; preds = %101, %96
  br label %106

106:                                              ; preds = %105, %80
  %107 = load %struct.tg3*, %struct.tg3** %8, align 8
  %108 = load i32, i32* %6, align 4
  %109 = load i32, i32* %7, align 4
  %110 = call i32 @tg3_setup_flow_control(%struct.tg3* %107, i32 %108, i32 %109)
  br label %115

111:                                              ; preds = %1
  %112 = load i32, i32* @MAC_MODE_PORT_MODE_GMII, align 4
  %113 = load i32, i32* %5, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %5, align 4
  br label %115

115:                                              ; preds = %111, %106
  %116 = load i32, i32* %5, align 4
  %117 = load %struct.tg3*, %struct.tg3** %8, align 8
  %118 = getelementptr inbounds %struct.tg3, %struct.tg3* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = icmp ne i32 %116, %119
  br i1 %120, label %121, label %131

121:                                              ; preds = %115
  %122 = load i32, i32* %5, align 4
  %123 = load %struct.tg3*, %struct.tg3** %8, align 8
  %124 = getelementptr inbounds %struct.tg3, %struct.tg3* %123, i32 0, i32 0
  store i32 %122, i32* %124, align 8
  %125 = load i32, i32* @MAC_MODE, align 4
  %126 = load %struct.tg3*, %struct.tg3** %8, align 8
  %127 = getelementptr inbounds %struct.tg3, %struct.tg3* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @tw32_f(i32 %125, i32 %128)
  %130 = call i32 @udelay(i32 40)
  br label %131

131:                                              ; preds = %121, %115
  %132 = load %struct.tg3*, %struct.tg3** %8, align 8
  %133 = call i64 @tg3_asic_rev(%struct.tg3* %132)
  %134 = load i64, i64* @ASIC_REV_5785, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %136, label %153

136:                                              ; preds = %131
  %137 = load %struct.phy_device*, %struct.phy_device** %9, align 8
  %138 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @SPEED_10, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %142, label %148

142:                                              ; preds = %136
  %143 = load i32, i32* @MAC_MI_STAT, align 4
  %144 = load i32, i32* @MAC_MI_STAT_10MBPS_MODE, align 4
  %145 = load i32, i32* @MAC_MI_STAT_LNKSTAT_ATTN_ENAB, align 4
  %146 = or i32 %144, %145
  %147 = call i32 @tw32(i32 %143, i32 %146)
  br label %152

148:                                              ; preds = %136
  %149 = load i32, i32* @MAC_MI_STAT, align 4
  %150 = load i32, i32* @MAC_MI_STAT_LNKSTAT_ATTN_ENAB, align 4
  %151 = call i32 @tw32(i32 %149, i32 %150)
  br label %152

152:                                              ; preds = %148, %142
  br label %153

153:                                              ; preds = %152, %131
  %154 = load %struct.phy_device*, %struct.phy_device** %9, align 8
  %155 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* @SPEED_1000, align 8
  %158 = icmp eq i64 %156, %157
  br i1 %158, label %159, label %176

159:                                              ; preds = %153
  %160 = load %struct.phy_device*, %struct.phy_device** %9, align 8
  %161 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %160, i32 0, i32 2
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* @DUPLEX_HALF, align 8
  %164 = icmp eq i64 %162, %163
  br i1 %164, label %165, label %176

165:                                              ; preds = %159
  %166 = load i32, i32* @MAC_TX_LENGTHS, align 4
  %167 = load i32, i32* @TX_LENGTHS_IPG_CRS_SHIFT, align 4
  %168 = shl i32 2, %167
  %169 = load i32, i32* @TX_LENGTHS_IPG_SHIFT, align 4
  %170 = shl i32 6, %169
  %171 = or i32 %168, %170
  %172 = load i32, i32* @TX_LENGTHS_SLOT_TIME_SHIFT, align 4
  %173 = shl i32 255, %172
  %174 = or i32 %171, %173
  %175 = call i32 @tw32(i32 %166, i32 %174)
  br label %187

176:                                              ; preds = %159, %153
  %177 = load i32, i32* @MAC_TX_LENGTHS, align 4
  %178 = load i32, i32* @TX_LENGTHS_IPG_CRS_SHIFT, align 4
  %179 = shl i32 2, %178
  %180 = load i32, i32* @TX_LENGTHS_IPG_SHIFT, align 4
  %181 = shl i32 6, %180
  %182 = or i32 %179, %181
  %183 = load i32, i32* @TX_LENGTHS_SLOT_TIME_SHIFT, align 4
  %184 = shl i32 32, %183
  %185 = or i32 %182, %184
  %186 = call i32 @tw32(i32 %177, i32 %185)
  br label %187

187:                                              ; preds = %176, %165
  %188 = load %struct.phy_device*, %struct.phy_device** %9, align 8
  %189 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = load %struct.tg3*, %struct.tg3** %8, align 8
  %192 = getelementptr inbounds %struct.tg3, %struct.tg3* %191, i32 0, i32 1
  %193 = load i64, i64* %192, align 8
  %194 = icmp ne i64 %190, %193
  br i1 %194, label %220, label %195

195:                                              ; preds = %187
  %196 = load %struct.phy_device*, %struct.phy_device** %9, align 8
  %197 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %196, i32 0, i32 1
  %198 = load i64, i64* %197, align 8
  %199 = load %struct.tg3*, %struct.tg3** %8, align 8
  %200 = getelementptr inbounds %struct.tg3, %struct.tg3* %199, i32 0, i32 3
  %201 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %200, i32 0, i32 1
  %202 = load i64, i64* %201, align 8
  %203 = icmp ne i64 %198, %202
  br i1 %203, label %220, label %204

204:                                              ; preds = %195
  %205 = load %struct.phy_device*, %struct.phy_device** %9, align 8
  %206 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %205, i32 0, i32 2
  %207 = load i64, i64* %206, align 8
  %208 = load %struct.tg3*, %struct.tg3** %8, align 8
  %209 = getelementptr inbounds %struct.tg3, %struct.tg3* %208, i32 0, i32 3
  %210 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %209, i32 0, i32 2
  %211 = load i64, i64* %210, align 8
  %212 = icmp ne i64 %207, %211
  br i1 %212, label %220, label %213

213:                                              ; preds = %204
  %214 = load i64, i64* %3, align 8
  %215 = load %struct.tg3*, %struct.tg3** %8, align 8
  %216 = getelementptr inbounds %struct.tg3, %struct.tg3* %215, i32 0, i32 3
  %217 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %216, i32 0, i32 0
  %218 = load i64, i64* %217, align 8
  %219 = icmp ne i64 %214, %218
  br i1 %219, label %220, label %221

220:                                              ; preds = %213, %204, %195, %187
  store i64 1, i64* %4, align 8
  br label %221

221:                                              ; preds = %220, %213
  %222 = load %struct.phy_device*, %struct.phy_device** %9, align 8
  %223 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %222, i32 0, i32 0
  %224 = load i64, i64* %223, align 8
  %225 = load %struct.tg3*, %struct.tg3** %8, align 8
  %226 = getelementptr inbounds %struct.tg3, %struct.tg3* %225, i32 0, i32 1
  store i64 %224, i64* %226, align 8
  %227 = load %struct.phy_device*, %struct.phy_device** %9, align 8
  %228 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %227, i32 0, i32 1
  %229 = load i64, i64* %228, align 8
  %230 = load %struct.tg3*, %struct.tg3** %8, align 8
  %231 = getelementptr inbounds %struct.tg3, %struct.tg3* %230, i32 0, i32 3
  %232 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %231, i32 0, i32 1
  store i64 %229, i64* %232, align 8
  %233 = load %struct.phy_device*, %struct.phy_device** %9, align 8
  %234 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %233, i32 0, i32 2
  %235 = load i64, i64* %234, align 8
  %236 = load %struct.tg3*, %struct.tg3** %8, align 8
  %237 = getelementptr inbounds %struct.tg3, %struct.tg3* %236, i32 0, i32 3
  %238 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %237, i32 0, i32 2
  store i64 %235, i64* %238, align 8
  %239 = load %struct.tg3*, %struct.tg3** %8, align 8
  %240 = getelementptr inbounds %struct.tg3, %struct.tg3* %239, i32 0, i32 2
  %241 = call i32 @spin_unlock_bh(i32* %240)
  %242 = load i64, i64* %4, align 8
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %247

244:                                              ; preds = %221
  %245 = load %struct.tg3*, %struct.tg3** %8, align 8
  %246 = call i32 @tg3_link_report(%struct.tg3* %245)
  br label %247

247:                                              ; preds = %244, %221
  ret void
}

declare dso_local %struct.tg3* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.phy_device* @mdiobus_get_phy(i32, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @tg3_asic_rev(%struct.tg3*) #1

declare dso_local i32 @mii_advertise_flowctrl(i32) #1

declare dso_local i32 @tg3_setup_flow_control(%struct.tg3*, i32, i32) #1

declare dso_local i32 @tw32_f(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @tw32(i32, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @tg3_link_report(%struct.tg3*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
