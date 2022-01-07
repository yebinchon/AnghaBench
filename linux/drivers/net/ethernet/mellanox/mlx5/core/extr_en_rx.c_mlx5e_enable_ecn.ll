; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_rx.c_mlx5e_enable_ecn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_rx.c_mlx5e_enable_ecn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_rq = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.sk_buff = type { i8* }
%struct.iphdr = type { i32 }
%struct.ipv6hdr = type { i32 }

@ETH_P_IP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5e_rq*, %struct.sk_buff*)* @mlx5e_enable_ecn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5e_enable_ecn(%struct.mlx5e_rq* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.mlx5e_rq*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.mlx5e_rq* %0, %struct.mlx5e_rq** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  store i32 0, i32* %5, align 4
  %9 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %10 = call i32 @is_last_ethertype_ip(%struct.sk_buff* %9, i32* %5, i64* %6)
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i64 @unlikely(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %50

17:                                               ; preds = %2
  %18 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr i8, i8* %20, i64 %22
  store i8* %23, i8** %7, align 8
  %24 = load i64, i64* %6, align 8
  %25 = load i32, i32* @ETH_P_IP, align 4
  %26 = call i64 @htons(i32 %25)
  %27 = icmp eq i64 %24, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %17
  %29 = load i8*, i8** %7, align 8
  %30 = bitcast i8* %29 to %struct.iphdr*
  %31 = call i32 @IP_ECN_set_ce(%struct.iphdr* %30)
  br label %37

32:                                               ; preds = %17
  %33 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = bitcast i8* %34 to %struct.ipv6hdr*
  %36 = call i32 @IP6_ECN_set_ce(%struct.sk_buff* %33, %struct.ipv6hdr* %35)
  br label %37

37:                                               ; preds = %32, %28
  %38 = phi i32 [ %31, %28 ], [ %36, %32 ]
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %3, align 8
  %45 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, %43
  store i32 %49, i32* %47, align 4
  br label %50

50:                                               ; preds = %37, %16
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @is_last_ethertype_ip(%struct.sk_buff*, i32*, i64*) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @IP_ECN_set_ce(%struct.iphdr*) #1

declare dso_local i32 @IP6_ECN_set_ce(%struct.sk_buff*, %struct.ipv6hdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
