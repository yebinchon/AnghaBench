; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_rif_subport_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_rif_subport_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_rif = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp_rif*)* @mlxsw_sp_rif_subport_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_rif_subport_configure(%struct.mlxsw_sp_rif* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlxsw_sp_rif*, align 8
  %4 = alloca i32, align 4
  store %struct.mlxsw_sp_rif* %0, %struct.mlxsw_sp_rif** %3, align 8
  %5 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %3, align 8
  %6 = call i32 @mlxsw_sp_rif_subport_op(%struct.mlxsw_sp_rif* %5, i32 1)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %2, align 4
  br label %38

11:                                               ; preds = %1
  %12 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %3, align 8
  %13 = getelementptr inbounds %struct.mlxsw_sp_rif, %struct.mlxsw_sp_rif* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %3, align 8
  %16 = getelementptr inbounds %struct.mlxsw_sp_rif, %struct.mlxsw_sp_rif* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %3, align 8
  %21 = getelementptr inbounds %struct.mlxsw_sp_rif, %struct.mlxsw_sp_rif* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @mlxsw_sp_fid_index(i32 %22)
  %24 = call i32 @mlxsw_sp_rif_fdb_op(i32 %14, i32 %19, i32 %23, i32 1)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %11
  br label %34

28:                                               ; preds = %11
  %29 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %3, align 8
  %30 = getelementptr inbounds %struct.mlxsw_sp_rif, %struct.mlxsw_sp_rif* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %3, align 8
  %33 = call i32 @mlxsw_sp_fid_rif_set(i32 %31, %struct.mlxsw_sp_rif* %32)
  store i32 0, i32* %2, align 4
  br label %38

34:                                               ; preds = %27
  %35 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %3, align 8
  %36 = call i32 @mlxsw_sp_rif_subport_op(%struct.mlxsw_sp_rif* %35, i32 0)
  %37 = load i32, i32* %4, align 4
  store i32 %37, i32* %2, align 4
  br label %38

38:                                               ; preds = %34, %28, %9
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @mlxsw_sp_rif_subport_op(%struct.mlxsw_sp_rif*, i32) #1

declare dso_local i32 @mlxsw_sp_rif_fdb_op(i32, i32, i32, i32) #1

declare dso_local i32 @mlxsw_sp_fid_index(i32) #1

declare dso_local i32 @mlxsw_sp_fid_rif_set(i32, %struct.mlxsw_sp_rif*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
