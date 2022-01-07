; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum1_mr_tcam.c_mlxsw_sp1_mr_tcam_route_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum1_mr_tcam.c_mlxsw_sp1_mr_tcam_route_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { i32 }
%struct.mlxsw_sp_mr_route_key = type { i32 }
%struct.mlxsw_afa_block = type { i32 }
%struct.mlxsw_sp1_mr_tcam_route = type { i32 }
%struct.mlxsw_sp1_mr_tcam = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp*, i8*, i8*, %struct.mlxsw_sp_mr_route_key*, %struct.mlxsw_afa_block*, i32)* @mlxsw_sp1_mr_tcam_route_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp1_mr_tcam_route_create(%struct.mlxsw_sp* %0, i8* %1, i8* %2, %struct.mlxsw_sp_mr_route_key* %3, %struct.mlxsw_afa_block* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlxsw_sp*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.mlxsw_sp_mr_route_key*, align 8
  %12 = alloca %struct.mlxsw_afa_block*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.mlxsw_sp1_mr_tcam_route*, align 8
  %15 = alloca %struct.mlxsw_sp1_mr_tcam*, align 8
  %16 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store %struct.mlxsw_sp_mr_route_key* %3, %struct.mlxsw_sp_mr_route_key** %11, align 8
  store %struct.mlxsw_afa_block* %4, %struct.mlxsw_afa_block** %12, align 8
  store i32 %5, i32* %13, align 4
  %17 = load i8*, i8** %10, align 8
  %18 = bitcast i8* %17 to %struct.mlxsw_sp1_mr_tcam_route*
  store %struct.mlxsw_sp1_mr_tcam_route* %18, %struct.mlxsw_sp1_mr_tcam_route** %14, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = bitcast i8* %19 to %struct.mlxsw_sp1_mr_tcam*
  store %struct.mlxsw_sp1_mr_tcam* %20, %struct.mlxsw_sp1_mr_tcam** %15, align 8
  %21 = load %struct.mlxsw_sp1_mr_tcam*, %struct.mlxsw_sp1_mr_tcam** %15, align 8
  %22 = load %struct.mlxsw_sp1_mr_tcam_route*, %struct.mlxsw_sp1_mr_tcam_route** %14, align 8
  %23 = load %struct.mlxsw_sp_mr_route_key*, %struct.mlxsw_sp_mr_route_key** %11, align 8
  %24 = load i32, i32* %13, align 4
  %25 = call i32 @mlxsw_sp1_mr_tcam_route_parman_item_add(%struct.mlxsw_sp1_mr_tcam* %21, %struct.mlxsw_sp1_mr_tcam_route* %22, %struct.mlxsw_sp_mr_route_key* %23, i32 %24)
  store i32 %25, i32* %16, align 4
  %26 = load i32, i32* %16, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %6
  %29 = load i32, i32* %16, align 4
  store i32 %29, i32* %7, align 4
  br label %47

30:                                               ; preds = %6
  %31 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %8, align 8
  %32 = load %struct.mlxsw_sp1_mr_tcam_route*, %struct.mlxsw_sp1_mr_tcam_route** %14, align 8
  %33 = getelementptr inbounds %struct.mlxsw_sp1_mr_tcam_route, %struct.mlxsw_sp1_mr_tcam_route* %32, i32 0, i32 0
  %34 = load %struct.mlxsw_sp_mr_route_key*, %struct.mlxsw_sp_mr_route_key** %11, align 8
  %35 = load %struct.mlxsw_afa_block*, %struct.mlxsw_afa_block** %12, align 8
  %36 = call i32 @mlxsw_sp1_mr_tcam_route_replace(%struct.mlxsw_sp* %31, i32* %33, %struct.mlxsw_sp_mr_route_key* %34, %struct.mlxsw_afa_block* %35)
  store i32 %36, i32* %16, align 4
  %37 = load i32, i32* %16, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %30
  br label %41

40:                                               ; preds = %30
  store i32 0, i32* %7, align 4
  br label %47

41:                                               ; preds = %39
  %42 = load %struct.mlxsw_sp1_mr_tcam*, %struct.mlxsw_sp1_mr_tcam** %15, align 8
  %43 = load %struct.mlxsw_sp1_mr_tcam_route*, %struct.mlxsw_sp1_mr_tcam_route** %14, align 8
  %44 = load %struct.mlxsw_sp_mr_route_key*, %struct.mlxsw_sp_mr_route_key** %11, align 8
  %45 = call i32 @mlxsw_sp1_mr_tcam_route_parman_item_remove(%struct.mlxsw_sp1_mr_tcam* %42, %struct.mlxsw_sp1_mr_tcam_route* %43, %struct.mlxsw_sp_mr_route_key* %44)
  %46 = load i32, i32* %16, align 4
  store i32 %46, i32* %7, align 4
  br label %47

47:                                               ; preds = %41, %40, %28
  %48 = load i32, i32* %7, align 4
  ret i32 %48
}

declare dso_local i32 @mlxsw_sp1_mr_tcam_route_parman_item_add(%struct.mlxsw_sp1_mr_tcam*, %struct.mlxsw_sp1_mr_tcam_route*, %struct.mlxsw_sp_mr_route_key*, i32) #1

declare dso_local i32 @mlxsw_sp1_mr_tcam_route_replace(%struct.mlxsw_sp*, i32*, %struct.mlxsw_sp_mr_route_key*, %struct.mlxsw_afa_block*) #1

declare dso_local i32 @mlxsw_sp1_mr_tcam_route_parman_item_remove(%struct.mlxsw_sp1_mr_tcam*, %struct.mlxsw_sp1_mr_tcam_route*, %struct.mlxsw_sp_mr_route_key*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
