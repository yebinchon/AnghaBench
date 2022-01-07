; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_action.c_dr_action_verify_reformat_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_action.c_dr_action_verify_reformat_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5dr_domain = type { i64 }

@DR_ACTION_TYP_L2_TO_TNL_L3 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Invalid reformat parameter!\0A\00", align 1
@MLX5DR_DOMAIN_TYPE_FDB = common dso_local global i64 0, align 8
@MLX5DR_DOMAIN_TYPE_NIC_RX = common dso_local global i64 0, align 8
@DR_ACTION_TYP_TNL_L2_TO_L2 = common dso_local global i32 0, align 4
@DR_ACTION_TYP_TNL_L3_TO_L2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"Action reformat type not support on RX domain\0A\00", align 1
@MLX5DR_DOMAIN_TYPE_NIC_TX = common dso_local global i64 0, align 8
@DR_ACTION_TYP_L2_TO_TNL_L2 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"Action reformat type not support on TX domain\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.mlx5dr_domain*, i64, i8*)* @dr_action_verify_reformat_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dr_action_verify_reformat_params(i32 %0, %struct.mlx5dr_domain* %1, i64 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx5dr_domain*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  store i32 %0, i32* %6, align 4
  store %struct.mlx5dr_domain* %1, %struct.mlx5dr_domain** %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  %10 = load i8*, i8** %9, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %4
  %13 = load i64, i64* %8, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %25, label %15

15:                                               ; preds = %12, %4
  %16 = load i8*, i8** %9, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load i64, i64* %8, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %18, %15
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @DR_ACTION_TYP_L2_TO_TNL_L3, align 4
  %24 = icmp ugt i32 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %21, %18, %12
  %26 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %7, align 8
  %27 = call i32 @mlx5dr_dbg(%struct.mlx5dr_domain* %26, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %73

28:                                               ; preds = %21
  %29 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %7, align 8
  %30 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @MLX5DR_DOMAIN_TYPE_FDB, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  store i32 0, i32* %5, align 4
  br label %76

35:                                               ; preds = %28
  %36 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %7, align 8
  %37 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @MLX5DR_DOMAIN_TYPE_NIC_RX, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %53

41:                                               ; preds = %35
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @DR_ACTION_TYP_TNL_L2_TO_L2, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %41
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @DR_ACTION_TYP_TNL_L3_TO_L2, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %7, align 8
  %51 = call i32 @mlx5dr_dbg(%struct.mlx5dr_domain* %50, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  br label %73

52:                                               ; preds = %45, %41
  br label %72

53:                                               ; preds = %35
  %54 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %7, align 8
  %55 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @MLX5DR_DOMAIN_TYPE_NIC_TX, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %71

59:                                               ; preds = %53
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* @DR_ACTION_TYP_L2_TO_TNL_L2, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %70

63:                                               ; preds = %59
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* @DR_ACTION_TYP_L2_TO_TNL_L3, align 4
  %66 = icmp ne i32 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %63
  %68 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %7, align 8
  %69 = call i32 @mlx5dr_dbg(%struct.mlx5dr_domain* %68, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  br label %73

70:                                               ; preds = %63, %59
  br label %71

71:                                               ; preds = %70, %53
  br label %72

72:                                               ; preds = %71, %52
  store i32 0, i32* %5, align 4
  br label %76

73:                                               ; preds = %67, %49, %25
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %5, align 4
  br label %76

76:                                               ; preds = %73, %72, %34
  %77 = load i32, i32* %5, align 4
  ret i32 %77
}

declare dso_local i32 @mlx5dr_dbg(%struct.mlx5dr_domain*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
