; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_rule.c_dr_rule_create_rule_fdb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_rule.c_dr_rule_create_rule_fdb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5dr_rule = type { i32, i32 }
%struct.mlx5dr_match_param = type { i32 }
%struct.mlx5dr_action = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5dr_rule*, %struct.mlx5dr_match_param*, i64, %struct.mlx5dr_action**)* @dr_rule_create_rule_fdb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dr_rule_create_rule_fdb(%struct.mlx5dr_rule* %0, %struct.mlx5dr_match_param* %1, i64 %2, %struct.mlx5dr_action** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx5dr_rule*, align 8
  %7 = alloca %struct.mlx5dr_match_param*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.mlx5dr_action**, align 8
  %10 = alloca %struct.mlx5dr_match_param, align 4
  %11 = alloca i32, align 4
  store %struct.mlx5dr_rule* %0, %struct.mlx5dr_rule** %6, align 8
  store %struct.mlx5dr_match_param* %1, %struct.mlx5dr_match_param** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.mlx5dr_action** %3, %struct.mlx5dr_action*** %9, align 8
  %12 = bitcast %struct.mlx5dr_match_param* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %12, i8 0, i64 4, i1 false)
  %13 = load %struct.mlx5dr_match_param*, %struct.mlx5dr_match_param** %7, align 8
  %14 = call i32 @memcpy(%struct.mlx5dr_match_param* %10, %struct.mlx5dr_match_param* %13, i32 4)
  %15 = load %struct.mlx5dr_rule*, %struct.mlx5dr_rule** %6, align 8
  %16 = load %struct.mlx5dr_rule*, %struct.mlx5dr_rule** %6, align 8
  %17 = getelementptr inbounds %struct.mlx5dr_rule, %struct.mlx5dr_rule* %16, i32 0, i32 0
  %18 = load %struct.mlx5dr_match_param*, %struct.mlx5dr_match_param** %7, align 8
  %19 = load i64, i64* %8, align 8
  %20 = load %struct.mlx5dr_action**, %struct.mlx5dr_action*** %9, align 8
  %21 = call i32 @dr_rule_create_rule_nic(%struct.mlx5dr_rule* %15, i32* %17, %struct.mlx5dr_match_param* %18, i64 %19, %struct.mlx5dr_action** %20)
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %4
  %25 = load i32, i32* %11, align 4
  store i32 %25, i32* %5, align 4
  br label %43

26:                                               ; preds = %4
  %27 = load %struct.mlx5dr_rule*, %struct.mlx5dr_rule** %6, align 8
  %28 = load %struct.mlx5dr_rule*, %struct.mlx5dr_rule** %6, align 8
  %29 = getelementptr inbounds %struct.mlx5dr_rule, %struct.mlx5dr_rule* %28, i32 0, i32 1
  %30 = load i64, i64* %8, align 8
  %31 = load %struct.mlx5dr_action**, %struct.mlx5dr_action*** %9, align 8
  %32 = call i32 @dr_rule_create_rule_nic(%struct.mlx5dr_rule* %27, i32* %29, %struct.mlx5dr_match_param* %10, i64 %30, %struct.mlx5dr_action** %31)
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %11, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %26
  br label %37

36:                                               ; preds = %26
  store i32 0, i32* %5, align 4
  br label %43

37:                                               ; preds = %35
  %38 = load %struct.mlx5dr_rule*, %struct.mlx5dr_rule** %6, align 8
  %39 = load %struct.mlx5dr_rule*, %struct.mlx5dr_rule** %6, align 8
  %40 = getelementptr inbounds %struct.mlx5dr_rule, %struct.mlx5dr_rule* %39, i32 0, i32 0
  %41 = call i32 @dr_rule_destroy_rule_nic(%struct.mlx5dr_rule* %38, i32* %40)
  %42 = load i32, i32* %11, align 4
  store i32 %42, i32* %5, align 4
  br label %43

43:                                               ; preds = %37, %36, %24
  %44 = load i32, i32* %5, align 4
  ret i32 %44
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @memcpy(%struct.mlx5dr_match_param*, %struct.mlx5dr_match_param*, i32) #2

declare dso_local i32 @dr_rule_create_rule_nic(%struct.mlx5dr_rule*, i32*, %struct.mlx5dr_match_param*, i64, %struct.mlx5dr_action**) #2

declare dso_local i32 @dr_rule_destroy_rule_nic(%struct.mlx5dr_rule*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
