; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_lag.c_mlx5_do_bond.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_lag.c_mlx5_do_bond.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_lag = type { %struct.lag_tracker, %struct.TYPE_4__* }
%struct.lag_tracker = type { i64 }
%struct.TYPE_4__ = type { %struct.mlx5_core_dev* }
%struct.mlx5_core_dev = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }

@lag_mutex = common dso_local global i32 0, align 4
@MLX5_LAG_FLAG_ROCE = common dso_local global i32 0, align 4
@MLX5_LAG_FLAG_SRIOV = common dso_local global i32 0, align 4
@MLX5_INTERFACE_PROTOCOL_IB = common dso_local global i32 0, align 4
@MLX5_ESWITCH_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_lag*)* @mlx5_do_bond to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5_do_bond(%struct.mlx5_lag* %0) #0 {
  %2 = alloca %struct.mlx5_lag*, align 8
  %3 = alloca %struct.mlx5_core_dev*, align 8
  %4 = alloca %struct.mlx5_core_dev*, align 8
  %5 = alloca %struct.lag_tracker, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mlx5_lag* %0, %struct.mlx5_lag** %2, align 8
  %9 = load %struct.mlx5_lag*, %struct.mlx5_lag** %2, align 8
  %10 = getelementptr inbounds %struct.mlx5_lag, %struct.mlx5_lag* %9, i32 0, i32 1
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i64 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %13, align 8
  store %struct.mlx5_core_dev* %14, %struct.mlx5_core_dev** %3, align 8
  %15 = load %struct.mlx5_lag*, %struct.mlx5_lag** %2, align 8
  %16 = getelementptr inbounds %struct.mlx5_lag, %struct.mlx5_lag* %15, i32 0, i32 1
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i64 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %19, align 8
  store %struct.mlx5_core_dev* %20, %struct.mlx5_core_dev** %4, align 8
  %21 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %22 = icmp ne %struct.mlx5_core_dev* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %1
  %24 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %25 = icmp ne %struct.mlx5_core_dev* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %23, %1
  br label %140

27:                                               ; preds = %23
  %28 = call i32 @mutex_lock(i32* @lag_mutex)
  %29 = load %struct.mlx5_lag*, %struct.mlx5_lag** %2, align 8
  %30 = getelementptr inbounds %struct.mlx5_lag, %struct.mlx5_lag* %29, i32 0, i32 0
  %31 = bitcast %struct.lag_tracker* %5 to i8*
  %32 = bitcast %struct.lag_tracker* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %31, i8* align 8 %32, i64 8, i1 false)
  %33 = call i32 @mutex_unlock(i32* @lag_mutex)
  %34 = getelementptr inbounds %struct.lag_tracker, %struct.lag_tracker* %5, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %27
  %38 = load %struct.mlx5_lag*, %struct.mlx5_lag** %2, align 8
  %39 = call i64 @mlx5_lag_check_prereq(%struct.mlx5_lag* %38)
  %40 = icmp ne i64 %39, 0
  br label %41

41:                                               ; preds = %37, %27
  %42 = phi i1 [ false, %27 ], [ %40, %37 ]
  %43 = zext i1 %42 to i32
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %97

