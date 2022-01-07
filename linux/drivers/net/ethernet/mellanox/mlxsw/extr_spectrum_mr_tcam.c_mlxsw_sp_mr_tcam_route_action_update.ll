; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_mr_tcam.c_mlxsw_sp_mr_tcam_route_action_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_mr_tcam.c_mlxsw_sp_mr_tcam_route_action_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { %struct.mlxsw_sp_mr_tcam_ops* }
%struct.mlxsw_sp_mr_tcam_ops = type { i32 (%struct.mlxsw_sp.0*, i32, i32*, %struct.mlxsw_afa_block*)* }
%struct.mlxsw_sp.0 = type opaque
%struct.mlxsw_afa_block = type { i32 }
%struct.mlxsw_sp_mr_tcam_route = type { i32, %struct.mlxsw_afa_block*, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp*, i8*, i32)* @mlxsw_sp_mr_tcam_route_action_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_mr_tcam_route_action_update(%struct.mlxsw_sp* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlxsw_sp*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlxsw_sp_mr_tcam_ops*, align 8
  %9 = alloca %struct.mlxsw_sp_mr_tcam_route*, align 8
  %10 = alloca %struct.mlxsw_afa_block*, align 8
  %11 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %13 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %12, i32 0, i32 0
  %14 = load %struct.mlxsw_sp_mr_tcam_ops*, %struct.mlxsw_sp_mr_tcam_ops** %13, align 8
  store %struct.mlxsw_sp_mr_tcam_ops* %14, %struct.mlxsw_sp_mr_tcam_ops** %8, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = bitcast i8* %15 to %struct.mlxsw_sp_mr_tcam_route*
  store %struct.mlxsw_sp_mr_tcam_route* %16, %struct.mlxsw_sp_mr_tcam_route** %9, align 8
  %17 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.mlxsw_sp_mr_tcam_route*, %struct.mlxsw_sp_mr_tcam_route** %9, align 8
  %20 = getelementptr inbounds %struct.mlxsw_sp_mr_tcam_route, %struct.mlxsw_sp_mr_tcam_route* %19, i32 0, i32 7
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.mlxsw_sp_mr_tcam_route*, %struct.mlxsw_sp_mr_tcam_route** %9, align 8
  %23 = getelementptr inbounds %struct.mlxsw_sp_mr_tcam_route, %struct.mlxsw_sp_mr_tcam_route* %22, i32 0, i32 6
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.mlxsw_sp_mr_tcam_route*, %struct.mlxsw_sp_mr_tcam_route** %9, align 8
  %26 = getelementptr inbounds %struct.mlxsw_sp_mr_tcam_route, %struct.mlxsw_sp_mr_tcam_route* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.mlxsw_sp_mr_tcam_route*, %struct.mlxsw_sp_mr_tcam_route** %9, align 8
  %29 = getelementptr inbounds %struct.mlxsw_sp_mr_tcam_route, %struct.mlxsw_sp_mr_tcam_route* %28, i32 0, i32 4
  %30 = call %struct.mlxsw_afa_block* @mlxsw_sp_mr_tcam_afa_block_create(%struct.mlxsw_sp* %17, i32 %18, i32 %21, i32 %24, i32 %27, i32* %29)
  store %struct.mlxsw_afa_block* %30, %struct.mlxsw_afa_block** %10, align 8
  %31 = load %struct.mlxsw_afa_block*, %struct.mlxsw_afa_block** %10, align 8
  %32 = call i64 @IS_ERR(%struct.mlxsw_afa_block* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %3
  %35 = load %struct.mlxsw_afa_block*, %struct.mlxsw_afa_block** %10, align 8
  %36 = call i32 @PTR_ERR(%struct.mlxsw_afa_block* %35)
  store i32 %36, i32* %4, align 4
  br label %68

37:                                               ; preds = %3
  %38 = load %struct.mlxsw_sp_mr_tcam_ops*, %struct.mlxsw_sp_mr_tcam_ops** %8, align 8
  %39 = getelementptr inbounds %struct.mlxsw_sp_mr_tcam_ops, %struct.mlxsw_sp_mr_tcam_ops* %38, i32 0, i32 0
  %40 = load i32 (%struct.mlxsw_sp.0*, i32, i32*, %struct.mlxsw_afa_block*)*, i32 (%struct.mlxsw_sp.0*, i32, i32*, %struct.mlxsw_afa_block*)** %39, align 8
  %41 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %42 = bitcast %struct.mlxsw_sp* %41 to %struct.mlxsw_sp.0*
  %43 = load %struct.mlxsw_sp_mr_tcam_route*, %struct.mlxsw_sp_mr_tcam_route** %9, align 8
  %44 = getelementptr inbounds %struct.mlxsw_sp_mr_tcam_route, %struct.mlxsw_sp_mr_tcam_route* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.mlxsw_sp_mr_tcam_route*, %struct.mlxsw_sp_mr_tcam_route** %9, align 8
  %47 = getelementptr inbounds %struct.mlxsw_sp_mr_tcam_route, %struct.mlxsw_sp_mr_tcam_route* %46, i32 0, i32 2
  %48 = load %struct.mlxsw_afa_block*, %struct.mlxsw_afa_block** %10, align 8
  %49 = call i32 %40(%struct.mlxsw_sp.0* %42, i32 %45, i32* %47, %struct.mlxsw_afa_block* %48)
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %11, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %37
  br label %64

53:                                               ; preds = %37
  %54 = load %struct.mlxsw_sp_mr_tcam_route*, %struct.mlxsw_sp_mr_tcam_route** %9, align 8
  %55 = getelementptr inbounds %struct.mlxsw_sp_mr_tcam_route, %struct.mlxsw_sp_mr_tcam_route* %54, i32 0, i32 1
  %56 = load %struct.mlxsw_afa_block*, %struct.mlxsw_afa_block** %55, align 8
  %57 = call i32 @mlxsw_sp_mr_tcam_afa_block_destroy(%struct.mlxsw_afa_block* %56)
  %58 = load %struct.mlxsw_afa_block*, %struct.mlxsw_afa_block** %10, align 8
  %59 = load %struct.mlxsw_sp_mr_tcam_route*, %struct.mlxsw_sp_mr_tcam_route** %9, align 8
  %60 = getelementptr inbounds %struct.mlxsw_sp_mr_tcam_route, %struct.mlxsw_sp_mr_tcam_route* %59, i32 0, i32 1
  store %struct.mlxsw_afa_block* %58, %struct.mlxsw_afa_block** %60, align 8
  %61 = load i32, i32* %7, align 4
  %62 = load %struct.mlxsw_sp_mr_tcam_route*, %struct.mlxsw_sp_mr_tcam_route** %9, align 8
  %63 = getelementptr inbounds %struct.mlxsw_sp_mr_tcam_route, %struct.mlxsw_sp_mr_tcam_route* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  store i32 0, i32* %4, align 4
  br label %68

64:                                               ; preds = %52
  %65 = load %struct.mlxsw_afa_block*, %struct.mlxsw_afa_block** %10, align 8
  %66 = call i32 @mlxsw_sp_mr_tcam_afa_block_destroy(%struct.mlxsw_afa_block* %65)
  %67 = load i32, i32* %11, align 4
  store i32 %67, i32* %4, align 4
  br label %68

68:                                               ; preds = %64, %53, %34
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local %struct.mlxsw_afa_block* @mlxsw_sp_mr_tcam_afa_block_create(%struct.mlxsw_sp*, i32, i32, i32, i32, i32*) #1

declare dso_local i64 @IS_ERR(%struct.mlxsw_afa_block*) #1

declare dso_local i32 @PTR_ERR(%struct.mlxsw_afa_block*) #1

declare dso_local i32 @mlxsw_sp_mr_tcam_afa_block_destroy(%struct.mlxsw_afa_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
