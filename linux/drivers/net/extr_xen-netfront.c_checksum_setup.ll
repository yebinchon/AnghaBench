; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_xen-netfront.c_checksum_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_xen-netfront.c_checksum_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.sk_buff = type { i64 }
%struct.netfront_info = type { i32 }

@CHECKSUM_PARTIAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.sk_buff*)* @checksum_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @checksum_setup(%struct.net_device* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.netfront_info*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %9 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @CHECKSUM_PARTIAL, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %26

13:                                               ; preds = %2
  %14 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %15 = call i64 @skb_is_gso(%struct.sk_buff* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %13
  %18 = load %struct.net_device*, %struct.net_device** %4, align 8
  %19 = call %struct.netfront_info* @netdev_priv(%struct.net_device* %18)
  store %struct.netfront_info* %19, %struct.netfront_info** %7, align 8
  %20 = load %struct.netfront_info*, %struct.netfront_info** %7, align 8
  %21 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %20, i32 0, i32 0
  %22 = call i32 @atomic_inc(i32* %21)
  %23 = load i64, i64* @CHECKSUM_PARTIAL, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %25 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  store i32 1, i32* %6, align 4
  br label %26

26:                                               ; preds = %17, %13, %2
  %27 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %28 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @CHECKSUM_PARTIAL, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %37

33:                                               ; preds = %26
  %34 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @skb_checksum_setup(%struct.sk_buff* %34, i32 %35)
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %33, %32
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i64 @skb_is_gso(%struct.sk_buff*) #1

declare dso_local %struct.netfront_info* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @skb_checksum_setup(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
