; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_fs_ethtool.c_mlx5e_set_rss_hash_opt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_fs_ethtool.c_mlx5e_set_rss_hash_opt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }
%struct.ethtool_rxnfc = type { i64, i32 }

@modify_tir_in = common dso_local global i32 0, align 4
@MLX5E_NUM_INDIR_TIRS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@TCP_V4_FLOW = common dso_local global i64 0, align 8
@TCP_V6_FLOW = common dso_local global i64 0, align 8
@UDP_V4_FLOW = common dso_local global i64 0, align 8
@UDP_V6_FLOW = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@RXH_IP_SRC = common dso_local global i32 0, align 4
@RXH_IP_DST = common dso_local global i32 0, align 4
@RXH_L4_B_0_1 = common dso_local global i32 0, align 4
@RXH_L4_B_2_3 = common dso_local global i32 0, align 4
@MLX5_HASH_FIELD_SEL_SRC_IP = common dso_local global i32 0, align 4
@MLX5_HASH_FIELD_SEL_DST_IP = common dso_local global i32 0, align 4
@MLX5_HASH_FIELD_SEL_L4_SPORT = common dso_local global i32 0, align 4
@MLX5_HASH_FIELD_SEL_L4_DPORT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5e_priv*, %struct.ethtool_rxnfc*)* @mlx5e_set_rss_hash_opt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_set_rss_hash_opt(%struct.mlx5e_priv* %0, %struct.ethtool_rxnfc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5e_priv*, align 8
  %5 = alloca %struct.ethtool_rxnfc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %4, align 8
  store %struct.ethtool_rxnfc* %1, %struct.ethtool_rxnfc** %5, align 8
  %10 = load i32, i32* @modify_tir_in, align 4
  %11 = call i32 @MLX5_ST_SZ_BYTES(i32 %10)
  store i32 %11, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %12 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %13 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @flow_type_to_traffic_type(i64 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @MLX5E_NUM_INDIR_TIRS, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %153

22:                                               ; preds = %2
  %23 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %24 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @TCP_V4_FLOW, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %49

28:                                               ; preds = %22
  %29 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %30 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @TCP_V6_FLOW, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %49

34:                                               ; preds = %28
  %35 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %36 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @UDP_V4_FLOW, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %49

40:                                               ; preds = %34
  %41 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %42 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @UDP_V6_FLOW, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load i32, i32* @EOPNOTSUPP, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %153

49:                                               ; preds = %40, %34, %28, %22
  %50 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %51 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @RXH_IP_SRC, align 4
  %54 = load i32, i32* @RXH_IP_DST, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @RXH_L4_B_0_1, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @RXH_L4_B_2_3, align 4
  %59 = or i32 %57, %58
  %60 = xor i32 %59, -1
  %61 = and i32 %52, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %49
  %64 = load i32, i32* @EOPNOTSUPP, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %3, align 4
  br label %153

66:                                               ; preds = %49
  %67 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %68 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @RXH_IP_SRC, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %66
  %74 = load i32, i32* @MLX5_HASH_FIELD_SEL_SRC_IP, align 4
  %75 = load i32, i32* %8, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %8, align 4
  br label %77

77:                                               ; preds = %73, %66
  %78 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %79 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @RXH_IP_DST, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %77
  %85 = load i32, i32* @MLX5_HASH_FIELD_SEL_DST_IP, align 4
  %86 = load i32, i32* %8, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %8, align 4
  br label %88

88:                                               ; preds = %84, %77
  %89 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %90 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @RXH_L4_B_0_1, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %88
  %96 = load i32, i32* @MLX5_HASH_FIELD_SEL_L4_SPORT, align 4
  %97 = load i32, i32* %8, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %8, align 4
  br label %99

99:                                               ; preds = %95, %88
  %100 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %101 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @RXH_L4_B_2_3, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %99
  %107 = load i32, i32* @MLX5_HASH_FIELD_SEL_L4_DPORT, align 4
  %108 = load i32, i32* %8, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %8, align 4
  br label %110

110:                                              ; preds = %106, %99
  %111 = load i32, i32* %6, align 4
  %112 = load i32, i32* @GFP_KERNEL, align 4
  %113 = call i8* @kvzalloc(i32 %111, i32 %112)
  store i8* %113, i8** %9, align 8
  %114 = load i8*, i8** %9, align 8
  %115 = icmp ne i8* %114, null
  br i1 %115, label %119, label %116

116:                                              ; preds = %110
  %117 = load i32, i32* @ENOMEM, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %3, align 4
  br label %153

119:                                              ; preds = %110
  %120 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %121 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %120, i32 0, i32 0
  %122 = call i32 @mutex_lock(i32* %121)
  %123 = load i32, i32* %8, align 4
  %124 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %125 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  %128 = load i32, i32* %7, align 4
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = icmp eq i32 %123, %131
  br i1 %132, label %133, label %134

133:                                              ; preds = %119
  br label %147

134:                                              ; preds = %119
  %135 = load i32, i32* %8, align 4
  %136 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %137 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 0
  %139 = load i32*, i32** %138, align 8
  %140 = load i32, i32* %7, align 4
  %141 = zext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %139, i64 %141
  store i32 %135, i32* %142, align 4
  %143 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %144 = load i8*, i8** %9, align 8
  %145 = load i32, i32* %6, align 4
  %146 = call i32 @mlx5e_modify_tirs_hash(%struct.mlx5e_priv* %143, i8* %144, i32 %145)
  br label %147

147:                                              ; preds = %134, %133
  %148 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %149 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %148, i32 0, i32 0
  %150 = call i32 @mutex_unlock(i32* %149)
  %151 = load i8*, i8** %9, align 8
  %152 = call i32 @kvfree(i8* %151)
  store i32 0, i32* %3, align 4
  br label %153

153:                                              ; preds = %147, %116, %63, %46, %19
  %154 = load i32, i32* %3, align 4
  ret i32 %154
}

declare dso_local i32 @MLX5_ST_SZ_BYTES(i32) #1

declare dso_local i32 @flow_type_to_traffic_type(i64) #1

declare dso_local i8* @kvzalloc(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mlx5e_modify_tirs_hash(%struct.mlx5e_priv*, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kvfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
