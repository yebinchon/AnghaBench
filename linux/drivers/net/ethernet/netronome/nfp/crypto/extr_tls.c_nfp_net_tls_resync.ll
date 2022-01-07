; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/crypto/extr_tls.c_nfp_net_tls_resync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/crypto/extr_tls.c_nfp_net_tls_resync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.sock = type { i32 }
%struct.nfp_net = type { i32 }
%struct.nfp_net_tls_offload_ctx = type { i32, i32* }
%struct.nfp_crypto_req_update = type { i32, i32, i32, i32, i32, i64 }
%struct.sk_buff = type { i64 }

@TLS_OFFLOAD_CTX_DIR_TX = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"sync\00", align 1
@NFP_CCM_TYPE_CRYPTO_UPDATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.sock*, i32, i32*, i32)* @nfp_net_tls_resync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_net_tls_resync(%struct.net_device* %0, %struct.sock* %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.sock*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.nfp_net*, align 8
  %13 = alloca %struct.nfp_net_tls_offload_ctx*, align 8
  %14 = alloca %struct.nfp_crypto_req_update*, align 8
  %15 = alloca %struct.sk_buff*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %7, align 8
  store %struct.sock* %1, %struct.sock** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %18 = load %struct.net_device*, %struct.net_device** %7, align 8
  %19 = call %struct.nfp_net* @netdev_priv(%struct.net_device* %18)
  store %struct.nfp_net* %19, %struct.nfp_net** %12, align 8
  %20 = load i32, i32* %11, align 4
  %21 = load i32, i32* @TLS_OFFLOAD_CTX_DIR_TX, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %5
  %24 = load i32, i32* @GFP_KERNEL, align 4
  br label %27

25:                                               ; preds = %5
  %26 = load i32, i32* @GFP_ATOMIC, align 4
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi i32 [ %24, %23 ], [ %26, %25 ]
  store i32 %28, i32* %16, align 4
  %29 = load %struct.nfp_net*, %struct.nfp_net** %12, align 8
  %30 = load i32, i32* %16, align 4
  %31 = call %struct.sk_buff* @nfp_net_tls_alloc_simple(%struct.nfp_net* %29, i32 32, i32 %30)
  store %struct.sk_buff* %31, %struct.sk_buff** %15, align 8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %33 = icmp ne %struct.sk_buff* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %27
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %6, align 4
  br label %94

37:                                               ; preds = %27
  %38 = load %struct.sock*, %struct.sock** %8, align 8
  %39 = load i32, i32* %11, align 4
  %40 = call %struct.nfp_net_tls_offload_ctx* @tls_driver_ctx(%struct.sock* %38, i32 %39)
  store %struct.nfp_net_tls_offload_ctx* %40, %struct.nfp_net_tls_offload_ctx** %13, align 8
  %41 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %42 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = inttoptr i64 %43 to i8*
  %45 = bitcast i8* %44 to %struct.nfp_crypto_req_update*
  store %struct.nfp_crypto_req_update* %45, %struct.nfp_crypto_req_update** %14, align 8
  %46 = load %struct.nfp_crypto_req_update*, %struct.nfp_crypto_req_update** %14, align 8
  %47 = getelementptr inbounds %struct.nfp_crypto_req_update, %struct.nfp_crypto_req_update* %46, i32 0, i32 5
  store i64 0, i64* %47, align 8
  %48 = load i32, i32* %11, align 4
  %49 = call i32 @nfp_tls_1_2_dir_to_opcode(i32 %48)
  %50 = load %struct.nfp_crypto_req_update*, %struct.nfp_crypto_req_update** %14, align 8
  %51 = getelementptr inbounds %struct.nfp_crypto_req_update, %struct.nfp_crypto_req_update* %50, i32 0, i32 4
  store i32 %49, i32* %51, align 8
  %52 = load %struct.nfp_crypto_req_update*, %struct.nfp_crypto_req_update** %14, align 8
  %53 = getelementptr inbounds %struct.nfp_crypto_req_update, %struct.nfp_crypto_req_update* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @memset(i32 %54, i32 0, i32 4)
  %56 = load %struct.nfp_crypto_req_update*, %struct.nfp_crypto_req_update** %14, align 8
  %57 = getelementptr inbounds %struct.nfp_crypto_req_update, %struct.nfp_crypto_req_update* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.nfp_net_tls_offload_ctx*, %struct.nfp_net_tls_offload_ctx** %13, align 8
  %60 = getelementptr inbounds %struct.nfp_net_tls_offload_ctx, %struct.nfp_net_tls_offload_ctx* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = call i32 @memcpy(i32 %58, i32* %61, i32 8)
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @cpu_to_be32(i32 %63)
  %65 = load %struct.nfp_crypto_req_update*, %struct.nfp_crypto_req_update** %14, align 8
  %66 = getelementptr inbounds %struct.nfp_crypto_req_update, %struct.nfp_crypto_req_update* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  %67 = load %struct.nfp_crypto_req_update*, %struct.nfp_crypto_req_update** %14, align 8
  %68 = getelementptr inbounds %struct.nfp_crypto_req_update, %struct.nfp_crypto_req_update* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32*, i32** %10, align 8
  %71 = call i32 @memcpy(i32 %69, i32* %70, i32 4)
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* @TLS_OFFLOAD_CTX_DIR_TX, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %88

75:                                               ; preds = %37
  %76 = load %struct.nfp_net*, %struct.nfp_net** %12, align 8
  %77 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %78 = load i32, i32* @NFP_CCM_TYPE_CRYPTO_UPDATE, align 4
  %79 = call i32 @nfp_net_tls_communicate_simple(%struct.nfp_net* %76, %struct.sk_buff* %77, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %78)
  store i32 %79, i32* %17, align 4
  %80 = load i32, i32* %17, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %75
  %83 = load i32, i32* %17, align 4
  store i32 %83, i32* %6, align 4
  br label %94

84:                                               ; preds = %75
  %85 = load i32, i32* %9, align 4
  %86 = load %struct.nfp_net_tls_offload_ctx*, %struct.nfp_net_tls_offload_ctx** %13, align 8
  %87 = getelementptr inbounds %struct.nfp_net_tls_offload_ctx, %struct.nfp_net_tls_offload_ctx* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 8
  br label %93

88:                                               ; preds = %37
  %89 = load %struct.nfp_net*, %struct.nfp_net** %12, align 8
  %90 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %91 = load i32, i32* @NFP_CCM_TYPE_CRYPTO_UPDATE, align 4
  %92 = call i32 @nfp_ccm_mbox_post(%struct.nfp_net* %89, %struct.sk_buff* %90, i32 %91, i32 4)
  br label %93

93:                                               ; preds = %88, %84
  store i32 0, i32* %6, align 4
  br label %94

94:                                               ; preds = %93, %82, %34
  %95 = load i32, i32* %6, align 4
  ret i32 %95
}

declare dso_local %struct.nfp_net* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.sk_buff* @nfp_net_tls_alloc_simple(%struct.nfp_net*, i32, i32) #1

declare dso_local %struct.nfp_net_tls_offload_ctx* @tls_driver_ctx(%struct.sock*, i32) #1

declare dso_local i32 @nfp_tls_1_2_dir_to_opcode(i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @nfp_net_tls_communicate_simple(%struct.nfp_net*, %struct.sk_buff*, i8*, i32) #1

declare dso_local i32 @nfp_ccm_mbox_post(%struct.nfp_net*, %struct.sk_buff*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
