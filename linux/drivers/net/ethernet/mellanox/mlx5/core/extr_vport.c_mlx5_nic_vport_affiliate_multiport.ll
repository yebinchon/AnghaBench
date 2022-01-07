; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_vport.c_mlx5_nic_vport_affiliate_multiport.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_vport.c_mlx5_nic_vport_affiliate_multiport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.mlx5_core_dev = type { i32 }

@modify_nic_vport_context_in = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@field_select = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@nic_vport_context = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@vhca_id = common dso_local global i32 0, align 4
@affiliate_nic_vport_criteria = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_nic_vport_affiliate_multiport(%struct.mlx5_core_dev* %0, %struct.mlx5_core_dev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5_core_dev*, align 8
  %5 = alloca %struct.mlx5_core_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %4, align 8
  store %struct.mlx5_core_dev* %1, %struct.mlx5_core_dev** %5, align 8
  %9 = load i32, i32* @modify_nic_vport_context_in, align 4
  %10 = call i32 @MLX5_ST_SZ_BYTES(i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call i8* @kvzalloc(i32 %11, i32 %12)
  store i8* %13, i8** %7, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %58

19:                                               ; preds = %2
  %20 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %21 = call i32 @mlx5_nic_vport_enable_roce(%struct.mlx5_core_dev* %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %54

25:                                               ; preds = %19
  %26 = load i32, i32* @modify_nic_vport_context_in, align 4
  %27 = load i8*, i8** %7, align 8
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @field_select, i32 0, i32 0), align 4
  %29 = call i32 @MLX5_SET(i32 %26, i8* %27, i32 %28, i32 1)
  %30 = load i32, i32* @modify_nic_vport_context_in, align 4
  %31 = load i8*, i8** %7, align 8
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @nic_vport_context, i32 0, i32 1), align 4
  %33 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %34 = load i32, i32* @vhca_id, align 4
  %35 = call i32 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %33, i32 %34)
  %36 = call i32 @MLX5_SET(i32 %30, i8* %31, i32 %32, i32 %35)
  %37 = load i32, i32* @modify_nic_vport_context_in, align 4
  %38 = load i8*, i8** %7, align 8
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @nic_vport_context, i32 0, i32 0), align 4
  %40 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %41 = load i32, i32* @affiliate_nic_vport_criteria, align 4
  %42 = call i32 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %40, i32 %41)
  %43 = call i32 @MLX5_SET(i32 %37, i8* %38, i32 %39, i32 %42)
  %44 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %45 = load i8*, i8** %7, align 8
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @mlx5_modify_nic_vport_context(%struct.mlx5_core_dev* %44, i8* %45, i32 %46)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %25
  %51 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %52 = call i32 @mlx5_nic_vport_disable_roce(%struct.mlx5_core_dev* %51)
  br label %53

53:                                               ; preds = %50, %25
  br label %54

54:                                               ; preds = %53, %24
  %55 = load i8*, i8** %7, align 8
  %56 = call i32 @kvfree(i8* %55)
  %57 = load i32, i32* %8, align 4
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %54, %16
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @MLX5_ST_SZ_BYTES(i32) #1

declare dso_local i8* @kvzalloc(i32, i32) #1

declare dso_local i32 @mlx5_nic_vport_enable_roce(%struct.mlx5_core_dev*) #1

declare dso_local i32 @MLX5_SET(i32, i8*, i32, i32) #1

declare dso_local i32 @MLX5_CAP_GEN(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32 @mlx5_modify_nic_vport_context(%struct.mlx5_core_dev*, i8*, i32) #1

declare dso_local i32 @mlx5_nic_vport_disable_roce(%struct.mlx5_core_dev*) #1

declare dso_local i32 @kvfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
