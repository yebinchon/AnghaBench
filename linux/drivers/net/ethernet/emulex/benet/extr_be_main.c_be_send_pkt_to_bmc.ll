; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_main.c_be_send_pkt_to_bmc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_main.c_be_send_pkt_to_bmc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { i32 }
%struct.sk_buff = type { i64, i64 }
%struct.ethhdr = type { i32 }
%struct.ipv6hdr = type { i64 }
%struct.icmp6hdr = type { i32 }
%struct.udphdr = type { i32 }

@ETH_P_IPV6 = common dso_local global i32 0, align 4
@IPPROTO_ICMPV6 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.be_adapter*, %struct.sk_buff**)* @be_send_pkt_to_bmc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @be_send_pkt_to_bmc(%struct.be_adapter* %0, %struct.sk_buff** %1) #0 {
  %3 = alloca %struct.be_adapter*, align 8
  %4 = alloca %struct.sk_buff**, align 8
  %5 = alloca %struct.ethhdr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ipv6hdr*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.icmp6hdr*, align 8
  %10 = alloca %struct.udphdr*, align 8
  store %struct.be_adapter* %0, %struct.be_adapter** %3, align 8
  store %struct.sk_buff** %1, %struct.sk_buff*** %4, align 8
  %11 = load %struct.sk_buff**, %struct.sk_buff*** %4, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %13 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.ethhdr*
  store %struct.ethhdr* %15, %struct.ethhdr** %5, align 8
  store i32 0, i32* %6, align 4
  %16 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %17 = call i32 @be_is_os2bmc_enabled(%struct.be_adapter* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  br label %106

20:                                               ; preds = %2
  %21 = load %struct.ethhdr*, %struct.ethhdr** %5, align 8
  %22 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @is_multicast_ether_addr(i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %20
  br label %106

27:                                               ; preds = %20
  %28 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %29 = load %struct.ethhdr*, %struct.ethhdr** %5, align 8
  %30 = call i64 @is_mc_allowed_on_bmc(%struct.be_adapter* %28, %struct.ethhdr* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %43, label %32

32:                                               ; preds = %27
  %33 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %34 = load %struct.ethhdr*, %struct.ethhdr** %5, align 8
  %35 = call i64 @is_bc_allowed_on_bmc(%struct.be_adapter* %33, %struct.ethhdr* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %32
  %38 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %39 = load %struct.sk_buff**, %struct.sk_buff*** %4, align 8
  %40 = load %struct.sk_buff*, %struct.sk_buff** %39, align 8
  %41 = call i64 @is_arp_allowed_on_bmc(%struct.be_adapter* %38, %struct.sk_buff* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %37, %32, %27
  store i32 1, i32* %6, align 4
  br label %106

44:                                               ; preds = %37
  %45 = load %struct.sk_buff**, %struct.sk_buff*** %4, align 8
  %46 = load %struct.sk_buff*, %struct.sk_buff** %45, align 8
  %47 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i32, i32* @ETH_P_IPV6, align 4
  %50 = call i64 @htons(i32 %49)
  %51 = icmp eq i64 %48, %50
  br i1 %51, label %52, label %78

52:                                               ; preds = %44
  %53 = load %struct.sk_buff**, %struct.sk_buff*** %4, align 8
  %54 = load %struct.sk_buff*, %struct.sk_buff** %53, align 8
  %55 = call %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff* %54)
  store %struct.ipv6hdr* %55, %struct.ipv6hdr** %7, align 8
  %56 = load %struct.ipv6hdr*, %struct.ipv6hdr** %7, align 8
  %57 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  store i64 %58, i64* %8, align 8
  %59 = load i64, i64* %8, align 8
  %60 = load i64, i64* @IPPROTO_ICMPV6, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %77

62:                                               ; preds = %52
  %63 = load %struct.sk_buff**, %struct.sk_buff*** %4, align 8
  %64 = load %struct.sk_buff*, %struct.sk_buff** %63, align 8
  %65 = call %struct.icmp6hdr* @icmp6_hdr(%struct.sk_buff* %64)
  store %struct.icmp6hdr* %65, %struct.icmp6hdr** %9, align 8
  %66 = load %struct.icmp6hdr*, %struct.icmp6hdr** %9, align 8
  %67 = getelementptr inbounds %struct.icmp6hdr, %struct.icmp6hdr* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  switch i32 %68, label %75 [
    i32 130, label %69
    i32 131, label %72
  ]

69:                                               ; preds = %62
  %70 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %71 = call i32 @is_ipv6_ra_filt_enabled(%struct.be_adapter* %70)
  store i32 %71, i32* %6, align 4
  br label %106

72:                                               ; preds = %62
  %73 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %74 = call i32 @is_ipv6_na_filt_enabled(%struct.be_adapter* %73)
  store i32 %74, i32* %6, align 4
  br label %106

75:                                               ; preds = %62
  br label %76

76:                                               ; preds = %75
  br label %77

77:                                               ; preds = %76, %52
  br label %78

78:                                               ; preds = %77, %44
  %79 = load %struct.sk_buff**, %struct.sk_buff*** %4, align 8
  %80 = load %struct.sk_buff*, %struct.sk_buff** %79, align 8
  %81 = call i64 @is_udp_pkt(%struct.sk_buff* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %105

83:                                               ; preds = %78
  %84 = load %struct.sk_buff**, %struct.sk_buff*** %4, align 8
  %85 = load %struct.sk_buff*, %struct.sk_buff** %84, align 8
  %86 = call %struct.udphdr* @udp_hdr(%struct.sk_buff* %85)
  store %struct.udphdr* %86, %struct.udphdr** %10, align 8
  %87 = load %struct.udphdr*, %struct.udphdr** %10, align 8
  %88 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @ntohs(i32 %89)
  switch i32 %90, label %103 [
    i32 133, label %91
    i32 132, label %94
    i32 129, label %97
    i32 128, label %97
    i32 134, label %100
  ]

91:                                               ; preds = %83
  %92 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %93 = call i32 @is_dhcp_client_filt_enabled(%struct.be_adapter* %92)
  store i32 %93, i32* %6, align 4
  br label %106

94:                                               ; preds = %83
  %95 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %96 = call i32 @is_dhcp_srvr_filt_enabled(%struct.be_adapter* %95)
  store i32 %96, i32* %6, align 4
  br label %106

97:                                               ; preds = %83, %83
  %98 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %99 = call i32 @is_nbios_filt_enabled(%struct.be_adapter* %98)
  store i32 %99, i32* %6, align 4
  br label %106

100:                                              ; preds = %83
  %101 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %102 = call i32 @is_ipv6_ras_filt_enabled(%struct.be_adapter* %101)
  store i32 %102, i32* %6, align 4
  br label %106

103:                                              ; preds = %83
  br label %104

104:                                              ; preds = %103
  br label %105

105:                                              ; preds = %104, %78
  br label %106

106:                                              ; preds = %105, %100, %97, %94, %91, %72, %69, %43, %26, %19
  %107 = load i32, i32* %6, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %115

109:                                              ; preds = %106
  %110 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %111 = load %struct.sk_buff**, %struct.sk_buff*** %4, align 8
  %112 = load %struct.sk_buff*, %struct.sk_buff** %111, align 8
  %113 = call %struct.sk_buff* @be_insert_vlan_in_pkt(%struct.be_adapter* %110, %struct.sk_buff* %112, i32* null)
  %114 = load %struct.sk_buff**, %struct.sk_buff*** %4, align 8
  store %struct.sk_buff* %113, %struct.sk_buff** %114, align 8
  br label %115

115:                                              ; preds = %109, %106
  %116 = load i32, i32* %6, align 4
  ret i32 %116
}

declare dso_local i32 @be_is_os2bmc_enabled(%struct.be_adapter*) #1

declare dso_local i32 @is_multicast_ether_addr(i32) #1

declare dso_local i64 @is_mc_allowed_on_bmc(%struct.be_adapter*, %struct.ethhdr*) #1

declare dso_local i64 @is_bc_allowed_on_bmc(%struct.be_adapter*, %struct.ethhdr*) #1

declare dso_local i64 @is_arp_allowed_on_bmc(%struct.be_adapter*, %struct.sk_buff*) #1

declare dso_local i64 @htons(i32) #1

declare dso_local %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local %struct.icmp6hdr* @icmp6_hdr(%struct.sk_buff*) #1

declare dso_local i32 @is_ipv6_ra_filt_enabled(%struct.be_adapter*) #1

declare dso_local i32 @is_ipv6_na_filt_enabled(%struct.be_adapter*) #1

declare dso_local i64 @is_udp_pkt(%struct.sk_buff*) #1

declare dso_local %struct.udphdr* @udp_hdr(%struct.sk_buff*) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @is_dhcp_client_filt_enabled(%struct.be_adapter*) #1

declare dso_local i32 @is_dhcp_srvr_filt_enabled(%struct.be_adapter*) #1

declare dso_local i32 @is_nbios_filt_enabled(%struct.be_adapter*) #1

declare dso_local i32 @is_ipv6_ras_filt_enabled(%struct.be_adapter*) #1

declare dso_local %struct.sk_buff* @be_insert_vlan_in_pkt(%struct.be_adapter*, %struct.sk_buff*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
