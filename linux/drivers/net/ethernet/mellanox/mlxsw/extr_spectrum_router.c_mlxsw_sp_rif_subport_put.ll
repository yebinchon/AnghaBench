; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_rif_subport_put.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_rif_subport_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_rif = type { i32 }
%struct.mlxsw_sp_rif_subport = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxsw_sp_rif*)* @mlxsw_sp_rif_subport_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_sp_rif_subport_put(%struct.mlxsw_sp_rif* %0) #0 {
  %2 = alloca %struct.mlxsw_sp_rif*, align 8
  %3 = alloca %struct.mlxsw_sp_rif_subport*, align 8
  store %struct.mlxsw_sp_rif* %0, %struct.mlxsw_sp_rif** %2, align 8
  %4 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %2, align 8
  %5 = call %struct.mlxsw_sp_rif_subport* @mlxsw_sp_rif_subport_rif(%struct.mlxsw_sp_rif* %4)
  store %struct.mlxsw_sp_rif_subport* %5, %struct.mlxsw_sp_rif_subport** %3, align 8
  %6 = load %struct.mlxsw_sp_rif_subport*, %struct.mlxsw_sp_rif_subport** %3, align 8
  %7 = getelementptr inbounds %struct.mlxsw_sp_rif_subport, %struct.mlxsw_sp_rif_subport* %6, i32 0, i32 0
  %8 = call i32 @refcount_dec_and_test(i32* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %14

11:                                               ; preds = %1
  %12 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %2, align 8
  %13 = call i32 @mlxsw_sp_rif_destroy(%struct.mlxsw_sp_rif* %12)
  br label %14

14:                                               ; preds = %11, %10
  ret void
}

declare dso_local %struct.mlxsw_sp_rif_subport* @mlxsw_sp_rif_subport_rif(%struct.mlxsw_sp_rif*) #1

declare dso_local i32 @refcount_dec_and_test(i32*) #1

declare dso_local i32 @mlxsw_sp_rif_destroy(%struct.mlxsw_sp_rif*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
