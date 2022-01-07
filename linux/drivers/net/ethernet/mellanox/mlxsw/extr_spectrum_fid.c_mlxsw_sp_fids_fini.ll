; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_fid.c_mlxsw_sp_fids_fini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_fid.c_mlxsw_sp_fids_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { %struct.mlxsw_sp_fid_core* }
%struct.mlxsw_sp_fid_core = type { i32, i32, %struct.mlxsw_sp_fid_core*, i32* }

@MLXSW_SP_FID_TYPE_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlxsw_sp_fids_fini(%struct.mlxsw_sp* %0) #0 {
  %2 = alloca %struct.mlxsw_sp*, align 8
  %3 = alloca %struct.mlxsw_sp_fid_core*, align 8
  %4 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %2, align 8
  %5 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %2, align 8
  %6 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %5, i32 0, i32 0
  %7 = load %struct.mlxsw_sp_fid_core*, %struct.mlxsw_sp_fid_core** %6, align 8
  store %struct.mlxsw_sp_fid_core* %7, %struct.mlxsw_sp_fid_core** %3, align 8
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %22, %1
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @MLXSW_SP_FID_TYPE_MAX, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %25

12:                                               ; preds = %8
  %13 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %2, align 8
  %14 = load %struct.mlxsw_sp_fid_core*, %struct.mlxsw_sp_fid_core** %3, align 8
  %15 = getelementptr inbounds %struct.mlxsw_sp_fid_core, %struct.mlxsw_sp_fid_core* %14, i32 0, i32 3
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @mlxsw_sp_fid_family_unregister(%struct.mlxsw_sp* %13, i32 %20)
  br label %22

22:                                               ; preds = %12
  %23 = load i32, i32* %4, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %4, align 4
  br label %8

25:                                               ; preds = %8
  %26 = load %struct.mlxsw_sp_fid_core*, %struct.mlxsw_sp_fid_core** %3, align 8
  %27 = getelementptr inbounds %struct.mlxsw_sp_fid_core, %struct.mlxsw_sp_fid_core* %26, i32 0, i32 2
  %28 = load %struct.mlxsw_sp_fid_core*, %struct.mlxsw_sp_fid_core** %27, align 8
  %29 = call i32 @kfree(%struct.mlxsw_sp_fid_core* %28)
  %30 = load %struct.mlxsw_sp_fid_core*, %struct.mlxsw_sp_fid_core** %3, align 8
  %31 = getelementptr inbounds %struct.mlxsw_sp_fid_core, %struct.mlxsw_sp_fid_core* %30, i32 0, i32 1
  %32 = call i32 @rhashtable_destroy(i32* %31)
  %33 = load %struct.mlxsw_sp_fid_core*, %struct.mlxsw_sp_fid_core** %3, align 8
  %34 = getelementptr inbounds %struct.mlxsw_sp_fid_core, %struct.mlxsw_sp_fid_core* %33, i32 0, i32 0
  %35 = call i32 @rhashtable_destroy(i32* %34)
  %36 = load %struct.mlxsw_sp_fid_core*, %struct.mlxsw_sp_fid_core** %3, align 8
  %37 = call i32 @kfree(%struct.mlxsw_sp_fid_core* %36)
  ret void
}

declare dso_local i32 @mlxsw_sp_fid_family_unregister(%struct.mlxsw_sp*, i32) #1

declare dso_local i32 @kfree(%struct.mlxsw_sp_fid_core*) #1

declare dso_local i32 @rhashtable_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
