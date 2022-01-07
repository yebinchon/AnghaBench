; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/fpga/extr_ipsec.c_mlx5_fpga_esp_create_xfrm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/fpga/extr_ipsec.c_mlx5_fpga_esp_create_xfrm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_accel_esp_xfrm = type { i32 }
%struct.mlx5_core_dev = type { i32 }
%struct.mlx5_accel_esp_xfrm_attrs = type { i32 }
%struct.mlx5_fpga_esp_xfrm = type { %struct.mlx5_accel_esp_xfrm, i32 }

@MLX5_ACCEL_XFRM_FLAG_REQUIRE_METADATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Tried to create an esp action without metadata\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"Tried to create an esp with unsupported attrs\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mlx5_accel_esp_xfrm* @mlx5_fpga_esp_create_xfrm(%struct.mlx5_core_dev* %0, %struct.mlx5_accel_esp_xfrm_attrs* %1, i32 %2) #0 {
  %4 = alloca %struct.mlx5_accel_esp_xfrm*, align 8
  %5 = alloca %struct.mlx5_core_dev*, align 8
  %6 = alloca %struct.mlx5_accel_esp_xfrm_attrs*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx5_fpga_esp_xfrm*, align 8
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %5, align 8
  store %struct.mlx5_accel_esp_xfrm_attrs* %1, %struct.mlx5_accel_esp_xfrm_attrs** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* @MLX5_ACCEL_XFRM_FLAG_REQUIRE_METADATA, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %3
  %14 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %15 = call i32 @mlx5_core_warn(%struct.mlx5_core_dev* %14, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  %18 = call %struct.mlx5_accel_esp_xfrm* @ERR_PTR(i32 %17)
  store %struct.mlx5_accel_esp_xfrm* %18, %struct.mlx5_accel_esp_xfrm** %4, align 8
  br label %50

19:                                               ; preds = %3
  %20 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %21 = load %struct.mlx5_accel_esp_xfrm_attrs*, %struct.mlx5_accel_esp_xfrm_attrs** %6, align 8
  %22 = call i64 @mlx5_fpga_esp_validate_xfrm_attrs(%struct.mlx5_core_dev* %20, %struct.mlx5_accel_esp_xfrm_attrs* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  %25 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %26 = call i32 @mlx5_core_warn(%struct.mlx5_core_dev* %25, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i32, i32* @EOPNOTSUPP, align 4
  %28 = sub nsw i32 0, %27
  %29 = call %struct.mlx5_accel_esp_xfrm* @ERR_PTR(i32 %28)
  store %struct.mlx5_accel_esp_xfrm* %29, %struct.mlx5_accel_esp_xfrm** %4, align 8
  br label %50

30:                                               ; preds = %19
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call %struct.mlx5_fpga_esp_xfrm* @kzalloc(i32 8, i32 %31)
  store %struct.mlx5_fpga_esp_xfrm* %32, %struct.mlx5_fpga_esp_xfrm** %8, align 8
  %33 = load %struct.mlx5_fpga_esp_xfrm*, %struct.mlx5_fpga_esp_xfrm** %8, align 8
  %34 = icmp ne %struct.mlx5_fpga_esp_xfrm* %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %30
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  %38 = call %struct.mlx5_accel_esp_xfrm* @ERR_PTR(i32 %37)
  store %struct.mlx5_accel_esp_xfrm* %38, %struct.mlx5_accel_esp_xfrm** %4, align 8
  br label %50

39:                                               ; preds = %30
  %40 = load %struct.mlx5_fpga_esp_xfrm*, %struct.mlx5_fpga_esp_xfrm** %8, align 8
  %41 = getelementptr inbounds %struct.mlx5_fpga_esp_xfrm, %struct.mlx5_fpga_esp_xfrm* %40, i32 0, i32 1
  %42 = call i32 @mutex_init(i32* %41)
  %43 = load %struct.mlx5_fpga_esp_xfrm*, %struct.mlx5_fpga_esp_xfrm** %8, align 8
  %44 = getelementptr inbounds %struct.mlx5_fpga_esp_xfrm, %struct.mlx5_fpga_esp_xfrm* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.mlx5_accel_esp_xfrm, %struct.mlx5_accel_esp_xfrm* %44, i32 0, i32 0
  %46 = load %struct.mlx5_accel_esp_xfrm_attrs*, %struct.mlx5_accel_esp_xfrm_attrs** %6, align 8
  %47 = call i32 @memcpy(i32* %45, %struct.mlx5_accel_esp_xfrm_attrs* %46, i32 4)
  %48 = load %struct.mlx5_fpga_esp_xfrm*, %struct.mlx5_fpga_esp_xfrm** %8, align 8
  %49 = getelementptr inbounds %struct.mlx5_fpga_esp_xfrm, %struct.mlx5_fpga_esp_xfrm* %48, i32 0, i32 0
  store %struct.mlx5_accel_esp_xfrm* %49, %struct.mlx5_accel_esp_xfrm** %4, align 8
  br label %50

50:                                               ; preds = %39, %35, %24, %13
  %51 = load %struct.mlx5_accel_esp_xfrm*, %struct.mlx5_accel_esp_xfrm** %4, align 8
  ret %struct.mlx5_accel_esp_xfrm* %51
}

declare dso_local i32 @mlx5_core_warn(%struct.mlx5_core_dev*, i8*) #1

declare dso_local %struct.mlx5_accel_esp_xfrm* @ERR_PTR(i32) #1

declare dso_local i64 @mlx5_fpga_esp_validate_xfrm_attrs(%struct.mlx5_core_dev*, %struct.mlx5_accel_esp_xfrm_attrs*) #1

declare dso_local %struct.mlx5_fpga_esp_xfrm* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @memcpy(i32*, %struct.mlx5_accel_esp_xfrm_attrs*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
