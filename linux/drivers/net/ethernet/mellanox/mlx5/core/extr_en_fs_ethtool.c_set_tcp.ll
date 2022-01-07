; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_fs_ethtool.c_set_tcp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_fs_ethtool.c_set_tcp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tcp_sport = common dso_local global i32 0, align 4
@tcp_dport = common dso_local global i32 0, align 4
@ip_protocol = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i64, i64, i64, i64)* @set_tcp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_tcp(i8* %0, i8* %1, i64 %2, i64 %3, i64 %4, i64 %5) #0 {
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
  br i1 %14, label %15, label %26

15:                                               ; preds = %6
  %16 = load i8*, i8** %7, align 8
  %17 = load i32, i32* @tcp_sport, align 4
  %18 = load i64, i64* %9, align 8
  %19 = call i32 @ntohs(i64 %18)
  %20 = call i32 @MLX5E_FTE_SET(i8* %16, i32 %17, i32 %19)
  %21 = load i8*, i8** %8, align 8
  %22 = load i32, i32* @tcp_sport, align 4
  %23 = load i64, i64* %10, align 8
  %24 = call i32 @ntohs(i64 %23)
  %25 = call i32 @MLX5E_FTE_SET(i8* %21, i32 %22, i32 %24)
  br label %26

26:                                               ; preds = %15, %6
  %27 = load i64, i64* %11, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %26
  %30 = load i8*, i8** %7, align 8
  %31 = load i32, i32* @tcp_dport, align 4
  %32 = load i64, i64* %11, align 8
  %33 = call i32 @ntohs(i64 %32)
  %34 = call i32 @MLX5E_FTE_SET(i8* %30, i32 %31, i32 %33)
  %35 = load i8*, i8** %8, align 8
  %36 = load i32, i32* @tcp_dport, align 4
  %37 = load i64, i64* %12, align 8
  %38 = call i32 @ntohs(i64 %37)
  %39 = call i32 @MLX5E_FTE_SET(i8* %35, i32 %36, i32 %38)
  br label %40

40:                                               ; preds = %29, %26
  %41 = load i8*, i8** %7, align 8
  %42 = load i32, i32* @ip_protocol, align 4
  %43 = call i32 @MLX5E_FTE_SET(i8* %41, i32 %42, i32 65535)
  %44 = load i8*, i8** %8, align 8
  %45 = load i32, i32* @ip_protocol, align 4
  %46 = load i32, i32* @IPPROTO_TCP, align 4
  %47 = call i32 @MLX5E_FTE_SET(i8* %44, i32 %45, i32 %46)
  ret void
}

declare dso_local i32 @MLX5E_FTE_SET(i8*, i32, i32) #1

declare dso_local i32 @ntohs(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
