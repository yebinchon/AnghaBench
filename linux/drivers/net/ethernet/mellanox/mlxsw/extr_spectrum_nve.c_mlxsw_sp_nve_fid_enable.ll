; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_nve.c_mlxsw_sp_nve_fid_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_nve.c_mlxsw_sp_nve_fid_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { %struct.mlxsw_sp_nve* }
%struct.mlxsw_sp_nve = type { %struct.mlxsw_sp_nve_config, i64, %struct.mlxsw_sp_nve_ops** }
%struct.mlxsw_sp_nve_config = type { i32 }
%struct.mlxsw_sp_nve_ops = type { i32 (%struct.TYPE_4__*, i32, %struct.netlink_ext_ack*)*, i32 (%struct.mlxsw_sp_nve.0*, %struct.TYPE_4__*, %struct.mlxsw_sp_nve_config.1*)*, i32 (%struct.mlxsw_sp_nve.2*, %struct.TYPE_4__*, %struct.netlink_ext_ack*)* }
%struct.TYPE_4__ = type { i32 }
%struct.mlxsw_sp_nve.0 = type opaque
%struct.mlxsw_sp_nve_config.1 = type opaque
%struct.mlxsw_sp_nve.2 = type opaque
%struct.mlxsw_sp_fid = type { i32 }
%struct.mlxsw_sp_nve_params = type { i64, i32, %struct.TYPE_4__* }
%struct.netlink_ext_ack = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Conflicting NVE tunnels configuration\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Failed to initialize NVE tunnel\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Failed to set VNI on FID\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlxsw_sp_nve_fid_enable(%struct.mlxsw_sp* %0, %struct.mlxsw_sp_fid* %1, %struct.mlxsw_sp_nve_params* %2, %struct.netlink_ext_ack* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlxsw_sp*, align 8
  %7 = alloca %struct.mlxsw_sp_fid*, align 8
  %8 = alloca %struct.mlxsw_sp_nve_params*, align 8
  %9 = alloca %struct.netlink_ext_ack*, align 8
  %10 = alloca %struct.mlxsw_sp_nve*, align 8
  %11 = alloca %struct.mlxsw_sp_nve_ops*, align 8
  %12 = alloca %struct.mlxsw_sp_nve_config, align 4
  %13 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %6, align 8
  store %struct.mlxsw_sp_fid* %1, %struct.mlxsw_sp_fid** %7, align 8
  store %struct.mlxsw_sp_nve_params* %2, %struct.mlxsw_sp_nve_params** %8, align 8
  store %struct.netlink_ext_ack* %3, %struct.netlink_ext_ack** %9, align 8
  %14 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %15 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %14, i32 0, i32 0
  %16 = load %struct.mlxsw_sp_nve*, %struct.mlxsw_sp_nve** %15, align 8
  store %struct.mlxsw_sp_nve* %16, %struct.mlxsw_sp_nve** %10, align 8
  %17 = load %struct.mlxsw_sp_nve*, %struct.mlxsw_sp_nve** %10, align 8
  %18 = getelementptr inbounds %struct.mlxsw_sp_nve, %struct.mlxsw_sp_nve* %17, i32 0, i32 2
  %19 = load %struct.mlxsw_sp_nve_ops**, %struct.mlxsw_sp_nve_ops*** %18, align 8
  %20 = load %struct.mlxsw_sp_nve_params*, %struct.mlxsw_sp_nve_params** %8, align 8
  %21 = getelementptr inbounds %struct.mlxsw_sp_nve_params, %struct.mlxsw_sp_nve_params* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.mlxsw_sp_nve_ops*, %struct.mlxsw_sp_nve_ops** %19, i64 %22
  %24 = load %struct.mlxsw_sp_nve_ops*, %struct.mlxsw_sp_nve_ops** %23, align 8
  store %struct.mlxsw_sp_nve_ops* %24, %struct.mlxsw_sp_nve_ops** %11, align 8
  %25 = load %struct.mlxsw_sp_nve_ops*, %struct.mlxsw_sp_nve_ops** %11, align 8
  %26 = getelementptr inbounds %struct.mlxsw_sp_nve_ops, %struct.mlxsw_sp_nve_ops* %25, i32 0, i32 2
  %27 = load i32 (%struct.mlxsw_sp_nve.2*, %struct.TYPE_4__*, %struct.netlink_ext_ack*)*, i32 (%struct.mlxsw_sp_nve.2*, %struct.TYPE_4__*, %struct.netlink_ext_ack*)** %26, align 8
  %28 = load %struct.mlxsw_sp_nve*, %struct.mlxsw_sp_nve** %10, align 8
  %29 = bitcast %struct.mlxsw_sp_nve* %28 to %struct.mlxsw_sp_nve.2*
  %30 = load %struct.mlxsw_sp_nve_params*, %struct.mlxsw_sp_nve_params** %8, align 8
  %31 = getelementptr inbounds %struct.mlxsw_sp_nve_params, %struct.mlxsw_sp_nve_params* %30, i32 0, i32 2
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %34 = call i32 %27(%struct.mlxsw_sp_nve.2* %29, %struct.TYPE_4__* %32, %struct.netlink_ext_ack* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %4
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %5, align 4
  br label %120

39:                                               ; preds = %4
  %40 = call i32 @memset(%struct.mlxsw_sp_nve_config* %12, i32 0, i32 4)
  %41 = load %struct.mlxsw_sp_nve_ops*, %struct.mlxsw_sp_nve_ops** %11, align 8
  %42 = getelementptr inbounds %struct.mlxsw_sp_nve_ops, %struct.mlxsw_sp_nve_ops* %41, i32 0, i32 1
  %43 = load i32 (%struct.mlxsw_sp_nve.0*, %struct.TYPE_4__*, %struct.mlxsw_sp_nve_config.1*)*, i32 (%struct.mlxsw_sp_nve.0*, %struct.TYPE_4__*, %struct.mlxsw_sp_nve_config.1*)** %42, align 8
  %44 = load %struct.mlxsw_sp_nve*, %struct.mlxsw_sp_nve** %10, align 8
  %45 = bitcast %struct.mlxsw_sp_nve* %44 to %struct.mlxsw_sp_nve.0*
  %46 = load %struct.mlxsw_sp_nve_params*, %struct.mlxsw_sp_nve_params** %8, align 8
  %47 = getelementptr inbounds %struct.mlxsw_sp_nve_params, %struct.mlxsw_sp_nve_params* %46, i32 0, i32 2
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = bitcast %struct.mlxsw_sp_nve_config* %12 to %struct.mlxsw_sp_nve_config.1*
  %50 = call i32 %43(%struct.mlxsw_sp_nve.0* %45, %struct.TYPE_4__* %48, %struct.mlxsw_sp_nve_config.1* %49)
  %51 = load %struct.mlxsw_sp_nve*, %struct.mlxsw_sp_nve** %10, align 8
  %52 = getelementptr inbounds %struct.mlxsw_sp_nve, %struct.mlxsw_sp_nve* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %65

55:                                               ; preds = %39
  %56 = load %struct.mlxsw_sp_nve*, %struct.mlxsw_sp_nve** %10, align 8
  %57 = getelementptr inbounds %struct.mlxsw_sp_nve, %struct.mlxsw_sp_nve* %56, i32 0, i32 0
  %58 = call i64 @memcmp(%struct.mlxsw_sp_nve_config* %12, %struct.mlxsw_sp_nve_config* %57, i32 4)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %55
  %61 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %62 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %61, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %5, align 4
  br label %120

65:                                               ; preds = %55, %39
  %66 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %67 = call i32 @mlxsw_sp_nve_tunnel_init(%struct.mlxsw_sp* %66, %struct.mlxsw_sp_nve_config* %12)
  store i32 %67, i32* %13, align 4
  %68 = load i32, i32* %13, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %65
  %71 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %72 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %71, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %73 = load i32, i32* %13, align 4
  store i32 %73, i32* %5, align 4
  br label %120

74:                                               ; preds = %65
  %75 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %7, align 8
  %76 = load %struct.mlxsw_sp_nve_params*, %struct.mlxsw_sp_nve_params** %8, align 8
  %77 = getelementptr inbounds %struct.mlxsw_sp_nve_params, %struct.mlxsw_sp_nve_params* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.mlxsw_sp_nve_params*, %struct.mlxsw_sp_nve_params** %8, align 8
  %80 = getelementptr inbounds %struct.mlxsw_sp_nve_params, %struct.mlxsw_sp_nve_params* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.mlxsw_sp_nve_params*, %struct.mlxsw_sp_nve_params** %8, align 8
  %83 = getelementptr inbounds %struct.mlxsw_sp_nve_params, %struct.mlxsw_sp_nve_params* %82, i32 0, i32 2
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @mlxsw_sp_fid_vni_set(%struct.mlxsw_sp_fid* %75, i64 %78, i32 %81, i32 %86)
  store i32 %87, i32* %13, align 4
  %88 = load i32, i32* %13, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %74
  %91 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %92 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %91, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %116

93:                                               ; preds = %74
  %94 = load %struct.mlxsw_sp_nve*, %struct.mlxsw_sp_nve** %10, align 8
  %95 = getelementptr inbounds %struct.mlxsw_sp_nve, %struct.mlxsw_sp_nve* %94, i32 0, i32 0
  %96 = bitcast %struct.mlxsw_sp_nve_config* %95 to i8*
  %97 = bitcast %struct.mlxsw_sp_nve_config* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %96, i8* align 4 %97, i64 4, i1 false)
  %98 = load %struct.mlxsw_sp_nve_ops*, %struct.mlxsw_sp_nve_ops** %11, align 8
  %99 = getelementptr inbounds %struct.mlxsw_sp_nve_ops, %struct.mlxsw_sp_nve_ops* %98, i32 0, i32 0
  %100 = load i32 (%struct.TYPE_4__*, i32, %struct.netlink_ext_ack*)*, i32 (%struct.TYPE_4__*, i32, %struct.netlink_ext_ack*)** %99, align 8
  %101 = load %struct.mlxsw_sp_nve_params*, %struct.mlxsw_sp_nve_params** %8, align 8
  %102 = getelementptr inbounds %struct.mlxsw_sp_nve_params, %struct.mlxsw_sp_nve_params* %101, i32 0, i32 2
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %102, align 8
  %104 = load %struct.mlxsw_sp_nve_params*, %struct.mlxsw_sp_nve_params** %8, align 8
  %105 = getelementptr inbounds %struct.mlxsw_sp_nve_params, %struct.mlxsw_sp_nve_params* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %108 = call i32 %100(%struct.TYPE_4__* %103, i32 %106, %struct.netlink_ext_ack* %107)
  store i32 %108, i32* %13, align 4
  %109 = load i32, i32* %13, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %93
  br label %113

112:                                              ; preds = %93
  store i32 0, i32* %5, align 4
  br label %120

113:                                              ; preds = %111
  %114 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %7, align 8
  %115 = call i32 @mlxsw_sp_fid_vni_clear(%struct.mlxsw_sp_fid* %114)
  br label %116

116:                                              ; preds = %113, %90
  %117 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %118 = call i32 @mlxsw_sp_nve_tunnel_fini(%struct.mlxsw_sp* %117)
  %119 = load i32, i32* %13, align 4
  store i32 %119, i32* %5, align 4
  br label %120

120:                                              ; preds = %116, %112, %70, %60, %36
  %121 = load i32, i32* %5, align 4
  ret i32 %121
}

declare dso_local i32 @memset(%struct.mlxsw_sp_nve_config*, i32, i32) #1

declare dso_local i64 @memcmp(%struct.mlxsw_sp_nve_config*, %struct.mlxsw_sp_nve_config*, i32) #1

declare dso_local i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack*, i8*) #1

declare dso_local i32 @mlxsw_sp_nve_tunnel_init(%struct.mlxsw_sp*, %struct.mlxsw_sp_nve_config*) #1

declare dso_local i32 @mlxsw_sp_fid_vni_set(%struct.mlxsw_sp_fid*, i64, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mlxsw_sp_fid_vni_clear(%struct.mlxsw_sp_fid*) #1

declare dso_local i32 @mlxsw_sp_nve_tunnel_fini(%struct.mlxsw_sp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
