; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/extr_tc_tun.c_gen_eth_tnl_hdr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/extr_tc_tun.c_gen_eth_tnl_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.mlx5e_encap_entry = type { i32 }
%struct.ethhdr = type { i8*, i32, i32 }
%struct.vlan_hdr = type { i8*, i8* }

@ETH_HLEN = common dso_local global i32 0, align 4
@VLAN_HLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, %struct.net_device*, %struct.mlx5e_encap_entry*, i32)* @gen_eth_tnl_hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @gen_eth_tnl_hdr(i8* %0, %struct.net_device* %1, %struct.mlx5e_encap_entry* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.mlx5e_encap_entry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ethhdr*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.vlan_hdr*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.net_device* %1, %struct.net_device** %6, align 8
  store %struct.mlx5e_encap_entry* %2, %struct.mlx5e_encap_entry** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.ethhdr*
  store %struct.ethhdr* %13, %struct.ethhdr** %9, align 8
  %14 = load %struct.ethhdr*, %struct.ethhdr** %9, align 8
  %15 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.mlx5e_encap_entry*, %struct.mlx5e_encap_entry** %7, align 8
  %18 = getelementptr inbounds %struct.mlx5e_encap_entry, %struct.mlx5e_encap_entry* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @ether_addr_copy(i32 %16, i32 %19)
  %21 = load %struct.ethhdr*, %struct.ethhdr** %9, align 8
  %22 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.net_device*, %struct.net_device** %6, align 8
  %25 = getelementptr inbounds %struct.net_device, %struct.net_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @ether_addr_copy(i32 %23, i32 %26)
  %28 = load %struct.net_device*, %struct.net_device** %6, align 8
  %29 = call i64 @is_vlan_dev(%struct.net_device* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %56

31:                                               ; preds = %4
  %32 = load %struct.ethhdr*, %struct.ethhdr** %9, align 8
  %33 = bitcast %struct.ethhdr* %32 to i8*
  %34 = load i32, i32* @ETH_HLEN, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %33, i64 %35
  %37 = bitcast i8* %36 to %struct.vlan_hdr*
  store %struct.vlan_hdr* %37, %struct.vlan_hdr** %11, align 8
  %38 = load %struct.vlan_hdr*, %struct.vlan_hdr** %11, align 8
  %39 = bitcast %struct.vlan_hdr* %38 to i8*
  %40 = load i32, i32* @VLAN_HLEN, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %39, i64 %41
  store i8* %42, i8** %10, align 8
  %43 = load %struct.net_device*, %struct.net_device** %6, align 8
  %44 = call i8* @vlan_dev_vlan_proto(%struct.net_device* %43)
  %45 = load %struct.ethhdr*, %struct.ethhdr** %9, align 8
  %46 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %45, i32 0, i32 0
  store i8* %44, i8** %46, align 8
  %47 = load %struct.net_device*, %struct.net_device** %6, align 8
  %48 = call i32 @vlan_dev_vlan_id(%struct.net_device* %47)
  %49 = call i8* @htons(i32 %48)
  %50 = load %struct.vlan_hdr*, %struct.vlan_hdr** %11, align 8
  %51 = getelementptr inbounds %struct.vlan_hdr, %struct.vlan_hdr* %50, i32 0, i32 1
  store i8* %49, i8** %51, align 8
  %52 = load i32, i32* %8, align 4
  %53 = call i8* @htons(i32 %52)
  %54 = load %struct.vlan_hdr*, %struct.vlan_hdr** %11, align 8
  %55 = getelementptr inbounds %struct.vlan_hdr, %struct.vlan_hdr* %54, i32 0, i32 0
  store i8* %53, i8** %55, align 8
  br label %66

56:                                               ; preds = %4
  %57 = load i32, i32* %8, align 4
  %58 = call i8* @htons(i32 %57)
  %59 = load %struct.ethhdr*, %struct.ethhdr** %9, align 8
  %60 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %59, i32 0, i32 0
  store i8* %58, i8** %60, align 8
  %61 = load %struct.ethhdr*, %struct.ethhdr** %9, align 8
  %62 = bitcast %struct.ethhdr* %61 to i8*
  %63 = load i32, i32* @ETH_HLEN, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %62, i64 %64
  store i8* %65, i8** %10, align 8
  br label %66

66:                                               ; preds = %56, %31
  %67 = load i8*, i8** %10, align 8
  ret i8* %67
}

declare dso_local i32 @ether_addr_copy(i32, i32) #1

declare dso_local i64 @is_vlan_dev(%struct.net_device*) #1

declare dso_local i8* @vlan_dev_vlan_proto(%struct.net_device*) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @vlan_dev_vlan_id(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
