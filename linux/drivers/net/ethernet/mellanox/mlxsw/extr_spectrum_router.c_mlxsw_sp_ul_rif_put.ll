; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_ul_rif_put.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_ul_rif_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_rif = type { i64, %struct.mlxsw_sp* }
%struct.mlxsw_sp = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.mlxsw_sp_vr* }
%struct.mlxsw_sp_vr = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxsw_sp_rif*)* @mlxsw_sp_ul_rif_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_sp_ul_rif_put(%struct.mlxsw_sp_rif* %0) #0 {
  %2 = alloca %struct.mlxsw_sp_rif*, align 8
  %3 = alloca %struct.mlxsw_sp*, align 8
  %4 = alloca %struct.mlxsw_sp_vr*, align 8
  store %struct.mlxsw_sp_rif* %0, %struct.mlxsw_sp_rif** %2, align 8
  %5 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %2, align 8
  %6 = getelementptr inbounds %struct.mlxsw_sp_rif, %struct.mlxsw_sp_rif* %5, i32 0, i32 1
  %7 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  store %struct.mlxsw_sp* %7, %struct.mlxsw_sp** %3, align 8
  %8 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %9 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.mlxsw_sp_vr*, %struct.mlxsw_sp_vr** %11, align 8
  %13 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %2, align 8
  %14 = getelementptr inbounds %struct.mlxsw_sp_rif, %struct.mlxsw_sp_rif* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds %struct.mlxsw_sp_vr, %struct.mlxsw_sp_vr* %12, i64 %15
  store %struct.mlxsw_sp_vr* %16, %struct.mlxsw_sp_vr** %4, align 8
  %17 = load %struct.mlxsw_sp_vr*, %struct.mlxsw_sp_vr** %4, align 8
  %18 = getelementptr inbounds %struct.mlxsw_sp_vr, %struct.mlxsw_sp_vr* %17, i32 0, i32 1
  %19 = call i32 @refcount_dec_and_test(i32* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %1
  br label %32

22:                                               ; preds = %1
  %23 = load %struct.mlxsw_sp_vr*, %struct.mlxsw_sp_vr** %4, align 8
  %24 = getelementptr inbounds %struct.mlxsw_sp_vr, %struct.mlxsw_sp_vr* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %25, -1
  store i32 %26, i32* %24, align 4
  %27 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %2, align 8
  %28 = call i32 @mlxsw_sp_ul_rif_destroy(%struct.mlxsw_sp_rif* %27)
  %29 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %30 = load %struct.mlxsw_sp_vr*, %struct.mlxsw_sp_vr** %4, align 8
  %31 = call i32 @mlxsw_sp_vr_put(%struct.mlxsw_sp* %29, %struct.mlxsw_sp_vr* %30)
  br label %32

32:                                               ; preds = %22, %21
  ret void
}

declare dso_local i32 @refcount_dec_and_test(i32*) #1

declare dso_local i32 @mlxsw_sp_ul_rif_destroy(%struct.mlxsw_sp_rif*) #1

declare dso_local i32 @mlxsw_sp_vr_put(%struct.mlxsw_sp*, %struct.mlxsw_sp_vr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
