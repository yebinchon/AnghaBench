; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_fs_ethtool.c_set_ip4.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_fs_ethtool.c_set_ip4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@src_ipv4_src_ipv6 = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@dst_ipv4_dst_ipv6 = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@ethertype = common dso_local global i32 0, align 4
@ETH_P_IP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i64, i64, i64, i64)* @set_ip4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_ip4(i8* %0, i8* %1, i64 %2, i64 %3, i64 %4, i64 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 %5, i64* %12, align 8
  %13 = load i64, i64* %9, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %6
  %16 = load i8*, i8** %8, align 8
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @src_ipv4_src_ipv6, i32 0, i32 0, i32 0), align 4
  %18 = call i32 @MLX5E_FTE_ADDR_OF(i8* %16, i32 %17)
  %19 = call i32 @memcpy(i32 %18, i64* %10, i32 8)
  %20 = load i8*, i8** %7, align 8
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @src_ipv4_src_ipv6, i32 0, i32 0, i32 0), align 4
  %22 = call i32 @MLX5E_FTE_ADDR_OF(i8* %20, i32 %21)
  %23 = call i32 @memcpy(i32 %22, i64* %9, i32 8)
  br label %24

24:                                               ; preds = %15, %6
  %25 = load i64, i64* %11, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %24
  %28 = load i8*, i8** %8, align 8
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @dst_ipv4_dst_ipv6, i32 0, i32 0, i32 0), align 4
  %30 = call i32 @MLX5E_FTE_ADDR_OF(i8* %28, i32 %29)
  %31 = call i32 @memcpy(i32 %30, i64* %12, i32 8)
  %32 = load i8*, i8** %7, align 8
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @dst_ipv4_dst_ipv6, i32 0, i32 0, i32 0), align 4
  %34 = call i32 @MLX5E_FTE_ADDR_OF(i8* %32, i32 %33)
  %35 = call i32 @memcpy(i32 %34, i64* %11, i32 8)
  br label %36

36:                                               ; preds = %27, %24
  %37 = load i8*, i8** %7, align 8
  %38 = load i32, i32* @ethertype, align 4
  %39 = call i32 @MLX5E_FTE_SET(i8* %37, i32 %38, i32 65535)
  %40 = load i8*, i8** %8, align 8
  %41 = load i32, i32* @ethertype, align 4
  %42 = load i32, i32* @ETH_P_IP, align 4
  %43 = call i32 @MLX5E_FTE_SET(i8* %40, i32 %41, i32 %42)
  ret void
}

declare dso_local i32 @memcpy(i32, i64*, i32) #1

declare dso_local i32 @MLX5E_FTE_ADDR_OF(i8*, i32) #1

declare dso_local i32 @MLX5E_FTE_SET(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
