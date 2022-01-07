; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_set_rx_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_set_rx_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.ixgbe_adapter = type { %struct.ixgbe_hw }
%struct.ixgbe_hw = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 }

@IXGBE_VMOLR_BAM = common dso_local global i32 0, align 4
@IXGBE_VMOLR_AUPE = common dso_local global i32 0, align 4
@IXGBE_FCTRL = common dso_local global i32 0, align 4
@IXGBE_FCTRL_SBP = common dso_local global i32 0, align 4
@IXGBE_FCTRL_BAM = common dso_local global i32 0, align 4
@IXGBE_FCTRL_DPF = common dso_local global i32 0, align 4
@IXGBE_FCTRL_PMCF = common dso_local global i32 0, align 4
@IXGBE_FCTRL_UPE = common dso_local global i32 0, align 4
@IXGBE_FCTRL_MPE = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@IXGBE_VMOLR_MPE = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_CTAG_FILTER = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@ixgbe_uc_sync = common dso_local global i32 0, align 4
@ixgbe_uc_unsync = common dso_local global i32 0, align 4
@IXGBE_VMOLR_ROPE = common dso_local global i32 0, align 4
@IXGBE_VMOLR_ROMPE = common dso_local global i32 0, align 4
@ixgbe_mac_82598EB = common dso_local global i64 0, align 8
@NETIF_F_RXALL = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_CTAG_RX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ixgbe_set_rx_mode(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.ixgbe_adapter*, align 8
  %4 = alloca %struct.ixgbe_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = call %struct.ixgbe_adapter* @netdev_priv(%struct.net_device* %9)
  store %struct.ixgbe_adapter* %10, %struct.ixgbe_adapter** %3, align 8
  %11 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %12 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %11, i32 0, i32 0
  store %struct.ixgbe_hw* %12, %struct.ixgbe_hw** %4, align 8
  %13 = load i32, i32* @IXGBE_VMOLR_BAM, align 4
  %14 = load i32, i32* @IXGBE_VMOLR_AUPE, align 4
  %15 = or i32 %13, %14
  store i32 %15, i32* %6, align 4
  %16 = load %struct.net_device*, %struct.net_device** %2, align 8
  %17 = getelementptr inbounds %struct.net_device, %struct.net_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %7, align 4
  %19 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %20 = load i32, i32* @IXGBE_FCTRL, align 4
  %21 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %19, i32 %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* @IXGBE_FCTRL_SBP, align 4
  %23 = xor i32 %22, -1
  %24 = load i32, i32* %5, align 4
  %25 = and i32 %24, %23
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* @IXGBE_FCTRL_BAM, align 4
  %27 = load i32, i32* %5, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* @IXGBE_FCTRL_DPF, align 4
  %30 = load i32, i32* %5, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* @IXGBE_FCTRL_PMCF, align 4
  %33 = load i32, i32* %5, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* @IXGBE_FCTRL_UPE, align 4
  %36 = load i32, i32* @IXGBE_FCTRL_MPE, align 4
  %37 = or i32 %35, %36
  %38 = xor i32 %37, -1
  %39 = load i32, i32* %5, align 4
  %40 = and i32 %39, %38
  store i32 %40, i32* %5, align 4
  %41 = load %struct.net_device*, %struct.net_device** %2, align 8
  %42 = getelementptr inbounds %struct.net_device, %struct.net_device* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @IFF_PROMISC, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %63

47:                                               ; preds = %1
  %48 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %49 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  store i32 1, i32* %50, align 8
  %51 = load i32, i32* @IXGBE_FCTRL_UPE, align 4
  %52 = load i32, i32* @IXGBE_FCTRL_MPE, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* %5, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* @IXGBE_VMOLR_MPE, align 4
  %57 = load i32, i32* %6, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_FILTER, align 4
  %60 = xor i32 %59, -1
  %61 = load i32, i32* %7, align 4
  %62 = and i32 %61, %60
  store i32 %62, i32* %7, align 4
  br label %81

63:                                               ; preds = %1
  %64 = load %struct.net_device*, %struct.net_device** %2, align 8
  %65 = getelementptr inbounds %struct.net_device, %struct.net_device* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @IFF_ALLMULTI, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %63
  %71 = load i32, i32* @IXGBE_FCTRL_MPE, align 4
  %72 = load i32, i32* %5, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %5, align 4
  %74 = load i32, i32* @IXGBE_VMOLR_MPE, align 4
  %75 = load i32, i32* %6, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %6, align 4
  br label %77

77:                                               ; preds = %70, %63
  %78 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %79 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  store i32 0, i32* %80, align 8
  br label %81

81:                                               ; preds = %77, %47
  %82 = load %struct.net_device*, %struct.net_device** %2, align 8
  %83 = load i32, i32* @ixgbe_uc_sync, align 4
  %84 = load i32, i32* @ixgbe_uc_unsync, align 4
  %85 = call i64 @__dev_uc_sync(%struct.net_device* %82, i32 %83, i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %94

87:                                               ; preds = %81
  %88 = load i32, i32* @IXGBE_FCTRL_UPE, align 4
  %89 = load i32, i32* %5, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %5, align 4
  %91 = load i32, i32* @IXGBE_VMOLR_ROPE, align 4
  %92 = load i32, i32* %6, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %6, align 4
  br label %94

94:                                               ; preds = %87, %81
  %95 = load %struct.net_device*, %struct.net_device** %2, align 8
  %96 = call i32 @ixgbe_write_mc_addr_list(%struct.net_device* %95)
  store i32 %96, i32* %8, align 4
  %97 = load i32, i32* %8, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %106

99:                                               ; preds = %94
  %100 = load i32, i32* @IXGBE_FCTRL_MPE, align 4
  %101 = load i32, i32* %5, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %5, align 4
  %103 = load i32, i32* @IXGBE_VMOLR_MPE, align 4
  %104 = load i32, i32* %6, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %6, align 4
  br label %114

106:                                              ; preds = %94
  %107 = load i32, i32* %8, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %106
  %110 = load i32, i32* @IXGBE_VMOLR_ROMPE, align 4
  %111 = load i32, i32* %6, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %6, align 4
  br label %113

113:                                              ; preds = %109, %106
  br label %114

114:                                              ; preds = %113, %99
  %115 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %116 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @ixgbe_mac_82598EB, align 8
  %120 = icmp ne i64 %118, %119
  br i1 %120, label %121, label %140

121:                                              ; preds = %114
  %122 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %123 = call i32 @VMDQ_P(i32 0)
  %124 = call i32 @IXGBE_VMOLR(i32 %123)
  %125 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %122, i32 %124)
  %126 = load i32, i32* @IXGBE_VMOLR_MPE, align 4
  %127 = load i32, i32* @IXGBE_VMOLR_ROMPE, align 4
  %128 = or i32 %126, %127
  %129 = load i32, i32* @IXGBE_VMOLR_ROPE, align 4
  %130 = or i32 %128, %129
  %131 = xor i32 %130, -1
  %132 = and i32 %125, %131
  %133 = load i32, i32* %6, align 4
  %134 = or i32 %133, %132
  store i32 %134, i32* %6, align 4
  %135 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %136 = call i32 @VMDQ_P(i32 0)
  %137 = call i32 @IXGBE_VMOLR(i32 %136)
  %138 = load i32, i32* %6, align 4
  %139 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %135, i32 %137, i32 %138)
  br label %140

