; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_fs.c_mlx5e_generate_ttc_table_rules.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_fs.c_mlx5e_generate_ttc_table_rules.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.mlx5e_priv = type { i32 }
%struct.ttc_params = type { %struct.TYPE_8__*, i32*, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.mlx5e_ttc_table = type { %struct.mlx5_flow_handle**, %struct.mlx5_flow_handle**, %struct.TYPE_6__ }
%struct.mlx5_flow_handle = type { i32 }
%struct.TYPE_6__ = type { %struct.mlx5_flow_table* }
%struct.mlx5_flow_table = type { i32 }
%struct.mlx5_flow_destination = type { i32, i32, i32 }

@MLX5_FLOW_DESTINATION_TYPE_TIR = common dso_local global i32 0, align 4
@MLX5E_NUM_TT = common dso_local global i32 0, align 4
@MLX5E_TT_ANY = common dso_local global i32 0, align 4
@ttc_rules = common dso_local global %struct.TYPE_10__* null, align 8
@MLX5_FLOW_DESTINATION_TYPE_FLOW_TABLE = common dso_local global i32 0, align 4
@MLX5E_NUM_TUNNEL_TT = common dso_local global i32 0, align 4
@ttc_tunnel_rules = common dso_local global %struct.TYPE_9__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5e_priv*, %struct.ttc_params*, %struct.mlx5e_ttc_table*)* @mlx5e_generate_ttc_table_rules to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_generate_ttc_table_rules(%struct.mlx5e_priv* %0, %struct.ttc_params* %1, %struct.mlx5e_ttc_table* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5e_priv*, align 8
  %6 = alloca %struct.ttc_params*, align 8
  %7 = alloca %struct.mlx5e_ttc_table*, align 8
  %8 = alloca %struct.mlx5_flow_destination, align 4
  %9 = alloca %struct.mlx5_flow_handle**, align 8
  %10 = alloca %struct.mlx5_flow_table*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %5, align 8
  store %struct.ttc_params* %1, %struct.ttc_params** %6, align 8
  store %struct.mlx5e_ttc_table* %2, %struct.mlx5e_ttc_table** %7, align 8
  %13 = bitcast %struct.mlx5_flow_destination* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %13, i8 0, i64 12, i1 false)
  %14 = load %struct.mlx5e_ttc_table*, %struct.mlx5e_ttc_table** %7, align 8
  %15 = getelementptr inbounds %struct.mlx5e_ttc_table, %struct.mlx5e_ttc_table* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %16, align 8
  store %struct.mlx5_flow_table* %17, %struct.mlx5_flow_table** %10, align 8
  %18 = load %struct.mlx5e_ttc_table*, %struct.mlx5e_ttc_table** %7, align 8
  %19 = getelementptr inbounds %struct.mlx5e_ttc_table, %struct.mlx5e_ttc_table* %18, i32 0, i32 1
  %20 = load %struct.mlx5_flow_handle**, %struct.mlx5_flow_handle*** %19, align 8
  store %struct.mlx5_flow_handle** %20, %struct.mlx5_flow_handle*** %9, align 8
  %21 = load i32, i32* @MLX5_FLOW_DESTINATION_TYPE_TIR, align 4
  %22 = getelementptr inbounds %struct.mlx5_flow_destination, %struct.mlx5_flow_destination* %8, i32 0, i32 1
  store i32 %21, i32* %22, align 4
  store i32 0, i32* %11, align 4
  br label %23

23:                                               ; preds = %74, %3
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* @MLX5E_NUM_TT, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %77

27:                                               ; preds = %23
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* @MLX5E_TT_ANY, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %27
  %32 = load %struct.ttc_params*, %struct.ttc_params** %6, align 8
  %33 = getelementptr inbounds %struct.ttc_params, %struct.ttc_params* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = getelementptr inbounds %struct.mlx5_flow_destination, %struct.mlx5_flow_destination* %8, i32 0, i32 2
  store i32 %34, i32* %35, align 4
  br label %45

