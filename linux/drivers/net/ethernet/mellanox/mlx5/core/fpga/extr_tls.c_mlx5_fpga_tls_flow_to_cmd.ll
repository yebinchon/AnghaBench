; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/fpga/extr_tls.c_mlx5_fpga_tls_flow_to_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/fpga/extr_tls.c_mlx5_fpga_tls_flow_to_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tls_cmd = common dso_local global i32 0, align 4
@src_port = common dso_local global i32 0, align 4
@tls_flow = common dso_local global i32 0, align 4
@ipv6 = common dso_local global i32 0, align 4
@direction_sx = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @mlx5_fpga_tls_flow_to_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5_fpga_tls_flow_to_cmd(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i32, i32* @tls_cmd, align 4
  %6 = load i8*, i8** %4, align 8
  %7 = load i32, i32* @src_port, align 4
  %8 = call i32 @MLX5_ADDR_OF(i32 %5, i8* %6, i32 %7)
  %9 = load i8*, i8** %3, align 8
  %10 = load i32, i32* @tls_flow, align 4
  %11 = load i32, i32* @ipv6, align 4
  %12 = call i32 @MLX5_BYTE_OFF(i32 %10, i32 %11)
  %13 = call i32 @memcpy(i32 %8, i8* %9, i32 %12)
  %14 = load i32, i32* @tls_cmd, align 4
  %15 = load i8*, i8** %4, align 8
  %16 = load i32, i32* @ipv6, align 4
  %17 = load i32, i32* @tls_flow, align 4
  %18 = load i8*, i8** %3, align 8
  %19 = load i32, i32* @ipv6, align 4
  %20 = call i32 @MLX5_GET(i32 %17, i8* %18, i32 %19)
  %21 = call i32 @MLX5_SET(i32 %14, i8* %15, i32 %16, i32 %20)
  %22 = load i32, i32* @tls_cmd, align 4
  %23 = load i8*, i8** %4, align 8
  %24 = load i32, i32* @direction_sx, align 4
  %25 = load i32, i32* @tls_flow, align 4
  %26 = load i8*, i8** %3, align 8
  %27 = load i32, i32* @direction_sx, align 4
  %28 = call i32 @MLX5_GET(i32 %25, i8* %26, i32 %27)
  %29 = call i32 @MLX5_SET(i32 %22, i8* %23, i32 %24, i32 %28)
  ret void
}

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @MLX5_ADDR_OF(i32, i8*, i32) #1

declare dso_local i32 @MLX5_BYTE_OFF(i32, i32) #1

declare dso_local i32 @MLX5_SET(i32, i8*, i32, i32) #1

declare dso_local i32 @MLX5_GET(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
