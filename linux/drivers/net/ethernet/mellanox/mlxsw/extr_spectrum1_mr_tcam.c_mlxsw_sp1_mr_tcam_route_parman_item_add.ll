; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum1_mr_tcam.c_mlxsw_sp1_mr_tcam_route_parman_item_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum1_mr_tcam.c_mlxsw_sp1_mr_tcam_route_parman_item_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp1_mr_tcam = type { i32 }
%struct.mlxsw_sp1_mr_tcam_route = type { i32*, i32 }
%struct.mlxsw_sp_mr_route_key = type { i32 }
%struct.mlxsw_sp1_mr_tcam_region = type { i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp1_mr_tcam*, %struct.mlxsw_sp1_mr_tcam_route*, %struct.mlxsw_sp_mr_route_key*, i32)* @mlxsw_sp1_mr_tcam_route_parman_item_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp1_mr_tcam_route_parman_item_add(%struct.mlxsw_sp1_mr_tcam* %0, %struct.mlxsw_sp1_mr_tcam_route* %1, %struct.mlxsw_sp_mr_route_key* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlxsw_sp1_mr_tcam*, align 8
  %7 = alloca %struct.mlxsw_sp1_mr_tcam_route*, align 8
  %8 = alloca %struct.mlxsw_sp_mr_route_key*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mlxsw_sp1_mr_tcam_region*, align 8
  %11 = alloca i32, align 4
  store %struct.mlxsw_sp1_mr_tcam* %0, %struct.mlxsw_sp1_mr_tcam** %6, align 8
  store %struct.mlxsw_sp1_mr_tcam_route* %1, %struct.mlxsw_sp1_mr_tcam_route** %7, align 8
  store %struct.mlxsw_sp_mr_route_key* %2, %struct.mlxsw_sp_mr_route_key** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.mlxsw_sp1_mr_tcam*, %struct.mlxsw_sp1_mr_tcam** %6, align 8
  %13 = load %struct.mlxsw_sp_mr_route_key*, %struct.mlxsw_sp_mr_route_key** %8, align 8
  %14 = getelementptr inbounds %struct.mlxsw_sp_mr_route_key, %struct.mlxsw_sp_mr_route_key* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.mlxsw_sp1_mr_tcam_region* @mlxsw_sp1_mr_tcam_protocol_region(%struct.mlxsw_sp1_mr_tcam* %12, i32 %15)
  store %struct.mlxsw_sp1_mr_tcam_region* %16, %struct.mlxsw_sp1_mr_tcam_region** %10, align 8
  %17 = load %struct.mlxsw_sp1_mr_tcam_region*, %struct.mlxsw_sp1_mr_tcam_region** %10, align 8
  %18 = getelementptr inbounds %struct.mlxsw_sp1_mr_tcam_region, %struct.mlxsw_sp1_mr_tcam_region* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.mlxsw_sp1_mr_tcam_region*, %struct.mlxsw_sp1_mr_tcam_region** %10, align 8
  %21 = getelementptr inbounds %struct.mlxsw_sp1_mr_tcam_region, %struct.mlxsw_sp1_mr_tcam_region* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %9, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load %struct.mlxsw_sp1_mr_tcam_route*, %struct.mlxsw_sp1_mr_tcam_route** %7, align 8
  %27 = getelementptr inbounds %struct.mlxsw_sp1_mr_tcam_route, %struct.mlxsw_sp1_mr_tcam_route* %26, i32 0, i32 1
  %28 = call i32 @parman_item_add(i32 %19, i32* %25, i32* %27)
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %4
  %32 = load i32, i32* %11, align 4
  store i32 %32, i32* %5, align 4
  br label %42

33:                                               ; preds = %4
  %34 = load %struct.mlxsw_sp1_mr_tcam_region*, %struct.mlxsw_sp1_mr_tcam_region** %10, align 8
  %35 = getelementptr inbounds %struct.mlxsw_sp1_mr_tcam_region, %struct.mlxsw_sp1_mr_tcam_region* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %9, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load %struct.mlxsw_sp1_mr_tcam_route*, %struct.mlxsw_sp1_mr_tcam_route** %7, align 8
  %41 = getelementptr inbounds %struct.mlxsw_sp1_mr_tcam_route, %struct.mlxsw_sp1_mr_tcam_route* %40, i32 0, i32 0
  store i32* %39, i32** %41, align 8
  store i32 0, i32* %5, align 4
  br label %42

42:                                               ; preds = %33, %31
  %43 = load i32, i32* %5, align 4
  ret i32 %43
}

declare dso_local %struct.mlxsw_sp1_mr_tcam_region* @mlxsw_sp1_mr_tcam_protocol_region(%struct.mlxsw_sp1_mr_tcam*, i32) #1

declare dso_local i32 @parman_item_add(i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
