; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_domain.c_dr_domain_query_vport.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_domain.c_dr_domain_query_vport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5dr_domain = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.mlx5dr_cmd_vport_cap* }
%struct.mlx5dr_cmd_vport_cap = type { i64, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5dr_domain*, i32, i64)* @dr_domain_query_vport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dr_domain_query_vport(%struct.mlx5dr_domain* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5dr_domain*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.mlx5dr_cmd_vport_cap*, align 8
  %9 = alloca i32, align 4
  store %struct.mlx5dr_domain* %0, %struct.mlx5dr_domain** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %10 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %5, align 8
  %11 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = load %struct.mlx5dr_cmd_vport_cap*, %struct.mlx5dr_cmd_vport_cap** %13, align 8
  %15 = load i64, i64* %7, align 8
  %16 = getelementptr inbounds %struct.mlx5dr_cmd_vport_cap, %struct.mlx5dr_cmd_vport_cap* %14, i64 %15
  store %struct.mlx5dr_cmd_vport_cap* %16, %struct.mlx5dr_cmd_vport_cap** %8, align 8
  %17 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %5, align 8
  %18 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = load i64, i64* %7, align 8
  %22 = load %struct.mlx5dr_cmd_vport_cap*, %struct.mlx5dr_cmd_vport_cap** %8, align 8
  %23 = getelementptr inbounds %struct.mlx5dr_cmd_vport_cap, %struct.mlx5dr_cmd_vport_cap* %22, i32 0, i32 4
  %24 = load %struct.mlx5dr_cmd_vport_cap*, %struct.mlx5dr_cmd_vport_cap** %8, align 8
  %25 = getelementptr inbounds %struct.mlx5dr_cmd_vport_cap, %struct.mlx5dr_cmd_vport_cap* %24, i32 0, i32 3
  %26 = call i32 @mlx5dr_cmd_query_esw_vport_context(i32 %19, i32 %20, i64 %21, i32* %23, i32* %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %3
  %30 = load i32, i32* %9, align 4
  store i32 %30, i32* %4, align 4
  br label %55

31:                                               ; preds = %3
  %32 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %5, align 8
  %33 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = load i64, i64* %7, align 8
  %37 = load %struct.mlx5dr_cmd_vport_cap*, %struct.mlx5dr_cmd_vport_cap** %8, align 8
  %38 = getelementptr inbounds %struct.mlx5dr_cmd_vport_cap, %struct.mlx5dr_cmd_vport_cap* %37, i32 0, i32 2
  %39 = call i32 @mlx5dr_cmd_query_gvmi(i32 %34, i32 %35, i64 %36, i32* %38)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %31
  %43 = load i32, i32* %9, align 4
  store i32 %43, i32* %4, align 4
  br label %55

44:                                               ; preds = %31
  %45 = load i64, i64* %7, align 8
  %46 = load %struct.mlx5dr_cmd_vport_cap*, %struct.mlx5dr_cmd_vport_cap** %8, align 8
  %47 = getelementptr inbounds %struct.mlx5dr_cmd_vport_cap, %struct.mlx5dr_cmd_vport_cap* %46, i32 0, i32 0
  store i64 %45, i64* %47, align 8
  %48 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %5, align 8
  %49 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.mlx5dr_cmd_vport_cap*, %struct.mlx5dr_cmd_vport_cap** %8, align 8
  %54 = getelementptr inbounds %struct.mlx5dr_cmd_vport_cap, %struct.mlx5dr_cmd_vport_cap* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 8
  store i32 0, i32* %4, align 4
  br label %55

55:                                               ; preds = %44, %42, %29
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i32 @mlx5dr_cmd_query_esw_vport_context(i32, i32, i64, i32*, i32*) #1

declare dso_local i32 @mlx5dr_cmd_query_gvmi(i32, i32, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
