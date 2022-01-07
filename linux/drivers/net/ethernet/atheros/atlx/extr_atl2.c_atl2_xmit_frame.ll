; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atlx/extr_atl2.c_atl2_xmit_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atlx/extr_atl2.c_atl2_xmit_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i64 }
%struct.net_device = type { i32 }
%struct.atl2_adapter = type { i32, i32, i64, i64, i32, %struct.TYPE_2__*, i64, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.tx_pkt_header = type { i32, i32, i32 }

@__ATL2_DOWN = common dso_local global i32 0, align 4
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@NETDEV_TX_BUSY = common dso_local global i32 0, align 4
@REG_MB_TXD_WR_IDX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @atl2_xmit_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atl2_xmit_frame(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.atl2_adapter*, align 8
  %7 = alloca %struct.tx_pkt_header*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = call %struct.atl2_adapter* @netdev_priv(%struct.net_device* %12)
  store %struct.atl2_adapter* %13, %struct.atl2_adapter** %6, align 8
  %14 = load i32, i32* @__ATL2_DOWN, align 4
  %15 = load %struct.atl2_adapter*, %struct.atl2_adapter** %6, align 8
  %16 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %15, i32 0, i32 7
  %17 = call i64 @test_bit(i32 %14, i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %21 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %20)
  %22 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %22, i32* %3, align 4
  br label %204

23:                                               ; preds = %2
  %24 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %25 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp sle i32 %26, 0
  %28 = zext i1 %27 to i32
  %29 = call i64 @unlikely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %23
  %32 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %33 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %32)
  %34 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %34, i32* %3, align 4
  br label %204

35:                                               ; preds = %23
  %36 = load %struct.atl2_adapter*, %struct.atl2_adapter** %6, align 8
  %37 = call i32 @TxsFreeUnit(%struct.atl2_adapter* %36)
  store i32 %37, i32* %10, align 4
  %38 = load %struct.atl2_adapter*, %struct.atl2_adapter** %6, align 8
  %39 = call i32 @TxdFreeBytes(%struct.atl2_adapter* %38)
  store i32 %39, i32* %11, align 4
  %40 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %41 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = sext i32 %42 to i64
  %44 = add i64 %43, 12
  %45 = add i64 %44, 4
  %46 = load i32, i32* %11, align 4
  %47 = sext i32 %46 to i64
  %48 = icmp ugt i64 %45, %47
  br i1 %48, label %52, label %49

49:                                               ; preds = %35
  %50 = load i32, i32* %10, align 4
  %51 = icmp slt i32 %50, 1
  br i1 %51, label %52, label %56

52:                                               ; preds = %49, %35
  %53 = load %struct.net_device*, %struct.net_device** %5, align 8
  %54 = call i32 @netif_stop_queue(%struct.net_device* %53)
  %55 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %55, i32* %3, align 4
  br label %204

56:                                               ; preds = %49
  %57 = load %struct.atl2_adapter*, %struct.atl2_adapter** %6, align 8
  %58 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  store i32 %59, i32* %8, align 4
  %60 = load %struct.atl2_adapter*, %struct.atl2_adapter** %6, align 8
  %61 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %60, i32 0, i32 6
  %62 = load i64, i64* %61, align 8
  %63 = inttoptr i64 %62 to i32*
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = bitcast i32* %66 to %struct.tx_pkt_header*
  store %struct.tx_pkt_header* %67, %struct.tx_pkt_header** %7, align 8
  %68 = load %struct.tx_pkt_header*, %struct.tx_pkt_header** %7, align 8
  %69 = bitcast %struct.tx_pkt_header* %68 to i32*
  store i32 0, i32* %69, align 4
  %70 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %71 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.tx_pkt_header*, %struct.tx_pkt_header** %7, align 8
  %74 = getelementptr inbounds %struct.tx_pkt_header, %struct.tx_pkt_header* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 4
  %75 = load i32, i32* %8, align 4
  %76 = add nsw i32 %75, 4
  store i32 %76, i32* %8, align 4
  %77 = load i32, i32* %8, align 4
  %78 = load %struct.atl2_adapter*, %struct.atl2_adapter** %6, align 8
  %79 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = icmp sge i32 %77, %80
  br i1 %81, label %82, label %88

82:                                               ; preds = %56
  %83 = load %struct.atl2_adapter*, %struct.atl2_adapter** %6, align 8
  %84 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %8, align 4
  %87 = sub nsw i32 %86, %85
  store i32 %87, i32* %8, align 4
  br label %88

88:                                               ; preds = %82, %56
  %89 = load %struct.atl2_adapter*, %struct.atl2_adapter** %6, align 8
  %90 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %8, align 4
  %93 = sub nsw i32 %91, %92
  store i32 %93, i32* %9, align 4
  %94 = load i32, i32* %9, align 4
  %95 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %96 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = icmp sge i32 %94, %97
  br i1 %98, label %99, label %121

99:                                               ; preds = %88
  %100 = load %struct.atl2_adapter*, %struct.atl2_adapter** %6, align 8
  %101 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %100, i32 0, i32 6
  %102 = load i64, i64* %101, align 8
  %103 = inttoptr i64 %102 to i32*
  %104 = load i32, i32* %8, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %108 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %111 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @memcpy(i32* %106, i64 %109, i32 %112)
  %114 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %115 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = add nsw i32 %116, 3
  %118 = and i32 %117, -4
  %119 = load i32, i32* %8, align 4
  %120 = add nsw i32 %119, %118
  store i32 %120, i32* %8, align 4
  br label %157

121:                                              ; preds = %88
  %122 = load %struct.atl2_adapter*, %struct.atl2_adapter** %6, align 8
  %123 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %122, i32 0, i32 6
  %124 = load i64, i64* %123, align 8
  %125 = inttoptr i64 %124 to i32*
  %126 = load i32, i32* %8, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  %129 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %130 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = load i32, i32* %9, align 4
  %133 = call i32 @memcpy(i32* %128, i64 %131, i32 %132)
  %134 = load %struct.atl2_adapter*, %struct.atl2_adapter** %6, align 8
  %135 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %134, i32 0, i32 6
  %136 = load i64, i64* %135, align 8
  %137 = inttoptr i64 %136 to i32*
  %138 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %139 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = load i32, i32* %9, align 4
  %142 = sext i32 %141 to i64
  %143 = add nsw i64 %140, %142
  %144 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %145 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* %9, align 4
  %148 = sub nsw i32 %146, %147
  %149 = call i32 @memcpy(i32* %137, i64 %143, i32 %148)
  %150 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %151 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* %9, align 4
  %154 = sub nsw i32 %152, %153
  %155 = add nsw i32 %154, 3
  %156 = and i32 %155, -4
  store i32 %156, i32* %8, align 4
  br label %157

157:                                              ; preds = %121, %99
  %158 = load i32, i32* %8, align 4
  %159 = load %struct.atl2_adapter*, %struct.atl2_adapter** %6, align 8
  %160 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = icmp sge i32 %158, %161
  br i1 %162, label %163, label %169

163:                                              ; preds = %157
  %164 = load %struct.atl2_adapter*, %struct.atl2_adapter** %6, align 8
  %165 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* %8, align 4
  %168 = sub nsw i32 %167, %166
  store i32 %168, i32* %8, align 4
  br label %169

169:                                              ; preds = %163, %157
  %170 = load i32, i32* %8, align 4
  %171 = load %struct.atl2_adapter*, %struct.atl2_adapter** %6, align 8
  %172 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %171, i32 0, i32 0
  store i32 %170, i32* %172, align 8
  %173 = load %struct.atl2_adapter*, %struct.atl2_adapter** %6, align 8
  %174 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %173, i32 0, i32 5
  %175 = load %struct.TYPE_2__*, %struct.TYPE_2__** %174, align 8
  %176 = load %struct.atl2_adapter*, %struct.atl2_adapter** %6, align 8
  %177 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %176, i32 0, i32 2
  %178 = load i64, i64* %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %175, i64 %178
  %180 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %179, i32 0, i32 0
  store i64 0, i64* %180, align 8
  %181 = load %struct.atl2_adapter*, %struct.atl2_adapter** %6, align 8
  %182 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %181, i32 0, i32 2
  %183 = load i64, i64* %182, align 8
  %184 = add i64 %183, 1
  store i64 %184, i64* %182, align 8
  %185 = load %struct.atl2_adapter*, %struct.atl2_adapter** %6, align 8
  %186 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %185, i32 0, i32 3
  %187 = load i64, i64* %186, align 8
  %188 = icmp eq i64 %184, %187
  br i1 %188, label %189, label %192

189:                                              ; preds = %169
  %190 = load %struct.atl2_adapter*, %struct.atl2_adapter** %6, align 8
  %191 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %190, i32 0, i32 2
  store i64 0, i64* %191, align 8
  br label %192

192:                                              ; preds = %189, %169
  %193 = load %struct.atl2_adapter*, %struct.atl2_adapter** %6, align 8
  %194 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %193, i32 0, i32 4
  %195 = load i32, i32* @REG_MB_TXD_WR_IDX, align 4
  %196 = load %struct.atl2_adapter*, %struct.atl2_adapter** %6, align 8
  %197 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = ashr i32 %198, 2
  %200 = call i32 @ATL2_WRITE_REGW(i32* %194, i32 %195, i32 %199)
  %201 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %202 = call i32 @dev_consume_skb_any(%struct.sk_buff* %201)
  %203 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %203, i32* %3, align 4
  br label %204

204:                                              ; preds = %192, %52, %31, %19
  %205 = load i32, i32* %3, align 4
  ret i32 %205
}

declare dso_local %struct.atl2_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @TxsFreeUnit(%struct.atl2_adapter*) #1

declare dso_local i32 @TxdFreeBytes(%struct.atl2_adapter*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @memcpy(i32*, i64, i32) #1

declare dso_local i32 @ATL2_WRITE_REGW(i32*, i32, i32) #1

declare dso_local i32 @dev_consume_skb_any(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
