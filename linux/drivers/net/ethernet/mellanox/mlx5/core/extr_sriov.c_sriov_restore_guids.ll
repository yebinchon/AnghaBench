; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_sriov.c_sriov_restore_guids.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_sriov.c_sriov_restore_guids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.mlx5_core_sriov }
%struct.mlx5_core_sriov = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i64, i64 }
%struct.mlx5_hca_vport_context = type { i64, i32, i64, i64 }

@MLX5_POLICY_INVALID = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MLX5_HCA_VPORT_SEL_PORT_GUID = common dso_local global i32 0, align 4
@MLX5_HCA_VPORT_SEL_NODE_GUID = common dso_local global i32 0, align 4
@MLX5_HCA_VPORT_SEL_STATE_POLICY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"modify vport context failed, unable to restore VF %d settings\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_core_dev*, i32)* @sriov_restore_guids to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sriov_restore_guids(%struct.mlx5_core_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5_core_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx5_core_sriov*, align 8
  %7 = alloca %struct.mlx5_hca_vport_context*, align 8
  %8 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %10 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  store %struct.mlx5_core_sriov* %11, %struct.mlx5_core_sriov** %6, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.mlx5_core_sriov*, %struct.mlx5_core_sriov** %6, align 8
  %13 = getelementptr inbounds %struct.mlx5_core_sriov, %struct.mlx5_core_sriov* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %42, label %21

21:                                               ; preds = %2
  %22 = load %struct.mlx5_core_sriov*, %struct.mlx5_core_sriov** %6, align 8
  %23 = getelementptr inbounds %struct.mlx5_core_sriov, %struct.mlx5_core_sriov* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %42, label %31

31:                                               ; preds = %21
  %32 = load %struct.mlx5_core_sriov*, %struct.mlx5_core_sriov** %6, align 8
  %33 = getelementptr inbounds %struct.mlx5_core_sriov, %struct.mlx5_core_sriov* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @MLX5_POLICY_INVALID, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %126

42:                                               ; preds = %31, %21, %2
  %43 = load i32, i32* @GFP_KERNEL, align 4
  %44 = call %struct.mlx5_hca_vport_context* @kzalloc(i32 32, i32 %43)
  store %struct.mlx5_hca_vport_context* %44, %struct.mlx5_hca_vport_context** %7, align 8
  %45 = load %struct.mlx5_hca_vport_context*, %struct.mlx5_hca_vport_context** %7, align 8
  %46 = icmp ne %struct.mlx5_hca_vport_context* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %42
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %128

