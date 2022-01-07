; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nic_main.c_nic_init_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nic_main.c_nic_init_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nicpf = type { %struct.TYPE_6__, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32, i64, i64, i64, i64 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64 }

@NIC_PF_CFG = common dso_local global i32 0, align 4
@NIC_PF_BP_CFG = common dso_local global i32 0, align 4
@PCI_SUBSYS_DEVID_88XX_NIC_PF = common dso_local global i64 0, align 8
@NIC_PF_INTF_0_1_SEND_CFG = common dso_local global i32 0, align 4
@NIC_TNS_BYPASS_MODE = common dso_local global i32 0, align 4
@BGX0_BLOCK = common dso_local global i32 0, align 4
@BGX1_BLOCK = common dso_local global i32 0, align 4
@NIC_PF_INTFX_SEND_CFG = common dso_local global i32 0, align 4
@NIC_PF_INTF_0_1_BP_CFG = common dso_local global i32 0, align 4
@NIC_HW_MAX_FRS = common dso_local global i64 0, align 8
@VLAN_ETH_HLEN = common dso_local global i64 0, align 8
@ETH_FCS_LEN = common dso_local global i64 0, align 8
@NIC_MAX_PKIND = common dso_local global i32 0, align 4
@NIC_PF_PKIND_0_15_CFG = common dso_local global i32 0, align 4
@NIC_HW_MIN_FRS = common dso_local global i32 0, align 4
@NIC_PF_INTR_TIMER_CFG = common dso_local global i32 0, align 4
@NICPF_CLK_PER_INT_TICK = common dso_local global i32 0, align 4
@NIC_PF_RX_ETYPE_0_7 = common dso_local global i32 0, align 4
@ETYPE_ALG_VLAN_STRIP = common dso_local global i32 0, align 4
@ETH_P_8021Q = common dso_local global i32 0, align 4
@NIC_PF_CQM_CFG = common dso_local global i32 0, align 4
@NICPF_CQM_MIN_DROP_LEVEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nicpf*)* @nic_init_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nic_init_hw(%struct.nicpf* %0) #0 {
  %2 = alloca %struct.nicpf*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.nicpf* %0, %struct.nicpf** %2, align 8
  %5 = load %struct.nicpf*, %struct.nicpf** %2, align 8
  %6 = load i32, i32* @NIC_PF_CFG, align 4
  %7 = call i32 @nic_reg_write(%struct.nicpf* %5, i32 %6, i32 3)
  %8 = load %struct.nicpf*, %struct.nicpf** %2, align 8
  %9 = load i32, i32* @NIC_PF_BP_CFG, align 4
  %10 = call i32 @nic_reg_write(%struct.nicpf* %8, i32 %9, i32 67)
  %11 = load %struct.nicpf*, %struct.nicpf** %2, align 8
  %12 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %11, i32 0, i32 2
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @PCI_SUBSYS_DEVID_88XX_NIC_PF, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %40

18:                                               ; preds = %1
  %19 = load %struct.nicpf*, %struct.nicpf** %2, align 8
  %20 = load i32, i32* @NIC_PF_INTF_0_1_SEND_CFG, align 4
  %21 = load i32, i32* @NIC_TNS_BYPASS_MODE, align 4
  %22 = shl i32 %21, 7
  %23 = load i32, i32* @BGX0_BLOCK, align 4
  %24 = or i32 %22, %23
  %25 = sext i32 %24 to i64
  %26 = or i64 %25, 65536
  %27 = trunc i64 %26 to i32
  %28 = call i32 @nic_reg_write(%struct.nicpf* %19, i32 %20, i32 %27)
  %29 = load %struct.nicpf*, %struct.nicpf** %2, align 8
  %30 = load i32, i32* @NIC_PF_INTF_0_1_SEND_CFG, align 4
  %31 = or i32 %30, 256
  %32 = load i32, i32* @NIC_TNS_BYPASS_MODE, align 4
  %33 = shl i32 %32, 7
  %34 = load i32, i32* @BGX1_BLOCK, align 4
  %35 = or i32 %33, %34
  %36 = sext i32 %35 to i64
  %37 = or i64 %36, 65536
  %38 = trunc i64 %37 to i32
  %39 = call i32 @nic_reg_write(%struct.nicpf* %29, i32 %31, i32 %38)
  br label %60

40:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %56, %40
  %42 = load i32, i32* %3, align 4
  %43 = load %struct.nicpf*, %struct.nicpf** %2, align 8
  %44 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %43, i32 0, i32 1
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp slt i32 %42, %47
  br i1 %48, label %49, label %59

49:                                               ; preds = %41
  %50 = load %struct.nicpf*, %struct.nicpf** %2, align 8
  %51 = load i32, i32* @NIC_PF_INTFX_SEND_CFG, align 4
  %52 = load i32, i32* %3, align 4
  %53 = shl i32 %52, 3
  %54 = or i32 %51, %53
  %55 = call i32 @nic_reg_write(%struct.nicpf* %50, i32 %54, i32 65536)
  br label %56

56:                                               ; preds = %49
  %57 = load i32, i32* %3, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %3, align 4
  br label %41

59:                                               ; preds = %41
  br label %60

