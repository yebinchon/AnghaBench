; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en_accel/extr_ipsec_rxtx.c_mlx5e_ipsec_remove_trailer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en_accel/extr_ipsec_rxtx.c_mlx5e_ipsec_remove_trailer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i8* }
%struct.xfrm_state = type { i32 }
%struct.ipv6hdr = type { i8* }
%struct.iphdr = type { i8* }

@ETH_P_IP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.xfrm_state*)* @mlx5e_ipsec_remove_trailer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_ipsec_remove_trailer(%struct.sk_buff* %0, %struct.xfrm_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.xfrm_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ipv6hdr*, align 8
  %8 = alloca %struct.iphdr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.xfrm_state* %1, %struct.xfrm_state** %5, align 8
  %12 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %13 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @crypto_aead_authsize(i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %17 = call %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff* %16)
  store %struct.ipv6hdr* %17, %struct.ipv6hdr** %7, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %19 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %18)
  store %struct.iphdr* %19, %struct.iphdr** %8, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %22 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sub i32 %23, %24
  %26 = sub i32 %25, 2
  %27 = call i32 @skb_copy_bits(%struct.sk_buff* %20, i32 %26, i32* %10, i32 1)
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = call i64 @unlikely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %2
  %32 = load i32, i32* %11, align 4
  store i32 %32, i32* %3, align 4
  br label %76

33:                                               ; preds = %2
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %10, align 4
  %36 = add i32 %34, %35
  %37 = add i32 %36, 2
  store i32 %37, i32* %9, align 4
  %38 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %39 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %40 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %9, align 4
  %43 = sub i32 %41, %42
  %44 = call i32 @pskb_trim(%struct.sk_buff* %38, i32 %43)
  %45 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %46 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %45, i32 0, i32 1
  %47 = load i8*, i8** %46, align 8
  %48 = load i64, i64* @ETH_P_IP, align 8
  %49 = call i8* @htons(i64 %48)
  %50 = icmp eq i8* %47, %49
  br i1 %50, label %51, label %64

51:                                               ; preds = %33
  %52 = load %struct.iphdr*, %struct.iphdr** %8, align 8
  %53 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = call i64 @ntohs(i8* %54)
  %56 = load i32, i32* %9, align 4
  %57 = zext i32 %56 to i64
  %58 = sub nsw i64 %55, %57
  %59 = call i8* @htons(i64 %58)
  %60 = load %struct.iphdr*, %struct.iphdr** %8, align 8
  %61 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %60, i32 0, i32 0
  store i8* %59, i8** %61, align 8
  %62 = load %struct.iphdr*, %struct.iphdr** %8, align 8
  %63 = call i32 @ip_send_check(%struct.iphdr* %62)
  br label %75

64:                                               ; preds = %33
  %65 = load %struct.ipv6hdr*, %struct.ipv6hdr** %7, align 8
  %66 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = call i64 @ntohs(i8* %67)
  %69 = load i32, i32* %9, align 4
  %70 = zext i32 %69 to i64
  %71 = sub nsw i64 %68, %70
  %72 = call i8* @htons(i64 %71)
  %73 = load %struct.ipv6hdr*, %struct.ipv6hdr** %7, align 8
  %74 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %73, i32 0, i32 0
  store i8* %72, i8** %74, align 8
  br label %75

75:                                               ; preds = %64, %51
  store i32 0, i32* %3, align 4
  br label %76

76:                                               ; preds = %75, %31
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i32 @crypto_aead_authsize(i32) #1

declare dso_local %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @skb_copy_bits(%struct.sk_buff*, i32, i32*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pskb_trim(%struct.sk_buff*, i32) #1

declare dso_local i8* @htons(i64) #1

declare dso_local i64 @ntohs(i8*) #1

declare dso_local i32 @ip_send_check(%struct.iphdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
