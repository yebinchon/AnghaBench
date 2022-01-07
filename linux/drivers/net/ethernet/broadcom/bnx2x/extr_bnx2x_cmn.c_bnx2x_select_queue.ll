; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_cmn.c_bnx2x_select_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_cmn.c_bnx2x_select_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.net_device = type { i32 }
%struct.bnx2x = type { i32 }
%struct.ethhdr = type { i32 }
%struct.vlan_ethhdr = type { i32 }

@ETH_P_8021Q = common dso_local global i64 0, align 8
@ETH_P_FCOE = common dso_local global i64 0, align 8
@ETH_P_FIP = common dso_local global i64 0, align 8
@txq_index = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @bnx2x_select_queue(%struct.net_device* %0, %struct.sk_buff* %1, %struct.net_device* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.bnx2x*, align 8
  %9 = alloca %struct.ethhdr*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.vlan_ethhdr*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.net_device* %2, %struct.net_device** %7, align 8
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = call %struct.bnx2x* @netdev_priv(%struct.net_device* %12)
  store %struct.bnx2x* %13, %struct.bnx2x** %8, align 8
  %14 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %15 = call i64 @CNIC_LOADED(%struct.bnx2x* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %55

17:                                               ; preds = %3
  %18 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %19 = call i32 @NO_FCOE(%struct.bnx2x* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %55, label %21

21:                                               ; preds = %17
  %22 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %23 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct.ethhdr*
  store %struct.ethhdr* %25, %struct.ethhdr** %9, align 8
  %26 = load %struct.ethhdr*, %struct.ethhdr** %9, align 8
  %27 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @ntohs(i32 %28)
  store i64 %29, i64* %10, align 8
  %30 = load i64, i64* %10, align 8
  %31 = load i64, i64* @ETH_P_8021Q, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %42

33:                                               ; preds = %21
  %34 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %35 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = inttoptr i64 %36 to %struct.vlan_ethhdr*
  store %struct.vlan_ethhdr* %37, %struct.vlan_ethhdr** %11, align 8
  %38 = load %struct.vlan_ethhdr*, %struct.vlan_ethhdr** %11, align 8
  %39 = getelementptr inbounds %struct.vlan_ethhdr, %struct.vlan_ethhdr* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @ntohs(i32 %40)
  store i64 %41, i64* %10, align 8
  br label %42

42:                                               ; preds = %33, %21
  %43 = load i64, i64* %10, align 8
  %44 = load i64, i64* @ETH_P_FCOE, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %50, label %46

46:                                               ; preds = %42
  %47 = load i64, i64* %10, align 8
  %48 = load i64, i64* @ETH_P_FIP, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %46, %42
  %51 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %52 = load i32, i32* @txq_index, align 4
  %53 = call i64 @bnx2x_fcoe_tx(%struct.bnx2x* %51, i32 %52)
  store i64 %53, i64* %4, align 8
  br label %62

54:                                               ; preds = %46
  br label %55

55:                                               ; preds = %54, %17, %3
  %56 = load %struct.net_device*, %struct.net_device** %5, align 8
  %57 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %58 = call i64 @netdev_pick_tx(%struct.net_device* %56, %struct.sk_buff* %57, i32* null)
  %59 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %60 = call i64 @BNX2X_NUM_ETH_QUEUES(%struct.bnx2x* %59)
  %61 = srem i64 %58, %60
  store i64 %61, i64* %4, align 8
  br label %62

62:                                               ; preds = %55, %50
  %63 = load i64, i64* %4, align 8
  ret i64 %63
}

declare dso_local %struct.bnx2x* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @CNIC_LOADED(%struct.bnx2x*) #1

declare dso_local i32 @NO_FCOE(%struct.bnx2x*) #1

declare dso_local i64 @ntohs(i32) #1

declare dso_local i64 @bnx2x_fcoe_tx(%struct.bnx2x*, i32) #1

declare dso_local i64 @netdev_pick_tx(%struct.net_device*, %struct.sk_buff*, i32*) #1

declare dso_local i64 @BNX2X_NUM_ETH_QUEUES(%struct.bnx2x*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
