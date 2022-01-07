; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_mr.c_mlxsw_sp_mr_vif_valid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_mr.c_mlxsw_sp_mr_vif_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_mr_vif = type { i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 (%struct.mlxsw_sp_mr_vif*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp_mr_vif*)* @mlxsw_sp_mr_vif_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_mr_vif_valid(%struct.mlxsw_sp_mr_vif* %0) #0 {
  %2 = alloca %struct.mlxsw_sp_mr_vif*, align 8
  store %struct.mlxsw_sp_mr_vif* %0, %struct.mlxsw_sp_mr_vif** %2, align 8
  %3 = load %struct.mlxsw_sp_mr_vif*, %struct.mlxsw_sp_mr_vif** %2, align 8
  %4 = getelementptr inbounds %struct.mlxsw_sp_mr_vif, %struct.mlxsw_sp_mr_vif* %3, i32 0, i32 2
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i64 (%struct.mlxsw_sp_mr_vif*)*, i64 (%struct.mlxsw_sp_mr_vif*)** %6, align 8
  %8 = load %struct.mlxsw_sp_mr_vif*, %struct.mlxsw_sp_mr_vif** %2, align 8
  %9 = call i64 %7(%struct.mlxsw_sp_mr_vif* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %21

11:                                               ; preds = %1
  %12 = load %struct.mlxsw_sp_mr_vif*, %struct.mlxsw_sp_mr_vif** %2, align 8
  %13 = getelementptr inbounds %struct.mlxsw_sp_mr_vif, %struct.mlxsw_sp_mr_vif* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %11
  %17 = load %struct.mlxsw_sp_mr_vif*, %struct.mlxsw_sp_mr_vif** %2, align 8
  %18 = getelementptr inbounds %struct.mlxsw_sp_mr_vif, %struct.mlxsw_sp_mr_vif* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br label %21

21:                                               ; preds = %16, %11, %1
  %22 = phi i1 [ false, %11 ], [ false, %1 ], [ %20, %16 ]
  %23 = zext i1 %22 to i32
  ret i32 %23
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
