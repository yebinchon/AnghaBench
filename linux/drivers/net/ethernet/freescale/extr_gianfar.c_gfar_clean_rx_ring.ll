; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_gianfar.c_gfar_clean_rx_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_gianfar.c_gfar_clean_rx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfar_priv_rx_q = type { i32, i32, i32, %struct.TYPE_4__, %struct.sk_buff*, %struct.TYPE_3__*, i32, %struct.rxbd8*, %struct.net_device* }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.sk_buff = type { i32, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.rxbd8 = type { i32 }
%struct.net_device = type { i32 }
%struct.gfar_private = type { i32 }

@GFAR_RX_BUFF_ALLOC = common dso_local global i32 0, align 4
@RXBD_EMPTY = common dso_local global i32 0, align 4
@RXBD_LAST = common dso_local global i32 0, align 4
@RXBD_ERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfar_priv_rx_q*, i32)* @gfar_clean_rx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfar_clean_rx_ring(%struct.gfar_priv_rx_q* %0, i32 %1) #0 {
  %3 = alloca %struct.gfar_priv_rx_q*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.gfar_private*, align 8
  %7 = alloca %struct.rxbd8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.gfar_priv_rx_q* %0, %struct.gfar_priv_rx_q** %3, align 8
  store i32 %1, i32* %4, align 4
  %16 = load %struct.gfar_priv_rx_q*, %struct.gfar_priv_rx_q** %3, align 8
  %17 = getelementptr inbounds %struct.gfar_priv_rx_q, %struct.gfar_priv_rx_q* %16, i32 0, i32 8
  %18 = load %struct.net_device*, %struct.net_device** %17, align 8
  store %struct.net_device* %18, %struct.net_device** %5, align 8
  %19 = load %struct.net_device*, %struct.net_device** %5, align 8
  %20 = call %struct.gfar_private* @netdev_priv(%struct.net_device* %19)
  store %struct.gfar_private* %20, %struct.gfar_private** %6, align 8
  store i32 0, i32* %9, align 4
  %21 = load %struct.gfar_priv_rx_q*, %struct.gfar_priv_rx_q** %3, align 8
  %22 = getelementptr inbounds %struct.gfar_priv_rx_q, %struct.gfar_priv_rx_q* %21, i32 0, i32 4
  %23 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  store %struct.sk_buff* %23, %struct.sk_buff** %10, align 8
  %24 = load %struct.gfar_priv_rx_q*, %struct.gfar_priv_rx_q** %3, align 8
  %25 = call i32 @gfar_rxbd_unused(%struct.gfar_priv_rx_q* %24)
  store i32 %25, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %26 = load %struct.gfar_priv_rx_q*, %struct.gfar_priv_rx_q** %3, align 8
  %27 = getelementptr inbounds %struct.gfar_priv_rx_q, %struct.gfar_priv_rx_q* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %8, align 4
  br label %29

29:                                               ; preds = %114, %103, %95, %2
  %30 = load i32, i32* %4, align 4
  %31 = add nsw i32 %30, -1
  store i32 %31, i32* %4, align 4
  %32 = icmp ne i32 %30, 0
  br i1 %32, label %33, label %143

33:                                               ; preds = %29
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* @GFAR_RX_BUFF_ALLOC, align 4
  %36 = icmp sge i32 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = load %struct.gfar_priv_rx_q*, %struct.gfar_priv_rx_q** %3, align 8
  %39 = load i32, i32* %11, align 4
  %40 = call i32 @gfar_alloc_rx_buffs(%struct.gfar_priv_rx_q* %38, i32 %39)
  store i32 0, i32* %11, align 4
  br label %41

41:                                               ; preds = %37, %33
  %42 = load %struct.gfar_priv_rx_q*, %struct.gfar_priv_rx_q** %3, align 8
  %43 = getelementptr inbounds %struct.gfar_priv_rx_q, %struct.gfar_priv_rx_q* %42, i32 0, i32 7
  %44 = load %struct.rxbd8*, %struct.rxbd8** %43, align 8
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.rxbd8, %struct.rxbd8* %44, i64 %46
  store %struct.rxbd8* %47, %struct.rxbd8** %7, align 8
  %48 = load %struct.rxbd8*, %struct.rxbd8** %7, align 8
  %49 = getelementptr inbounds %struct.rxbd8, %struct.rxbd8* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @be32_to_cpu(i32 %50)
  store i32 %51, i32* %14, align 4
  %52 = load i32, i32* %14, align 4
  %53 = load i32, i32* @RXBD_EMPTY, align 4
  %54 = call i32 @BD_LFLAG(i32 %53)
  %55 = and i32 %52, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %41
  br label %143

