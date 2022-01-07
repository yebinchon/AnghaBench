; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_fs_cmd.c_mlx5_cmd_packet_reformat_dealloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_fs_cmd.c_mlx5_cmd_packet_reformat_dealloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_flow_root_namespace = type { %struct.mlx5_core_dev* }
%struct.mlx5_core_dev = type { i32 }
%struct.mlx5_pkt_reformat = type { i32 }

@dealloc_packet_reformat_context_in = common dso_local global i32 0, align 4
@dealloc_packet_reformat_context_out = common dso_local global i32 0, align 4
@opcode = common dso_local global i32 0, align 4
@MLX5_CMD_OP_DEALLOC_PACKET_REFORMAT_CONTEXT = common dso_local global i32 0, align 4
@packet_reformat_id = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_flow_root_namespace*, %struct.mlx5_pkt_reformat*)* @mlx5_cmd_packet_reformat_dealloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5_cmd_packet_reformat_dealloc(%struct.mlx5_flow_root_namespace* %0, %struct.mlx5_pkt_reformat* %1) #0 {
  %3 = alloca %struct.mlx5_flow_root_namespace*, align 8
  %4 = alloca %struct.mlx5_pkt_reformat*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.mlx5_core_dev*, align 8
  store %struct.mlx5_flow_root_namespace* %0, %struct.mlx5_flow_root_namespace** %3, align 8
  store %struct.mlx5_pkt_reformat* %1, %struct.mlx5_pkt_reformat** %4, align 8
  %9 = load i32, i32* @dealloc_packet_reformat_context_in, align 4
  %10 = call i32 @MLX5_ST_SZ_DW(i32 %9)
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %5, align 8
  %13 = alloca i32, i64 %11, align 16
  store i64 %11, i64* %6, align 8
  %14 = load i32, i32* @dealloc_packet_reformat_context_out, align 4
  %15 = call i32 @MLX5_ST_SZ_DW(i32 %14)
  %16 = zext i32 %15 to i64
  %17 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %7, align 8
  %18 = load %struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_root_namespace** %3, align 8
  %19 = getelementptr inbounds %struct.mlx5_flow_root_namespace, %struct.mlx5_flow_root_namespace* %18, i32 0, i32 0
  %20 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %19, align 8
  store %struct.mlx5_core_dev* %20, %struct.mlx5_core_dev** %8, align 8
  %21 = mul nuw i64 4, %11
  %22 = trunc i64 %21 to i32
  %23 = call i32 @memset(i32* %13, i32 0, i32 %22)
  %24 = load i32, i32* @dealloc_packet_reformat_context_in, align 4
  %25 = load i32, i32* @opcode, align 4
  %26 = load i32, i32* @MLX5_CMD_OP_DEALLOC_PACKET_REFORMAT_CONTEXT, align 4
  %27 = call i32 @MLX5_SET(i32 %24, i32* %13, i32 %25, i32 %26)
  %28 = load i32, i32* @dealloc_packet_reformat_context_in, align 4
  %29 = load i32, i32* @packet_reformat_id, align 4
  %30 = load %struct.mlx5_pkt_reformat*, %struct.mlx5_pkt_reformat** %4, align 8
  %31 = getelementptr inbounds %struct.mlx5_pkt_reformat, %struct.mlx5_pkt_reformat* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @MLX5_SET(i32 %28, i32* %13, i32 %29, i32 %32)
  %34 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %8, align 8
  %35 = mul nuw i64 4, %11
  %36 = trunc i64 %35 to i32
  %37 = mul nuw i64 4, %16
  %38 = trunc i64 %37 to i32
  %39 = call i32 @mlx5_cmd_exec(%struct.mlx5_core_dev* %34, i32* %13, i32 %36, i32* %17, i32 %38)
  %40 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %40)
  ret void
}

declare dso_local i32 @MLX5_ST_SZ_DW(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @MLX5_SET(i32, i32*, i32, i32) #1

declare dso_local i32 @mlx5_cmd_exec(%struct.mlx5_core_dev*, i32*, i32, i32*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
