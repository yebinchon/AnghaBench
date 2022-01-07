; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_mcg.c_mlx4_tunnel_steer_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_mcg.c_mlx4_tunnel_steer_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.mlx4_spec_list = type { i32, i8*, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32* }
%struct.mlx4_net_trans_rule = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@MLX4_FS_REGULAR = common dso_local global i32 0, align 4
@MLX4_NET_TRANS_Q_FIFO = common dso_local global i32 0, align 4
@MLX4_MAC_MASK = common dso_local global i32 0, align 4
@MLX4_NET_TRANS_RULE_ID_ETH = common dso_local global i8* null, align 8
@ETH_ALEN = common dso_local global i32 0, align 4
@MLX4_NET_TRANS_RULE_ID_VXLAN = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_tunnel_steer_add(%struct.mlx4_dev* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca %struct.mlx4_dev*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.mlx4_spec_list, align 8
  %15 = alloca %struct.mlx4_spec_list, align 8
  %16 = alloca %struct.mlx4_spec_list, align 8
  %17 = alloca %struct.mlx4_net_trans_rule, align 4
  %18 = alloca i8, align 1
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  %19 = bitcast %struct.mlx4_spec_list* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %19, i8 0, i64 32, i1 false)
  %20 = bitcast %struct.mlx4_spec_list* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %20, i8 0, i64 32, i1 false)
  %21 = bitcast %struct.mlx4_spec_list* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %21, i8 0, i64 32, i1 false)
  %22 = getelementptr inbounds %struct.mlx4_net_trans_rule, %struct.mlx4_net_trans_rule* %17, i32 0, i32 0
  store i32 1, i32* %22, align 4
  %23 = getelementptr inbounds %struct.mlx4_net_trans_rule, %struct.mlx4_net_trans_rule* %17, i32 0, i32 1
  store i32 0, i32* %23, align 4
  %24 = getelementptr inbounds %struct.mlx4_net_trans_rule, %struct.mlx4_net_trans_rule* %17, i32 0, i32 2
  store i32 0, i32* %24, align 4
  %25 = getelementptr inbounds %struct.mlx4_net_trans_rule, %struct.mlx4_net_trans_rule* %17, i32 0, i32 3
  store i32 0, i32* %25, align 4
  %26 = getelementptr inbounds %struct.mlx4_net_trans_rule, %struct.mlx4_net_trans_rule* %17, i32 0, i32 4
  store i32 0, i32* %26, align 4
  %27 = getelementptr inbounds %struct.mlx4_net_trans_rule, %struct.mlx4_net_trans_rule* %17, i32 0, i32 5
  %28 = load i32, i32* @MLX4_FS_REGULAR, align 4
  store i32 %28, i32* %27, align 4
  %29 = getelementptr inbounds %struct.mlx4_net_trans_rule, %struct.mlx4_net_trans_rule* %17, i32 0, i32 6
  store i32 0, i32* %29, align 4
  %30 = getelementptr inbounds %struct.mlx4_net_trans_rule, %struct.mlx4_net_trans_rule* %17, i32 0, i32 7
  %31 = load i32, i32* @MLX4_NET_TRANS_Q_FIFO, align 4
  store i32 %31, i32* %30, align 4
  %32 = load i32, i32* @MLX4_MAC_MASK, align 4
  %33 = shl i32 %32, 16
  %34 = call zeroext i8 @cpu_to_be64(i32 %33)
  store i8 %34, i8* %18, align 1
  %35 = load i32, i32* %9, align 4
  %36 = getelementptr inbounds %struct.mlx4_net_trans_rule, %struct.mlx4_net_trans_rule* %17, i32 0, i32 1
  store i32 %35, i32* %36, align 4
  %37 = load i32, i32* %10, align 4
  %38 = getelementptr inbounds %struct.mlx4_net_trans_rule, %struct.mlx4_net_trans_rule* %17, i32 0, i32 2
  store i32 %37, i32* %38, align 4
  %39 = load i32, i32* %11, align 4
  %40 = getelementptr inbounds %struct.mlx4_net_trans_rule, %struct.mlx4_net_trans_rule* %17, i32 0, i32 4
  store i32 %39, i32* %40, align 4
  %41 = getelementptr inbounds %struct.mlx4_net_trans_rule, %struct.mlx4_net_trans_rule* %17, i32 0, i32 3
  %42 = call i32 @INIT_LIST_HEAD(i32* %41)
  %43 = load i8*, i8** @MLX4_NET_TRANS_RULE_ID_ETH, align 8
  %44 = getelementptr inbounds %struct.mlx4_spec_list, %struct.mlx4_spec_list* %14, i32 0, i32 1
  store i8* %43, i8** %44, align 8
  %45 = getelementptr inbounds %struct.mlx4_spec_list, %struct.mlx4_spec_list* %14, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i8*, i8** %8, align 8
  %49 = load i32, i32* @ETH_ALEN, align 4
  %50 = call i32 @memcpy(i32 %47, i8* %48, i32 %49)
  %51 = getelementptr inbounds %struct.mlx4_spec_list, %struct.mlx4_spec_list* %14, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @ETH_ALEN, align 4
  %55 = call i32 @memcpy(i32 %53, i8* %18, i32 %54)
  %56 = load i8*, i8** @MLX4_NET_TRANS_RULE_ID_VXLAN, align 8
  %57 = getelementptr inbounds %struct.mlx4_spec_list, %struct.mlx4_spec_list* %15, i32 0, i32 1
  store i8* %56, i8** %57, align 8
  %58 = load i8*, i8** @MLX4_NET_TRANS_RULE_ID_ETH, align 8
  %59 = getelementptr inbounds %struct.mlx4_spec_list, %struct.mlx4_spec_list* %16, i32 0, i32 1
  store i8* %58, i8** %59, align 8
  %60 = getelementptr inbounds %struct.mlx4_spec_list, %struct.mlx4_spec_list* %14, i32 0, i32 0
  %61 = getelementptr inbounds %struct.mlx4_net_trans_rule, %struct.mlx4_net_trans_rule* %17, i32 0, i32 3
  %62 = call i32 @list_add_tail(i32* %60, i32* %61)
  %63 = getelementptr inbounds %struct.mlx4_spec_list, %struct.mlx4_spec_list* %15, i32 0, i32 0
  %64 = getelementptr inbounds %struct.mlx4_net_trans_rule, %struct.mlx4_net_trans_rule* %17, i32 0, i32 3
  %65 = call i32 @list_add_tail(i32* %63, i32* %64)
  %66 = getelementptr inbounds %struct.mlx4_spec_list, %struct.mlx4_spec_list* %16, i32 0, i32 0
  %67 = getelementptr inbounds %struct.mlx4_net_trans_rule, %struct.mlx4_net_trans_rule* %17, i32 0, i32 3
  %68 = call i32 @list_add_tail(i32* %66, i32* %67)
  %69 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %70 = load i32*, i32** %12, align 8
  %71 = call i32 @mlx4_flow_attach(%struct.mlx4_dev* %69, %struct.mlx4_net_trans_rule* %17, i32* %70)
  store i32 %71, i32* %13, align 4
  %72 = load i32, i32* %13, align 4
  ret i32 %72
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local zeroext i8 @cpu_to_be64(i32) #2

declare dso_local i32 @INIT_LIST_HEAD(i32*) #2

declare dso_local i32 @memcpy(i32, i8*, i32) #2

declare dso_local i32 @list_add_tail(i32*, i32*) #2

declare dso_local i32 @mlx4_flow_attach(%struct.mlx4_dev*, %struct.mlx4_net_trans_rule*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
