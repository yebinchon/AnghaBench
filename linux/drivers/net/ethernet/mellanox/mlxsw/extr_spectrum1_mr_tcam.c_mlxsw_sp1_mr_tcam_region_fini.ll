; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum1_mr_tcam.c_mlxsw_sp1_mr_tcam_region_fini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum1_mr_tcam.c_mlxsw_sp1_mr_tcam_region_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp1_mr_tcam_region = type { i32, i32* }

@MLXSW_SP_MR_ROUTE_PRIO_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxsw_sp1_mr_tcam_region*)* @mlxsw_sp1_mr_tcam_region_fini to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_sp1_mr_tcam_region_fini(%struct.mlxsw_sp1_mr_tcam_region* %0) #0 {
  %2 = alloca %struct.mlxsw_sp1_mr_tcam_region*, align 8
  %3 = alloca i32, align 4
  store %struct.mlxsw_sp1_mr_tcam_region* %0, %struct.mlxsw_sp1_mr_tcam_region** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %17, %1
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @MLXSW_SP_MR_ROUTE_PRIO_MAX, align 4
  %7 = add nsw i32 %6, 1
  %8 = icmp slt i32 %5, %7
  br i1 %8, label %9, label %20

9:                                                ; preds = %4
  %10 = load %struct.mlxsw_sp1_mr_tcam_region*, %struct.mlxsw_sp1_mr_tcam_region** %2, align 8
  %11 = getelementptr inbounds %struct.mlxsw_sp1_mr_tcam_region, %struct.mlxsw_sp1_mr_tcam_region* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  %16 = call i32 @parman_prio_fini(i32* %15)
  br label %17

17:                                               ; preds = %9
  %18 = load i32, i32* %3, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %3, align 4
  br label %4

20:                                               ; preds = %4
  %21 = load %struct.mlxsw_sp1_mr_tcam_region*, %struct.mlxsw_sp1_mr_tcam_region** %2, align 8
  %22 = getelementptr inbounds %struct.mlxsw_sp1_mr_tcam_region, %struct.mlxsw_sp1_mr_tcam_region* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = call i32 @kfree(i32* %23)
  %25 = load %struct.mlxsw_sp1_mr_tcam_region*, %struct.mlxsw_sp1_mr_tcam_region** %2, align 8
  %26 = getelementptr inbounds %struct.mlxsw_sp1_mr_tcam_region, %struct.mlxsw_sp1_mr_tcam_region* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @parman_destroy(i32 %27)
  %29 = load %struct.mlxsw_sp1_mr_tcam_region*, %struct.mlxsw_sp1_mr_tcam_region** %2, align 8
  %30 = call i32 @mlxsw_sp1_mr_tcam_region_free(%struct.mlxsw_sp1_mr_tcam_region* %29)
  ret void
}

declare dso_local i32 @parman_prio_fini(i32*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @parman_destroy(i32) #1

declare dso_local i32 @mlxsw_sp1_mr_tcam_region_free(%struct.mlxsw_sp1_mr_tcam_region*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
