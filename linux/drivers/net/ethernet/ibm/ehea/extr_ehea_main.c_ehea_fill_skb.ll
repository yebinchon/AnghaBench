; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/ehea/extr_ehea_main.c_ehea_fill_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/ehea/extr_ehea_main.c_ehea_fill_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.sk_buff = type { i32, i32, i32 }
%struct.ehea_cqe = type { i32, i32, i32 }
%struct.ehea_port_res = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ehea_port_res* }

@EHEA_CQE_BLIND_CKSUM = common dso_local global i32 0, align 4
@CHECKSUM_COMPLETE = common dso_local global i32 0, align 4
@CHECKSUM_UNNECESSARY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.sk_buff*, %struct.ehea_cqe*, %struct.ehea_port_res*)* @ehea_fill_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ehea_fill_skb(%struct.net_device* %0, %struct.sk_buff* %1, %struct.ehea_cqe* %2, %struct.ehea_port_res* %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.ehea_cqe*, align 8
  %8 = alloca %struct.ehea_port_res*, align 8
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.ehea_cqe* %2, %struct.ehea_cqe** %7, align 8
  store %struct.ehea_port_res* %3, %struct.ehea_port_res** %8, align 8
  %10 = load %struct.ehea_cqe*, %struct.ehea_cqe** %7, align 8
  %11 = getelementptr inbounds %struct.ehea_cqe, %struct.ehea_cqe* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = sub nsw i32 %12, 4
  store i32 %13, i32* %9, align 4
  %14 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %15 = load i32, i32* %9, align 4
  %16 = call i32 @skb_put(%struct.sk_buff* %14, i32 %15)
  %17 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %18 = load %struct.net_device*, %struct.net_device** %5, align 8
  %19 = call i32 @eth_type_trans(%struct.sk_buff* %17, %struct.net_device* %18)
  %20 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 4
  %22 = load %struct.ehea_cqe*, %struct.ehea_cqe** %7, align 8
  %23 = getelementptr inbounds %struct.ehea_cqe, %struct.ehea_cqe* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @EHEA_CQE_BLIND_CKSUM, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %4
  %29 = load i32, i32* @CHECKSUM_COMPLETE, align 4
  %30 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %31 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load %struct.ehea_cqe*, %struct.ehea_cqe** %7, align 8
  %33 = getelementptr inbounds %struct.ehea_cqe, %struct.ehea_cqe* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = xor i32 %34, -1
  %36 = call i32 @csum_unfold(i32 %35)
  %37 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %38 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  br label %43

39:                                               ; preds = %4
  %40 = load i32, i32* @CHECKSUM_UNNECESSARY, align 4
  %41 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %42 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  br label %43

43:                                               ; preds = %39, %28
  %44 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %45 = load %struct.ehea_port_res*, %struct.ehea_port_res** %8, align 8
  %46 = load %struct.ehea_port_res*, %struct.ehea_port_res** %8, align 8
  %47 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load %struct.ehea_port_res*, %struct.ehea_port_res** %49, align 8
  %51 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %50, i64 0
  %52 = ptrtoint %struct.ehea_port_res* %45 to i64
  %53 = ptrtoint %struct.ehea_port_res* %51 to i64
  %54 = sub i64 %52, %53
  %55 = sdiv exact i64 %54, 8
  %56 = trunc i64 %55 to i32
  %57 = call i32 @skb_record_rx_queue(%struct.sk_buff* %44, i32 %56)
  ret void
}

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @csum_unfold(i32) #1

declare dso_local i32 @skb_record_rx_queue(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
