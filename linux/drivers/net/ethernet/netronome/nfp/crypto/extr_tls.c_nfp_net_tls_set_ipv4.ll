; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/crypto/extr_tls.c_nfp_net_tls_set_ipv4.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/crypto/extr_tls.c_nfp_net_tls_set_ipv4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_crypto_req_add_back = type { i32 }
%struct.nfp_net = type { i32 }
%struct.nfp_crypto_req_add_v4 = type { %struct.nfp_crypto_req_add_back, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sock = type { i32 }
%struct.inet_sock = type { i32, i32 }

@TLS_OFFLOAD_CTX_DIR_TX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nfp_crypto_req_add_back* (%struct.nfp_net*, %struct.nfp_crypto_req_add_v4*, %struct.sock*, i32)* @nfp_net_tls_set_ipv4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nfp_crypto_req_add_back* @nfp_net_tls_set_ipv4(%struct.nfp_net* %0, %struct.nfp_crypto_req_add_v4* %1, %struct.sock* %2, i32 %3) #0 {
  %5 = alloca %struct.nfp_net*, align 8
  %6 = alloca %struct.nfp_crypto_req_add_v4*, align 8
  %7 = alloca %struct.sock*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.inet_sock*, align 8
  store %struct.nfp_net* %0, %struct.nfp_net** %5, align 8
  store %struct.nfp_crypto_req_add_v4* %1, %struct.nfp_crypto_req_add_v4** %6, align 8
  store %struct.sock* %2, %struct.sock** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.sock*, %struct.sock** %7, align 8
  %11 = call %struct.inet_sock* @inet_sk(%struct.sock* %10)
  store %struct.inet_sock* %11, %struct.inet_sock** %9, align 8
  %12 = load %struct.nfp_crypto_req_add_v4*, %struct.nfp_crypto_req_add_v4** %6, align 8
  %13 = getelementptr inbounds %struct.nfp_crypto_req_add_v4, %struct.nfp_crypto_req_add_v4* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = sext i32 %15 to i64
  %17 = add i64 %16, 8
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %14, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @TLS_OFFLOAD_CTX_DIR_TX, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %4
  %23 = load %struct.nfp_net*, %struct.nfp_net** %5, align 8
  %24 = load %struct.nfp_crypto_req_add_v4*, %struct.nfp_crypto_req_add_v4** %6, align 8
  %25 = getelementptr inbounds %struct.nfp_crypto_req_add_v4, %struct.nfp_crypto_req_add_v4* %24, i32 0, i32 3
  %26 = call i32 @nfp_net_tls_assign_conn_id(%struct.nfp_net* %23, %struct.TYPE_2__* %25)
  br label %38

27:                                               ; preds = %4
  %28 = load %struct.inet_sock*, %struct.inet_sock** %9, align 8
  %29 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.nfp_crypto_req_add_v4*, %struct.nfp_crypto_req_add_v4** %6, align 8
  %32 = getelementptr inbounds %struct.nfp_crypto_req_add_v4, %struct.nfp_crypto_req_add_v4* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 4
  %33 = load %struct.inet_sock*, %struct.inet_sock** %9, align 8
  %34 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.nfp_crypto_req_add_v4*, %struct.nfp_crypto_req_add_v4** %6, align 8
  %37 = getelementptr inbounds %struct.nfp_crypto_req_add_v4, %struct.nfp_crypto_req_add_v4* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  br label %38

38:                                               ; preds = %27, %22
  %39 = load %struct.nfp_crypto_req_add_v4*, %struct.nfp_crypto_req_add_v4** %6, align 8
  %40 = getelementptr inbounds %struct.nfp_crypto_req_add_v4, %struct.nfp_crypto_req_add_v4* %39, i32 0, i32 0
  ret %struct.nfp_crypto_req_add_back* %40
}

declare dso_local %struct.inet_sock* @inet_sk(%struct.sock*) #1

declare dso_local i32 @nfp_net_tls_assign_conn_id(%struct.nfp_net*, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
