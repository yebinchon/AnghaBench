; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_main.c_igb_set_rx_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_main.c_igb_set_rx_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.igb_adapter = type { i32, i32, %struct.e1000_hw }
%struct.e1000_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@MAX_JUMBO_FRAME_SIZE = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@E1000_RCTL_UPE = common dso_local global i32 0, align 4
@E1000_RCTL_MPE = common dso_local global i32 0, align 4
@E1000_VMOLR_MPME = common dso_local global i32 0, align 4
@e1000_82576 = common dso_local global i64 0, align 8
@E1000_VMOLR_ROPE = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@E1000_VMOLR_ROMPE = common dso_local global i32 0, align 4
@igb_uc_sync = common dso_local global i32 0, align 4
@igb_uc_unsync = common dso_local global i32 0, align 4
@E1000_RCTL_VFE = common dso_local global i32 0, align 4
@NETIF_F_RXALL = common dso_local global i32 0, align 4
@E1000_RCTL = common dso_local global i32 0, align 4
@IGB_MAX_FRAME_BUILD_SKB = common dso_local global i32 0, align 4
@E1000_RLPML = common dso_local global i32 0, align 4
@e1000_i350 = common dso_local global i64 0, align 8
@E1000_VMOLR_RLPML_MASK = common dso_local global i32 0, align 4
@E1000_VMOLR_LPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @igb_set_rx_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @igb_set_rx_mode(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.igb_adapter*, align 8
  %4 = alloca %struct.e1000_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %10 = load %struct.net_device*, %struct.net_device** %2, align 8
  %11 = call %struct.igb_adapter* @netdev_priv(%struct.net_device* %10)
  store %struct.igb_adapter* %11, %struct.igb_adapter** %3, align 8
  %12 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %13 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %12, i32 0, i32 2
  store %struct.e1000_hw* %13, %struct.e1000_hw** %4, align 8
  %14 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %15 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %17 = load i32, i32* @MAX_JUMBO_FRAME_SIZE, align 4
  store i32 %17, i32* %8, align 4
  %18 = load %struct.net_device*, %struct.net_device** %2, align 8
  %19 = getelementptr inbounds %struct.net_device, %struct.net_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @IFF_PROMISC, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %44

24:                                               ; preds = %1
  %25 = load i32, i32* @E1000_RCTL_UPE, align 4
  %26 = load i32, i32* @E1000_RCTL_MPE, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* %6, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* @E1000_VMOLR_MPME, align 4
  %31 = load i32, i32* %7, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %7, align 4
  %33 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %34 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @e1000_82576, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %24
  %40 = load i32, i32* @E1000_VMOLR_ROPE, align 4
  %41 = load i32, i32* %7, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %7, align 4
  br label %43

43:                                               ; preds = %39, %24
  br label %80

44:                                               ; preds = %1
  %45 = load %struct.net_device*, %struct.net_device** %2, align 8
  %46 = getelementptr inbounds %struct.net_device, %struct.net_device* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @IFF_ALLMULTI, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %44
  %52 = load i32, i32* @E1000_RCTL_MPE, align 4
  %53 = load i32, i32* %6, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* @E1000_VMOLR_MPME, align 4
  %56 = load i32, i32* %7, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %7, align 4
  br label %79

58:                                               ; preds = %44
  %59 = load %struct.net_device*, %struct.net_device** %2, align 8
  %60 = call i32 @igb_write_mc_addr_list(%struct.net_device* %59)
  store i32 %60, i32* %9, align 4
  %61 = load i32, i32* %9, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %58
  %64 = load i32, i32* @E1000_RCTL_MPE, align 4
  %65 = load i32, i32* %6, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %6, align 4
  %67 = load i32, i32* @E1000_VMOLR_MPME, align 4
  %68 = load i32, i32* %7, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %7, align 4
  br label %78

70:                                               ; preds = %58
  %71 = load i32, i32* %9, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %70
  %74 = load i32, i32* @E1000_VMOLR_ROMPE, align 4
  %75 = load i32, i32* %7, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %7, align 4
  br label %77

77:                                               ; preds = %73, %70
  br label %78

78:                                               ; preds = %77, %63
  br label %79

79:                                               ; preds = %78, %51
  br label %80

80:                                               ; preds = %79, %43
  %81 = load %struct.net_device*, %struct.net_device** %2, align 8
  %82 = load i32, i32* @igb_uc_sync, align 4
  %83 = load i32, i32* @igb_uc_unsync, align 4
  %84 = call i64 @__dev_uc_sync(%struct.net_device* %81, i32 %82, i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %80
  %87 = load i32, i32* @E1000_RCTL_UPE, align 4
  %88 = load i32, i32* %6, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %6, align 4
  %90 = load i32, i32* @E1000_VMOLR_ROPE, align 4
  %91 = load i32, i32* %7, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %7, align 4
  br label %93

93:                                               ; preds = %86, %80
  %94 = load i32, i32* @E1000_RCTL_VFE, align 4
  %95 = load i32, i32* %6, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %6, align 4
  %97 = load %struct.net_device*, %struct.net_device** %2, align 8
  %98 = getelementptr inbounds %struct.net_device, %struct.net_device* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @IFF_PROMISC, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %110, label %103

103:                                              ; preds = %93
  %104 = load %struct.net_device*, %struct.net_device** %2, align 8
  %105 = getelementptr inbounds %struct.net_device, %struct.net_device* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @NETIF_F_RXALL, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %120

110:                                              ; preds = %103, %93
  %111 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %112 = call i64 @igb_vlan_promisc_enable(%struct.igb_adapter* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %110
  %115 = load i32, i32* @E1000_RCTL_VFE, align 4
  %116 = xor i32 %115, -1
  %117 = load i32, i32* %6, align 4
  %118 = and i32 %117, %116
  store i32 %118, i32* %6, align 4
  br label %119

119:                                              ; preds = %114, %110
  br label %123

120:                                              ; preds = %103
  %121 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %122 = call i32 @igb_vlan_promisc_disable(%struct.igb_adapter* %121)
  br label %123

123:                                              ; preds = %120, %119
  %124 = load i32, i32* @E1000_RCTL, align 4
  %125 = call i32 @rd32(i32 %124)
  %126 = load i32, i32* @E1000_RCTL_UPE, align 4
  %127 = load i32, i32* @E1000_RCTL_MPE, align 4
  %128 = or i32 %126, %127
  %129 = load i32, i32* @E1000_RCTL_VFE, align 4
  %130 = or i32 %128, %129
  %131 = xor i32 %130, -1
  %132 = and i32 %125, %131
  %133 = load i32, i32* %6, align 4
  %134 = or i32 %133, %132
  store i32 %134, i32* %6, align 4
  %135 = load i32, i32* @E1000_RCTL, align 4
  %136 = load i32, i32* %6, align 4
  %137 = call i32 @wr32(i32 %135, i32 %136)
  %138 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %139 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %151, label %142

142:                                              ; preds = %123
  %143 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %144 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @IGB_MAX_FRAME_BUILD_SKB, align 4
  %147 = icmp sle i32 %145, %146
  br i1 %147, label %148, label %150

148:                                              ; preds = %142
  %149 = load i32, i32* @IGB_MAX_FRAME_BUILD_SKB, align 4
  store i32 %149, i32* %8, align 4
  br label %150

150:                                              ; preds = %148, %142
  br label %151

151:                                              ; preds = %150, %123
  %152 = load i32, i32* @E1000_RLPML, align 4
  %153 = load i32, i32* %8, align 4
  %154 = call i32 @wr32(i32 %152, i32 %153)
  %155 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %156 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* @e1000_82576, align 8
  %160 = icmp slt i64 %158, %159
  br i1 %160, label %168, label %161

161:                                              ; preds = %151
  %162 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %163 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* @e1000_i350, align 8
  %167 = icmp sgt i64 %165, %166
  br i1 %167, label %168, label %169

168:                                              ; preds = %161, %151
  br label %218

169:                                              ; preds = %161
  %170 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %171 = load i32, i32* %7, align 4
  %172 = load i32, i32* @E1000_VMOLR_ROPE, align 4
  %173 = and i32 %171, %172
  %174 = icmp ne i32 %173, 0
  %175 = xor i1 %174, true
  %176 = xor i1 %175, true
  %177 = zext i1 %176 to i32
  %178 = call i32 @igb_set_uta(%struct.igb_adapter* %170, i32 %177)
  %179 = load i32, i32* %5, align 4
  %180 = call i32 @E1000_VMOLR(i32 %179)
  %181 = call i32 @rd32(i32 %180)
  %182 = load i32, i32* @E1000_VMOLR_ROPE, align 4
  %183 = load i32, i32* @E1000_VMOLR_MPME, align 4
  %184 = or i32 %182, %183
  %185 = load i32, i32* @E1000_VMOLR_ROMPE, align 4
  %186 = or i32 %184, %185
  %187 = xor i32 %186, -1
  %188 = and i32 %181, %187
  %189 = load i32, i32* %7, align 4
  %190 = or i32 %189, %188
  store i32 %190, i32* %7, align 4
  %191 = load i32, i32* @E1000_VMOLR_RLPML_MASK, align 4
  %192 = xor i32 %191, -1
  %193 = load i32, i32* %7, align 4
  %194 = and i32 %193, %192
  store i32 %194, i32* %7, align 4
  %195 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %196 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = load i32, i32* @IGB_MAX_FRAME_BUILD_SKB, align 4
  %199 = icmp sle i32 %197, %198
  br i1 %199, label %200, label %204

200:                                              ; preds = %169
  %201 = load i32, i32* @IGB_MAX_FRAME_BUILD_SKB, align 4
  %202 = load i32, i32* %7, align 4
  %203 = or i32 %202, %201
  store i32 %203, i32* %7, align 4
  br label %208

204:                                              ; preds = %169
  %205 = load i32, i32* @MAX_JUMBO_FRAME_SIZE, align 4
  %206 = load i32, i32* %7, align 4
  %207 = or i32 %206, %205
  store i32 %207, i32* %7, align 4
  br label %208

208:                                              ; preds = %204, %200
  %209 = load i32, i32* @E1000_VMOLR_LPE, align 4
  %210 = load i32, i32* %7, align 4
  %211 = or i32 %210, %209
  store i32 %211, i32* %7, align 4
  %212 = load i32, i32* %5, align 4
  %213 = call i32 @E1000_VMOLR(i32 %212)
  %214 = load i32, i32* %7, align 4
  %215 = call i32 @wr32(i32 %213, i32 %214)
  %216 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %217 = call i32 @igb_restore_vf_multicasts(%struct.igb_adapter* %216)
  br label %218

218:                                              ; preds = %208, %168
  ret void
}

declare dso_local %struct.igb_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @igb_write_mc_addr_list(%struct.net_device*) #1

declare dso_local i64 @__dev_uc_sync(%struct.net_device*, i32, i32) #1

declare dso_local i64 @igb_vlan_promisc_enable(%struct.igb_adapter*) #1

declare dso_local i32 @igb_vlan_promisc_disable(%struct.igb_adapter*) #1

declare dso_local i32 @rd32(i32) #1

declare dso_local i32 @wr32(i32, i32) #1

declare dso_local i32 @igb_set_uta(%struct.igb_adapter*, i32) #1

declare dso_local i32 @E1000_VMOLR(i32) #1

declare dso_local i32 @igb_restore_vf_multicasts(%struct.igb_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
