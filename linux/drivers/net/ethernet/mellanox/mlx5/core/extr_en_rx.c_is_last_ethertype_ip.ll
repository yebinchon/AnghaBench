; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_rx.c_is_last_ethertype_ip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_rx.c_is_last_ethertype_ip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.ethhdr = type { i64 }

@ETH_P_IP = common dso_local global i32 0, align 4
@ETH_P_IPV6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32*, i64*)* @is_last_ethertype_ip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_last_ethertype_ip(%struct.sk_buff* %0, i32* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64* %2, i64** %7, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %9 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.ethhdr*
  %12 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64*, i64** %7, align 8
  store i64 %13, i64* %14, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %16 = load i64*, i64** %7, align 8
  %17 = load i64, i64* %16, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = call i64 @__vlan_get_protocol(%struct.sk_buff* %15, i64 %17, i32* %18)
  %20 = load i64*, i64** %7, align 8
  store i64 %19, i64* %20, align 8
  %21 = load i64*, i64** %7, align 8
  %22 = load i64, i64* %21, align 8
  %23 = load i32, i32* @ETH_P_IP, align 4
  %24 = call i64 @htons(i32 %23)
  %25 = icmp eq i64 %22, %24
  br i1 %25, label %26, label %34

26:                                               ; preds = %3
  %27 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %28 = load i32*, i32** %6, align 8
  %29 = load i32, i32* %28, align 4
  %30 = sext i32 %29 to i64
  %31 = add i64 %30, 4
  %32 = trunc i64 %31 to i32
  %33 = call i32 @pskb_may_pull(%struct.sk_buff* %27, i32 %32)
  store i32 %33, i32* %4, align 4
  br label %49

34:                                               ; preds = %3
  %35 = load i64*, i64** %7, align 8
  %36 = load i64, i64* %35, align 8
  %37 = load i32, i32* @ETH_P_IPV6, align 4
  %38 = call i64 @htons(i32 %37)
  %39 = icmp eq i64 %36, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %34
  %41 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %42 = load i32*, i32** %6, align 8
  %43 = load i32, i32* %42, align 4
  %44 = sext i32 %43 to i64
  %45 = add i64 %44, 4
  %46 = trunc i64 %45 to i32
  %47 = call i32 @pskb_may_pull(%struct.sk_buff* %41, i32 %46)
  store i32 %47, i32* %4, align 4
  br label %49

48:                                               ; preds = %34
  store i32 0, i32* %4, align 4
  br label %49

49:                                               ; preds = %48, %40, %26
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i64 @__vlan_get_protocol(%struct.sk_buff*, i64, i32*) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
