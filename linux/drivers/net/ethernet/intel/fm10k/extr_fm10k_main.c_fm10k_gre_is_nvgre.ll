; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_main.c_fm10k_gre_is_nvgre.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_main.c_fm10k_gre_is_nvgre.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ethhdr = type { i32 }
%struct.sk_buff = type { i32 }
%struct.fm10k_nvgre_hdr = type { i32, i32 }

@ETH_P_IP = common dso_local global i32 0, align 4
@FM10K_NVGRE_RESERVED0_FLAGS = common dso_local global i32 0, align 4
@NVGRE_TNI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ethhdr* (%struct.sk_buff*)* @fm10k_gre_is_nvgre to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ethhdr* @fm10k_gre_is_nvgre(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.ethhdr*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.fm10k_nvgre_hdr*, align 8
  %5 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  %6 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %7 = call i32 @ip_hdrlen(%struct.sk_buff* %6)
  store i32 %7, i32* %5, align 4
  %8 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %9 = call i64 @vlan_get_protocol(%struct.sk_buff* %8)
  %10 = load i32, i32* @ETH_P_IP, align 4
  %11 = call i64 @htons(i32 %10)
  %12 = icmp ne i64 %9, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store %struct.ethhdr* null, %struct.ethhdr** %2, align 8
  br label %43

14:                                               ; preds = %1
  %15 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %16 = call i64 @skb_network_header(%struct.sk_buff* %15)
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = add nsw i64 %16, %18
  %20 = inttoptr i64 %19 to %struct.fm10k_nvgre_hdr*
  store %struct.fm10k_nvgre_hdr* %20, %struct.fm10k_nvgre_hdr** %4, align 8
  %21 = load %struct.fm10k_nvgre_hdr*, %struct.fm10k_nvgre_hdr** %4, align 8
  %22 = getelementptr inbounds %struct.fm10k_nvgre_hdr, %struct.fm10k_nvgre_hdr* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @FM10K_NVGRE_RESERVED0_FLAGS, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %14
  store %struct.ethhdr* null, %struct.ethhdr** %2, align 8
  br label %43

28:                                               ; preds = %14
  %29 = load %struct.fm10k_nvgre_hdr*, %struct.fm10k_nvgre_hdr** %4, align 8
  %30 = getelementptr inbounds %struct.fm10k_nvgre_hdr, %struct.fm10k_nvgre_hdr* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @NVGRE_TNI, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %28
  %36 = load %struct.fm10k_nvgre_hdr*, %struct.fm10k_nvgre_hdr** %4, align 8
  %37 = getelementptr inbounds %struct.fm10k_nvgre_hdr, %struct.fm10k_nvgre_hdr* %36, i64 1
  %38 = bitcast %struct.fm10k_nvgre_hdr* %37 to %struct.ethhdr*
  store %struct.ethhdr* %38, %struct.ethhdr** %2, align 8
  br label %43

39:                                               ; preds = %28
  %40 = load %struct.fm10k_nvgre_hdr*, %struct.fm10k_nvgre_hdr** %4, align 8
  %41 = getelementptr inbounds %struct.fm10k_nvgre_hdr, %struct.fm10k_nvgre_hdr* %40, i32 0, i32 1
  %42 = bitcast i32* %41 to %struct.ethhdr*
  store %struct.ethhdr* %42, %struct.ethhdr** %2, align 8
  br label %43

43:                                               ; preds = %39, %35, %27, %13
  %44 = load %struct.ethhdr*, %struct.ethhdr** %2, align 8
  ret %struct.ethhdr* %44
}

declare dso_local i32 @ip_hdrlen(%struct.sk_buff*) #1

declare dso_local i64 @vlan_get_protocol(%struct.sk_buff*) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i64 @skb_network_header(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
