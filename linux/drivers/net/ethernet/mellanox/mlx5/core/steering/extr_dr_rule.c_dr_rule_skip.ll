; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_rule.c_dr_rule_skip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_rule.c_dr_rule_skip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5dr_match_param = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@MLX5DR_DOMAIN_TYPE_FDB = common dso_local global i32 0, align 4
@MLX5DR_STE_TYPE_RX = common dso_local global i32 0, align 4
@WIRE_PORT = common dso_local global i32 0, align 4
@MLX5DR_STE_TYPE_TX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.mlx5dr_match_param*, %struct.mlx5dr_match_param*)* @dr_rule_skip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dr_rule_skip(i32 %0, i32 %1, %struct.mlx5dr_match_param* %2, %struct.mlx5dr_match_param* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx5dr_match_param*, align 8
  %9 = alloca %struct.mlx5dr_match_param*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store %struct.mlx5dr_match_param* %2, %struct.mlx5dr_match_param** %8, align 8
  store %struct.mlx5dr_match_param* %3, %struct.mlx5dr_match_param** %9, align 8
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @MLX5DR_DOMAIN_TYPE_FDB, align 4
  %12 = icmp ne i32 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %85

14:                                               ; preds = %4
  %15 = load %struct.mlx5dr_match_param*, %struct.mlx5dr_match_param** %8, align 8
  %16 = getelementptr inbounds %struct.mlx5dr_match_param, %struct.mlx5dr_match_param* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %47

20:                                               ; preds = %14
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @MLX5DR_STE_TYPE_RX, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %33

24:                                               ; preds = %20
  %25 = load %struct.mlx5dr_match_param*, %struct.mlx5dr_match_param** %9, align 8
  %26 = getelementptr inbounds %struct.mlx5dr_match_param, %struct.mlx5dr_match_param* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @WIRE_PORT, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  store i32 1, i32* %5, align 4
  br label %85

32:                                               ; preds = %24
  br label %33

33:                                               ; preds = %32, %20
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @MLX5DR_STE_TYPE_TX, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %46

37:                                               ; preds = %33
  %38 = load %struct.mlx5dr_match_param*, %struct.mlx5dr_match_param** %9, align 8
  %39 = getelementptr inbounds %struct.mlx5dr_match_param, %struct.mlx5dr_match_param* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @WIRE_PORT, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  store i32 1, i32* %5, align 4
  br label %85

45:                                               ; preds = %37
  br label %46

46:                                               ; preds = %45, %33
  br label %47

47:                                               ; preds = %46, %14
  %48 = load %struct.mlx5dr_match_param*, %struct.mlx5dr_match_param** %8, align 8
  %49 = getelementptr inbounds %struct.mlx5dr_match_param, %struct.mlx5dr_match_param* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %84

53:                                               ; preds = %47
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @MLX5DR_STE_TYPE_RX, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %68

57:                                               ; preds = %53
  %58 = load %struct.mlx5dr_match_param*, %struct.mlx5dr_match_param** %9, align 8
  %59 = getelementptr inbounds %struct.mlx5dr_match_param, %struct.mlx5dr_match_param* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @WIRE_PORT, align 4
  %63 = and i32 %61, %62
  %64 = load i32, i32* @WIRE_PORT, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %57
  store i32 1, i32* %5, align 4
  br label %85

67:                                               ; preds = %57
  br label %68

68:                                               ; preds = %67, %53
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* @MLX5DR_STE_TYPE_TX, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %83

72:                                               ; preds = %68
  %73 = load %struct.mlx5dr_match_param*, %struct.mlx5dr_match_param** %9, align 8
  %74 = getelementptr inbounds %struct.mlx5dr_match_param, %struct.mlx5dr_match_param* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @WIRE_PORT, align 4
  %78 = and i32 %76, %77
  %79 = load i32, i32* @WIRE_PORT, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %72
  store i32 1, i32* %5, align 4
  br label %85

82:                                               ; preds = %72
  br label %83

83:                                               ; preds = %82, %68
  br label %84

84:                                               ; preds = %83, %47
  store i32 0, i32* %5, align 4
  br label %85

85:                                               ; preds = %84, %81, %66, %44, %31, %13
  %86 = load i32, i32* %5, align 4
  ret i32 %86
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
