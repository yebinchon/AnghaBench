; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/crypto/extr_tls.c_nfp_net_tls_set_ipver_vlan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/crypto/extr_tls.c_nfp_net_tls_set_ipver_vlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_crypto_req_add_front = type { i32 }

@NFP_NET_TLS_IPVER = common dso_local global i32 0, align 4
@NFP_NET_TLS_VLAN = common dso_local global i32 0, align 4
@NFP_NET_TLS_VLAN_UNUSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfp_crypto_req_add_front*, i32)* @nfp_net_tls_set_ipver_vlan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfp_net_tls_set_ipver_vlan(%struct.nfp_crypto_req_add_front* %0, i32 %1) #0 {
  %3 = alloca %struct.nfp_crypto_req_add_front*, align 8
  %4 = alloca i32, align 4
  store %struct.nfp_crypto_req_add_front* %0, %struct.nfp_crypto_req_add_front** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @NFP_NET_TLS_IPVER, align 4
  %6 = load i32, i32* %4, align 4
  %7 = call i32 @FIELD_PREP(i32 %5, i32 %6)
  %8 = load i32, i32* @NFP_NET_TLS_VLAN, align 4
  %9 = load i32, i32* @NFP_NET_TLS_VLAN_UNUSED, align 4
  %10 = call i32 @FIELD_PREP(i32 %8, i32 %9)
  %11 = or i32 %7, %10
  %12 = call i32 @cpu_to_be16(i32 %11)
  %13 = load %struct.nfp_crypto_req_add_front*, %struct.nfp_crypto_req_add_front** %3, align 8
  %14 = getelementptr inbounds %struct.nfp_crypto_req_add_front, %struct.nfp_crypto_req_add_front* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  ret void
}

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @FIELD_PREP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
