; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1e/extr_atl1e_main.c_atl1e_rx_checksum.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1e/extr_atl1e_main.c_atl1e_rx_checksum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atl1e_adapter = type { i32 }
%struct.sk_buff = type { i32 }
%struct.atl1e_recv_ret_status = type { i32, i32 }
%struct.iphdr = type { i64 }

@ETH_HLEN = common dso_local global i32 0, align 4
@RRS_IS_IPV4 = common dso_local global i32 0, align 4
@RRS_IS_IPV6 = common dso_local global i32 0, align 4
@RRS_IS_TCP = common dso_local global i32 0, align 4
@RRS_IS_UDP = common dso_local global i32 0, align 4
@RRS_IS_802_3 = common dso_local global i32 0, align 4
@RRS_IS_IP_DF = common dso_local global i32 0, align 4
@RRS_ERR_IP_CSUM = common dso_local global i32 0, align 4
@RRS_ERR_L4_CSUM = common dso_local global i32 0, align 4
@CHECKSUM_UNNECESSARY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atl1e_adapter*, %struct.sk_buff*, %struct.atl1e_recv_ret_status*)* @atl1e_rx_checksum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atl1e_rx_checksum(%struct.atl1e_adapter* %0, %struct.sk_buff* %1, %struct.atl1e_recv_ret_status* %2) #0 {
  %4 = alloca %struct.atl1e_adapter*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.atl1e_recv_ret_status*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.iphdr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.atl1e_adapter* %0, %struct.atl1e_adapter** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store %struct.atl1e_recv_ret_status* %2, %struct.atl1e_recv_ret_status** %6, align 8
  %12 = load %struct.atl1e_recv_ret_status*, %struct.atl1e_recv_ret_status** %6, align 8
  %13 = getelementptr inbounds %struct.atl1e_recv_ret_status, %struct.atl1e_recv_ret_status* %12, i64 1
  %14 = bitcast %struct.atl1e_recv_ret_status* %13 to i32*
  store i32* %14, i32** %7, align 8
  %15 = load i32, i32* @ETH_HLEN, align 4
  store i32 %15, i32* %9, align 4
  %16 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %17 = call i32 @skb_checksum_none_assert(%struct.sk_buff* %16)
  %18 = load %struct.atl1e_recv_ret_status*, %struct.atl1e_recv_ret_status** %6, align 8
  %19 = getelementptr inbounds %struct.atl1e_recv_ret_status, %struct.atl1e_recv_ret_status* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %10, align 4
  %21 = load %struct.atl1e_recv_ret_status*, %struct.atl1e_recv_ret_status** %6, align 8
  %22 = getelementptr inbounds %struct.atl1e_recv_ret_status, %struct.atl1e_recv_ret_status* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* @RRS_IS_IPV4, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %3
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* @RRS_IS_IPV6, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %85

33:                                               ; preds = %28, %3
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* @RRS_IS_TCP, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %33
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* @RRS_IS_UDP, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %85

43:                                               ; preds = %38, %33
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* @RRS_IS_IPV4, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %73

48:                                               ; preds = %43
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* @RRS_IS_802_3, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load i32, i32* %9, align 4
  %55 = add nsw i32 %54, 8
  store i32 %55, i32* %9, align 4
  br label %56

56:                                               ; preds = %53, %48
  %57 = load i32*, i32** %7, align 8
  %58 = load i32, i32* %9, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = bitcast i32* %60 to %struct.iphdr*
  store %struct.iphdr* %61, %struct.iphdr** %8, align 8
  %62 = load %struct.iphdr*, %struct.iphdr** %8, align 8
  %63 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %56
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* @RRS_IS_IP_DF, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %66
  br label %86

72:                                               ; preds = %66, %56
  br label %73

73:                                               ; preds = %72, %43
  %74 = load i32, i32* %11, align 4
  %75 = load i32, i32* @RRS_ERR_IP_CSUM, align 4
  %76 = load i32, i32* @RRS_ERR_L4_CSUM, align 4
  %77 = or i32 %75, %76
  %78 = and i32 %74, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %84, label %80

80:                                               ; preds = %73
  %81 = load i32, i32* @CHECKSUM_UNNECESSARY, align 4
  %82 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %83 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 4
  br label %87

84:                                               ; preds = %73
  br label %85

85:                                               ; preds = %84, %38, %28
  br label %86

86:                                               ; preds = %85, %71
  br label %87

87:                                               ; preds = %86, %80
  ret void
}

declare dso_local i32 @skb_checksum_none_assert(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
