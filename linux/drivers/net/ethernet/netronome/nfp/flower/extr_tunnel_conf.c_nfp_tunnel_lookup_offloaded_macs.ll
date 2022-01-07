; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_tunnel_conf.c_nfp_tunnel_lookup_offloaded_macs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_tunnel_conf.c_nfp_tunnel_lookup_offloaded_macs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_tun_offloaded_mac = type { i32 }
%struct.nfp_app = type { %struct.nfp_flower_priv* }
%struct.nfp_flower_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@offloaded_macs_params = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nfp_tun_offloaded_mac* (%struct.nfp_app*, i32*)* @nfp_tunnel_lookup_offloaded_macs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nfp_tun_offloaded_mac* @nfp_tunnel_lookup_offloaded_macs(%struct.nfp_app* %0, i32* %1) #0 {
  %3 = alloca %struct.nfp_app*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.nfp_flower_priv*, align 8
  store %struct.nfp_app* %0, %struct.nfp_app** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load %struct.nfp_app*, %struct.nfp_app** %3, align 8
  %7 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %6, i32 0, i32 0
  %8 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %7, align 8
  store %struct.nfp_flower_priv* %8, %struct.nfp_flower_priv** %5, align 8
  %9 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %5, align 8
  %10 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32*, i32** %4, align 8
  %13 = load i32, i32* @offloaded_macs_params, align 4
  %14 = call %struct.nfp_tun_offloaded_mac* @rhashtable_lookup_fast(i32* %11, i32* %12, i32 %13)
  ret %struct.nfp_tun_offloaded_mac* %14
}

declare dso_local %struct.nfp_tun_offloaded_mac* @rhashtable_lookup_fast(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
