; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eswitch_offloads.c_mlx5_eswitch_set_rule_source_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eswitch_offloads.c_mlx5_eswitch_set_rule_source_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_eswitch = type { i32 }
%struct.mlx5_flow_spec = type { %struct.TYPE_7__, i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.mlx5_esw_flow_attr = type { %struct.TYPE_6__*, %struct.TYPE_8__* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_8__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@fte_match_param = common dso_local global i32 0, align 4
@misc_parameters_2 = common dso_local global i32 0, align 4
@fte_match_set_misc2 = common dso_local global i32 0, align 4
@metadata_reg_c_0 = common dso_local global i32 0, align 4
@MLX5_MATCH_MISC_PARAMETERS_2 = common dso_local global i32 0, align 4
@misc_parameters = common dso_local global i32 0, align 4
@fte_match_set_misc = common dso_local global i32 0, align 4
@MLX5_MATCH_MISC_PARAMETERS = common dso_local global i32 0, align 4
@source_port = common dso_local global i32 0, align 4
@merged_eswitch = common dso_local global i32 0, align 4
@source_eswitch_owner_vhca_id = common dso_local global i32 0, align 4
@vhca_id = common dso_local global i32 0, align 4
@flow_source = common dso_local global i32 0, align 4
@MLX5_VPORT_UPLINK = common dso_local global i64 0, align 8
@MLX5_FLOW_CONTEXT_FLOW_SOURCE_UPLINK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_eswitch*, %struct.mlx5_flow_spec*, %struct.mlx5_esw_flow_attr*)* @mlx5_eswitch_set_rule_source_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5_eswitch_set_rule_source_port(%struct.mlx5_eswitch* %0, %struct.mlx5_flow_spec* %1, %struct.mlx5_esw_flow_attr* %2) #0 {
  %4 = alloca %struct.mlx5_eswitch*, align 8
  %5 = alloca %struct.mlx5_flow_spec*, align 8
  %6 = alloca %struct.mlx5_esw_flow_attr*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.mlx5_eswitch* %0, %struct.mlx5_eswitch** %4, align 8
  store %struct.mlx5_flow_spec* %1, %struct.mlx5_flow_spec** %5, align 8
  store %struct.mlx5_esw_flow_attr* %2, %struct.mlx5_esw_flow_attr** %6, align 8
  %9 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %4, align 8
  %10 = call i64 @mlx5_eswitch_vport_match_metadata_enabled(%struct.mlx5_eswitch* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %68

12:                                               ; preds = %3
  %13 = load i32, i32* @fte_match_param, align 4
  %14 = load %struct.mlx5_flow_spec*, %struct.mlx5_flow_spec** %5, align 8
  %15 = getelementptr inbounds %struct.mlx5_flow_spec, %struct.mlx5_flow_spec* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @misc_parameters_2, align 4
  %18 = call i8* @MLX5_ADDR_OF(i32 %13, i32 %16, i32 %17)
  store i8* %18, i8** %7, align 8
  %19 = load i32, i32* @fte_match_set_misc2, align 4
  %20 = load i8*, i8** %7, align 8
  %21 = load i32, i32* @metadata_reg_c_0, align 4
  %22 = load %struct.mlx5_esw_flow_attr*, %struct.mlx5_esw_flow_attr** %6, align 8
  %23 = getelementptr inbounds %struct.mlx5_esw_flow_attr, %struct.mlx5_esw_flow_attr* %22, i32 0, i32 1
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.mlx5_esw_flow_attr*, %struct.mlx5_esw_flow_attr** %6, align 8
  %29 = getelementptr inbounds %struct.mlx5_esw_flow_attr, %struct.mlx5_esw_flow_attr* %28, i32 0, i32 0
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i64 @mlx5_eswitch_get_vport_metadata_for_match(i32 %27, i64 %32)
  %34 = call i32 @MLX5_SET(i32 %19, i8* %20, i32 %21, i64 %33)
  %35 = load i32, i32* @fte_match_param, align 4
  %36 = load %struct.mlx5_flow_spec*, %struct.mlx5_flow_spec** %5, align 8
  %37 = getelementptr inbounds %struct.mlx5_flow_spec, %struct.mlx5_flow_spec* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @misc_parameters_2, align 4
  %40 = call i8* @MLX5_ADDR_OF(i32 %35, i32 %38, i32 %39)
  store i8* %40, i8** %7, align 8
  %41 = load i32, i32* @fte_match_set_misc2, align 4
  %42 = load i8*, i8** %7, align 8
  %43 = load i32, i32* @metadata_reg_c_0, align 4
  %44 = call i32 @MLX5_SET_TO_ONES(i32 %41, i8* %42, i32 %43)
  %45 = load i32, i32* @MLX5_MATCH_MISC_PARAMETERS_2, align 4
  %46 = load %struct.mlx5_flow_spec*, %struct.mlx5_flow_spec** %5, align 8
  %47 = getelementptr inbounds %struct.mlx5_flow_spec, %struct.mlx5_flow_spec* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 4
  %50 = load i32, i32* @fte_match_param, align 4
  %51 = load %struct.mlx5_flow_spec*, %struct.mlx5_flow_spec** %5, align 8
  %52 = getelementptr inbounds %struct.mlx5_flow_spec, %struct.mlx5_flow_spec* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @misc_parameters, align 4
  %55 = call i8* @MLX5_ADDR_OF(i32 %50, i32 %53, i32 %54)
  store i8* %55, i8** %8, align 8
  %56 = load i8*, i8** %8, align 8
  %57 = load i32, i32* @fte_match_set_misc, align 4
  %58 = call i32 @MLX5_ST_SZ_BYTES(i32 %57)
  %59 = call i64 @memchr_inv(i8* %56, i32 0, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %12
  %62 = load i32, i32* @MLX5_MATCH_MISC_PARAMETERS, align 4
  %63 = load %struct.mlx5_flow_spec*, %struct.mlx5_flow_spec** %5, align 8
  %64 = getelementptr inbounds %struct.mlx5_flow_spec, %struct.mlx5_flow_spec* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %65, %62
  store i32 %66, i32* %64, align 4
  br label %67

67:                                               ; preds = %61, %12
  br label %128

68:                                               ; preds = %3
  %69 = load i32, i32* @fte_match_param, align 4
  %70 = load %struct.mlx5_flow_spec*, %struct.mlx5_flow_spec** %5, align 8
  %71 = getelementptr inbounds %struct.mlx5_flow_spec, %struct.mlx5_flow_spec* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @misc_parameters, align 4
  %74 = call i8* @MLX5_ADDR_OF(i32 %69, i32 %72, i32 %73)
  store i8* %74, i8** %8, align 8
  %75 = load i32, i32* @fte_match_set_misc, align 4
  %76 = load i8*, i8** %8, align 8
  %77 = load i32, i32* @source_port, align 4
  %78 = load %struct.mlx5_esw_flow_attr*, %struct.mlx5_esw_flow_attr** %6, align 8
  %79 = getelementptr inbounds %struct.mlx5_esw_flow_attr, %struct.mlx5_esw_flow_attr* %78, i32 0, i32 0
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = call i32 @MLX5_SET(i32 %75, i8* %76, i32 %77, i64 %82)
  %84 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %4, align 8
  %85 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @merged_eswitch, align 4
  %88 = call i64 @MLX5_CAP_ESW(i32 %86, i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %100

90:                                               ; preds = %68
  %91 = load i32, i32* @fte_match_set_misc, align 4
  %92 = load i8*, i8** %8, align 8
  %93 = load i32, i32* @source_eswitch_owner_vhca_id, align 4
  %94 = load %struct.mlx5_esw_flow_attr*, %struct.mlx5_esw_flow_attr** %6, align 8
  %95 = getelementptr inbounds %struct.mlx5_esw_flow_attr, %struct.mlx5_esw_flow_attr* %94, i32 0, i32 1
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %95, align 8
  %97 = load i32, i32* @vhca_id, align 4
  %98 = call i64 @MLX5_CAP_GEN(%struct.TYPE_8__* %96, i32 %97)
  %99 = call i32 @MLX5_SET(i32 %91, i8* %92, i32 %93, i64 %98)
  br label %100

100:                                              ; preds = %90, %68
  %101 = load i32, i32* @fte_match_param, align 4
  %102 = load %struct.mlx5_flow_spec*, %struct.mlx5_flow_spec** %5, align 8
  %103 = getelementptr inbounds %struct.mlx5_flow_spec, %struct.mlx5_flow_spec* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @misc_parameters, align 4
  %106 = call i8* @MLX5_ADDR_OF(i32 %101, i32 %104, i32 %105)
  store i8* %106, i8** %8, align 8
  %107 = load i32, i32* @fte_match_set_misc, align 4
  %108 = load i8*, i8** %8, align 8
  %109 = load i32, i32* @source_port, align 4
  %110 = call i32 @MLX5_SET_TO_ONES(i32 %107, i8* %108, i32 %109)
  %111 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %4, align 8
  %112 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @merged_eswitch, align 4
  %115 = call i64 @MLX5_CAP_ESW(i32 %113, i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %100
  %118 = load i32, i32* @fte_match_set_misc, align 4
  %119 = load i8*, i8** %8, align 8
  %120 = load i32, i32* @source_eswitch_owner_vhca_id, align 4
  %121 = call i32 @MLX5_SET_TO_ONES(i32 %118, i8* %119, i32 %120)
  br label %122

122:                                              ; preds = %117, %100
  %123 = load i32, i32* @MLX5_MATCH_MISC_PARAMETERS, align 4
  %124 = load %struct.mlx5_flow_spec*, %struct.mlx5_flow_spec** %5, align 8
  %125 = getelementptr inbounds %struct.mlx5_flow_spec, %struct.mlx5_flow_spec* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = or i32 %126, %123
  store i32 %127, i32* %125, align 4
  br label %128

128:                                              ; preds = %122, %67
  %129 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %4, align 8
  %130 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @flow_source, align 4
  %133 = call i64 @MLX5_CAP_ESW_FLOWTABLE(i32 %131, i32 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %148

135:                                              ; preds = %128
  %136 = load %struct.mlx5_esw_flow_attr*, %struct.mlx5_esw_flow_attr** %6, align 8
  %137 = getelementptr inbounds %struct.mlx5_esw_flow_attr, %struct.mlx5_esw_flow_attr* %136, i32 0, i32 0
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @MLX5_VPORT_UPLINK, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %148

143:                                              ; preds = %135
  %144 = load i32, i32* @MLX5_FLOW_CONTEXT_FLOW_SOURCE_UPLINK, align 4
  %145 = load %struct.mlx5_flow_spec*, %struct.mlx5_flow_spec** %5, align 8
  %146 = getelementptr inbounds %struct.mlx5_flow_spec, %struct.mlx5_flow_spec* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 0
  store i32 %144, i32* %147, align 4
  br label %148

148:                                              ; preds = %143, %135, %128
  ret void
}

declare dso_local i64 @mlx5_eswitch_vport_match_metadata_enabled(%struct.mlx5_eswitch*) #1

declare dso_local i8* @MLX5_ADDR_OF(i32, i32, i32) #1

declare dso_local i32 @MLX5_SET(i32, i8*, i32, i64) #1

declare dso_local i64 @mlx5_eswitch_get_vport_metadata_for_match(i32, i64) #1

declare dso_local i32 @MLX5_SET_TO_ONES(i32, i8*, i32) #1

declare dso_local i64 @memchr_inv(i8*, i32, i32) #1

declare dso_local i32 @MLX5_ST_SZ_BYTES(i32) #1

declare dso_local i64 @MLX5_CAP_ESW(i32, i32) #1

declare dso_local i64 @MLX5_CAP_GEN(%struct.TYPE_8__*, i32) #1

declare dso_local i64 @MLX5_CAP_ESW_FLOWTABLE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
