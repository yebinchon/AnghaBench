; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_geneve.c_geneve_build_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_geneve.c_geneve_build_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dst_entry = type { i32, i32 }
%struct.sk_buff = type { i32 }
%struct.ip_tunnel_info = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.genevehdr = type { i32 }

@TUNNEL_CSUM = common dso_local global i32 0, align 4
@GENEVE_BASE_HLEN = common dso_local global i32 0, align 4
@ETH_P_TEB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dst_entry*, %struct.sk_buff*, %struct.ip_tunnel_info*, i32, i32)* @geneve_build_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @geneve_build_skb(%struct.dst_entry* %0, %struct.sk_buff* %1, %struct.ip_tunnel_info* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.dst_entry*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.ip_tunnel_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.genevehdr*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.dst_entry* %0, %struct.dst_entry** %7, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %8, align 8
  store %struct.ip_tunnel_info* %2, %struct.ip_tunnel_info** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %9, align 8
  %17 = getelementptr inbounds %struct.ip_tunnel_info, %struct.ip_tunnel_info* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @TUNNEL_CSUM, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %12, align 4
  %26 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %27 = call i32 @skb_reset_mac_header(%struct.sk_buff* %26)
  %28 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @skb_scrub_packet(%struct.sk_buff* %28, i32 %29)
  %31 = load %struct.dst_entry*, %struct.dst_entry** %7, align 8
  %32 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @LL_RESERVED_SPACE(i32 %33)
  %35 = load %struct.dst_entry*, %struct.dst_entry** %7, align 8
  %36 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %34, %37
  %39 = load i32, i32* @GENEVE_BASE_HLEN, align 4
  %40 = add nsw i32 %38, %39
  %41 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %9, align 8
  %42 = getelementptr inbounds %struct.ip_tunnel_info, %struct.ip_tunnel_info* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %40, %43
  %45 = load i32, i32* %11, align 4
  %46 = add nsw i32 %44, %45
  store i32 %46, i32* %14, align 4
  %47 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %48 = load i32, i32* %14, align 4
  %49 = call i32 @skb_cow_head(%struct.sk_buff* %47, i32 %48)
  store i32 %49, i32* %15, align 4
  %50 = load i32, i32* %15, align 4
  %51 = call i64 @unlikely(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %5
  br label %77

54:                                               ; preds = %5
  %55 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %56 = load i32, i32* %12, align 4
  %57 = call i32 @udp_tunnel_handle_offloads(%struct.sk_buff* %55, i32 %56)
  store i32 %57, i32* %15, align 4
  %58 = load i32, i32* %15, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  br label %77

61:                                               ; preds = %54
  %62 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %63 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %9, align 8
  %64 = getelementptr inbounds %struct.ip_tunnel_info, %struct.ip_tunnel_info* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = sext i32 %65 to i64
  %67 = add i64 4, %66
  %68 = trunc i64 %67 to i32
  %69 = call %struct.genevehdr* @__skb_push(%struct.sk_buff* %62, i32 %68)
  store %struct.genevehdr* %69, %struct.genevehdr** %13, align 8
  %70 = load %struct.genevehdr*, %struct.genevehdr** %13, align 8
  %71 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %9, align 8
  %72 = call i32 @geneve_build_header(%struct.genevehdr* %70, %struct.ip_tunnel_info* %71)
  %73 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %74 = load i32, i32* @ETH_P_TEB, align 4
  %75 = call i32 @htons(i32 %74)
  %76 = call i32 @skb_set_inner_protocol(%struct.sk_buff* %73, i32 %75)
  store i32 0, i32* %6, align 4
  br label %81

77:                                               ; preds = %60, %53
  %78 = load %struct.dst_entry*, %struct.dst_entry** %7, align 8
  %79 = call i32 @dst_release(%struct.dst_entry* %78)
  %80 = load i32, i32* %15, align 4
  store i32 %80, i32* %6, align 4
  br label %81

81:                                               ; preds = %77, %61
  %82 = load i32, i32* %6, align 4
  ret i32 %82
}

declare dso_local i32 @skb_reset_mac_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_scrub_packet(%struct.sk_buff*, i32) #1

declare dso_local i32 @LL_RESERVED_SPACE(i32) #1

declare dso_local i32 @skb_cow_head(%struct.sk_buff*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @udp_tunnel_handle_offloads(%struct.sk_buff*, i32) #1

declare dso_local %struct.genevehdr* @__skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @geneve_build_header(%struct.genevehdr*, %struct.ip_tunnel_info*) #1

declare dso_local i32 @skb_set_inner_protocol(%struct.sk_buff*, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @dst_release(%struct.dst_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