140:                                              ; preds = %121, %114
  %141 = load i32, i32* %7, align 4
  %142 = load i32, i32* @NETIF_F_RXALL, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %157

145:                                              ; preds = %140
  %146 = load i32, i32* @IXGBE_FCTRL_SBP, align 4
  %147 = load i32, i32* @IXGBE_FCTRL_BAM, align 4
  %148 = or i32 %146, %147
  %149 = load i32, i32* @IXGBE_FCTRL_PMCF, align 4
  %150 = or i32 %148, %149
  %151 = load i32, i32* %5, align 4
  %152 = or i32 %151, %150
  store i32 %152, i32* %5, align 4
  %153 = load i32, i32* @IXGBE_FCTRL_DPF, align 4
  %154 = xor i32 %153, -1
  %155 = load i32, i32* %5, align 4
  %156 = and i32 %155, %154
  store i32 %156, i32* %5, align 4
  br label %157

157:                                              ; preds = %145, %140
  %158 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %159 = load i32, i32* @IXGBE_FCTRL, align 4
  %160 = load i32, i32* %5, align 4
  %161 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %158, i32 %159, i32 %160)
  %162 = load i32, i32* %7, align 4
  %163 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_RX, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %157
  %167 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %168 = call i32 @ixgbe_vlan_strip_enable(%struct.ixgbe_adapter* %167)
  br label %172

169:                                              ; preds = %157
  %170 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %171 = call i32 @ixgbe_vlan_strip_disable(%struct.ixgbe_adapter* %170)
  br label %172

172:                                              ; preds = %169, %166
  %173 = load i32, i32* %7, align 4
  %174 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_FILTER, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %180

177:                                              ; preds = %172
  %178 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %179 = call i32 @ixgbe_vlan_promisc_disable(%struct.ixgbe_adapter* %178)
  br label %183

180:                                              ; preds = %172
  %181 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %182 = call i32 @ixgbe_vlan_promisc_enable(%struct.ixgbe_adapter* %181)
  br label %183

183:                                              ; preds = %180, %177
  ret void
}

declare dso_local %struct.ixgbe_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i64 @__dev_uc_sync(%struct.net_device*, i32, i32) #1

declare dso_local i32 @ixgbe_write_mc_addr_list(%struct.net_device*) #1

declare dso_local i32 @IXGBE_VMOLR(i32) #1

declare dso_local i32 @VMDQ_P(i32) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @ixgbe_vlan_strip_enable(%struct.ixgbe_adapter*) #1

declare dso_local i32 @ixgbe_vlan_strip_disable(%struct.ixgbe_adapter*) #1

declare dso_local i32 @ixgbe_vlan_promisc_disable(%struct.ixgbe_adapter*) #1

declare dso_local i32 @ixgbe_vlan_promisc_enable(%struct.ixgbe_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
