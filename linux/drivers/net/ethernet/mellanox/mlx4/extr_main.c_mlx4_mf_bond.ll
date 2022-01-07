; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_main.c_mlx4_mf_bond.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_main.c_mlx4_mf_bond.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }
%struct.mlx4_slaves_pport = type { i32 }

@slaves_port_1_2 = common dso_local global i32 0, align 4
@MLX4_MFUNC_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"HA mode unsupported for dual ported VFs\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MAX_MF_BOND_ALLOWED_SLAVES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"HA mode is not supported for %d VFs (max %d are allowed)\0A\00", align 1
@MLX4_STEERING_MODE_DEVICE_MANAGED = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [43 x i8] c"HA mode unsupported for NON DMFS steering\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_dev*)* @mlx4_mf_bond to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_mf_bond(%struct.mlx4_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx4_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx4_slaves_pport, align 4
  %7 = alloca %struct.mlx4_slaves_pport, align 4
  %8 = alloca %struct.mlx4_slaves_pport, align 4
  %9 = alloca %struct.mlx4_slaves_pport, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %3, align 8
  store i32 0, i32* %4, align 4
  %10 = load i32, i32* @slaves_port_1_2, align 4
  %11 = load i32, i32* @MLX4_MFUNC_MAX, align 4
  %12 = call i32 @DECLARE_BITMAP(i32 %10, i32 %11)
  %13 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %14 = call i32 @mlx4_phys_to_slaves_pport(%struct.mlx4_dev* %13, i32 1)
  %15 = getelementptr inbounds %struct.mlx4_slaves_pport, %struct.mlx4_slaves_pport* %8, i32 0, i32 0
  store i32 %14, i32* %15, align 4
  %16 = bitcast %struct.mlx4_slaves_pport* %6 to i8*
  %17 = bitcast %struct.mlx4_slaves_pport* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %16, i8* align 4 %17, i64 4, i1 false)
  %18 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %19 = call i32 @mlx4_phys_to_slaves_pport(%struct.mlx4_dev* %18, i32 2)
  %20 = getelementptr inbounds %struct.mlx4_slaves_pport, %struct.mlx4_slaves_pport* %9, i32 0, i32 0
  store i32 %19, i32* %20, align 4
  %21 = bitcast %struct.mlx4_slaves_pport* %7 to i8*
  %22 = bitcast %struct.mlx4_slaves_pport* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %21, i8* align 4 %22, i64 4, i1 false)
  %23 = load i32, i32* @slaves_port_1_2, align 4
  %24 = getelementptr inbounds %struct.mlx4_slaves_pport, %struct.mlx4_slaves_pport* %6, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.mlx4_slaves_pport, %struct.mlx4_slaves_pport* %7, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %29 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %28, i32 0, i32 1
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %32, 1
  %34 = call i32 @bitmap_and(i32 %23, i32 %25, i32 %27, i64 %33)
  %35 = load i32, i32* @slaves_port_1_2, align 4
  %36 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %37 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %36, i32 0, i32 1
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %40, 1
  %42 = call i32 @bitmap_weight(i32 %35, i64 %41)
  %43 = icmp sgt i32 %42, 1
  br i1 %43, label %44, label %49

44:                                               ; preds = %1
  %45 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %46 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_warn(%struct.mlx4_dev* %45, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %2, align 4
  br label %119

49:                                               ; preds = %1
  %50 = getelementptr inbounds %struct.mlx4_slaves_pport, %struct.mlx4_slaves_pport* %6, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %53 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %52, i32 0, i32 1
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %56, 1
  %58 = call i32 @bitmap_weight(i32 %51, i64 %57)
  %59 = getelementptr inbounds %struct.mlx4_slaves_pport, %struct.mlx4_slaves_pport* %7, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %62 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %61, i32 0, i32 1
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = add nsw i64 %65, 1
  %67 = call i32 @bitmap_weight(i32 %60, i64 %66)
  %68 = add nsw i32 %58, %67
  %69 = sub nsw i32 %68, 2
  store i32 %69, i32* %5, align 4
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* @MAX_MF_BOND_ALLOWED_SLAVES, align 4
  %72 = icmp sgt i32 %70, %71
  br i1 %72, label %73, label %80

73:                                               ; preds = %49
  %74 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* @MAX_MF_BOND_ALLOWED_SLAVES, align 4
  %77 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_warn(%struct.mlx4_dev* %74, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i32 %75, i32 %76)
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %2, align 4
  br label %119

80:                                               ; preds = %49
  %81 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %82 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @MLX4_STEERING_MODE_DEVICE_MANAGED, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %87, label %92

87:                                               ; preds = %80
  %88 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %89 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_warn(%struct.mlx4_dev* %88, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  %90 = load i32, i32* @EINVAL, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %2, align 4
  br label %119

92:                                               ; preds = %80
  %93 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %94 = call i32 @mlx4_bond_mac_table(%struct.mlx4_dev* %93)
  store i32 %94, i32* %4, align 4
  %95 = load i32, i32* %4, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %92
  %98 = load i32, i32* %4, align 4
  store i32 %98, i32* %2, align 4
  br label %119

99:                                               ; preds = %92
  %100 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %101 = call i32 @mlx4_bond_vlan_table(%struct.mlx4_dev* %100)
  store i32 %101, i32* %4, align 4
  %102 = load i32, i32* %4, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %99
  br label %115

105:                                              ; preds = %99
  %106 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %107 = call i32 @mlx4_bond_fs_rules(%struct.mlx4_dev* %106)
  store i32 %107, i32* %4, align 4
  %108 = load i32, i32* %4, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %105
  br label %112

111:                                              ; preds = %105
  store i32 0, i32* %2, align 4
  br label %119

112:                                              ; preds = %110
  %113 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %114 = call i32 @mlx4_unbond_vlan_table(%struct.mlx4_dev* %113)
  br label %115

115:                                              ; preds = %112, %104
  %116 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %117 = call i32 @mlx4_unbond_mac_table(%struct.mlx4_dev* %116)
  %118 = load i32, i32* %4, align 4
  store i32 %118, i32* %2, align 4
  br label %119

119:                                              ; preds = %115, %111, %97, %87, %73, %44
  %120 = load i32, i32* %2, align 4
  ret i32 %120
}

declare dso_local i32 @DECLARE_BITMAP(i32, i32) #1

declare dso_local i32 @mlx4_phys_to_slaves_pport(%struct.mlx4_dev*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @bitmap_and(i32, i32, i32, i64) #1

declare dso_local i32 @bitmap_weight(i32, i64) #1

declare dso_local i32 @mlx4_warn(%struct.mlx4_dev*, i8*, ...) #1

declare dso_local i32 @mlx4_bond_mac_table(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_bond_vlan_table(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_bond_fs_rules(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_unbond_vlan_table(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_unbond_mac_table(%struct.mlx4_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