46:                                               ; preds = %41
  %47 = load %struct.mlx5_lag*, %struct.mlx5_lag** %2, align 8
  %48 = call i64 @__mlx5_lag_is_active(%struct.mlx5_lag* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %97, label %50

50:                                               ; preds = %46
  %51 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %52 = call i32 @mlx5_sriov_is_enabled(%struct.mlx5_core_dev* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %50
  %55 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %56 = call i32 @mlx5_sriov_is_enabled(%struct.mlx5_core_dev* %55)
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  br label %59

59:                                               ; preds = %54, %50
  %60 = phi i1 [ false, %50 ], [ %58, %54 ]
  %61 = zext i1 %60 to i32
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %7, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %59
  %65 = load %struct.mlx5_lag*, %struct.mlx5_lag** %2, align 8
  %66 = call i32 @mlx5_lag_remove_ib_devices(%struct.mlx5_lag* %65)
  br label %67

67:                                               ; preds = %64, %59
  %68 = load %struct.mlx5_lag*, %struct.mlx5_lag** %2, align 8
  %69 = load i32, i32* %7, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %67
  %72 = load i32, i32* @MLX5_LAG_FLAG_ROCE, align 4
  br label %75

73:                                               ; preds = %67
  %74 = load i32, i32* @MLX5_LAG_FLAG_SRIOV, align 4
  br label %75

75:                                               ; preds = %73, %71
  %76 = phi i32 [ %72, %71 ], [ %74, %73 ]
  %77 = call i32 @mlx5_activate_lag(%struct.mlx5_lag* %68, %struct.lag_tracker* %5, i32 %76)
  store i32 %77, i32* %8, align 4
  %78 = load i32, i32* %8, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %75
  %81 = load i32, i32* %7, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %80
  %84 = load %struct.mlx5_lag*, %struct.mlx5_lag** %2, align 8
  %85 = call i32 @mlx5_lag_add_ib_devices(%struct.mlx5_lag* %84)
  br label %86

86:                                               ; preds = %83, %80
  br label %140

87:                                               ; preds = %75
  %88 = load i32, i32* %7, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %87
  %91 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %92 = load i32, i32* @MLX5_INTERFACE_PROTOCOL_IB, align 4
  %93 = call i32 @mlx5_add_dev_by_protocol(%struct.mlx5_core_dev* %91, i32 %92)
  %94 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %95 = call i32 @mlx5_nic_vport_enable_roce(%struct.mlx5_core_dev* %94)
  br label %96

96:                                               ; preds = %90, %87
  br label %140

97:                                               ; preds = %46, %41
  %98 = load i32, i32* %6, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %107

100:                                              ; preds = %97
  %101 = load %struct.mlx5_lag*, %struct.mlx5_lag** %2, align 8
  %102 = call i64 @__mlx5_lag_is_active(%struct.mlx5_lag* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %100
  %105 = load %struct.mlx5_lag*, %struct.mlx5_lag** %2, align 8
  %106 = call i32 @mlx5_modify_lag(%struct.mlx5_lag* %105, %struct.lag_tracker* %5)
  br label %139

107:                                              ; preds = %100, %97
  %108 = load i32, i32* %6, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %138, label %110

110:                                              ; preds = %107
  %111 = load %struct.mlx5_lag*, %struct.mlx5_lag** %2, align 8
  %112 = call i64 @__mlx5_lag_is_active(%struct.mlx5_lag* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %138

114:                                              ; preds = %110
  %115 = load %struct.mlx5_lag*, %struct.mlx5_lag** %2, align 8
  %116 = call i32 @__mlx5_lag_is_roce(%struct.mlx5_lag* %115)
  store i32 %116, i32* %7, align 4
  %117 = load i32, i32* %7, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %125

119:                                              ; preds = %114
  %120 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %121 = load i32, i32* @MLX5_INTERFACE_PROTOCOL_IB, align 4
  %122 = call i32 @mlx5_remove_dev_by_protocol(%struct.mlx5_core_dev* %120, i32 %121)
  %123 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %124 = call i32 @mlx5_nic_vport_disable_roce(%struct.mlx5_core_dev* %123)
  br label %125

125:                                              ; preds = %119, %114
  %126 = load %struct.mlx5_lag*, %struct.mlx5_lag** %2, align 8
  %127 = call i32 @mlx5_deactivate_lag(%struct.mlx5_lag* %126)
  store i32 %127, i32* %8, align 4
  %128 = load i32, i32* %8, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %125
  br label %140

131:                                              ; preds = %125
  %132 = load i32, i32* %7, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %131
  %135 = load %struct.mlx5_lag*, %struct.mlx5_lag** %2, align 8
  %136 = call i32 @mlx5_lag_add_ib_devices(%struct.mlx5_lag* %135)
  br label %137

137:                                              ; preds = %134, %131
  br label %138

138:                                              ; preds = %137, %110, %107
  br label %139

139:                                              ; preds = %138, %104
  br label %140

140:                                              ; preds = %26, %86, %130, %139, %96
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @mlx5_lag_check_prereq(%struct.mlx5_lag*) #1

declare dso_local i64 @__mlx5_lag_is_active(%struct.mlx5_lag*) #1

declare dso_local i32 @mlx5_sriov_is_enabled(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_lag_remove_ib_devices(%struct.mlx5_lag*) #1

declare dso_local i32 @mlx5_activate_lag(%struct.mlx5_lag*, %struct.lag_tracker*, i32) #1

declare dso_local i32 @mlx5_lag_add_ib_devices(%struct.mlx5_lag*) #1

declare dso_local i32 @mlx5_add_dev_by_protocol(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32 @mlx5_nic_vport_enable_roce(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_modify_lag(%struct.mlx5_lag*, %struct.lag_tracker*) #1

declare dso_local i32 @__mlx5_lag_is_roce(%struct.mlx5_lag*) #1

declare dso_local i32 @mlx5_remove_dev_by_protocol(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32 @mlx5_nic_vport_disable_roce(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_deactivate_lag(%struct.mlx5_lag*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