58:                                               ; preds = %41
  %59 = call i32 (...) @rmb()
  %60 = load %struct.gfar_priv_rx_q*, %struct.gfar_priv_rx_q** %3, align 8
  %61 = load i32, i32* %14, align 4
  %62 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %63 = call %struct.sk_buff* @gfar_get_next_rxbuff(%struct.gfar_priv_rx_q* %60, i32 %61, %struct.sk_buff* %62)
  store %struct.sk_buff* %63, %struct.sk_buff** %10, align 8
  %64 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %65 = icmp ne %struct.sk_buff* %64, null
  %66 = xor i1 %65, true
  %67 = zext i1 %66 to i32
  %68 = call i64 @unlikely(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %58
  br label %143

71:                                               ; preds = %58
  %72 = load i32, i32* %11, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %11, align 4
  %74 = load i32, i32* %9, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %9, align 4
  %76 = load i32, i32* %8, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %8, align 4
  %78 = load %struct.gfar_priv_rx_q*, %struct.gfar_priv_rx_q** %3, align 8
  %79 = getelementptr inbounds %struct.gfar_priv_rx_q, %struct.gfar_priv_rx_q* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = icmp eq i32 %77, %80
  %82 = zext i1 %81 to i32
  %83 = call i64 @unlikely(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %71
  store i32 0, i32* %8, align 4
  br label %86

86:                                               ; preds = %85, %71
  %87 = load i32, i32* %8, align 4
  %88 = load %struct.gfar_priv_rx_q*, %struct.gfar_priv_rx_q** %3, align 8
  %89 = getelementptr inbounds %struct.gfar_priv_rx_q, %struct.gfar_priv_rx_q* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 8
  %90 = load i32, i32* %14, align 4
  %91 = load i32, i32* @RXBD_LAST, align 4
  %92 = call i32 @BD_LFLAG(i32 %91)
  %93 = and i32 %90, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %96, label %95

95:                                               ; preds = %86
  br label %29

96:                                               ; preds = %86
  %97 = load i32, i32* %14, align 4
  %98 = load i32, i32* @RXBD_ERR, align 4
  %99 = call i32 @BD_LFLAG(i32 %98)
  %100 = and i32 %97, %99
  %101 = call i64 @unlikely(i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %114

103:                                              ; preds = %96
  %104 = load i32, i32* %14, align 4
  %105 = load %struct.net_device*, %struct.net_device** %5, align 8
  %106 = call i32 @count_errors(i32 %104, %struct.net_device* %105)
  %107 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %108 = call i32 @dev_kfree_skb(%struct.sk_buff* %107)
  store %struct.sk_buff* null, %struct.sk_buff** %10, align 8
  %109 = load %struct.gfar_priv_rx_q*, %struct.gfar_priv_rx_q** %3, align 8
  %110 = getelementptr inbounds %struct.gfar_priv_rx_q, %struct.gfar_priv_rx_q* %109, i32 0, i32 3
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %111, align 4
  br label %29

114:                                              ; preds = %96
  %115 = load %struct.net_device*, %struct.net_device** %5, align 8
  %116 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %117 = call i32 @gfar_process_frame(%struct.net_device* %115, %struct.sk_buff* %116)
  %118 = load i32, i32* %13, align 4
  %119 = add i32 %118, 1
  store i32 %119, i32* %13, align 4
  %120 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %121 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = load i32, i32* %12, align 4
  %124 = zext i32 %123 to i64
  %125 = add nsw i64 %124, %122
  %126 = trunc i64 %125 to i32
  store i32 %126, i32* %12, align 4
  %127 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %128 = load %struct.gfar_priv_rx_q*, %struct.gfar_priv_rx_q** %3, align 8
  %129 = getelementptr inbounds %struct.gfar_priv_rx_q, %struct.gfar_priv_rx_q* %128, i32 0, i32 6
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @skb_record_rx_queue(%struct.sk_buff* %127, i32 %130)
  %132 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %133 = load %struct.net_device*, %struct.net_device** %5, align 8
  %134 = call i32 @eth_type_trans(%struct.sk_buff* %132, %struct.net_device* %133)
  %135 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %136 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %135, i32 0, i32 0
  store i32 %134, i32* %136, align 8
  %137 = load %struct.gfar_priv_rx_q*, %struct.gfar_priv_rx_q** %3, align 8
  %138 = getelementptr inbounds %struct.gfar_priv_rx_q, %struct.gfar_priv_rx_q* %137, i32 0, i32 5
  %139 = load %struct.TYPE_3__*, %struct.TYPE_3__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 0
  %141 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %142 = call i32 @napi_gro_receive(i32* %140, %struct.sk_buff* %141)
  store %struct.sk_buff* null, %struct.sk_buff** %10, align 8
  br label %29

143:                                              ; preds = %70, %57, %29
  %144 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %145 = load %struct.gfar_priv_rx_q*, %struct.gfar_priv_rx_q** %3, align 8
  %146 = getelementptr inbounds %struct.gfar_priv_rx_q, %struct.gfar_priv_rx_q* %145, i32 0, i32 4
  store %struct.sk_buff* %144, %struct.sk_buff** %146, align 8
  %147 = load i32, i32* %13, align 4
  %148 = load %struct.gfar_priv_rx_q*, %struct.gfar_priv_rx_q** %3, align 8
  %149 = getelementptr inbounds %struct.gfar_priv_rx_q, %struct.gfar_priv_rx_q* %148, i32 0, i32 3
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = add i32 %151, %147
  store i32 %152, i32* %150, align 4
  %153 = load i32, i32* %12, align 4
  %154 = load %struct.gfar_priv_rx_q*, %struct.gfar_priv_rx_q** %3, align 8
  %155 = getelementptr inbounds %struct.gfar_priv_rx_q, %struct.gfar_priv_rx_q* %154, i32 0, i32 3
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = add i32 %157, %153
  store i32 %158, i32* %156, align 4
  %159 = load i32, i32* %11, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %165

161:                                              ; preds = %143
  %162 = load %struct.gfar_priv_rx_q*, %struct.gfar_priv_rx_q** %3, align 8
  %163 = load i32, i32* %11, align 4
  %164 = call i32 @gfar_alloc_rx_buffs(%struct.gfar_priv_rx_q* %162, i32 %163)
  br label %165

165:                                              ; preds = %161, %143
  %166 = load %struct.gfar_private*, %struct.gfar_private** %6, align 8
  %167 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = call i64 @unlikely(i32 %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %179

171:                                              ; preds = %165
  %172 = load %struct.gfar_priv_rx_q*, %struct.gfar_priv_rx_q** %3, align 8
  %173 = call i32 @gfar_rxbd_dma_lastfree(%struct.gfar_priv_rx_q* %172)
  store i32 %173, i32* %15, align 4
  %174 = load %struct.gfar_priv_rx_q*, %struct.gfar_priv_rx_q** %3, align 8
  %175 = getelementptr inbounds %struct.gfar_priv_rx_q, %struct.gfar_priv_rx_q* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 8
  %177 = load i32, i32* %15, align 4
  %178 = call i32 @gfar_write(i32 %176, i32 %177)
  br label %179

179:                                              ; preds = %171, %165
  %180 = load i32, i32* %9, align 4
  ret i32 %180
}

declare dso_local %struct.gfar_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @gfar_rxbd_unused(%struct.gfar_priv_rx_q*) #1

declare dso_local i32 @gfar_alloc_rx_buffs(%struct.gfar_priv_rx_q*, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @BD_LFLAG(i32) #1

declare dso_local i32 @rmb(...) #1

declare dso_local %struct.sk_buff* @gfar_get_next_rxbuff(%struct.gfar_priv_rx_q*, i32, %struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @count_errors(i32, %struct.net_device*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @gfar_process_frame(%struct.net_device*, %struct.sk_buff*) #1

declare dso_local i32 @skb_record_rx_queue(%struct.sk_buff*, i32) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @napi_gro_receive(i32*, %struct.sk_buff*) #1

declare dso_local i32 @gfar_rxbd_dma_lastfree(%struct.gfar_priv_rx_q*) #1

declare dso_local i32 @gfar_write(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
