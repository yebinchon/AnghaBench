; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/crypto/extr_tls.c_nfp_net_tls_del.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/crypto/extr_tls.c_nfp_net_tls_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.tls_context = type { i32 }
%struct.nfp_net = type { i32 }
%struct.nfp_net_tls_offload_ctx = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.tls_context*, i32)* @nfp_net_tls_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfp_net_tls_del(%struct.net_device* %0, %struct.tls_context* %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.tls_context*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nfp_net*, align 8
  %8 = alloca %struct.nfp_net_tls_offload_ctx*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.tls_context* %1, %struct.tls_context** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.nfp_net* @netdev_priv(%struct.net_device* %9)
  store %struct.nfp_net* %10, %struct.nfp_net** %7, align 8
  %11 = load %struct.nfp_net*, %struct.nfp_net** %7, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @nfp_net_tls_conn_remove(%struct.nfp_net* %11, i32 %12)
  %14 = load %struct.tls_context*, %struct.tls_context** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call %struct.nfp_net_tls_offload_ctx* @__tls_driver_ctx(%struct.tls_context* %14, i32 %15)
  store %struct.nfp_net_tls_offload_ctx* %16, %struct.nfp_net_tls_offload_ctx** %8, align 8
  %17 = load %struct.nfp_net*, %struct.nfp_net** %7, align 8
  %18 = load %struct.nfp_net_tls_offload_ctx*, %struct.nfp_net_tls_offload_ctx** %8, align 8
  %19 = getelementptr inbounds %struct.nfp_net_tls_offload_ctx, %struct.nfp_net_tls_offload_ctx* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @nfp_net_tls_del_fw(%struct.nfp_net* %17, i32 %20)
  ret void
}

declare dso_local %struct.nfp_net* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @nfp_net_tls_conn_remove(%struct.nfp_net*, i32) #1

declare dso_local %struct.nfp_net_tls_offload_ctx* @__tls_driver_ctx(%struct.tls_context*, i32) #1

declare dso_local i32 @nfp_net_tls_del_fw(%struct.nfp_net*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
