; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_vrf.c_vrf_rcv_nfhook.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_vrf.c_vrf_rcv_nfhook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }
%struct.net = type { i32 }

@vrf_rcv_finish = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (i32, i32, %struct.sk_buff*, %struct.net_device*)* @vrf_rcv_nfhook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @vrf_rcv_nfhook(i32 %0, i32 %1, %struct.sk_buff* %2, %struct.net_device* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.net*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  store %struct.net_device* %3, %struct.net_device** %8, align 8
  %10 = load %struct.net_device*, %struct.net_device** %8, align 8
  %11 = call %struct.net* @dev_net(%struct.net_device* %10)
  store %struct.net* %11, %struct.net** %9, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.net*, %struct.net** %9, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %16 = load %struct.net_device*, %struct.net_device** %8, align 8
  %17 = load i32, i32* @vrf_rcv_finish, align 4
  %18 = call i32 @nf_hook(i32 %12, i32 %13, %struct.net* %14, i32* null, %struct.sk_buff* %15, %struct.net_device* %16, i32* null, i32 %17)
  %19 = icmp ne i32 %18, 1
  br i1 %19, label %20, label %21

20:                                               ; preds = %4
  store %struct.sk_buff* null, %struct.sk_buff** %7, align 8
  br label %21

21:                                               ; preds = %20, %4
  %22 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  ret %struct.sk_buff* %22
}

declare dso_local %struct.net* @dev_net(%struct.net_device*) #1

declare dso_local i32 @nf_hook(i32, i32, %struct.net*, i32*, %struct.sk_buff*, %struct.net_device*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
