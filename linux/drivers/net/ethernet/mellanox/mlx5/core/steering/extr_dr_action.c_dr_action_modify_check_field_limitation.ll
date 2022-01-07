; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_action.c_dr_action_modify_check_field_limitation.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_action.c_dr_action_modify_check_field_limitation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5dr_domain = type { i64 }

@set_action_in = common dso_local global i32 0, align 4
@field = common dso_local global i32 0, align 4
@action_type = common dso_local global i32 0, align 4
@MLX5_ACTION_TYPE_SET = common dso_local global i64 0, align 8
@MLX5_ACTION_IN_FIELD_METADATA_REG_A = common dso_local global i64 0, align 8
@MLX5DR_DOMAIN_TYPE_NIC_TX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"Unsupported field %d for RX/FDB set action\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MLX5_ACTION_IN_FIELD_METADATA_REG_B = common dso_local global i64 0, align 8
@MLX5DR_DOMAIN_TYPE_NIC_RX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [44 x i8] c"Unsupported field %d for TX/FDB set action\0A\00", align 1
@MLX5_ACTION_TYPE_ADD = common dso_local global i64 0, align 8
@MLX5_ACTION_IN_FIELD_OUT_IP_TTL = common dso_local global i64 0, align 8
@MLX5_ACTION_IN_FIELD_OUT_IPV6_HOPLIMIT = common dso_local global i64 0, align 8
@MLX5_ACTION_IN_FIELD_OUT_TCP_SEQ_NUM = common dso_local global i64 0, align 8
@MLX5_ACTION_IN_FIELD_OUT_TCP_ACK_NUM = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [37 x i8] c"Unsupported field %d for add action\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"Unsupported action %d modify action\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5dr_domain*, i32*)* @dr_action_modify_check_field_limitation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dr_action_modify_check_field_limitation(%struct.mlx5dr_domain* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5dr_domain*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.mlx5dr_domain* %0, %struct.mlx5dr_domain** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i32, i32* @set_action_in, align 4
  %9 = load i32*, i32** %5, align 8
  %10 = load i32, i32* @field, align 4
  %11 = call i64 @MLX5_GET(i32 %8, i32* %9, i32 %10)
  store i64 %11, i64* %6, align 8
  %12 = load i32, i32* @set_action_in, align 4
  %13 = load i32*, i32** %5, align 8
  %14 = load i32, i32* @action_type, align 4
  %15 = call i64 @MLX5_GET(i32 %12, i32* %13, i32 %14)
  store i64 %15, i64* %7, align 8
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* @MLX5_ACTION_TYPE_SET, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %54

19:                                               ; preds = %2
  %20 = load i64, i64* %6, align 8
  %21 = load i64, i64* @MLX5_ACTION_IN_FIELD_METADATA_REG_A, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %36

23:                                               ; preds = %19
  %24 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %4, align 8
  %25 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @MLX5DR_DOMAIN_TYPE_NIC_TX, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %23
  %30 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %4, align 8
  %31 = load i64, i64* %6, align 8
  %32 = call i32 @mlx5dr_dbg(%struct.mlx5dr_domain* %30, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %31)
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %89

35:                                               ; preds = %23
  br label %36

36:                                               ; preds = %35, %19
  %37 = load i64, i64* %6, align 8
  %38 = load i64, i64* @MLX5_ACTION_IN_FIELD_METADATA_REG_B, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %53

40:                                               ; preds = %36
  %41 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %4, align 8
  %42 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @MLX5DR_DOMAIN_TYPE_NIC_RX, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %40
  %47 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %4, align 8
  %48 = load i64, i64* %6, align 8
  %49 = call i32 @mlx5dr_dbg(%struct.mlx5dr_domain* %47, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i64 %48)
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %89

52:                                               ; preds = %40
  br label %53

53:                                               ; preds = %52, %36
  br label %88

54:                                               ; preds = %2
  %55 = load i64, i64* %7, align 8
  %56 = load i64, i64* @MLX5_ACTION_TYPE_ADD, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %81

58:                                               ; preds = %54
  %59 = load i64, i64* %6, align 8
  %60 = load i64, i64* @MLX5_ACTION_IN_FIELD_OUT_IP_TTL, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %80

62:                                               ; preds = %58
  %63 = load i64, i64* %6, align 8
  %64 = load i64, i64* @MLX5_ACTION_IN_FIELD_OUT_IPV6_HOPLIMIT, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %80

66:                                               ; preds = %62
  %67 = load i64, i64* %6, align 8
  %68 = load i64, i64* @MLX5_ACTION_IN_FIELD_OUT_TCP_SEQ_NUM, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %80

70:                                               ; preds = %66
  %71 = load i64, i64* %6, align 8
  %72 = load i64, i64* @MLX5_ACTION_IN_FIELD_OUT_TCP_ACK_NUM, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %80

74:                                               ; preds = %70
  %75 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %4, align 8
  %76 = load i64, i64* %6, align 8
  %77 = call i32 @mlx5dr_dbg(%struct.mlx5dr_domain* %75, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i64 %76)
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %3, align 4
  br label %89

80:                                               ; preds = %70, %66, %62, %58
  br label %87

81:                                               ; preds = %54
  %82 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %4, align 8
  %83 = load i64, i64* %7, align 8
  %84 = call i32 @mlx5dr_info(%struct.mlx5dr_domain* %82, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i64 %83)
  %85 = load i32, i32* @EOPNOTSUPP, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %3, align 4
  br label %89

87:                                               ; preds = %80
  br label %88

88:                                               ; preds = %87, %53
  store i32 0, i32* %3, align 4
  br label %89

89:                                               ; preds = %88, %81, %74, %46, %29
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local i64 @MLX5_GET(i32, i32*, i32) #1

declare dso_local i32 @mlx5dr_dbg(%struct.mlx5dr_domain*, i8*, i64) #1

declare dso_local i32 @mlx5dr_info(%struct.mlx5dr_domain*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
