; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_vrf.c_vrf_ip_out_direct.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_vrf.c_vrf_ip_out_direct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.sock = type { i32 }
%struct.sk_buff = type { %struct.net_device* }
%struct.net = type { i32 }

@NFPROTO_IPV4 = common dso_local global i32 0, align 4
@NF_INET_LOCAL_OUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.net_device*, %struct.sock*, %struct.sk_buff*)* @vrf_ip_out_direct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @vrf_ip_out_direct(%struct.net_device* %0, %struct.sock* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.net*, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.sock* %1, %struct.sock** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.net* @dev_net(%struct.net_device* %9)
  store %struct.net* %10, %struct.net** %7, align 8
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %13 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %12, i32 0, i32 0
  store %struct.net_device* %11, %struct.net_device** %13, align 8
  %14 = load i32, i32* @NFPROTO_IPV4, align 4
  %15 = load i32, i32* @NF_INET_LOCAL_OUT, align 4
  %16 = load %struct.net*, %struct.net** %7, align 8
  %17 = load %struct.sock*, %struct.sock** %5, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %19 = load %struct.net_device*, %struct.net_device** %4, align 8
  %20 = call i32 @nf_hook(i32 %14, i32 %15, %struct.net* %16, %struct.sock* %17, %struct.sk_buff* %18, i32* null, %struct.net_device* %19, i32 (%struct.net*, %struct.sock*, %struct.sk_buff*)* @vrf_output_direct)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp eq i32 %21, 1
  %23 = zext i1 %22 to i32
  %24 = call i64 @likely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %3
  %27 = load %struct.net*, %struct.net** %7, align 8
  %28 = load %struct.sock*, %struct.sock** %5, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %30 = call i32 @vrf_output_direct(%struct.net* %27, %struct.sock* %28, %struct.sk_buff* %29)
  store i32 %30, i32* %8, align 4
  br label %31

31:                                               ; preds = %26, %3
  %32 = load i32, i32* %8, align 4
  %33 = icmp eq i32 %32, 1
  %34 = zext i1 %33 to i32
  %35 = call i64 @likely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %39 = call i32 @nf_reset_ct(%struct.sk_buff* %38)
  br label %41

40:                                               ; preds = %31
  store %struct.sk_buff* null, %struct.sk_buff** %6, align 8
  br label %41

41:                                               ; preds = %40, %37
  %42 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  ret %struct.sk_buff* %42
}

declare dso_local %struct.net* @dev_net(%struct.net_device*) #1

declare dso_local i32 @nf_hook(i32, i32, %struct.net*, %struct.sock*, %struct.sk_buff*, i32*, %struct.net_device*, i32 (%struct.net*, %struct.sock*, %struct.sk_buff*)*) #1

declare dso_local i32 @vrf_output_direct(%struct.net*, %struct.sock*, %struct.sk_buff*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @nf_reset_ct(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
