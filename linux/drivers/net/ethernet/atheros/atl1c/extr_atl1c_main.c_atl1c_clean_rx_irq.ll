; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1c/extr_atl1c_main.c_atl1c_clean_rx_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1c/extr_atl1c_main.c_atl1c_clean_rx_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atl1c_adapter = type { %struct.atl1c_rrd_ring, %struct.atl1c_rfd_ring, %struct.net_device*, %struct.pci_dev* }
%struct.atl1c_rrd_ring = type { i32 }
%struct.atl1c_rfd_ring = type { %struct.atl1c_buffer* }
%struct.atl1c_buffer = type { %struct.sk_buff*, i32, i32 }
%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }
%struct.pci_dev = type { i32 }
%struct.atl1c_recv_ret_status = type { i32, i32, i32 }

@RRS_RX_RFD_CNT_SHIFT = common dso_local global i32 0, align 4
@RRS_RX_RFD_CNT_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Multi rfd not support yet!\0A\00", align 1
@RRS_RX_ERR_SUM = common dso_local global i32 0, align 4
@RRS_802_3_LEN_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"wrong packet! rrs word3 is %x\0A\00", align 1
@RRS_PKT_SIZE_SHIFT = common dso_local global i32 0, align 4
@RRS_PKT_SIZE_MASK = common dso_local global i32 0, align 4
@RRS_RX_RFD_INDEX_SHIFT = common dso_local global i32 0, align 4
@RRS_RX_RFD_INDEX_MASK = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@ETH_FCS_LEN = common dso_local global i32 0, align 4
@RRS_VLAN_INS = common dso_local global i32 0, align 4
@ETH_P_8021Q = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atl1c_adapter*, i32*, i32)* @atl1c_clean_rx_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atl1c_clean_rx_irq(%struct.atl1c_adapter* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.atl1c_adapter*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.pci_dev*, align 8
  %12 = alloca %struct.net_device*, align 8
  %13 = alloca %struct.atl1c_rfd_ring*, align 8
  %14 = alloca %struct.atl1c_rrd_ring*, align 8
  %15 = alloca %struct.sk_buff*, align 8
  %16 = alloca %struct.atl1c_recv_ret_status*, align 8
  %17 = alloca %struct.atl1c_buffer*, align 8
  %18 = alloca i32, align 4
  store %struct.atl1c_adapter* %0, %struct.atl1c_adapter** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %9, align 4
  %19 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %4, align 8
  %20 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %19, i32 0, i32 3
  %21 = load %struct.pci_dev*, %struct.pci_dev** %20, align 8
  store %struct.pci_dev* %21, %struct.pci_dev** %11, align 8
  %22 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %4, align 8
  %23 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %22, i32 0, i32 2
  %24 = load %struct.net_device*, %struct.net_device** %23, align 8
  store %struct.net_device* %24, %struct.net_device** %12, align 8
  %25 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %4, align 8
  %26 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %25, i32 0, i32 1
  store %struct.atl1c_rfd_ring* %26, %struct.atl1c_rfd_ring** %13, align 8
  %27 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %4, align 8
  %28 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %27, i32 0, i32 0
  store %struct.atl1c_rrd_ring* %28, %struct.atl1c_rrd_ring** %14, align 8
  br label %29

29:                                               ; preds = %3, %99, %187
  %30 = load i32*, i32** %5, align 8
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp sge i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %195

35:                                               ; preds = %29
  %36 = load %struct.atl1c_rrd_ring*, %struct.atl1c_rrd_ring** %14, align 8
  %37 = load %struct.atl1c_rrd_ring*, %struct.atl1c_rrd_ring** %14, align 8
  %38 = getelementptr inbounds %struct.atl1c_rrd_ring, %struct.atl1c_rrd_ring* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call %struct.atl1c_recv_ret_status* @ATL1C_RRD_DESC(%struct.atl1c_rrd_ring* %36, i32 %39)
  store %struct.atl1c_recv_ret_status* %40, %struct.atl1c_recv_ret_status** %16, align 8
  %41 = load %struct.atl1c_recv_ret_status*, %struct.atl1c_recv_ret_status** %16, align 8
  %42 = getelementptr inbounds %struct.atl1c_recv_ret_status, %struct.atl1c_recv_ret_status* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @RRS_RXD_IS_VALID(i32 %43)
  %45 = call i64 @likely(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %70

47:                                               ; preds = %35
  %48 = load %struct.atl1c_recv_ret_status*, %struct.atl1c_recv_ret_status** %16, align 8
  %49 = getelementptr inbounds %struct.atl1c_recv_ret_status, %struct.atl1c_recv_ret_status* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @RRS_RX_RFD_CNT_SHIFT, align 4
  %52 = ashr i32 %50, %51
  %53 = load i32, i32* @RRS_RX_RFD_CNT_MASK, align 4
  %54 = and i32 %52, %53
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp ne i32 %55, 1
  %57 = zext i1 %56 to i32
  %58 = call i64 @unlikely(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %47
  %61 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %4, align 8
  %62 = call i64 @netif_msg_rx_err(%struct.atl1c_adapter* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %60
  %65 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  %66 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %65, i32 0, i32 0
  %67 = call i32 (i32*, i8*, ...) @dev_warn(i32* %66, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %68

68:                                               ; preds = %64, %60
  br label %69

69:                                               ; preds = %68, %47
  br label %71

70:                                               ; preds = %35
  br label %195

71:                                               ; preds = %69
  %72 = load %struct.atl1c_rrd_ring*, %struct.atl1c_rrd_ring** %14, align 8
  %73 = load %struct.atl1c_recv_ret_status*, %struct.atl1c_recv_ret_status** %16, align 8
  %74 = load i32, i32* %7, align 4
  %75 = call i32 @atl1c_clean_rrd(%struct.atl1c_rrd_ring* %72, %struct.atl1c_recv_ret_status* %73, i32 %74)
  %76 = load %struct.atl1c_recv_ret_status*, %struct.atl1c_recv_ret_status** %16, align 8
  %77 = getelementptr inbounds %struct.atl1c_recv_ret_status, %struct.atl1c_recv_ret_status* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @RRS_RX_ERR_SUM, align 4
  %80 = load i32, i32* @RRS_802_3_LEN_ERR, align 4
  %81 = or i32 %79, %80
  %82 = and i32 %78, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %100

84:                                               ; preds = %71
  %85 = load %struct.atl1c_rfd_ring*, %struct.atl1c_rfd_ring** %13, align 8
  %86 = load %struct.atl1c_recv_ret_status*, %struct.atl1c_recv_ret_status** %16, align 8
  %87 = load i32, i32* %7, align 4
  %88 = call i32 @atl1c_clean_rfd(%struct.atl1c_rfd_ring* %85, %struct.atl1c_recv_ret_status* %86, i32 %87)
  %89 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %4, align 8
  %90 = call i64 @netif_msg_rx_err(%struct.atl1c_adapter* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %99

92:                                               ; preds = %84
  %93 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  %94 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %93, i32 0, i32 0
  %95 = load %struct.atl1c_recv_ret_status*, %struct.atl1c_recv_ret_status** %16, align 8
  %96 = getelementptr inbounds %struct.atl1c_recv_ret_status, %struct.atl1c_recv_ret_status* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 (i32*, i8*, ...) @dev_warn(i32* %94, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %97)
  br label %99

99:                                               ; preds = %92, %84
  br label %29

100:                                              ; preds = %71
  %101 = load %struct.atl1c_recv_ret_status*, %struct.atl1c_recv_ret_status** %16, align 8
  %102 = getelementptr inbounds %struct.atl1c_recv_ret_status, %struct.atl1c_recv_ret_status* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @RRS_PKT_SIZE_SHIFT, align 4
  %105 = ashr i32 %103, %104
  %106 = load i32, i32* @RRS_PKT_SIZE_MASK, align 4
  %107 = and i32 %105, %106
  %108 = call i32 @le16_to_cpu(i32 %107)
  store i32 %108, i32* %10, align 4
  %109 = load i32, i32* %7, align 4
  %110 = icmp eq i32 %109, 1
  %111 = zext i1 %110 to i32
  %112 = call i64 @likely(i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %140

114:                                              ; preds = %100
  %115 = load %struct.atl1c_recv_ret_status*, %struct.atl1c_recv_ret_status** %16, align 8
  %116 = getelementptr inbounds %struct.atl1c_recv_ret_status, %struct.atl1c_recv_ret_status* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @RRS_RX_RFD_INDEX_SHIFT, align 4
  %119 = ashr i32 %117, %118
  %120 = load i32, i32* @RRS_RX_RFD_INDEX_MASK, align 4
  %121 = and i32 %119, %120
  store i32 %121, i32* %8, align 4
  %122 = load %struct.atl1c_rfd_ring*, %struct.atl1c_rfd_ring** %13, align 8
  %123 = getelementptr inbounds %struct.atl1c_rfd_ring, %struct.atl1c_rfd_ring* %122, i32 0, i32 0
  %124 = load %struct.atl1c_buffer*, %struct.atl1c_buffer** %123, align 8
  %125 = load i32, i32* %8, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.atl1c_buffer, %struct.atl1c_buffer* %124, i64 %126
  store %struct.atl1c_buffer* %127, %struct.atl1c_buffer** %17, align 8
  %128 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  %129 = load %struct.atl1c_buffer*, %struct.atl1c_buffer** %17, align 8
  %130 = getelementptr inbounds %struct.atl1c_buffer, %struct.atl1c_buffer* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.atl1c_buffer*, %struct.atl1c_buffer** %17, align 8
  %133 = getelementptr inbounds %struct.atl1c_buffer, %struct.atl1c_buffer* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %136 = call i32 @pci_unmap_single(%struct.pci_dev* %128, i32 %131, i32 %134, i32 %135)
  %137 = load %struct.atl1c_buffer*, %struct.atl1c_buffer** %17, align 8
  %138 = getelementptr inbounds %struct.atl1c_buffer, %struct.atl1c_buffer* %137, i32 0, i32 0
  %139 = load %struct.sk_buff*, %struct.sk_buff** %138, align 8
  store %struct.sk_buff* %139, %struct.sk_buff** %15, align 8
  br label %149

140:                                              ; preds = %100
  %141 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %4, align 8
  %142 = call i64 @netif_msg_rx_err(%struct.atl1c_adapter* %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %148

144:                                              ; preds = %140
  %145 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  %146 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %145, i32 0, i32 0
  %147 = call i32 (i32*, i8*, ...) @dev_warn(i32* %146, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %148

148:                                              ; preds = %144, %140
  br label %195

149:                                              ; preds = %114
  %150 = load %struct.atl1c_rfd_ring*, %struct.atl1c_rfd_ring** %13, align 8
  %151 = load %struct.atl1c_recv_ret_status*, %struct.atl1c_recv_ret_status** %16, align 8
  %152 = load i32, i32* %7, align 4
  %153 = call i32 @atl1c_clean_rfd(%struct.atl1c_rfd_ring* %150, %struct.atl1c_recv_ret_status* %151, i32 %152)
  %154 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %155 = load i32, i32* %10, align 4
  %156 = load i32, i32* @ETH_FCS_LEN, align 4
  %157 = sub nsw i32 %155, %156
  %158 = call i32 @skb_put(%struct.sk_buff* %154, i32 %157)
  %159 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %160 = load %struct.net_device*, %struct.net_device** %12, align 8
  %161 = call i32 @eth_type_trans(%struct.sk_buff* %159, %struct.net_device* %160)
  %162 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %163 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %162, i32 0, i32 0
  store i32 %161, i32* %163, align 4
  %164 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %4, align 8
  %165 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %166 = load %struct.atl1c_recv_ret_status*, %struct.atl1c_recv_ret_status** %16, align 8
  %167 = call i32 @atl1c_rx_checksum(%struct.atl1c_adapter* %164, %struct.sk_buff* %165, %struct.atl1c_recv_ret_status* %166)
  %168 = load %struct.atl1c_recv_ret_status*, %struct.atl1c_recv_ret_status** %16, align 8
  %169 = getelementptr inbounds %struct.atl1c_recv_ret_status, %struct.atl1c_recv_ret_status* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* @RRS_VLAN_INS, align 4
  %172 = and i32 %170, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %187

174:                                              ; preds = %149
  %175 = load %struct.atl1c_recv_ret_status*, %struct.atl1c_recv_ret_status** %16, align 8
  %176 = getelementptr inbounds %struct.atl1c_recv_ret_status, %struct.atl1c_recv_ret_status* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 4
  %178 = load i32, i32* %18, align 4
  %179 = call i32 @AT_TAG_TO_VLAN(i32 %177, i32 %178)
  %180 = load i32, i32* %18, align 4
  %181 = call i32 @le16_to_cpu(i32 %180)
  store i32 %181, i32* %18, align 4
  %182 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %183 = load i32, i32* @ETH_P_8021Q, align 4
  %184 = call i32 @htons(i32 %183)
  %185 = load i32, i32* %18, align 4
  %186 = call i32 @__vlan_hwaccel_put_tag(%struct.sk_buff* %182, i32 %184, i32 %185)
  br label %187

187:                                              ; preds = %174, %149
  %188 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %189 = call i32 @netif_receive_skb(%struct.sk_buff* %188)
  %190 = load i32*, i32** %5, align 8
  %191 = load i32, i32* %190, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %190, align 4
  %193 = load i32, i32* %9, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %9, align 4
  br label %29

195:                                              ; preds = %148, %70, %34
  %196 = load i32, i32* %9, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %201

198:                                              ; preds = %195
  %199 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %4, align 8
  %200 = call i32 @atl1c_alloc_rx_buffer(%struct.atl1c_adapter* %199)
  br label %201

201:                                              ; preds = %198, %195
  ret void
}

declare dso_local %struct.atl1c_recv_ret_status* @ATL1C_RRD_DESC(%struct.atl1c_rrd_ring*, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @RRS_RXD_IS_VALID(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @netif_msg_rx_err(%struct.atl1c_adapter*) #1

declare dso_local i32 @dev_warn(i32*, i8*, ...) #1

declare dso_local i32 @atl1c_clean_rrd(%struct.atl1c_rrd_ring*, %struct.atl1c_recv_ret_status*, i32) #1

declare dso_local i32 @atl1c_clean_rfd(%struct.atl1c_rfd_ring*, %struct.atl1c_recv_ret_status*, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @pci_unmap_single(%struct.pci_dev*, i32, i32, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @atl1c_rx_checksum(%struct.atl1c_adapter*, %struct.sk_buff*, %struct.atl1c_recv_ret_status*) #1

declare dso_local i32 @AT_TAG_TO_VLAN(i32, i32) #1

declare dso_local i32 @__vlan_hwaccel_put_tag(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @netif_receive_skb(%struct.sk_buff*) #1

declare dso_local i32 @atl1c_alloc_rx_buffer(%struct.atl1c_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