60:                                               ; preds = %59, %18
  %61 = load %struct.nicpf*, %struct.nicpf** %2, align 8
  %62 = load i32, i32* @NIC_PF_INTF_0_1_BP_CFG, align 4
  %63 = load i32, i32* @BGX0_BLOCK, align 4
  %64 = sext i32 %63 to i64
  %65 = or i64 -9223372036854775808, %64
  %66 = trunc i64 %65 to i32
  %67 = call i32 @nic_reg_write(%struct.nicpf* %61, i32 %62, i32 %66)
  %68 = load %struct.nicpf*, %struct.nicpf** %2, align 8
  %69 = load i32, i32* @NIC_PF_INTF_0_1_BP_CFG, align 4
  %70 = add nsw i32 %69, 256
  %71 = load i32, i32* @BGX1_BLOCK, align 4
  %72 = sext i32 %71 to i64
  %73 = or i64 -9223372036854775808, %72
  %74 = trunc i64 %73 to i32
  %75 = call i32 @nic_reg_write(%struct.nicpf* %68, i32 %70, i32 %74)
  %76 = load %struct.nicpf*, %struct.nicpf** %2, align 8
  %77 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 4
  store i64 0, i64* %78, align 8
  %79 = load i64, i64* @NIC_HW_MAX_FRS, align 8
  %80 = load i64, i64* @VLAN_ETH_HLEN, align 8
  %81 = add nsw i64 %79, %80
  %82 = load i64, i64* @ETH_FCS_LEN, align 8
  %83 = add nsw i64 %81, %82
  %84 = add nsw i64 %83, 4
  %85 = load %struct.nicpf*, %struct.nicpf** %2, align 8
  %86 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 3
  store i64 %84, i64* %87, align 8
  %88 = load %struct.nicpf*, %struct.nicpf** %2, align 8
  %89 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  store i32 1, i32* %90, align 8
  %91 = load %struct.nicpf*, %struct.nicpf** %2, align 8
  %92 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 2
  store i64 0, i64* %93, align 8
  %94 = load %struct.nicpf*, %struct.nicpf** %2, align 8
  %95 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 1
  store i64 0, i64* %96, align 8
  store i32 0, i32* %3, align 4
  br label %97

97:                                               ; preds = %112, %60
  %98 = load i32, i32* %3, align 4
  %99 = load i32, i32* @NIC_MAX_PKIND, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %101, label %115

101:                                              ; preds = %97
  %102 = load %struct.nicpf*, %struct.nicpf** %2, align 8
  %103 = load i32, i32* @NIC_PF_PKIND_0_15_CFG, align 4
  %104 = load i32, i32* %3, align 4
  %105 = shl i32 %104, 3
  %106 = or i32 %103, %105
  %107 = load %struct.nicpf*, %struct.nicpf** %2, align 8
  %108 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %107, i32 0, i32 0
  %109 = bitcast %struct.TYPE_6__* %108 to i32*
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @nic_reg_write(%struct.nicpf* %102, i32 %106, i32 %110)
  br label %112

112:                                              ; preds = %101
  %113 = load i32, i32* %3, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %3, align 4
  br label %97

115:                                              ; preds = %97
  %116 = load %struct.nicpf*, %struct.nicpf** %2, align 8
  %117 = load i32, i32* @NIC_HW_MIN_FRS, align 4
  %118 = call i32 @nic_set_tx_pkt_pad(%struct.nicpf* %116, i32 %117)
  %119 = load %struct.nicpf*, %struct.nicpf** %2, align 8
  %120 = load i32, i32* @NIC_PF_INTR_TIMER_CFG, align 4
  %121 = load i32, i32* @NICPF_CLK_PER_INT_TICK, align 4
  %122 = call i32 @nic_reg_write(%struct.nicpf* %119, i32 %120, i32 %121)
  %123 = load %struct.nicpf*, %struct.nicpf** %2, align 8
  %124 = load i32, i32* @NIC_PF_RX_ETYPE_0_7, align 4
  %125 = load i32, i32* @ETYPE_ALG_VLAN_STRIP, align 4
  %126 = shl i32 %125, 16
  %127 = or i32 1048576, %126
  %128 = load i32, i32* @ETH_P_8021Q, align 4
  %129 = or i32 %127, %128
  %130 = call i32 @nic_reg_write(%struct.nicpf* %123, i32 %124, i32 %129)
  %131 = load %struct.nicpf*, %struct.nicpf** %2, align 8
  %132 = load i32, i32* @NIC_PF_CQM_CFG, align 4
  %133 = call i32 @nic_reg_read(%struct.nicpf* %131, i32 %132)
  store i32 %133, i32* %4, align 4
  %134 = load i32, i32* %4, align 4
  %135 = load i32, i32* @NICPF_CQM_MIN_DROP_LEVEL, align 4
  %136 = icmp slt i32 %134, %135
  br i1 %136, label %137, label %142

137:                                              ; preds = %115
  %138 = load %struct.nicpf*, %struct.nicpf** %2, align 8
  %139 = load i32, i32* @NIC_PF_CQM_CFG, align 4
  %140 = load i32, i32* @NICPF_CQM_MIN_DROP_LEVEL, align 4
  %141 = call i32 @nic_reg_write(%struct.nicpf* %138, i32 %139, i32 %140)
  br label %142

142:                                              ; preds = %137, %115
  ret void
}

declare dso_local i32 @nic_reg_write(%struct.nicpf*, i32, i32) #1

declare dso_local i32 @nic_set_tx_pkt_pad(%struct.nicpf*, i32) #1

declare dso_local i32 @nic_reg_read(%struct.nicpf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
