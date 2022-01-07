; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_vport.c_mlx5_nic_vport_update_local_lb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_vport.c_mlx5_nic_vport_update_local_lb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.mlx5_core_dev = type { i32 }

@modify_nic_vport_context_in = common dso_local global i32 0, align 4
@disable_local_lb_mc = common dso_local global i32 0, align 4
@disable_local_lb_uc = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@nic_vport_context = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@field_select = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@.str = private unnamed_addr constant [13 x i8] c"%s local_lb\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"disable\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_nic_vport_update_local_lb(%struct.mlx5_core_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5_core_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* @modify_nic_vport_context_in, align 4
  %10 = call i32 @MLX5_ST_SZ_BYTES(i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %12 = load i32, i32* @disable_local_lb_mc, align 4
  %13 = call i64 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %11, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %2
  %16 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %17 = load i32, i32* @disable_local_lb_uc, align 4
  %18 = call i64 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %84

21:                                               ; preds = %15, %2
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call i8* @kvzalloc(i32 %22, i32 %23)
  store i8* %24, i8** %7, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %21
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %84

30:                                               ; preds = %21
  %31 = load i32, i32* @modify_nic_vport_context_in, align 4
  %32 = load i8*, i8** %7, align 8
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @nic_vport_context, i32 0, i32 1), align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = call i32 @MLX5_SET(i32 %31, i8* %32, i32 %33, i32 %37)
  %39 = load i32, i32* @modify_nic_vport_context_in, align 4
  %40 = load i8*, i8** %7, align 8
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @nic_vport_context, i32 0, i32 0), align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = call i32 @MLX5_SET(i32 %39, i8* %40, i32 %41, i32 %45)
  %47 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %48 = load i32, i32* @disable_local_lb_mc, align 4
  %49 = call i64 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %47, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %30
  %52 = load i32, i32* @modify_nic_vport_context_in, align 4
  %53 = load i8*, i8** %7, align 8
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @field_select, i32 0, i32 1), align 4
  %55 = call i32 @MLX5_SET(i32 %52, i8* %53, i32 %54, i32 1)
  br label %56

56:                                               ; preds = %51, %30
  %57 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %58 = load i32, i32* @disable_local_lb_uc, align 4
  %59 = call i64 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %57, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %56
  %62 = load i32, i32* @modify_nic_vport_context_in, align 4
  %63 = load i8*, i8** %7, align 8
  %64 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @field_select, i32 0, i32 0), align 4
  %65 = call i32 @MLX5_SET(i32 %62, i8* %63, i32 %64, i32 1)
  br label %66

66:                                               ; preds = %61, %56
  %67 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %68 = load i8*, i8** %7, align 8
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @mlx5_modify_nic_vport_context(%struct.mlx5_core_dev* %67, i8* %68, i32 %69)
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %8, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %80, label %73

73:                                               ; preds = %66
  %74 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %75 = load i32, i32* %5, align 4
  %76 = icmp ne i32 %75, 0
  %77 = zext i1 %76 to i64
  %78 = select i1 %76, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %79 = call i32 @mlx5_core_dbg(%struct.mlx5_core_dev* %74, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %78)
  br label %80

80:                                               ; preds = %73, %66
  %81 = load i8*, i8** %7, align 8
  %82 = call i32 @kvfree(i8* %81)
  %83 = load i32, i32* %8, align 4
  store i32 %83, i32* %3, align 4
  br label %84

84:                                               ; preds = %80, %27, %20
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i32 @MLX5_ST_SZ_BYTES(i32) #1

declare dso_local i64 @MLX5_CAP_GEN(%struct.mlx5_core_dev*, i32) #1

declare dso_local i8* @kvzalloc(i32, i32) #1

declare dso_local i32 @MLX5_SET(i32, i8*, i32, i32) #1

declare dso_local i32 @mlx5_modify_nic_vport_context(%struct.mlx5_core_dev*, i8*, i32) #1

declare dso_local i32 @mlx5_core_dbg(%struct.mlx5_core_dev*, i8*, i8*) #1

declare dso_local i32 @kvfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
