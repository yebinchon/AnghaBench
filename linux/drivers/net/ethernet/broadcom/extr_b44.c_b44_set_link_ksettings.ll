; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_b44.c_b44_set_link_ksettings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_b44.c_b44_set_link_ksettings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_link_ksettings = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i64, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.b44 = type { i32, i32 }

@B44_FLAG_EXTERNAL_PHY = common dso_local global i32 0, align 4
@AUTONEG_ENABLE = common dso_local global i64 0, align 8
@ADVERTISED_1000baseT_Half = common dso_local global i32 0, align 4
@ADVERTISED_1000baseT_Full = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SPEED_100 = common dso_local global i32 0, align 4
@SPEED_10 = common dso_local global i32 0, align 4
@DUPLEX_HALF = common dso_local global i64 0, align 8
@DUPLEX_FULL = common dso_local global i64 0, align 8
@B44_FLAG_FORCE_LINK = common dso_local global i32 0, align 4
@B44_FLAG_100_BASE_T = common dso_local global i32 0, align 4
@B44_FLAG_FULL_DUPLEX = common dso_local global i32 0, align 4
@B44_FLAG_ADV_10HALF = common dso_local global i32 0, align 4
@B44_FLAG_ADV_10FULL = common dso_local global i32 0, align 4
@B44_FLAG_ADV_100HALF = common dso_local global i32 0, align 4
@B44_FLAG_ADV_100FULL = common dso_local global i32 0, align 4
@ADVERTISED_10baseT_Half = common dso_local global i32 0, align 4
@ADVERTISED_10baseT_Full = common dso_local global i32 0, align 4
@ADVERTISED_100baseT_Half = common dso_local global i32 0, align 4
@ADVERTISED_100baseT_Full = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_link_ksettings*)* @b44_set_link_ksettings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b44_set_link_ksettings(%struct.net_device* %0, %struct.ethtool_link_ksettings* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_link_ksettings*, align 8
  %6 = alloca %struct.b44*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_link_ksettings* %1, %struct.ethtool_link_ksettings** %5, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.b44* @netdev_priv(%struct.net_device* %10)
  store %struct.b44* %11, %struct.b44** %6, align 8
  %12 = load %struct.b44*, %struct.b44** %6, align 8
  %13 = getelementptr inbounds %struct.b44, %struct.b44* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @B44_FLAG_EXTERNAL_PHY, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %45

18:                                               ; preds = %2
  %19 = load %struct.net_device*, %struct.net_device** %4, align 8
  %20 = getelementptr inbounds %struct.net_device, %struct.net_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i32 @BUG_ON(i32 %24)
  %26 = load %struct.b44*, %struct.b44** %6, align 8
  %27 = getelementptr inbounds %struct.b44, %struct.b44* %26, i32 0, i32 1
  %28 = call i32 @spin_lock_irq(i32* %27)
  %29 = load %struct.net_device*, %struct.net_device** %4, align 8
  %30 = call i64 @netif_running(%struct.net_device* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %18
  %33 = load %struct.b44*, %struct.b44** %6, align 8
  %34 = call i32 @b44_setup_phy(%struct.b44* %33)
  br label %35

35:                                               ; preds = %32, %18
  %36 = load %struct.net_device*, %struct.net_device** %4, align 8
  %37 = getelementptr inbounds %struct.net_device, %struct.net_device* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %40 = call i32 @phy_ethtool_ksettings_set(i32 %38, %struct.ethtool_link_ksettings* %39)
  store i32 %40, i32* %8, align 4
  %41 = load %struct.b44*, %struct.b44** %6, align 8
  %42 = getelementptr inbounds %struct.b44, %struct.b44* %41, i32 0, i32 1
  %43 = call i32 @spin_unlock_irq(i32* %42)
  %44 = load i32, i32* %8, align 4
  store i32 %44, i32* %3, align 4
  br label %235

45:                                               ; preds = %2
  %46 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %47 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  store i32 %49, i32* %7, align 4
  %50 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %51 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @ethtool_convert_link_mode_to_legacy_u32(i32* %9, i32 %53)
  %55 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %56 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @AUTONEG_ENABLE, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %72

61:                                               ; preds = %45
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* @ADVERTISED_1000baseT_Half, align 4
  %64 = load i32, i32* @ADVERTISED_1000baseT_Full, align 4
  %65 = or i32 %63, %64
  %66 = and i32 %62, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %61
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %3, align 4
  br label %235

71:                                               ; preds = %61
  br label %98

72:                                               ; preds = %45
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* @SPEED_100, align 4
  %75 = icmp ne i32 %73, %74
  br i1 %75, label %76, label %80

76:                                               ; preds = %72
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* @SPEED_10, align 4
  %79 = icmp ne i32 %77, %78
  br i1 %79, label %94, label %80

80:                                               ; preds = %76, %72
  %81 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %82 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @DUPLEX_HALF, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %87, label %97

87:                                               ; preds = %80
  %88 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %89 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @DUPLEX_FULL, align 8
  %93 = icmp ne i64 %91, %92
  br i1 %93, label %94, label %97

94:                                               ; preds = %87, %76
  %95 = load i32, i32* @EINVAL, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %3, align 4
  br label %235

97:                                               ; preds = %87, %80
  br label %98

98:                                               ; preds = %97, %71
  %99 = load %struct.b44*, %struct.b44** %6, align 8
  %100 = getelementptr inbounds %struct.b44, %struct.b44* %99, i32 0, i32 1
  %101 = call i32 @spin_lock_irq(i32* %100)
  %102 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %103 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @AUTONEG_ENABLE, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %187

108:                                              ; preds = %98
  %109 = load i32, i32* @B44_FLAG_FORCE_LINK, align 4
  %110 = load i32, i32* @B44_FLAG_100_BASE_T, align 4
  %111 = or i32 %109, %110
  %112 = load i32, i32* @B44_FLAG_FULL_DUPLEX, align 4
  %113 = or i32 %111, %112
  %114 = load i32, i32* @B44_FLAG_ADV_10HALF, align 4
  %115 = or i32 %113, %114
  %116 = load i32, i32* @B44_FLAG_ADV_10FULL, align 4
  %117 = or i32 %115, %116
  %118 = load i32, i32* @B44_FLAG_ADV_100HALF, align 4
  %119 = or i32 %117, %118
  %120 = load i32, i32* @B44_FLAG_ADV_100FULL, align 4
  %121 = or i32 %119, %120
  %122 = xor i32 %121, -1
  %123 = load %struct.b44*, %struct.b44** %6, align 8
  %124 = getelementptr inbounds %struct.b44, %struct.b44* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = and i32 %125, %122
  store i32 %126, i32* %124, align 4
  %127 = load i32, i32* %9, align 4
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %141

129:                                              ; preds = %108
  %130 = load i32, i32* @B44_FLAG_ADV_10HALF, align 4
  %131 = load i32, i32* @B44_FLAG_ADV_10FULL, align 4
  %132 = or i32 %130, %131
  %133 = load i32, i32* @B44_FLAG_ADV_100HALF, align 4
  %134 = or i32 %132, %133
  %135 = load i32, i32* @B44_FLAG_ADV_100FULL, align 4
  %136 = or i32 %134, %135
  %137 = load %struct.b44*, %struct.b44** %6, align 8
  %138 = getelementptr inbounds %struct.b44, %struct.b44* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = or i32 %139, %136
  store i32 %140, i32* %138, align 4
  br label %186

141:                                              ; preds = %108
  %142 = load i32, i32* %9, align 4
  %143 = load i32, i32* @ADVERTISED_10baseT_Half, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %152

146:                                              ; preds = %141
  %147 = load i32, i32* @B44_FLAG_ADV_10HALF, align 4
  %148 = load %struct.b44*, %struct.b44** %6, align 8
  %149 = getelementptr inbounds %struct.b44, %struct.b44* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = or i32 %150, %147
  store i32 %151, i32* %149, align 4
  br label %152

152:                                              ; preds = %146, %141
  %153 = load i32, i32* %9, align 4
  %154 = load i32, i32* @ADVERTISED_10baseT_Full, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %163

157:                                              ; preds = %152
  %158 = load i32, i32* @B44_FLAG_ADV_10FULL, align 4
  %159 = load %struct.b44*, %struct.b44** %6, align 8
  %160 = getelementptr inbounds %struct.b44, %struct.b44* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = or i32 %161, %158
  store i32 %162, i32* %160, align 4
  br label %163

163:                                              ; preds = %157, %152
  %164 = load i32, i32* %9, align 4
  %165 = load i32, i32* @ADVERTISED_100baseT_Half, align 4
  %166 = and i32 %164, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %174

168:                                              ; preds = %163
  %169 = load i32, i32* @B44_FLAG_ADV_100HALF, align 4
  %170 = load %struct.b44*, %struct.b44** %6, align 8
  %171 = getelementptr inbounds %struct.b44, %struct.b44* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = or i32 %172, %169
  store i32 %173, i32* %171, align 4
  br label %174

174:                                              ; preds = %168, %163
  %175 = load i32, i32* %9, align 4
  %176 = load i32, i32* @ADVERTISED_100baseT_Full, align 4
  %177 = and i32 %175, %176
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %185

179:                                              ; preds = %174
  %180 = load i32, i32* @B44_FLAG_ADV_100FULL, align 4
  %181 = load %struct.b44*, %struct.b44** %6, align 8
  %182 = getelementptr inbounds %struct.b44, %struct.b44* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = or i32 %183, %180
  store i32 %184, i32* %182, align 4
  br label %185

185:                                              ; preds = %179, %174
  br label %186

186:                                              ; preds = %185, %129
  br label %224

187:                                              ; preds = %98
  %188 = load i32, i32* @B44_FLAG_FORCE_LINK, align 4
  %189 = load %struct.b44*, %struct.b44** %6, align 8
  %190 = getelementptr inbounds %struct.b44, %struct.b44* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = or i32 %191, %188
  store i32 %192, i32* %190, align 4
  %193 = load i32, i32* @B44_FLAG_100_BASE_T, align 4
  %194 = load i32, i32* @B44_FLAG_FULL_DUPLEX, align 4
  %195 = or i32 %193, %194
  %196 = xor i32 %195, -1
  %197 = load %struct.b44*, %struct.b44** %6, align 8
  %198 = getelementptr inbounds %struct.b44, %struct.b44* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = and i32 %199, %196
  store i32 %200, i32* %198, align 4
  %201 = load i32, i32* %7, align 4
  %202 = load i32, i32* @SPEED_100, align 4
  %203 = icmp eq i32 %201, %202
  br i1 %203, label %204, label %210

204:                                              ; preds = %187
  %205 = load i32, i32* @B44_FLAG_100_BASE_T, align 4
  %206 = load %struct.b44*, %struct.b44** %6, align 8
  %207 = getelementptr inbounds %struct.b44, %struct.b44* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = or i32 %208, %205
  store i32 %209, i32* %207, align 4
  br label %210

210:                                              ; preds = %204, %187
  %211 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %212 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %212, i32 0, i32 2
  %214 = load i64, i64* %213, align 8
  %215 = load i64, i64* @DUPLEX_FULL, align 8
  %216 = icmp eq i64 %214, %215
  br i1 %216, label %217, label %223

217:                                              ; preds = %210
  %218 = load i32, i32* @B44_FLAG_FULL_DUPLEX, align 4
  %219 = load %struct.b44*, %struct.b44** %6, align 8
  %220 = getelementptr inbounds %struct.b44, %struct.b44* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = or i32 %221, %218
  store i32 %222, i32* %220, align 4
  br label %223

223:                                              ; preds = %217, %210
  br label %224

224:                                              ; preds = %223, %186
  %225 = load %struct.net_device*, %struct.net_device** %4, align 8
  %226 = call i64 @netif_running(%struct.net_device* %225)
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %231

228:                                              ; preds = %224
  %229 = load %struct.b44*, %struct.b44** %6, align 8
  %230 = call i32 @b44_setup_phy(%struct.b44* %229)
  br label %231

231:                                              ; preds = %228, %224
  %232 = load %struct.b44*, %struct.b44** %6, align 8
  %233 = getelementptr inbounds %struct.b44, %struct.b44* %232, i32 0, i32 1
  %234 = call i32 @spin_unlock_irq(i32* %233)
  store i32 0, i32* %3, align 4
  br label %235

235:                                              ; preds = %231, %94, %68, %35
  %236 = load i32, i32* %3, align 4
  ret i32 %236
}

declare dso_local %struct.b44* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @b44_setup_phy(%struct.b44*) #1

declare dso_local i32 @phy_ethtool_ksettings_set(i32, %struct.ethtool_link_ksettings*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @ethtool_convert_link_mode_to_legacy_u32(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
