; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_netdev.c_mlx4_en_uc_steer_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_netdev.c_mlx4_en_uc_steer_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_en_priv = type { i32, %struct.mlx4_en_dev* }
%struct.mlx4_en_dev = type { %struct.mlx4_dev* }
%struct.mlx4_dev = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.mlx4_qp = type { i32 }
%struct.mlx4_spec_list = type { i32, %struct.TYPE_6__, i32, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32*, i32* }
%struct.TYPE_5__ = type { i32* }
%struct.mlx4_net_trans_rule = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@MLX4_PROT_ETH = common dso_local global i32 0, align 4
@MLX4_MAC_MASK = common dso_local global i32 0, align 4
@MLX4_DOMAIN_NIC = common dso_local global i32 0, align 4
@MLX4_FS_REGULAR = common dso_local global i32 0, align 4
@MLX4_NET_TRANS_Q_FIFO = common dso_local global i32 0, align 4
@MLX4_NET_TRANS_RULE_ID_ETH = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Failed Attaching Unicast\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_en_priv*, i8*, i32*, i32*)* @mlx4_en_uc_steer_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_en_uc_steer_add(%struct.mlx4_en_priv* %0, i8* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx4_en_priv*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.mlx4_en_dev*, align 8
  %11 = alloca %struct.mlx4_dev*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.mlx4_qp, align 4
  %14 = alloca [16 x i32], align 16
  %15 = alloca %struct.mlx4_spec_list, align 8
  %16 = alloca i8, align 1
  %17 = alloca %struct.mlx4_net_trans_rule, align 4
  store %struct.mlx4_en_priv* %0, %struct.mlx4_en_priv** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %18 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %19 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %18, i32 0, i32 1
  %20 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %19, align 8
  store %struct.mlx4_en_dev* %20, %struct.mlx4_en_dev** %10, align 8
  %21 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %10, align 8
  %22 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %21, i32 0, i32 0
  %23 = load %struct.mlx4_dev*, %struct.mlx4_dev** %22, align 8
  store %struct.mlx4_dev* %23, %struct.mlx4_dev** %11, align 8
  %24 = load %struct.mlx4_dev*, %struct.mlx4_dev** %11, align 8
  %25 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  switch i32 %27, label %89 [
    i32 129, label %28
    i32 128, label %45
  ]

28:                                               ; preds = %4
  %29 = bitcast [16 x i32]* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %29, i8 0, i64 64, i1 false)
  %30 = load i32*, i32** %8, align 8
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.mlx4_qp, %struct.mlx4_qp* %13, i32 0, i32 0
  store i32 %31, i32* %32, align 4
  %33 = getelementptr inbounds [16 x i32], [16 x i32]* %14, i64 0, i64 10
  %34 = load i8*, i8** %7, align 8
  %35 = load i32, i32* @ETH_ALEN, align 4
  %36 = call i32 @memcpy(i32* %33, i8* %34, i32 %35)
  %37 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %38 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = getelementptr inbounds [16 x i32], [16 x i32]* %14, i64 0, i64 5
  store i32 %39, i32* %40, align 4
  %41 = load %struct.mlx4_dev*, %struct.mlx4_dev** %11, align 8
  %42 = getelementptr inbounds [16 x i32], [16 x i32]* %14, i64 0, i64 0
  %43 = load i32, i32* @MLX4_PROT_ETH, align 4
  %44 = call i32 @mlx4_unicast_attach(%struct.mlx4_dev* %41, %struct.mlx4_qp* %13, i32* %42, i32 0, i32 %43)
  store i32 %44, i32* %12, align 4
  br label %92

