; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_rx.c_get_fixed_ipv4_csum.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_rx.c_get_fixed_ipv4_csum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.iphdr = type { i64, i32, i32, i32, i32 }

@IPPROTO_SCTP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.sk_buff*, %struct.iphdr*)* @get_fixed_ipv4_csum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_fixed_ipv4_csum(i32 %0, %struct.sk_buff* %1, %struct.iphdr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.iphdr*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.iphdr* %2, %struct.iphdr** %7, align 8
  store i64 0, i64* %8, align 8
  store i32 0, i32* %9, align 4
  %11 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %12 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %10, align 8
  %14 = load i64, i64* %10, align 8
  %15 = load i64, i64* @IPPROTO_SCTP, align 8
  %16 = icmp eq i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i64 @unlikely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %46

21:                                               ; preds = %3
  %22 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %23 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @be16_to_cpu(i32 %24)
  %26 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %27 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = shl i32 %28, 2
  %30 = sext i32 %29 to i64
  %31 = sub nsw i64 %25, %30
  store i64 %31, i64* %8, align 8
  %32 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %33 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %36 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load i64, i64* %8, align 8
  %39 = load i64, i64* %10, align 8
  %40 = call i32 @csum_tcpudp_nofold(i32 %34, i32 %37, i64 %38, i64 %39, i32 0)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @csum_sub(i32 %41, i32 %42)
  %44 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %45 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  store i32 0, i32* %4, align 4
  br label %46

46:                                               ; preds = %21, %20
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @be16_to_cpu(i32) #1

declare dso_local i32 @csum_tcpudp_nofold(i32, i32, i64, i64, i32) #1

declare dso_local i32 @csum_sub(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
