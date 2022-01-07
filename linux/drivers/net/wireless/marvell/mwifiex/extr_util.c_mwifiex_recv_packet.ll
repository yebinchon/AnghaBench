; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_util.c_mwifiex_recv_packet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_util.c_mwifiex_recv_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { %struct.TYPE_6__*, i32, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.sk_buff = type { i64, i64, i32, i32, i32, i64 }
%struct.mwifiex_sta_node = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.ethhdr = type { i32 }

@MWIFIEX_BSS_ROLE_UAP = common dso_local global i64 0, align 8
@jiffies = common dso_local global i32 0, align 4
@CHECKSUM_NONE = common dso_local global i32 0, align 4
@MWIFIEX_USB = common dso_local global i64 0, align 8
@MWIFIEX_PCIE = common dso_local global i64 0, align 8
@MWIFIEX_RX_DATA_BUF_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mwifiex_recv_packet(%struct.mwifiex_private* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mwifiex_private*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.mwifiex_sta_node*, align 8
  %7 = alloca %struct.ethhdr*, align 8
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %9 = icmp ne %struct.sk_buff* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %122

11:                                               ; preds = %2
  %12 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %13 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %16 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = sext i32 %18 to i64
  %20 = add nsw i64 %19, %14
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %17, align 4
  %22 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %23 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %24, align 4
  %27 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %28 = call i64 @GET_BSS_ROLE(%struct.mwifiex_private* %27)
  %29 = load i64, i64* @MWIFIEX_BSS_ROLE_UAP, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %65

31:                                               ; preds = %11
  %32 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %33 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %32, i32 0, i32 5
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to i8*
  %36 = bitcast i8* %35 to %struct.ethhdr*
  store %struct.ethhdr* %36, %struct.ethhdr** %7, align 8
  %37 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %38 = load %struct.ethhdr*, %struct.ethhdr** %7, align 8
  %39 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call %struct.mwifiex_sta_node* @mwifiex_get_sta_entry(%struct.mwifiex_private* %37, i32 %40)
  store %struct.mwifiex_sta_node* %41, %struct.mwifiex_sta_node** %6, align 8
  %42 = load %struct.mwifiex_sta_node*, %struct.mwifiex_sta_node** %6, align 8
  %43 = icmp ne %struct.mwifiex_sta_node* %42, null
  br i1 %43, label %44, label %64

44:                                               ; preds = %31
  %45 = load i32, i32* @jiffies, align 4
  %46 = load %struct.mwifiex_sta_node*, %struct.mwifiex_sta_node** %6, align 8
  %47 = getelementptr inbounds %struct.mwifiex_sta_node, %struct.mwifiex_sta_node* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 2
  store i32 %45, i32* %48, align 4
  %49 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %50 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.mwifiex_sta_node*, %struct.mwifiex_sta_node** %6, align 8
  %53 = getelementptr inbounds %struct.mwifiex_sta_node, %struct.mwifiex_sta_node* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = sext i32 %55 to i64
  %57 = add nsw i64 %56, %51
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %54, align 4
  %59 = load %struct.mwifiex_sta_node*, %struct.mwifiex_sta_node** %6, align 8
  %60 = getelementptr inbounds %struct.mwifiex_sta_node, %struct.mwifiex_sta_node* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 4
  br label %64

64:                                               ; preds = %44, %31
  br label %65

65:                                               ; preds = %64, %11
  %66 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %67 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %70 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %69, i32 0, i32 4
  store i32 %68, i32* %70, align 8
  %71 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %72 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %73 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @eth_type_trans(%struct.sk_buff* %71, i32 %74)
  %76 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %77 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %76, i32 0, i32 3
  store i32 %75, i32* %77, align 4
  %78 = load i32, i32* @CHECKSUM_NONE, align 4
  %79 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %80 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %79, i32 0, i32 2
  store i32 %78, i32* %80, align 8
  %81 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %82 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %81, i32 0, i32 0
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @MWIFIEX_USB, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %96, label %88

88:                                               ; preds = %65
  %89 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %90 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %89, i32 0, i32 0
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @MWIFIEX_PCIE, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %112

96:                                               ; preds = %88, %65
  %97 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %98 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @MWIFIEX_RX_DATA_BUF_SIZE, align 8
  %101 = icmp sgt i64 %99, %100
  br i1 %101, label %102, label %112

102:                                              ; preds = %96
  %103 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %104 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @MWIFIEX_RX_DATA_BUF_SIZE, align 8
  %107 = sub nsw i64 %105, %106
  %108 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %109 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = add nsw i64 %110, %107
  store i64 %111, i64* %109, align 8
  br label %112

112:                                              ; preds = %102, %96, %88
  %113 = call i64 (...) @in_interrupt()
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %112
  %116 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %117 = call i32 @netif_rx(%struct.sk_buff* %116)
  br label %121

118:                                              ; preds = %112
  %119 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %120 = call i32 @netif_rx_ni(%struct.sk_buff* %119)
  br label %121

121:                                              ; preds = %118, %115
  store i32 0, i32* %3, align 4
  br label %122

122:                                              ; preds = %121, %10
  %123 = load i32, i32* %3, align 4
  ret i32 %123
}

declare dso_local i64 @GET_BSS_ROLE(%struct.mwifiex_private*) #1

declare dso_local %struct.mwifiex_sta_node* @mwifiex_get_sta_entry(%struct.mwifiex_private*, i32) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, i32) #1

declare dso_local i64 @in_interrupt(...) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

declare dso_local i32 @netif_rx_ni(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
