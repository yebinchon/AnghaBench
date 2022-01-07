; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/crypto/extr_tls.c_nfp_net_tls_del_fw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/crypto/extr_tls.c_nfp_net_tls_del_fw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_net = type { i32 }
%struct.nfp_crypto_req_del = type { i32, i64 }
%struct.sk_buff = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"delete\00", align 1
@NFP_CCM_TYPE_CRYPTO_DEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfp_net*, i32*)* @nfp_net_tls_del_fw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfp_net_tls_del_fw(%struct.nfp_net* %0, i32* %1) #0 {
  %3 = alloca %struct.nfp_net*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.nfp_crypto_req_del*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  store %struct.nfp_net* %0, %struct.nfp_net** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.sk_buff* @nfp_net_tls_alloc_simple(%struct.nfp_net* %7, i32 16, i32 %8)
  store %struct.sk_buff* %9, %struct.sk_buff** %6, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %11 = icmp ne %struct.sk_buff* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %30

13:                                               ; preds = %2
  %14 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to i8*
  %18 = bitcast i8* %17 to %struct.nfp_crypto_req_del*
  store %struct.nfp_crypto_req_del* %18, %struct.nfp_crypto_req_del** %5, align 8
  %19 = load %struct.nfp_crypto_req_del*, %struct.nfp_crypto_req_del** %5, align 8
  %20 = getelementptr inbounds %struct.nfp_crypto_req_del, %struct.nfp_crypto_req_del* %19, i32 0, i32 1
  store i64 0, i64* %20, align 8
  %21 = load %struct.nfp_crypto_req_del*, %struct.nfp_crypto_req_del** %5, align 8
  %22 = getelementptr inbounds %struct.nfp_crypto_req_del, %struct.nfp_crypto_req_del* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @memcpy(i32 %23, i32* %24, i32 4)
  %26 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %28 = load i32, i32* @NFP_CCM_TYPE_CRYPTO_DEL, align 4
  %29 = call i32 @nfp_net_tls_communicate_simple(%struct.nfp_net* %26, %struct.sk_buff* %27, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %28)
  br label %30

30:                                               ; preds = %13, %12
  ret void
}

declare dso_local %struct.sk_buff* @nfp_net_tls_alloc_simple(%struct.nfp_net*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @nfp_net_tls_communicate_simple(%struct.nfp_net*, %struct.sk_buff*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
