; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/ipoib/extr_ipoib.c_mlx5i_create_flow_steering.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/ipoib/extr_ipoib.c_mlx5i_create_flow_steering.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { %struct.TYPE_7__, %struct.TYPE_8__*, %struct.TYPE_6__*, %struct.TYPE_5__*, i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.ttc_params = type { i32* }

@MLX5_FLOW_NAMESPACE_KERNEL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Failed to create arfs tables, err=%d\0A\00", align 1
@NETIF_F_NTUPLE = common dso_local global i32 0, align 4
@MLX5E_NUM_INDIR_TIRS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Failed to create inner ttc table, err=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"Failed to create ttc table, err=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5e_priv*)* @mlx5i_create_flow_steering to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5i_create_flow_steering(%struct.mlx5e_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx5e_priv*, align 8
  %4 = alloca %struct.ttc_params, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %3, align 8
  %7 = bitcast %struct.ttc_params* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %7, i8 0, i64 8, i1 false)
  %8 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %9 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @MLX5_FLOW_NAMESPACE_KERNEL, align 4
  %12 = call i32 @mlx5_get_flow_namespace(i32 %10, i32 %11)
  %13 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %14 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 2
  store i32 %12, i32* %15, align 8
  %16 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %17 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %130

24:                                               ; preds = %1
  %25 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %26 = call i32 @mlx5e_arfs_create_tables(%struct.mlx5e_priv* %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %43

29:                                               ; preds = %24
  %30 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %31 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %30, i32 0, i32 1
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @netdev_err(%struct.TYPE_8__* %32, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* @NETIF_F_NTUPLE, align 4
  %36 = xor i32 %35, -1
  %37 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %38 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %37, i32 0, i32 1
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, %36
  store i32 %42, i32* %40, align 4
  br label %43

43:                                               ; preds = %29, %24
  %44 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %45 = call i32 @mlx5e_set_ttc_basic_params(%struct.mlx5e_priv* %44, %struct.ttc_params* %4)
  %46 = call i32 @mlx5e_set_inner_ttc_ft_params(%struct.ttc_params* %4)
  store i32 0, i32* %5, align 4
  br label %47

47:                                               ; preds = %65, %43
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @MLX5E_NUM_INDIR_TIRS, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %68

51:                                               ; preds = %47
  %52 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %53 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %52, i32 0, i32 3
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = getelementptr inbounds %struct.ttc_params, %struct.ttc_params* %4, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %5, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  store i32 %59, i32* %64, align 4
  br label %65

65:                                               ; preds = %51
  %66 = load i32, i32* %5, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %5, align 4
  br label %47

68:                                               ; preds = %47
  %69 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %70 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %71 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = call i32 @mlx5e_create_inner_ttc_table(%struct.mlx5e_priv* %69, %struct.ttc_params* %4, i32* %72)
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* %6, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %68
  %77 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %78 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %77, i32 0, i32 1
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %78, align 8
  %80 = load i32, i32* %6, align 4
  %81 = call i32 @netdev_err(%struct.TYPE_8__* %79, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %80)
  br label %126

82:                                               ; preds = %68
  %83 = call i32 @mlx5e_set_ttc_ft_params(%struct.ttc_params* %4)
  store i32 0, i32* %5, align 4
  br label %84

84:                                               ; preds = %102, %82
  %85 = load i32, i32* %5, align 4
  %86 = load i32, i32* @MLX5E_NUM_INDIR_TIRS, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %105

88:                                               ; preds = %84
  %89 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %90 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %89, i32 0, i32 2
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %90, align 8
  %92 = load i32, i32* %5, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = getelementptr inbounds %struct.ttc_params, %struct.ttc_params* %4, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %5, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  store i32 %96, i32* %101, align 4
  br label %102

102:                                              ; preds = %88
  %103 = load i32, i32* %5, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %5, align 4
  br label %84

105:                                              ; preds = %84
  %106 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %107 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %108 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 1
  %110 = call i32 @mlx5e_create_ttc_table(%struct.mlx5e_priv* %106, %struct.ttc_params* %4, i32* %109)
  store i32 %110, i32* %6, align 4
  %111 = load i32, i32* %6, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %105
  %114 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %115 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %114, i32 0, i32 1
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %115, align 8
  %117 = load i32, i32* %6, align 4
  %118 = call i32 @netdev_err(%struct.TYPE_8__* %116, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %117)
  br label %120

119:                                              ; preds = %105
  store i32 0, i32* %2, align 4
  br label %130

120:                                              ; preds = %113
  %121 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %122 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %123 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 0
  %125 = call i32 @mlx5e_destroy_inner_ttc_table(%struct.mlx5e_priv* %121, i32* %124)
  br label %126

126:                                              ; preds = %120, %76
  %127 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %128 = call i32 @mlx5e_arfs_destroy_tables(%struct.mlx5e_priv* %127)
  %129 = load i32, i32* %6, align 4
  store i32 %129, i32* %2, align 4
  br label %130

130:                                              ; preds = %126, %119, %21
  %131 = load i32, i32* %2, align 4
  ret i32 %131
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @mlx5_get_flow_namespace(i32, i32) #2

declare dso_local i32 @mlx5e_arfs_create_tables(%struct.mlx5e_priv*) #2

declare dso_local i32 @netdev_err(%struct.TYPE_8__*, i8*, i32) #2

declare dso_local i32 @mlx5e_set_ttc_basic_params(%struct.mlx5e_priv*, %struct.ttc_params*) #2

declare dso_local i32 @mlx5e_set_inner_ttc_ft_params(%struct.ttc_params*) #2

declare dso_local i32 @mlx5e_create_inner_ttc_table(%struct.mlx5e_priv*, %struct.ttc_params*, i32*) #2

declare dso_local i32 @mlx5e_set_ttc_ft_params(%struct.ttc_params*) #2

declare dso_local i32 @mlx5e_create_ttc_table(%struct.mlx5e_priv*, %struct.ttc_params*, i32*) #2

declare dso_local i32 @mlx5e_destroy_inner_ttc_table(%struct.mlx5e_priv*, i32*) #2

declare dso_local i32 @mlx5e_arfs_destroy_tables(%struct.mlx5e_priv*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
