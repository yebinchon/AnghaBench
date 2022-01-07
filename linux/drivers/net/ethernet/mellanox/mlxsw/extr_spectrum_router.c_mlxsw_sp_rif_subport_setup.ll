; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_rif_subport_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_rif_subport_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_rif = type { i32 }
%struct.mlxsw_sp_rif_params = type { i32, i32, i64, i32 }
%struct.mlxsw_sp_rif_subport = type { i32, i32, i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif_params*)* @mlxsw_sp_rif_subport_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_sp_rif_subport_setup(%struct.mlxsw_sp_rif* %0, %struct.mlxsw_sp_rif_params* %1) #0 {
  %3 = alloca %struct.mlxsw_sp_rif*, align 8
  %4 = alloca %struct.mlxsw_sp_rif_params*, align 8
  %5 = alloca %struct.mlxsw_sp_rif_subport*, align 8
  store %struct.mlxsw_sp_rif* %0, %struct.mlxsw_sp_rif** %3, align 8
  store %struct.mlxsw_sp_rif_params* %1, %struct.mlxsw_sp_rif_params** %4, align 8
  %6 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %3, align 8
  %7 = call %struct.mlxsw_sp_rif_subport* @mlxsw_sp_rif_subport_rif(%struct.mlxsw_sp_rif* %6)
  store %struct.mlxsw_sp_rif_subport* %7, %struct.mlxsw_sp_rif_subport** %5, align 8
  %8 = load %struct.mlxsw_sp_rif_subport*, %struct.mlxsw_sp_rif_subport** %5, align 8
  %9 = getelementptr inbounds %struct.mlxsw_sp_rif_subport, %struct.mlxsw_sp_rif_subport* %8, i32 0, i32 4
  %10 = call i32 @refcount_set(i32* %9, i32 1)
  %11 = load %struct.mlxsw_sp_rif_params*, %struct.mlxsw_sp_rif_params** %4, align 8
  %12 = getelementptr inbounds %struct.mlxsw_sp_rif_params, %struct.mlxsw_sp_rif_params* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.mlxsw_sp_rif_subport*, %struct.mlxsw_sp_rif_subport** %5, align 8
  %15 = getelementptr inbounds %struct.mlxsw_sp_rif_subport, %struct.mlxsw_sp_rif_subport* %14, i32 0, i32 3
  store i32 %13, i32* %15, align 8
  %16 = load %struct.mlxsw_sp_rif_params*, %struct.mlxsw_sp_rif_params** %4, align 8
  %17 = getelementptr inbounds %struct.mlxsw_sp_rif_params, %struct.mlxsw_sp_rif_params* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.mlxsw_sp_rif_subport*, %struct.mlxsw_sp_rif_subport** %5, align 8
  %20 = getelementptr inbounds %struct.mlxsw_sp_rif_subport, %struct.mlxsw_sp_rif_subport* %19, i32 0, i32 2
  store i64 %18, i64* %20, align 8
  %21 = load %struct.mlxsw_sp_rif_params*, %struct.mlxsw_sp_rif_params** %4, align 8
  %22 = getelementptr inbounds %struct.mlxsw_sp_rif_params, %struct.mlxsw_sp_rif_params* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %2
  %26 = load %struct.mlxsw_sp_rif_params*, %struct.mlxsw_sp_rif_params** %4, align 8
  %27 = getelementptr inbounds %struct.mlxsw_sp_rif_params, %struct.mlxsw_sp_rif_params* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.mlxsw_sp_rif_subport*, %struct.mlxsw_sp_rif_subport** %5, align 8
  %30 = getelementptr inbounds %struct.mlxsw_sp_rif_subport, %struct.mlxsw_sp_rif_subport* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  br label %37

31:                                               ; preds = %2
  %32 = load %struct.mlxsw_sp_rif_params*, %struct.mlxsw_sp_rif_params** %4, align 8
  %33 = getelementptr inbounds %struct.mlxsw_sp_rif_params, %struct.mlxsw_sp_rif_params* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.mlxsw_sp_rif_subport*, %struct.mlxsw_sp_rif_subport** %5, align 8
  %36 = getelementptr inbounds %struct.mlxsw_sp_rif_subport, %struct.mlxsw_sp_rif_subport* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  br label %37

37:                                               ; preds = %31, %25
  ret void
}

declare dso_local %struct.mlxsw_sp_rif_subport* @mlxsw_sp_rif_subport_rif(%struct.mlxsw_sp_rif*) #1

declare dso_local i32 @refcount_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
