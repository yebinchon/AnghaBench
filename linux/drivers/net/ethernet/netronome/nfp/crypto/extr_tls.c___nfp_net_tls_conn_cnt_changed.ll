; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/crypto/extr_tls.c___nfp_net_tls_conn_cnt_changed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/crypto/extr_tls.c___nfp_net_tls_conn_cnt_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_net = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@TLS_OFFLOAD_CTX_DIR_TX = common dso_local global i32 0, align 4
@NFP_NET_CRYPTO_OP_TLS_1_2_AES_GCM_128_ENC = common dso_local global i32 0, align 4
@NFP_NET_CRYPTO_OP_TLS_1_2_AES_GCM_128_DEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_net*, i32, i32)* @__nfp_net_tls_conn_cnt_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__nfp_net_tls_conn_cnt_changed(%struct.nfp_net* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfp_net*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.nfp_net* %0, %struct.nfp_net** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* @TLS_OFFLOAD_CTX_DIR_TX, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %33

13:                                               ; preds = %3
  %14 = load i32, i32* @NFP_NET_CRYPTO_OP_TLS_1_2_AES_GCM_128_ENC, align 4
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.nfp_net*, %struct.nfp_net** %5, align 8
  %17 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %18, %15
  store i32 %19, i32* %17, align 4
  %20 = load %struct.nfp_net*, %struct.nfp_net** %5, align 8
  %21 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %9, align 4
  %23 = load %struct.nfp_net*, %struct.nfp_net** %5, align 8
  %24 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = load %struct.nfp_net*, %struct.nfp_net** %5, align 8
  %31 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i32 %29, i32* %32, align 4
  br label %43

33:                                               ; preds = %3
  %34 = load i32, i32* @NFP_NET_CRYPTO_OP_TLS_1_2_AES_GCM_128_DEC, align 4
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.nfp_net*, %struct.nfp_net** %5, align 8
  %37 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, %35
  store i32 %39, i32* %37, align 4
  %40 = load %struct.nfp_net*, %struct.nfp_net** %5, align 8
  %41 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %9, align 4
  br label %43

43:                                               ; preds = %33, %13
  %44 = load i32, i32* %9, align 4
  %45 = icmp sgt i32 %44, 1
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  store i32 0, i32* %4, align 4
  br label %52

47:                                               ; preds = %43
  %48 = load %struct.nfp_net*, %struct.nfp_net** %5, align 8
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @nfp_net_crypto_set_op(%struct.nfp_net* %48, i32 %49, i32 %50)
  store i32 1, i32* %4, align 4
  br label %52

52:                                               ; preds = %47, %46
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i32 @nfp_net_crypto_set_op(%struct.nfp_net*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
