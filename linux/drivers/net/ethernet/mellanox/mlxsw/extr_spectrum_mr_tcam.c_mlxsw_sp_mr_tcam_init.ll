; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_mr_tcam.c_mlxsw_sp_mr_tcam_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_mr_tcam.c_mlxsw_sp_mr_tcam_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { i32, %struct.mlxsw_sp_mr_tcam_ops* }
%struct.mlxsw_sp_mr_tcam_ops = type { i32 (%struct.mlxsw_sp.0*, i32)*, i32 }
%struct.mlxsw_sp.0 = type opaque
%struct.mlxsw_sp_mr_tcam = type { i32 }

@MC_ERIF_LIST_ENTRIES = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp*, i8*)* @mlxsw_sp_mr_tcam_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_mr_tcam_init(%struct.mlxsw_sp* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlxsw_sp*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.mlxsw_sp_mr_tcam_ops*, align 8
  %7 = alloca %struct.mlxsw_sp_mr_tcam*, align 8
  %8 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %10 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %9, i32 0, i32 1
  %11 = load %struct.mlxsw_sp_mr_tcam_ops*, %struct.mlxsw_sp_mr_tcam_ops** %10, align 8
  store %struct.mlxsw_sp_mr_tcam_ops* %11, %struct.mlxsw_sp_mr_tcam_ops** %6, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.mlxsw_sp_mr_tcam*
  store %struct.mlxsw_sp_mr_tcam* %13, %struct.mlxsw_sp_mr_tcam** %7, align 8
  %14 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %15 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @MC_ERIF_LIST_ENTRIES, align 4
  %18 = call i32 @MLXSW_CORE_RES_VALID(i32 %16, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @EIO, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %58

23:                                               ; preds = %2
  %24 = load %struct.mlxsw_sp_mr_tcam_ops*, %struct.mlxsw_sp_mr_tcam_ops** %6, align 8
  %25 = getelementptr inbounds %struct.mlxsw_sp_mr_tcam_ops, %struct.mlxsw_sp_mr_tcam_ops* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call i32 @kzalloc(i32 %26, i32 %27)
  %29 = load %struct.mlxsw_sp_mr_tcam*, %struct.mlxsw_sp_mr_tcam** %7, align 8
  %30 = getelementptr inbounds %struct.mlxsw_sp_mr_tcam, %struct.mlxsw_sp_mr_tcam* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load %struct.mlxsw_sp_mr_tcam*, %struct.mlxsw_sp_mr_tcam** %7, align 8
  %32 = getelementptr inbounds %struct.mlxsw_sp_mr_tcam, %struct.mlxsw_sp_mr_tcam* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %23
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %58

38:                                               ; preds = %23
  %39 = load %struct.mlxsw_sp_mr_tcam_ops*, %struct.mlxsw_sp_mr_tcam_ops** %6, align 8
  %40 = getelementptr inbounds %struct.mlxsw_sp_mr_tcam_ops, %struct.mlxsw_sp_mr_tcam_ops* %39, i32 0, i32 0
  %41 = load i32 (%struct.mlxsw_sp.0*, i32)*, i32 (%struct.mlxsw_sp.0*, i32)** %40, align 8
  %42 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %43 = bitcast %struct.mlxsw_sp* %42 to %struct.mlxsw_sp.0*
  %44 = load %struct.mlxsw_sp_mr_tcam*, %struct.mlxsw_sp_mr_tcam** %7, align 8
  %45 = getelementptr inbounds %struct.mlxsw_sp_mr_tcam, %struct.mlxsw_sp_mr_tcam* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 %41(%struct.mlxsw_sp.0* %43, i32 %46)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %38
  br label %52

51:                                               ; preds = %38
  store i32 0, i32* %3, align 4
  br label %58

52:                                               ; preds = %50
  %53 = load %struct.mlxsw_sp_mr_tcam*, %struct.mlxsw_sp_mr_tcam** %7, align 8
  %54 = getelementptr inbounds %struct.mlxsw_sp_mr_tcam, %struct.mlxsw_sp_mr_tcam* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @kfree(i32 %55)
  %57 = load i32, i32* %8, align 4
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %52, %51, %35, %20
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @MLXSW_CORE_RES_VALID(i32, i32) #1

declare dso_local i32 @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