36:                                               ; preds = %27
  %37 = load %struct.ttc_params*, %struct.ttc_params** %6, align 8
  %38 = getelementptr inbounds %struct.ttc_params, %struct.ttc_params* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %11, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds %struct.mlx5_flow_destination, %struct.mlx5_flow_destination* %8, i32 0, i32 2
  store i32 %43, i32* %44, align 4
  br label %45

45:                                               ; preds = %36, %31
  %46 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %47 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %10, align 8
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** @ttc_rules, align 8
  %49 = load i32, i32* %11, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** @ttc_rules, align 8
  %55 = load i32, i32* %11, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call %struct.mlx5_flow_handle* @mlx5e_generate_ttc_rule(%struct.mlx5e_priv* %46, %struct.mlx5_flow_table* %47, %struct.mlx5_flow_destination* %8, i32 %53, i32 %59)
  %61 = load %struct.mlx5_flow_handle**, %struct.mlx5_flow_handle*** %9, align 8
  %62 = load i32, i32* %11, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.mlx5_flow_handle*, %struct.mlx5_flow_handle** %61, i64 %63
  store %struct.mlx5_flow_handle* %60, %struct.mlx5_flow_handle** %64, align 8
  %65 = load %struct.mlx5_flow_handle**, %struct.mlx5_flow_handle*** %9, align 8
  %66 = load i32, i32* %11, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.mlx5_flow_handle*, %struct.mlx5_flow_handle** %65, i64 %67
  %69 = load %struct.mlx5_flow_handle*, %struct.mlx5_flow_handle** %68, align 8
  %70 = call i64 @IS_ERR(%struct.mlx5_flow_handle* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %45
  br label %152

73:                                               ; preds = %45
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %11, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %11, align 4
  br label %23

77:                                               ; preds = %23
  %78 = load %struct.ttc_params*, %struct.ttc_params** %6, align 8
  %79 = getelementptr inbounds %struct.ttc_params, %struct.ttc_params* %78, i32 0, i32 0
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %79, align 8
  %81 = icmp ne %struct.TYPE_8__* %80, null
  br i1 %81, label %82, label %88

82:                                               ; preds = %77
  %83 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %84 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @mlx5e_tunnel_inner_ft_supported(i32 %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %82, %77
  store i32 0, i32* %4, align 4
  br label %166

89:                                               ; preds = %82
  %90 = load %struct.mlx5e_ttc_table*, %struct.mlx5e_ttc_table** %7, align 8
  %91 = getelementptr inbounds %struct.mlx5e_ttc_table, %struct.mlx5e_ttc_table* %90, i32 0, i32 0
  %92 = load %struct.mlx5_flow_handle**, %struct.mlx5_flow_handle*** %91, align 8
  store %struct.mlx5_flow_handle** %92, %struct.mlx5_flow_handle*** %9, align 8
  %93 = load i32, i32* @MLX5_FLOW_DESTINATION_TYPE_FLOW_TABLE, align 4
  %94 = getelementptr inbounds %struct.mlx5_flow_destination, %struct.mlx5_flow_destination* %8, i32 0, i32 1
  store i32 %93, i32* %94, align 4
  %95 = load %struct.ttc_params*, %struct.ttc_params** %6, align 8
  %96 = getelementptr inbounds %struct.ttc_params, %struct.ttc_params* %95, i32 0, i32 0
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = getelementptr inbounds %struct.mlx5_flow_destination, %struct.mlx5_flow_destination* %8, i32 0, i32 0
  store i32 %100, i32* %101, align 4
  store i32 0, i32* %11, align 4
  br label %102

102:                                              ; preds = %148, %89
  %103 = load i32, i32* %11, align 4
  %104 = load i32, i32* @MLX5E_NUM_TUNNEL_TT, align 4
  %105 = icmp slt i32 %103, %104
  br i1 %105, label %106, label %151

106:                                              ; preds = %102
  %107 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %108 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** @ttc_tunnel_rules, align 8
  %111 = load i32, i32* %11, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @mlx5e_tunnel_proto_supported(i32 %109, i32 %115)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %119, label %118

118:                                              ; preds = %106
  br label %148

119:                                              ; preds = %106
  %120 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %121 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %10, align 8
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** @ttc_tunnel_rules, align 8
  %123 = load i32, i32* %11, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** @ttc_tunnel_rules, align 8
  %129 = load i32, i32* %11, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = call %struct.mlx5_flow_handle* @mlx5e_generate_ttc_rule(%struct.mlx5e_priv* %120, %struct.mlx5_flow_table* %121, %struct.mlx5_flow_destination* %8, i32 %127, i32 %133)
  %135 = load %struct.mlx5_flow_handle**, %struct.mlx5_flow_handle*** %9, align 8
  %136 = load i32, i32* %11, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.mlx5_flow_handle*, %struct.mlx5_flow_handle** %135, i64 %137
  store %struct.mlx5_flow_handle* %134, %struct.mlx5_flow_handle** %138, align 8
  %139 = load %struct.mlx5_flow_handle**, %struct.mlx5_flow_handle*** %9, align 8
  %140 = load i32, i32* %11, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.mlx5_flow_handle*, %struct.mlx5_flow_handle** %139, i64 %141
  %143 = load %struct.mlx5_flow_handle*, %struct.mlx5_flow_handle** %142, align 8
  %144 = call i64 @IS_ERR(%struct.mlx5_flow_handle* %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %119
  br label %152

147:                                              ; preds = %119
  br label %148

148:                                              ; preds = %147, %118
  %149 = load i32, i32* %11, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %11, align 4
  br label %102

151:                                              ; preds = %102
  store i32 0, i32* %4, align 4
  br label %166

152:                                              ; preds = %146, %72
  %153 = load %struct.mlx5_flow_handle**, %struct.mlx5_flow_handle*** %9, align 8
  %154 = load i32, i32* %11, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.mlx5_flow_handle*, %struct.mlx5_flow_handle** %153, i64 %155
  %157 = load %struct.mlx5_flow_handle*, %struct.mlx5_flow_handle** %156, align 8
  %158 = call i32 @PTR_ERR(%struct.mlx5_flow_handle* %157)
  store i32 %158, i32* %12, align 4
  %159 = load %struct.mlx5_flow_handle**, %struct.mlx5_flow_handle*** %9, align 8
  %160 = load i32, i32* %11, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.mlx5_flow_handle*, %struct.mlx5_flow_handle** %159, i64 %161
  store %struct.mlx5_flow_handle* null, %struct.mlx5_flow_handle** %162, align 8
  %163 = load %struct.mlx5e_ttc_table*, %struct.mlx5e_ttc_table** %7, align 8
  %164 = call i32 @mlx5e_cleanup_ttc_rules(%struct.mlx5e_ttc_table* %163)
  %165 = load i32, i32* %12, align 4
  store i32 %165, i32* %4, align 4
  br label %166

166:                                              ; preds = %152, %151, %88
  %167 = load i32, i32* %4, align 4
  ret i32 %167
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.mlx5_flow_handle* @mlx5e_generate_ttc_rule(%struct.mlx5e_priv*, %struct.mlx5_flow_table*, %struct.mlx5_flow_destination*, i32, i32) #2

declare dso_local i64 @IS_ERR(%struct.mlx5_flow_handle*) #2

declare dso_local i32 @mlx5e_tunnel_inner_ft_supported(i32) #2

declare dso_local i32 @mlx5e_tunnel_proto_supported(i32, i32) #2

declare dso_local i32 @PTR_ERR(%struct.mlx5_flow_handle*) #2

declare dso_local i32 @mlx5e_cleanup_ttc_rules(%struct.mlx5e_ttc_table*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
