; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/extr_tc_tun_geneve.c_mlx5e_gen_ip_tunnel_header_geneve.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/extr_tc_tun_geneve.c_mlx5e_gen_ip_tunnel_header_geneve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_encap_entry = type { %struct.ip_tunnel_info* }
%struct.ip_tunnel_info = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.udphdr = type { i32 }
%struct.genevehdr = type { i32, i32, i32, i32, i32, i32, i32 }

@IPPROTO_UDP = common dso_local global i32 0, align 4
@MLX5E_GENEVE_VER = common dso_local global i32 0, align 4
@TUNNEL_OAM = common dso_local global i32 0, align 4
@TUNNEL_CRIT_OPT = common dso_local global i32 0, align 4
@ETH_P_TEB = common dso_local global i32 0, align 4
@TUNNEL_GENEVE_OPT = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, %struct.mlx5e_encap_entry*)* @mlx5e_gen_ip_tunnel_header_geneve to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_gen_ip_tunnel_header_geneve(i8* %0, i32* %1, %struct.mlx5e_encap_entry* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.mlx5e_encap_entry*, align 8
  %8 = alloca %struct.ip_tunnel_info*, align 8
  %9 = alloca %struct.udphdr*, align 8
  %10 = alloca %struct.genevehdr*, align 8
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.mlx5e_encap_entry* %2, %struct.mlx5e_encap_entry** %7, align 8
  %11 = load %struct.mlx5e_encap_entry*, %struct.mlx5e_encap_entry** %7, align 8
  %12 = getelementptr inbounds %struct.mlx5e_encap_entry, %struct.mlx5e_encap_entry* %11, i32 0, i32 0
  %13 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %12, align 8
  store %struct.ip_tunnel_info* %13, %struct.ip_tunnel_info** %8, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to %struct.udphdr*
  store %struct.udphdr* %15, %struct.udphdr** %9, align 8
  %16 = load %struct.udphdr*, %struct.udphdr** %9, align 8
  %17 = bitcast %struct.udphdr* %16 to i8*
  %18 = getelementptr inbounds i8, i8* %17, i64 4
  %19 = bitcast i8* %18 to %struct.genevehdr*
  store %struct.genevehdr* %19, %struct.genevehdr** %10, align 8
  %20 = load i32, i32* @IPPROTO_UDP, align 4
  %21 = load i32*, i32** %6, align 8
  store i32 %20, i32* %21, align 4
  %22 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %8, align 8
  %23 = getelementptr inbounds %struct.ip_tunnel_info, %struct.ip_tunnel_info* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.udphdr*, %struct.udphdr** %9, align 8
  %27 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load %struct.genevehdr*, %struct.genevehdr** %10, align 8
  %29 = call i32 @memset(%struct.genevehdr* %28, i32 0, i32 28)
  %30 = load i32, i32* @MLX5E_GENEVE_VER, align 4
  %31 = load %struct.genevehdr*, %struct.genevehdr** %10, align 8
  %32 = getelementptr inbounds %struct.genevehdr, %struct.genevehdr* %31, i32 0, i32 6
  store i32 %30, i32* %32, align 4
  %33 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %8, align 8
  %34 = getelementptr inbounds %struct.ip_tunnel_info, %struct.ip_tunnel_info* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = sdiv i32 %35, 4
  %37 = load %struct.genevehdr*, %struct.genevehdr** %10, align 8
  %38 = getelementptr inbounds %struct.genevehdr, %struct.genevehdr* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %8, align 8
  %40 = getelementptr inbounds %struct.ip_tunnel_info, %struct.ip_tunnel_info* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @TUNNEL_OAM, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  %49 = load %struct.genevehdr*, %struct.genevehdr** %10, align 8
  %50 = getelementptr inbounds %struct.genevehdr, %struct.genevehdr* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %8, align 8
  %52 = getelementptr inbounds %struct.ip_tunnel_info, %struct.ip_tunnel_info* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @TUNNEL_CRIT_OPT, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  %59 = xor i1 %58, true
  %60 = zext i1 %59 to i32
  %61 = load %struct.genevehdr*, %struct.genevehdr** %10, align 8
  %62 = getelementptr inbounds %struct.genevehdr, %struct.genevehdr* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 4
  %63 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %8, align 8
  %64 = getelementptr inbounds %struct.ip_tunnel_info, %struct.ip_tunnel_info* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.genevehdr*, %struct.genevehdr** %10, align 8
  %68 = getelementptr inbounds %struct.genevehdr, %struct.genevehdr* %67, i32 0, i32 5
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @mlx5e_tunnel_id_to_vni(i32 %66, i32 %69)
  %71 = load i32, i32* @ETH_P_TEB, align 4
  %72 = call i32 @htons(i32 %71)
  %73 = load %struct.genevehdr*, %struct.genevehdr** %10, align 8
  %74 = getelementptr inbounds %struct.genevehdr, %struct.genevehdr* %73, i32 0, i32 4
  store i32 %72, i32* %74, align 4
  %75 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %8, align 8
  %76 = getelementptr inbounds %struct.ip_tunnel_info, %struct.ip_tunnel_info* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @TUNNEL_GENEVE_OPT, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %96

82:                                               ; preds = %3
  %83 = load %struct.genevehdr*, %struct.genevehdr** %10, align 8
  %84 = getelementptr inbounds %struct.genevehdr, %struct.genevehdr* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %82
  %88 = load i32, i32* @EOPNOTSUPP, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %4, align 4
  br label %97

90:                                               ; preds = %82
  %91 = load %struct.genevehdr*, %struct.genevehdr** %10, align 8
  %92 = getelementptr inbounds %struct.genevehdr, %struct.genevehdr* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %8, align 8
  %95 = call i32 @ip_tunnel_info_opts_get(i32 %93, %struct.ip_tunnel_info* %94)
  br label %96

96:                                               ; preds = %90, %3
  store i32 0, i32* %4, align 4
  br label %97

97:                                               ; preds = %96, %87
  %98 = load i32, i32* %4, align 4
  ret i32 %98
}

declare dso_local i32 @memset(%struct.genevehdr*, i32, i32) #1

declare dso_local i32 @mlx5e_tunnel_id_to_vni(i32, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @ip_tunnel_info_opts_get(i32, %struct.ip_tunnel_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
