; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/crypto/extr_tls.c_nfp_net_tls_set_l4.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/crypto/extr_tls.c_nfp_net_tls_set_l4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_crypto_req_add_front = type { i32 }
%struct.nfp_crypto_req_add_back = type { i32, i32 }
%struct.sock = type { i32 }
%struct.inet_sock = type { i32, i32 }

@IPPROTO_TCP = common dso_local global i32 0, align 4
@TLS_OFFLOAD_CTX_DIR_TX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfp_crypto_req_add_front*, %struct.nfp_crypto_req_add_back*, %struct.sock*, i32)* @nfp_net_tls_set_l4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfp_net_tls_set_l4(%struct.nfp_crypto_req_add_front* %0, %struct.nfp_crypto_req_add_back* %1, %struct.sock* %2, i32 %3) #0 {
  %5 = alloca %struct.nfp_crypto_req_add_front*, align 8
  %6 = alloca %struct.nfp_crypto_req_add_back*, align 8
  %7 = alloca %struct.sock*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.inet_sock*, align 8
  store %struct.nfp_crypto_req_add_front* %0, %struct.nfp_crypto_req_add_front** %5, align 8
  store %struct.nfp_crypto_req_add_back* %1, %struct.nfp_crypto_req_add_back** %6, align 8
  store %struct.sock* %2, %struct.sock** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.sock*, %struct.sock** %7, align 8
  %11 = call %struct.inet_sock* @inet_sk(%struct.sock* %10)
  store %struct.inet_sock* %11, %struct.inet_sock** %9, align 8
  %12 = load i32, i32* @IPPROTO_TCP, align 4
  %13 = load %struct.nfp_crypto_req_add_front*, %struct.nfp_crypto_req_add_front** %5, align 8
  %14 = getelementptr inbounds %struct.nfp_crypto_req_add_front, %struct.nfp_crypto_req_add_front* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @TLS_OFFLOAD_CTX_DIR_TX, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %4
  %19 = load %struct.nfp_crypto_req_add_back*, %struct.nfp_crypto_req_add_back** %6, align 8
  %20 = getelementptr inbounds %struct.nfp_crypto_req_add_back, %struct.nfp_crypto_req_add_back* %19, i32 0, i32 1
  store i32 0, i32* %20, align 4
  %21 = load %struct.nfp_crypto_req_add_back*, %struct.nfp_crypto_req_add_back** %6, align 8
  %22 = getelementptr inbounds %struct.nfp_crypto_req_add_back, %struct.nfp_crypto_req_add_back* %21, i32 0, i32 0
  store i32 0, i32* %22, align 4
  br label %34

23:                                               ; preds = %4
  %24 = load %struct.inet_sock*, %struct.inet_sock** %9, align 8
  %25 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.nfp_crypto_req_add_back*, %struct.nfp_crypto_req_add_back** %6, align 8
  %28 = getelementptr inbounds %struct.nfp_crypto_req_add_back, %struct.nfp_crypto_req_add_back* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load %struct.inet_sock*, %struct.inet_sock** %9, align 8
  %30 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.nfp_crypto_req_add_back*, %struct.nfp_crypto_req_add_back** %6, align 8
  %33 = getelementptr inbounds %struct.nfp_crypto_req_add_back, %struct.nfp_crypto_req_add_back* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  br label %34

34:                                               ; preds = %23, %18
  ret void
}

declare dso_local %struct.inet_sock* @inet_sk(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
