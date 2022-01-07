; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en_accel/extr_tls.c_mlx5e_tls_set_ipv4_flow.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en_accel/extr_tls.c_mlx5e_tls_set_ipv4_flow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.sock = type { i32 }
%struct.inet_sock = type { i32, i32 }

@tls_flow = common dso_local global i32 0, align 4
@ipv6 = common dso_local global i32 0, align 4
@dst_ipv4_dst_ipv6 = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@ipv4_layout = common dso_local global i32 0, align 4
@ipv4 = common dso_local global i32 0, align 4
@src_ipv4_src_ipv6 = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.sock*)* @mlx5e_tls_set_ipv4_flow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5e_tls_set_ipv4_flow(i8* %0, %struct.sock* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.inet_sock*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.sock* %1, %struct.sock** %4, align 8
  %6 = load %struct.sock*, %struct.sock** %4, align 8
  %7 = call %struct.inet_sock* @inet_sk(%struct.sock* %6)
  store %struct.inet_sock* %7, %struct.inet_sock** %5, align 8
  %8 = load i32, i32* @tls_flow, align 4
  %9 = load i8*, i8** %3, align 8
  %10 = load i32, i32* @ipv6, align 4
  %11 = call i32 @MLX5_SET(i32 %8, i8* %9, i32 %10, i32 0)
  %12 = load i32, i32* @tls_flow, align 4
  %13 = load i8*, i8** %3, align 8
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @dst_ipv4_dst_ipv6, i32 0, i32 0, i32 0), align 4
  %15 = call i32 @MLX5_ADDR_OF(i32 %12, i8* %13, i32 %14)
  %16 = load %struct.inet_sock*, %struct.inet_sock** %5, align 8
  %17 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %16, i32 0, i32 1
  %18 = load i32, i32* @ipv4_layout, align 4
  %19 = load i32, i32* @ipv4, align 4
  %20 = call i32 @MLX5_FLD_SZ_BYTES(i32 %18, i32 %19)
  %21 = call i32 @memcpy(i32 %15, i32* %17, i32 %20)
  %22 = load i32, i32* @tls_flow, align 4
  %23 = load i8*, i8** %3, align 8
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @src_ipv4_src_ipv6, i32 0, i32 0, i32 0), align 4
  %25 = call i32 @MLX5_ADDR_OF(i32 %22, i8* %23, i32 %24)
  %26 = load %struct.inet_sock*, %struct.inet_sock** %5, align 8
  %27 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %26, i32 0, i32 0
  %28 = load i32, i32* @ipv4_layout, align 4
  %29 = load i32, i32* @ipv4, align 4
  %30 = call i32 @MLX5_FLD_SZ_BYTES(i32 %28, i32 %29)
  %31 = call i32 @memcpy(i32 %25, i32* %27, i32 %30)
  ret void
}

declare dso_local %struct.inet_sock* @inet_sk(%struct.sock*) #1

declare dso_local i32 @MLX5_SET(i32, i8*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @MLX5_ADDR_OF(i32, i8*, i32) #1

declare dso_local i32 @MLX5_FLD_SZ_BYTES(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