50:                                               ; preds = %42
  %51 = load %struct.mlx5_core_sriov*, %struct.mlx5_core_sriov** %6, align 8
  %52 = getelementptr inbounds %struct.mlx5_core_sriov, %struct.mlx5_core_sriov* %51, i32 0, i32 0
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = load i32, i32* %5, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.mlx5_hca_vport_context*, %struct.mlx5_hca_vport_context** %7, align 8
  %60 = getelementptr inbounds %struct.mlx5_hca_vport_context, %struct.mlx5_hca_vport_context* %59, i32 0, i32 2
  store i64 %58, i64* %60, align 8
  %61 = load %struct.mlx5_core_sriov*, %struct.mlx5_core_sriov** %6, align 8
  %62 = getelementptr inbounds %struct.mlx5_core_sriov, %struct.mlx5_core_sriov* %61, i32 0, i32 0
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = load i32, i32* %5, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.mlx5_hca_vport_context*, %struct.mlx5_hca_vport_context** %7, align 8
  %70 = getelementptr inbounds %struct.mlx5_hca_vport_context, %struct.mlx5_hca_vport_context* %69, i32 0, i32 3
  store i64 %68, i64* %70, align 8
  %71 = load %struct.mlx5_core_sriov*, %struct.mlx5_core_sriov** %6, align 8
  %72 = getelementptr inbounds %struct.mlx5_core_sriov, %struct.mlx5_core_sriov* %71, i32 0, i32 0
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = load i32, i32* %5, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.mlx5_hca_vport_context*, %struct.mlx5_hca_vport_context** %7, align 8
  %80 = getelementptr inbounds %struct.mlx5_hca_vport_context, %struct.mlx5_hca_vport_context* %79, i32 0, i32 0
  store i64 %78, i64* %80, align 8
  %81 = load %struct.mlx5_hca_vport_context*, %struct.mlx5_hca_vport_context** %7, align 8
  %82 = getelementptr inbounds %struct.mlx5_hca_vport_context, %struct.mlx5_hca_vport_context* %81, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  %85 = xor i1 %84, true
  %86 = xor i1 %85, true
  %87 = zext i1 %86 to i32
  %88 = load i32, i32* @MLX5_HCA_VPORT_SEL_PORT_GUID, align 4
  %89 = mul nsw i32 %87, %88
  %90 = load %struct.mlx5_hca_vport_context*, %struct.mlx5_hca_vport_context** %7, align 8
  %91 = getelementptr inbounds %struct.mlx5_hca_vport_context, %struct.mlx5_hca_vport_context* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  %94 = xor i1 %93, true
  %95 = xor i1 %94, true
  %96 = zext i1 %95 to i32
  %97 = load i32, i32* @MLX5_HCA_VPORT_SEL_NODE_GUID, align 4
  %98 = mul nsw i32 %96, %97
  %99 = or i32 %89, %98
  %100 = load %struct.mlx5_hca_vport_context*, %struct.mlx5_hca_vport_context** %7, align 8
  %101 = getelementptr inbounds %struct.mlx5_hca_vport_context, %struct.mlx5_hca_vport_context* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  %104 = xor i1 %103, true
  %105 = xor i1 %104, true
  %106 = zext i1 %105 to i32
  %107 = load i32, i32* @MLX5_HCA_VPORT_SEL_STATE_POLICY, align 4
  %108 = mul nsw i32 %106, %107
  %109 = or i32 %99, %108
  %110 = load %struct.mlx5_hca_vport_context*, %struct.mlx5_hca_vport_context** %7, align 8
  %111 = getelementptr inbounds %struct.mlx5_hca_vport_context, %struct.mlx5_hca_vport_context* %110, i32 0, i32 1
  store i32 %109, i32* %111, align 8
  %112 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %113 = load i32, i32* %5, align 4
  %114 = add nsw i32 %113, 1
  %115 = load %struct.mlx5_hca_vport_context*, %struct.mlx5_hca_vport_context** %7, align 8
  %116 = call i32 @mlx5_core_modify_hca_vport_context(%struct.mlx5_core_dev* %112, i32 1, i32 1, i32 %114, %struct.mlx5_hca_vport_context* %115)
  store i32 %116, i32* %8, align 4
  %117 = load i32, i32* %8, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %50
  %120 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %121 = load i32, i32* %5, align 4
  %122 = call i32 @mlx5_core_warn(%struct.mlx5_core_dev* %120, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %121)
  br label %123

123:                                              ; preds = %119, %50
  %124 = load %struct.mlx5_hca_vport_context*, %struct.mlx5_hca_vport_context** %7, align 8
  %125 = call i32 @kfree(%struct.mlx5_hca_vport_context* %124)
  br label %126

126:                                              ; preds = %123, %31
  %127 = load i32, i32* %8, align 4
  store i32 %127, i32* %3, align 4
  br label %128

128:                                              ; preds = %126, %47
  %129 = load i32, i32* %3, align 4
  ret i32 %129
}

declare dso_local %struct.mlx5_hca_vport_context* @kzalloc(i32, i32) #1

declare dso_local i32 @mlx5_core_modify_hca_vport_context(%struct.mlx5_core_dev*, i32, i32, i32, %struct.mlx5_hca_vport_context*) #1

declare dso_local i32 @mlx5_core_warn(%struct.mlx5_core_dev*, i8*, i32) #1

declare dso_local i32 @kfree(%struct.mlx5_hca_vport_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
