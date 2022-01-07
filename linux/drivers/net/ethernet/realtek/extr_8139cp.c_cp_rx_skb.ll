; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_8139cp.c_cp_rx_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_8139cp.c_cp_rx_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cp_private = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.sk_buff = type { i64, i32 }
%struct.cp_desc = type { i32 }

@RxVlanTagged = common dso_local global i32 0, align 4
@ETH_P_8021Q = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cp_private*, %struct.sk_buff*, %struct.cp_desc*)* @cp_rx_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cp_rx_skb(%struct.cp_private* %0, %struct.sk_buff* %1, %struct.cp_desc* %2) #0 {
  %4 = alloca %struct.cp_private*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.cp_desc*, align 8
  %7 = alloca i32, align 4
  store %struct.cp_private* %0, %struct.cp_private** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store %struct.cp_desc* %2, %struct.cp_desc** %6, align 8
  %8 = load %struct.cp_desc*, %struct.cp_desc** %6, align 8
  %9 = getelementptr inbounds %struct.cp_desc, %struct.cp_desc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @le32_to_cpu(i32 %10)
  store i32 %11, i32* %7, align 4
  %12 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %13 = load %struct.cp_private*, %struct.cp_private** %4, align 8
  %14 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %13, i32 0, i32 1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = call i32 @eth_type_trans(%struct.sk_buff* %12, %struct.TYPE_4__* %15)
  %17 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %18 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 8
  %19 = load %struct.cp_private*, %struct.cp_private** %4, align 8
  %20 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %19, i32 0, i32 1
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %23, align 4
  %26 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %27 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.cp_private*, %struct.cp_private** %4, align 8
  %30 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %29, i32 0, i32 1
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %35, %28
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %33, align 4
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @RxVlanTagged, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %3
  %43 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %44 = load i32, i32* @ETH_P_8021Q, align 4
  %45 = call i32 @htons(i32 %44)
  %46 = load i32, i32* %7, align 4
  %47 = and i32 %46, 65535
  %48 = call i32 @swab16(i32 %47)
  %49 = call i32 @__vlan_hwaccel_put_tag(%struct.sk_buff* %43, i32 %45, i32 %48)
  br label %50

50:                                               ; preds = %42, %3
  %51 = load %struct.cp_private*, %struct.cp_private** %4, align 8
  %52 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %51, i32 0, i32 0
  %53 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %54 = call i32 @napi_gro_receive(i32* %52, %struct.sk_buff* %53)
  ret void
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.TYPE_4__*) #1

declare dso_local i32 @__vlan_hwaccel_put_tag(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @swab16(i32) #1

declare dso_local i32 @napi_gro_receive(i32*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
