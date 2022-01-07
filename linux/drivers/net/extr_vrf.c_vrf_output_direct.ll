; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_vrf.c_vrf_output_direct.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_vrf.c_vrf_output_direct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sock = type { i32 }
%struct.sk_buff = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }

@ETH_P_IP = common dso_local global i32 0, align 4
@NFPROTO_IPV4 = common dso_local global i32 0, align 4
@NF_INET_POST_ROUTING = common dso_local global i32 0, align 4
@vrf_finish_direct = common dso_local global i32 0, align 4
@IPSKB_REROUTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.sock*, %struct.sk_buff*)* @vrf_output_direct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vrf_output_direct(%struct.net* %0, %struct.sock* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.net*, align 8
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  store %struct.net* %0, %struct.net** %4, align 8
  store %struct.sock* %1, %struct.sock** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %7 = load i32, i32* @ETH_P_IP, align 4
  %8 = call i32 @htons(i32 %7)
  %9 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %10 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %9, i32 0, i32 1
  store i32 %8, i32* %10, align 4
  %11 = load i32, i32* @NFPROTO_IPV4, align 4
  %12 = load i32, i32* @NF_INET_POST_ROUTING, align 4
  %13 = load %struct.net*, %struct.net** %4, align 8
  %14 = load %struct.sock*, %struct.sock** %5, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %17 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @vrf_finish_direct, align 4
  %20 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %21 = call %struct.TYPE_2__* @IPCB(%struct.sk_buff* %20)
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @IPSKB_REROUTED, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i32 @NF_HOOK_COND(i32 %11, i32 %12, %struct.net* %13, %struct.sock* %14, %struct.sk_buff* %15, i32* null, i32 %18, i32 %19, i32 %28)
  ret i32 %29
}

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @NF_HOOK_COND(i32, i32, %struct.net*, %struct.sock*, %struct.sk_buff*, i32*, i32, i32, i32) #1

declare dso_local %struct.TYPE_2__* @IPCB(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
