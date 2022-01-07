; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ppp/extr_pppoe.c_pppoe_sendmsg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ppp/extr_pppoe.c_pppoe_sendmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { i32, i32 }
%struct.msghdr = type { i32 }
%struct.sk_buff = type { i32, i32, %struct.net_device* }
%struct.net_device = type { i64, i64, i64 }
%struct.pppox_sock = type { %struct.TYPE_2__, %struct.net_device*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.pppoe_hdr = type { i32, i32, i32, i32*, i32, i64 }

@SOCK_DEAD = common dso_local global i32 0, align 4
@PPPOX_CONNECTED = common dso_local global i32 0, align 4
@ENOTCONN = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ETH_P_PPP_SES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.msghdr*, i64)* @pppoe_sendmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pppoe_sendmsg(%struct.socket* %0, %struct.msghdr* %1, i64 %2) #0 {
  %4 = alloca %struct.socket*, align 8
  %5 = alloca %struct.msghdr*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.sock*, align 8
  %9 = alloca %struct.pppox_sock*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.pppoe_hdr, align 8
  %12 = alloca %struct.pppoe_hdr*, align 8
  %13 = alloca %struct.net_device*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %4, align 8
  store %struct.msghdr* %1, %struct.msghdr** %5, align 8
  store i64 %2, i64* %6, align 8
  %16 = load %struct.socket*, %struct.socket** %4, align 8
  %17 = getelementptr inbounds %struct.socket, %struct.socket* %16, i32 0, i32 0
  %18 = load %struct.sock*, %struct.sock** %17, align 8
  store %struct.sock* %18, %struct.sock** %8, align 8
  %19 = load %struct.sock*, %struct.sock** %8, align 8
  %20 = call %struct.pppox_sock* @pppox_sk(%struct.sock* %19)
  store %struct.pppox_sock* %20, %struct.pppox_sock** %9, align 8
  %21 = load %struct.sock*, %struct.sock** %8, align 8
  %22 = call i32 @lock_sock(%struct.sock* %21)
  %23 = load %struct.sock*, %struct.sock** %8, align 8
  %24 = load i32, i32* @SOCK_DEAD, align 4
  %25 = call i64 @sock_flag(%struct.sock* %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %3
  %28 = load %struct.sock*, %struct.sock** %8, align 8
  %29 = getelementptr inbounds %struct.sock, %struct.sock* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @PPPOX_CONNECTED, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %27, %3
  %35 = load i32, i32* @ENOTCONN, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %10, align 4
  br label %136

37:                                               ; preds = %27
  %38 = getelementptr inbounds %struct.pppoe_hdr, %struct.pppoe_hdr* %11, i32 0, i32 0
  store i32 1, i32* %38, align 8
  %39 = getelementptr inbounds %struct.pppoe_hdr, %struct.pppoe_hdr* %11, i32 0, i32 1
  store i32 1, i32* %39, align 4
  %40 = getelementptr inbounds %struct.pppoe_hdr, %struct.pppoe_hdr* %11, i32 0, i32 5
  store i64 0, i64* %40, align 8
  %41 = load %struct.pppox_sock*, %struct.pppox_sock** %9, align 8
  %42 = getelementptr inbounds %struct.pppox_sock, %struct.pppox_sock* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = getelementptr inbounds %struct.pppoe_hdr, %struct.pppoe_hdr* %11, i32 0, i32 4
  store i32 %43, i32* %44, align 8
  %45 = load %struct.pppox_sock*, %struct.pppox_sock** %9, align 8
  %46 = getelementptr inbounds %struct.pppox_sock, %struct.pppox_sock* %45, i32 0, i32 1
  %47 = load %struct.net_device*, %struct.net_device** %46, align 8
  store %struct.net_device* %47, %struct.net_device** %13, align 8
  %48 = load i32, i32* @EMSGSIZE, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %10, align 4
  %50 = load i64, i64* %6, align 8
  %51 = load %struct.net_device*, %struct.net_device** %13, align 8
  %52 = getelementptr inbounds %struct.net_device, %struct.net_device* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.net_device*, %struct.net_device** %13, align 8
  %55 = getelementptr inbounds %struct.net_device, %struct.net_device* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = add i64 %53, %56
  %58 = icmp ugt i64 %50, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %37
  br label %136

60:                                               ; preds = %37
  %61 = load %struct.net_device*, %struct.net_device** %13, align 8
  %62 = call i32 @LL_RESERVED_SPACE(%struct.net_device* %61)
  store i32 %62, i32* %15, align 4
  %63 = load %struct.sock*, %struct.sock** %8, align 8
  %64 = load i32, i32* %15, align 4
  %65 = sext i32 %64 to i64
  %66 = add i64 %65, 40
  %67 = load i64, i64* %6, align 8
  %68 = add i64 %66, %67
  %69 = load %struct.net_device*, %struct.net_device** %13, align 8
  %70 = getelementptr inbounds %struct.net_device, %struct.net_device* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = add i64 %68, %71
  %73 = load i32, i32* @GFP_KERNEL, align 4
  %74 = call %struct.sk_buff* @sock_wmalloc(%struct.sock* %63, i64 %72, i32 0, i32 %73)
  store %struct.sk_buff* %74, %struct.sk_buff** %7, align 8
  %75 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %76 = icmp ne %struct.sk_buff* %75, null
  br i1 %76, label %80, label %77

77:                                               ; preds = %60
  %78 = load i32, i32* @ENOMEM, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %10, align 4
  br label %136

80:                                               ; preds = %60
  %81 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %82 = load i32, i32* %15, align 4
  %83 = call i32 @skb_reserve(%struct.sk_buff* %81, i32 %82)
  %84 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %85 = call i32 @skb_reset_network_header(%struct.sk_buff* %84)
  %86 = load %struct.net_device*, %struct.net_device** %13, align 8
  %87 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %88 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %87, i32 0, i32 2
  store %struct.net_device* %86, %struct.net_device** %88, align 8
  %89 = load %struct.sock*, %struct.sock** %8, align 8
  %90 = getelementptr inbounds %struct.sock, %struct.sock* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %93 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 4
  %94 = load i32, i32* @ETH_P_PPP_SES, align 4
  %95 = call i32 @cpu_to_be16(i32 %94)
  %96 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %97 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 8
  %98 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %99 = load i64, i64* %6, align 8
  %100 = add i64 %99, 40
  %101 = call %struct.pppoe_hdr* @skb_put(%struct.sk_buff* %98, i64 %100)
  store %struct.pppoe_hdr* %101, %struct.pppoe_hdr** %12, align 8
  %102 = load %struct.pppoe_hdr*, %struct.pppoe_hdr** %12, align 8
  %103 = getelementptr inbounds %struct.pppoe_hdr, %struct.pppoe_hdr* %102, i32 0, i32 3
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 0
  %106 = bitcast i32* %105 to i8*
  store i8* %106, i8** %14, align 8
  %107 = load i8*, i8** %14, align 8
  %108 = load %struct.msghdr*, %struct.msghdr** %5, align 8
  %109 = load i64, i64* %6, align 8
  %110 = call i32 @memcpy_from_msg(i8* %107, %struct.msghdr* %108, i64 %109)
  store i32 %110, i32* %10, align 4
  %111 = load i32, i32* %10, align 4
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %80
  %114 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %115 = call i32 @kfree_skb(%struct.sk_buff* %114)
  br label %136

116:                                              ; preds = %80
  %117 = load i64, i64* %6, align 8
  %118 = trunc i64 %117 to i32
  store i32 %118, i32* %10, align 4
  %119 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %120 = load %struct.net_device*, %struct.net_device** %13, align 8
  %121 = load i32, i32* @ETH_P_PPP_SES, align 4
  %122 = load %struct.pppox_sock*, %struct.pppox_sock** %9, align 8
  %123 = getelementptr inbounds %struct.pppox_sock, %struct.pppox_sock* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load i64, i64* %6, align 8
  %127 = call i32 @dev_hard_header(%struct.sk_buff* %119, %struct.net_device* %120, i32 %121, i32 %125, i32* null, i64 %126)
  %128 = load %struct.pppoe_hdr*, %struct.pppoe_hdr** %12, align 8
  %129 = call i32 @memcpy(%struct.pppoe_hdr* %128, %struct.pppoe_hdr* %11, i32 40)
  %130 = load i64, i64* %6, align 8
  %131 = call i32 @htons(i64 %130)
  %132 = load %struct.pppoe_hdr*, %struct.pppoe_hdr** %12, align 8
  %133 = getelementptr inbounds %struct.pppoe_hdr, %struct.pppoe_hdr* %132, i32 0, i32 2
  store i32 %131, i32* %133, align 8
  %134 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %135 = call i32 @dev_queue_xmit(%struct.sk_buff* %134)
  br label %136

136:                                              ; preds = %116, %113, %77, %59, %34
  %137 = load %struct.sock*, %struct.sock** %8, align 8
  %138 = call i32 @release_sock(%struct.sock* %137)
  %139 = load i32, i32* %10, align 4
  ret i32 %139
}

declare dso_local %struct.pppox_sock* @pppox_sk(%struct.sock*) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i64 @sock_flag(%struct.sock*, i32) #1

declare dso_local i32 @LL_RESERVED_SPACE(%struct.net_device*) #1

declare dso_local %struct.sk_buff* @sock_wmalloc(%struct.sock*, i64, i32, i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_reset_network_header(%struct.sk_buff*) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local %struct.pppoe_hdr* @skb_put(%struct.sk_buff*, i64) #1

declare dso_local i32 @memcpy_from_msg(i8*, %struct.msghdr*, i64) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @dev_hard_header(%struct.sk_buff*, %struct.net_device*, i32, i32, i32*, i64) #1

declare dso_local i32 @memcpy(%struct.pppoe_hdr*, %struct.pppoe_hdr*, i32) #1

declare dso_local i32 @htons(i64) #1

declare dso_local i32 @dev_queue_xmit(%struct.sk_buff*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
