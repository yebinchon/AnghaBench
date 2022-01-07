; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_vrf.c_vrf_ip_local_out.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_vrf.c_vrf_ip_local_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.TYPE_2__ = type { i32 }

@NFPROTO_IPV4 = common dso_local global i32 0, align 4
@NF_INET_LOCAL_OUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.sock*, %struct.sk_buff*)* @vrf_ip_local_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vrf_ip_local_out(%struct.net* %0, %struct.sock* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.net*, align 8
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %4, align 8
  store %struct.sock* %1, %struct.sock** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %8 = load i32, i32* @NFPROTO_IPV4, align 4
  %9 = load i32, i32* @NF_INET_LOCAL_OUT, align 4
  %10 = load %struct.net*, %struct.net** %4, align 8
  %11 = load %struct.sock*, %struct.sock** %5, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %14 = call %struct.TYPE_2__* @skb_dst(%struct.sk_buff* %13)
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @nf_hook(i32 %8, i32 %9, %struct.net* %10, %struct.sock* %11, %struct.sk_buff* %12, i32* null, i32 %16, i32 (%struct.net*, %struct.sock*, %struct.sk_buff*)* @dst_output)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp eq i32 %18, 1
  %20 = zext i1 %19 to i32
  %21 = call i64 @likely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %3
  %24 = load %struct.net*, %struct.net** %4, align 8
  %25 = load %struct.sock*, %struct.sock** %5, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %27 = call i32 @dst_output(%struct.net* %24, %struct.sock* %25, %struct.sk_buff* %26)
  store i32 %27, i32* %7, align 4
  br label %28

28:                                               ; preds = %23, %3
  %29 = load i32, i32* %7, align 4
  ret i32 %29
}

declare dso_local i32 @nf_hook(i32, i32, %struct.net*, %struct.sock*, %struct.sk_buff*, i32*, i32, i32 (%struct.net*, %struct.sock*, %struct.sk_buff*)*) #1

declare dso_local %struct.TYPE_2__* @skb_dst(%struct.sk_buff*) #1

declare dso_local i32 @dst_output(%struct.net*, %struct.sock*, %struct.sk_buff*) #1

declare dso_local i64 @likely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
