; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ppp/extr_pptp.c_pptp_rcv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ppp/extr_pptp.c_pptp_rcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i64 }
%struct.pppox_sock = type { i32 }
%struct.pptp_gre_header = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }
%struct.iphdr = type { i32 }

@PACKET_HOST = common dso_local global i64 0, align 8
@GRE_PROTO_PPP = common dso_local global i64 0, align 8
@GRE_FLAGS = common dso_local global i32 0, align 4
@NET_RX_DROP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*)* @pptp_rcv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pptp_rcv(%struct.sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.pppox_sock*, align 8
  %5 = alloca %struct.pptp_gre_header*, align 8
  %6 = alloca %struct.iphdr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %8 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @PACKET_HOST, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %82

13:                                               ; preds = %1
  %14 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %15 = call i32 @pskb_may_pull(%struct.sk_buff* %14, i32 12)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  br label %82

18:                                               ; preds = %13
  %19 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %20 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %19)
  store %struct.iphdr* %20, %struct.iphdr** %6, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %22 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.pptp_gre_header*
  store %struct.pptp_gre_header* %24, %struct.pptp_gre_header** %5, align 8
  %25 = load %struct.pptp_gre_header*, %struct.pptp_gre_header** %5, align 8
  %26 = getelementptr inbounds %struct.pptp_gre_header, %struct.pptp_gre_header* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @GRE_PROTO_PPP, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %60, label %31

31:                                               ; preds = %18
  %32 = load %struct.pptp_gre_header*, %struct.pptp_gre_header** %5, align 8
  %33 = getelementptr inbounds %struct.pptp_gre_header, %struct.pptp_gre_header* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i64 @GRE_IS_CSUM(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %60, label %38

38:                                               ; preds = %31
  %39 = load %struct.pptp_gre_header*, %struct.pptp_gre_header** %5, align 8
  %40 = getelementptr inbounds %struct.pptp_gre_header, %struct.pptp_gre_header* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i64 @GRE_IS_ROUTING(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %60, label %45

45:                                               ; preds = %38
  %46 = load %struct.pptp_gre_header*, %struct.pptp_gre_header** %5, align 8
  %47 = getelementptr inbounds %struct.pptp_gre_header, %struct.pptp_gre_header* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @GRE_IS_KEY(i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %45
  %53 = load %struct.pptp_gre_header*, %struct.pptp_gre_header** %5, align 8
  %54 = getelementptr inbounds %struct.pptp_gre_header, %struct.pptp_gre_header* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @GRE_FLAGS, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %52, %45, %38, %31, %18
  br label %82

61:                                               ; preds = %52
  %62 = load %struct.pptp_gre_header*, %struct.pptp_gre_header** %5, align 8
  %63 = getelementptr inbounds %struct.pptp_gre_header, %struct.pptp_gre_header* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @htons(i32 %64)
  %66 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %67 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call %struct.pppox_sock* @lookup_chan(i32 %65, i32 %68)
  store %struct.pppox_sock* %69, %struct.pppox_sock** %4, align 8
  %70 = load %struct.pppox_sock*, %struct.pppox_sock** %4, align 8
  %71 = icmp ne %struct.pppox_sock* %70, null
  br i1 %71, label %72, label %81

72:                                               ; preds = %61
  %73 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %74 = call i32 @skb_dst_drop(%struct.sk_buff* %73)
  %75 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %76 = call i32 @nf_reset_ct(%struct.sk_buff* %75)
  %77 = load %struct.pppox_sock*, %struct.pppox_sock** %4, align 8
  %78 = call i32 @sk_pppox(%struct.pppox_sock* %77)
  %79 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %80 = call i32 @sk_receive_skb(i32 %78, %struct.sk_buff* %79, i32 0)
  store i32 %80, i32* %2, align 4
  br label %86

81:                                               ; preds = %61
  br label %82

82:                                               ; preds = %81, %60, %17, %12
  %83 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %84 = call i32 @kfree_skb(%struct.sk_buff* %83)
  %85 = load i32, i32* @NET_RX_DROP, align 4
  store i32 %85, i32* %2, align 4
  br label %86

86:                                               ; preds = %82, %72
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i32) #1

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i64 @GRE_IS_CSUM(i32) #1

declare dso_local i64 @GRE_IS_ROUTING(i32) #1

declare dso_local i32 @GRE_IS_KEY(i32) #1

declare dso_local %struct.pppox_sock* @lookup_chan(i32, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @skb_dst_drop(%struct.sk_buff*) #1

declare dso_local i32 @nf_reset_ct(%struct.sk_buff*) #1

declare dso_local i32 @sk_receive_skb(i32, %struct.sk_buff*, i32) #1

declare dso_local i32 @sk_pppox(%struct.pppox_sock*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
