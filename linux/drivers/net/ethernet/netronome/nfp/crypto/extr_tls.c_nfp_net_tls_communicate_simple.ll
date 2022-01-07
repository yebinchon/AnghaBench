; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/crypto/extr_tls.c_nfp_net_tls_communicate_simple.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/crypto/extr_tls.c_nfp_net_tls_communicate_simple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_net = type { i32 }
%struct.sk_buff = type { i64 }
%struct.nfp_crypto_reply_simple = type { i32 }

@NFP_CCM_TYPE_CRYPTO_DEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"failed to %s TLS: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"failed to %s TLS, fw replied: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_net*, %struct.sk_buff*, i8*, i32)* @nfp_net_tls_communicate_simple to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_net_tls_communicate_simple(%struct.nfp_net* %0, %struct.sk_buff* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nfp_net*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.nfp_crypto_reply_simple*, align 8
  %11 = alloca i32, align 4
  store %struct.nfp_net* %0, %struct.nfp_net** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.nfp_net*, %struct.nfp_net** %6, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* @NFP_CCM_TYPE_CRYPTO_DEL, align 4
  %17 = icmp eq i32 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @__nfp_ccm_mbox_communicate(%struct.nfp_net* %12, %struct.sk_buff* %13, i32 %14, i32 4, i32 4, i32 %18)
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %11, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %4
  %23 = load %struct.nfp_net*, %struct.nfp_net** %6, align 8
  %24 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %23, i32 0, i32 0
  %25 = load i8*, i8** %8, align 8
  %26 = load i32, i32* %11, align 4
  %27 = call i32 @nn_dp_warn(i32* %24, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %25, i32 %26)
  %28 = load i32, i32* %11, align 4
  store i32 %28, i32* %5, align 4
  br label %52

29:                                               ; preds = %4
  %30 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %31 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to i8*
  %34 = bitcast i8* %33 to %struct.nfp_crypto_reply_simple*
  store %struct.nfp_crypto_reply_simple* %34, %struct.nfp_crypto_reply_simple** %10, align 8
  %35 = load %struct.nfp_crypto_reply_simple*, %struct.nfp_crypto_reply_simple** %10, align 8
  %36 = getelementptr inbounds %struct.nfp_crypto_reply_simple, %struct.nfp_crypto_reply_simple* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @be32_to_cpu(i32 %37)
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %11, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %29
  %43 = load %struct.nfp_net*, %struct.nfp_net** %6, align 8
  %44 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %43, i32 0, i32 0
  %45 = load i8*, i8** %8, align 8
  %46 = load i32, i32* %11, align 4
  %47 = call i32 @nn_dp_warn(i32* %44, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i8* %45, i32 %46)
  br label %48

48:                                               ; preds = %42, %29
  %49 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %50 = call i32 @dev_consume_skb_any(%struct.sk_buff* %49)
  %51 = load i32, i32* %11, align 4
  store i32 %51, i32* %5, align 4
  br label %52

52:                                               ; preds = %48, %22
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

declare dso_local i32 @__nfp_ccm_mbox_communicate(%struct.nfp_net*, %struct.sk_buff*, i32, i32, i32, i32) #1

declare dso_local i32 @nn_dp_warn(i32*, i8*, i8*, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @dev_consume_skb_any(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
