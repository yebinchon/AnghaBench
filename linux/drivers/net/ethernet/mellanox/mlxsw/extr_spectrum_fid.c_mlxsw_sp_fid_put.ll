; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_fid.c_mlxsw_sp_fid_put.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_fid.c_mlxsw_sp_fid_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_fid = type { i64, i64, %struct.mlxsw_sp_fid_family*, i32, i32 }
%struct.mlxsw_sp_fid_family = type { i32, i64, %struct.TYPE_4__*, %struct.mlxsw_sp* }
%struct.TYPE_4__ = type { i32 (%struct.mlxsw_sp_fid*)* }
%struct.mlxsw_sp = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@mlxsw_sp_fid_ht_params = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlxsw_sp_fid_put(%struct.mlxsw_sp_fid* %0) #0 {
  %2 = alloca %struct.mlxsw_sp_fid*, align 8
  %3 = alloca %struct.mlxsw_sp_fid_family*, align 8
  %4 = alloca %struct.mlxsw_sp*, align 8
  store %struct.mlxsw_sp_fid* %0, %struct.mlxsw_sp_fid** %2, align 8
  %5 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %2, align 8
  %6 = getelementptr inbounds %struct.mlxsw_sp_fid, %struct.mlxsw_sp_fid* %5, i32 0, i32 2
  %7 = load %struct.mlxsw_sp_fid_family*, %struct.mlxsw_sp_fid_family** %6, align 8
  store %struct.mlxsw_sp_fid_family* %7, %struct.mlxsw_sp_fid_family** %3, align 8
  %8 = load %struct.mlxsw_sp_fid_family*, %struct.mlxsw_sp_fid_family** %3, align 8
  %9 = getelementptr inbounds %struct.mlxsw_sp_fid_family, %struct.mlxsw_sp_fid_family* %8, i32 0, i32 3
  %10 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %9, align 8
  store %struct.mlxsw_sp* %10, %struct.mlxsw_sp** %4, align 8
  %11 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %2, align 8
  %12 = getelementptr inbounds %struct.mlxsw_sp_fid, %struct.mlxsw_sp_fid* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = add nsw i64 %13, -1
  store i64 %14, i64* %12, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %51

17:                                               ; preds = %1
  %18 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %2, align 8
  %19 = getelementptr inbounds %struct.mlxsw_sp_fid, %struct.mlxsw_sp_fid* %18, i32 0, i32 4
  %20 = call i32 @list_del(i32* %19)
  %21 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %22 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %2, align 8
  %26 = getelementptr inbounds %struct.mlxsw_sp_fid, %struct.mlxsw_sp_fid* %25, i32 0, i32 3
  %27 = load i32, i32* @mlxsw_sp_fid_ht_params, align 4
  %28 = call i32 @rhashtable_remove_fast(i32* %24, i32* %26, i32 %27)
  %29 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %2, align 8
  %30 = getelementptr inbounds %struct.mlxsw_sp_fid, %struct.mlxsw_sp_fid* %29, i32 0, i32 2
  %31 = load %struct.mlxsw_sp_fid_family*, %struct.mlxsw_sp_fid_family** %30, align 8
  %32 = getelementptr inbounds %struct.mlxsw_sp_fid_family, %struct.mlxsw_sp_fid_family* %31, i32 0, i32 2
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32 (%struct.mlxsw_sp_fid*)*, i32 (%struct.mlxsw_sp_fid*)** %34, align 8
  %36 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %2, align 8
  %37 = call i32 %35(%struct.mlxsw_sp_fid* %36)
  %38 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %2, align 8
  %39 = getelementptr inbounds %struct.mlxsw_sp_fid, %struct.mlxsw_sp_fid* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.mlxsw_sp_fid_family*, %struct.mlxsw_sp_fid_family** %3, align 8
  %42 = getelementptr inbounds %struct.mlxsw_sp_fid_family, %struct.mlxsw_sp_fid_family* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = sub nsw i64 %40, %43
  %45 = load %struct.mlxsw_sp_fid_family*, %struct.mlxsw_sp_fid_family** %3, align 8
  %46 = getelementptr inbounds %struct.mlxsw_sp_fid_family, %struct.mlxsw_sp_fid_family* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @__clear_bit(i64 %44, i32 %47)
  %49 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %2, align 8
  %50 = call i32 @kfree(%struct.mlxsw_sp_fid* %49)
  br label %51

51:                                               ; preds = %17, %16
  ret void
}

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @rhashtable_remove_fast(i32*, i32*, i32) #1

declare dso_local i32 @__clear_bit(i64, i32) #1

declare dso_local i32 @kfree(%struct.mlxsw_sp_fid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
