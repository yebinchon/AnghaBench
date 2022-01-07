; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_dmfe.c_dmfe_rx_packet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_dmfe.c_dmfe_rx_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }
%struct.dmfe_board_info = type { i32, i32, %struct.rx_desc*, i32, i32, i64 }
%struct.rx_desc = type { %struct.rx_desc*, %struct.sk_buff*, i32, i32 }
%struct.sk_buff = type { i32, i64 }

@RX_ALLOC_SIZE = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Reuse SK buffer, rdes0\00", align 1
@CR6_PM = common dso_local global i32 0, align 4
@RX_COPY_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.dmfe_board_info*)* @dmfe_rx_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dmfe_rx_packet(%struct.net_device* %0, %struct.dmfe_board_info* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.dmfe_board_info*, align 8
  %5 = alloca %struct.rx_desc*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.dmfe_board_info* %1, %struct.dmfe_board_info** %4, align 8
  %10 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %4, align 8
  %11 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %10, i32 0, i32 2
  %12 = load %struct.rx_desc*, %struct.rx_desc** %11, align 8
  store %struct.rx_desc* %12, %struct.rx_desc** %5, align 8
  br label %13

13:                                               ; preds = %207, %2
  %14 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %4, align 8
  %15 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %14, i32 0, i32 5
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %211

18:                                               ; preds = %13
  %19 = load %struct.rx_desc*, %struct.rx_desc** %5, align 8
  %20 = getelementptr inbounds %struct.rx_desc, %struct.rx_desc* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @le32_to_cpu(i32 %21)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = and i32 %23, -2147483648
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  br label %211

27:                                               ; preds = %18
  %28 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %4, align 8
  %29 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %28, i32 0, i32 5
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %30, -1
  store i64 %31, i64* %29, align 8
  %32 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %4, align 8
  %33 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 4
  %36 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %4, align 8
  %37 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.rx_desc*, %struct.rx_desc** %5, align 8
  %40 = getelementptr inbounds %struct.rx_desc, %struct.rx_desc* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @le32_to_cpu(i32 %41)
  %43 = load i32, i32* @RX_ALLOC_SIZE, align 4
  %44 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %45 = call i32 @pci_unmap_single(i32 %38, i32 %42, i32 %43, i32 %44)
  %46 = load i32, i32* %9, align 4
  %47 = and i32 %46, 768
  %48 = icmp ne i32 %47, 768
  br i1 %48, label %49, label %57

49:                                               ; preds = %27
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @DMFE_DBUG(i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %50)
  %52 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %4, align 8
  %53 = load %struct.rx_desc*, %struct.rx_desc** %5, align 8
  %54 = getelementptr inbounds %struct.rx_desc, %struct.rx_desc* %53, i32 0, i32 1
  %55 = load %struct.sk_buff*, %struct.sk_buff** %54, align 8
  %56 = call i32 @dmfe_reuse_skb(%struct.dmfe_board_info* %52, %struct.sk_buff* %55)
  br label %207

57:                                               ; preds = %27
  %58 = load i32, i32* %9, align 4
  %59 = ashr i32 %58, 16
  %60 = and i32 %59, 16383
  %61 = sub nsw i32 %60, 4
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %9, align 4
  %63 = and i32 %62, 32768
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %101

65:                                               ; preds = %57
  %66 = load %struct.net_device*, %struct.net_device** %3, align 8
  %67 = getelementptr inbounds %struct.net_device, %struct.net_device* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 5
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %68, align 4
  %71 = load i32, i32* %9, align 4
  %72 = and i32 %71, 1
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %65
  %75 = load %struct.net_device*, %struct.net_device** %3, align 8
  %76 = getelementptr inbounds %struct.net_device, %struct.net_device* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %77, align 4
  br label %80

80:                                               ; preds = %74, %65
  %81 = load i32, i32* %9, align 4
  %82 = and i32 %81, 2
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %80
  %85 = load %struct.net_device*, %struct.net_device** %3, align 8
  %86 = getelementptr inbounds %struct.net_device, %struct.net_device* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %87, align 4
  br label %90

90:                                               ; preds = %84, %80
  %91 = load i32, i32* %9, align 4
  %92 = and i32 %91, 128
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %90
  %95 = load %struct.net_device*, %struct.net_device** %3, align 8
  %96 = getelementptr inbounds %struct.net_device, %struct.net_device* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %97, align 4
  br label %100

100:                                              ; preds = %94, %90
  br label %101

101:                                              ; preds = %100, %57
  %102 = load i32, i32* %9, align 4
  %103 = and i32 %102, 32768
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %115

105:                                              ; preds = %101
  %106 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %4, align 8
  %107 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @CR6_PM, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %198

112:                                              ; preds = %105
  %113 = load i32, i32* %8, align 4
  %114 = icmp sgt i32 %113, 6
  br i1 %114, label %115, label %198

115:                                              ; preds = %112, %101
  %116 = load %struct.rx_desc*, %struct.rx_desc** %5, align 8
  %117 = getelementptr inbounds %struct.rx_desc, %struct.rx_desc* %116, i32 0, i32 1
  %118 = load %struct.sk_buff*, %struct.sk_buff** %117, align 8
  store %struct.sk_buff* %118, %struct.sk_buff** %6, align 8
  %119 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %4, align 8
  %120 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = and i32 %121, 1
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %147

124:                                              ; preds = %115
  %125 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %126 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = load i32, i32* %8, align 4
  %129 = call i32 @cal_CRC(i64 %127, i32 %128, i32 1)
  %130 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %131 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = load i32, i32* %8, align 4
  %134 = sext i32 %133 to i64
  %135 = add nsw i64 %132, %134
  %136 = inttoptr i64 %135 to i32*
  %137 = load i32, i32* %136, align 4
  %138 = icmp ne i32 %129, %137
  br i1 %138, label %139, label %147

139:                                              ; preds = %124
  %140 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %4, align 8
  %141 = load %struct.rx_desc*, %struct.rx_desc** %5, align 8
  %142 = getelementptr inbounds %struct.rx_desc, %struct.rx_desc* %141, i32 0, i32 1
  %143 = load %struct.sk_buff*, %struct.sk_buff** %142, align 8
  %144 = call i32 @dmfe_reuse_skb(%struct.dmfe_board_info* %140, %struct.sk_buff* %143)
  %145 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %4, align 8
  %146 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %145, i32 0, i32 1
  store i32 3, i32* %146, align 4
  br label %197

147:                                              ; preds = %124, %115
  %148 = load i32, i32* %8, align 4
  %149 = load i32, i32* @RX_COPY_SIZE, align 4
  %150 = icmp slt i32 %148, %149
  br i1 %150, label %151, label %174

151:                                              ; preds = %147
  %152 = load %struct.net_device*, %struct.net_device** %3, align 8
  %153 = load i32, i32* %8, align 4
  %154 = add nsw i32 %153, 2
  %155 = call %struct.sk_buff* @netdev_alloc_skb(%struct.net_device* %152, i32 %154)
  store %struct.sk_buff* %155, %struct.sk_buff** %7, align 8
  %156 = icmp ne %struct.sk_buff* %155, null
  br i1 %156, label %157, label %174

157:                                              ; preds = %151
  %158 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  store %struct.sk_buff* %158, %struct.sk_buff** %6, align 8
  %159 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %160 = call i32 @skb_reserve(%struct.sk_buff* %159, i32 2)
  %161 = load %struct.rx_desc*, %struct.rx_desc** %5, align 8
  %162 = getelementptr inbounds %struct.rx_desc, %struct.rx_desc* %161, i32 0, i32 1
  %163 = load %struct.sk_buff*, %struct.sk_buff** %162, align 8
  %164 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %165 = load i32, i32* %8, align 4
  %166 = call i32 @skb_put(%struct.sk_buff* %164, i32 %165)
  %167 = load i32, i32* %8, align 4
  %168 = call i32 @skb_copy_from_linear_data(%struct.sk_buff* %163, i32 %166, i32 %167)
  %169 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %4, align 8
  %170 = load %struct.rx_desc*, %struct.rx_desc** %5, align 8
  %171 = getelementptr inbounds %struct.rx_desc, %struct.rx_desc* %170, i32 0, i32 1
  %172 = load %struct.sk_buff*, %struct.sk_buff** %171, align 8
  %173 = call i32 @dmfe_reuse_skb(%struct.dmfe_board_info* %169, %struct.sk_buff* %172)
  br label %178

174:                                              ; preds = %151, %147
  %175 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %176 = load i32, i32* %8, align 4
  %177 = call i32 @skb_put(%struct.sk_buff* %175, i32 %176)
  br label %178

178:                                              ; preds = %174, %157
  %179 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %180 = load %struct.net_device*, %struct.net_device** %3, align 8
  %181 = call i32 @eth_type_trans(%struct.sk_buff* %179, %struct.net_device* %180)
  %182 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %183 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %182, i32 0, i32 0
  store i32 %181, i32* %183, align 8
  %184 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %185 = call i32 @netif_rx(%struct.sk_buff* %184)
  %186 = load %struct.net_device*, %struct.net_device** %3, align 8
  %187 = getelementptr inbounds %struct.net_device, %struct.net_device* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %188, align 4
  %191 = load i32, i32* %8, align 4
  %192 = load %struct.net_device*, %struct.net_device** %3, align 8
  %193 = getelementptr inbounds %struct.net_device, %struct.net_device* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = add nsw i32 %195, %191
  store i32 %196, i32* %194, align 4
  br label %197

197:                                              ; preds = %178, %139
  br label %206

198:                                              ; preds = %112, %105
  %199 = load i32, i32* %9, align 4
  %200 = call i32 @DMFE_DBUG(i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %199)
  %201 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %4, align 8
  %202 = load %struct.rx_desc*, %struct.rx_desc** %5, align 8
  %203 = getelementptr inbounds %struct.rx_desc, %struct.rx_desc* %202, i32 0, i32 1
  %204 = load %struct.sk_buff*, %struct.sk_buff** %203, align 8
  %205 = call i32 @dmfe_reuse_skb(%struct.dmfe_board_info* %201, %struct.sk_buff* %204)
  br label %206

206:                                              ; preds = %198, %197
  br label %207

207:                                              ; preds = %206, %49
  %208 = load %struct.rx_desc*, %struct.rx_desc** %5, align 8
  %209 = getelementptr inbounds %struct.rx_desc, %struct.rx_desc* %208, i32 0, i32 0
  %210 = load %struct.rx_desc*, %struct.rx_desc** %209, align 8
  store %struct.rx_desc* %210, %struct.rx_desc** %5, align 8
  br label %13

211:                                              ; preds = %26, %13
  %212 = load %struct.rx_desc*, %struct.rx_desc** %5, align 8
  %213 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %4, align 8
  %214 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %213, i32 0, i32 2
  store %struct.rx_desc* %212, %struct.rx_desc** %214, align 8
  ret void
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @pci_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @DMFE_DBUG(i32, i8*, i32) #1

declare dso_local i32 @dmfe_reuse_skb(%struct.dmfe_board_info*, %struct.sk_buff*) #1

declare dso_local i32 @cal_CRC(i64, i32, i32) #1

declare dso_local %struct.sk_buff* @netdev_alloc_skb(%struct.net_device*, i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_copy_from_linear_data(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