45:                                               ; preds = %4
  %46 = bitcast %struct.mlx4_spec_list* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %46, i8 0, i64 40, i1 false)
  %47 = load i32, i32* @MLX4_MAC_MASK, align 4
  %48 = shl i32 %47, 16
  %49 = call zeroext i8 @cpu_to_be64(i32 %48)
  store i8 %49, i8* %16, align 1
  %50 = getelementptr inbounds %struct.mlx4_net_trans_rule, %struct.mlx4_net_trans_rule* %17, i32 0, i32 0
  store i32 1, i32* %50, align 4
  %51 = getelementptr inbounds %struct.mlx4_net_trans_rule, %struct.mlx4_net_trans_rule* %17, i32 0, i32 1
  store i32 0, i32* %51, align 4
  %52 = getelementptr inbounds %struct.mlx4_net_trans_rule, %struct.mlx4_net_trans_rule* %17, i32 0, i32 2
  store i32 0, i32* %52, align 4
  %53 = getelementptr inbounds %struct.mlx4_net_trans_rule, %struct.mlx4_net_trans_rule* %17, i32 0, i32 3
  store i32 0, i32* %53, align 4
  %54 = getelementptr inbounds %struct.mlx4_net_trans_rule, %struct.mlx4_net_trans_rule* %17, i32 0, i32 4
  %55 = load i32, i32* @MLX4_DOMAIN_NIC, align 4
  store i32 %55, i32* %54, align 4
  %56 = getelementptr inbounds %struct.mlx4_net_trans_rule, %struct.mlx4_net_trans_rule* %17, i32 0, i32 5
  %57 = load i32, i32* @MLX4_FS_REGULAR, align 4
  store i32 %57, i32* %56, align 4
  %58 = getelementptr inbounds %struct.mlx4_net_trans_rule, %struct.mlx4_net_trans_rule* %17, i32 0, i32 6
  store i32 0, i32* %58, align 4
  %59 = getelementptr inbounds %struct.mlx4_net_trans_rule, %struct.mlx4_net_trans_rule* %17, i32 0, i32 7
  %60 = load i32, i32* @MLX4_NET_TRANS_Q_FIFO, align 4
  store i32 %60, i32* %59, align 4
  %61 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %62 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = getelementptr inbounds %struct.mlx4_net_trans_rule, %struct.mlx4_net_trans_rule* %17, i32 0, i32 3
  store i32 %63, i32* %64, align 4
  %65 = load i32*, i32** %8, align 8
  %66 = load i32, i32* %65, align 4
  %67 = getelementptr inbounds %struct.mlx4_net_trans_rule, %struct.mlx4_net_trans_rule* %17, i32 0, i32 1
  store i32 %66, i32* %67, align 4
  %68 = getelementptr inbounds %struct.mlx4_net_trans_rule, %struct.mlx4_net_trans_rule* %17, i32 0, i32 2
  %69 = call i32 @INIT_LIST_HEAD(i32* %68)
  %70 = load i32, i32* @MLX4_NET_TRANS_RULE_ID_ETH, align 4
  %71 = getelementptr inbounds %struct.mlx4_spec_list, %struct.mlx4_spec_list* %15, i32 0, i32 2
  store i32 %70, i32* %71, align 8
  %72 = getelementptr inbounds %struct.mlx4_spec_list, %struct.mlx4_spec_list* %15, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = load i8*, i8** %7, align 8
  %76 = load i32, i32* @ETH_ALEN, align 4
  %77 = call i32 @memcpy(i32* %74, i8* %75, i32 %76)
  %78 = getelementptr inbounds %struct.mlx4_spec_list, %struct.mlx4_spec_list* %15, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* @ETH_ALEN, align 4
  %82 = call i32 @memcpy(i32* %80, i8* %16, i32 %81)
  %83 = getelementptr inbounds %struct.mlx4_spec_list, %struct.mlx4_spec_list* %15, i32 0, i32 0
  %84 = getelementptr inbounds %struct.mlx4_net_trans_rule, %struct.mlx4_net_trans_rule* %17, i32 0, i32 2
  %85 = call i32 @list_add_tail(i32* %83, i32* %84)
  %86 = load %struct.mlx4_dev*, %struct.mlx4_dev** %11, align 8
  %87 = load i32*, i32** %9, align 8
  %88 = call i32 @mlx4_flow_attach(%struct.mlx4_dev* %86, %struct.mlx4_net_trans_rule* %17, i32* %87)
  store i32 %88, i32* %12, align 4
  br label %92

89:                                               ; preds = %4
  %90 = load i32, i32* @EINVAL, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %5, align 4
  br label %100

92:                                               ; preds = %45, %28
  %93 = load i32, i32* %12, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %92
  %96 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %97 = call i32 @en_warn(%struct.mlx4_en_priv* %96, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %98

98:                                               ; preds = %95, %92
  %99 = load i32, i32* %12, align 4
  store i32 %99, i32* %5, align 4
  br label %100

100:                                              ; preds = %98, %89
  %101 = load i32, i32* %5, align 4
  ret i32 %101
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #2

declare dso_local i32 @mlx4_unicast_attach(%struct.mlx4_dev*, %struct.mlx4_qp*, i32*, i32, i32) #2

declare dso_local zeroext i8 @cpu_to_be64(i32) #2

declare dso_local i32 @INIT_LIST_HEAD(i32*) #2

declare dso_local i32 @list_add_tail(i32*, i32*) #2

declare dso_local i32 @mlx4_flow_attach(%struct.mlx4_dev*, %struct.mlx4_net_trans_rule*, i32*) #2

declare dso_local i32 @en_warn(%struct.mlx4_en_priv*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
