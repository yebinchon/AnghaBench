; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_mr_tcam.c_mlxsw_sp_mr_erif_sublist_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_mr_tcam.c_mlxsw_sp_mr_erif_sublist_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_mr_erif_sublist = type { i32, i32 }
%struct.mlxsw_sp = type { i32 }
%struct.mlxsw_sp_mr_tcam_erif_list = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MLXSW_SP_KVDL_ENTRY_TYPE_MCRIGR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlxsw_sp_mr_erif_sublist* (%struct.mlxsw_sp*, %struct.mlxsw_sp_mr_tcam_erif_list*)* @mlxsw_sp_mr_erif_sublist_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlxsw_sp_mr_erif_sublist* @mlxsw_sp_mr_erif_sublist_create(%struct.mlxsw_sp* %0, %struct.mlxsw_sp_mr_tcam_erif_list* %1) #0 {
  %3 = alloca %struct.mlxsw_sp_mr_erif_sublist*, align 8
  %4 = alloca %struct.mlxsw_sp*, align 8
  %5 = alloca %struct.mlxsw_sp_mr_tcam_erif_list*, align 8
  %6 = alloca %struct.mlxsw_sp_mr_erif_sublist*, align 8
  %7 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %4, align 8
  store %struct.mlxsw_sp_mr_tcam_erif_list* %1, %struct.mlxsw_sp_mr_tcam_erif_list** %5, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.mlxsw_sp_mr_erif_sublist* @kzalloc(i32 8, i32 %8)
  store %struct.mlxsw_sp_mr_erif_sublist* %9, %struct.mlxsw_sp_mr_erif_sublist** %6, align 8
  %10 = load %struct.mlxsw_sp_mr_erif_sublist*, %struct.mlxsw_sp_mr_erif_sublist** %6, align 8
  %11 = icmp ne %struct.mlxsw_sp_mr_erif_sublist* %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  %15 = call %struct.mlxsw_sp_mr_erif_sublist* @ERR_PTR(i32 %14)
  store %struct.mlxsw_sp_mr_erif_sublist* %15, %struct.mlxsw_sp_mr_erif_sublist** %3, align 8
  br label %36

16:                                               ; preds = %2
  %17 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %18 = load i32, i32* @MLXSW_SP_KVDL_ENTRY_TYPE_MCRIGR, align 4
  %19 = load %struct.mlxsw_sp_mr_erif_sublist*, %struct.mlxsw_sp_mr_erif_sublist** %6, align 8
  %20 = getelementptr inbounds %struct.mlxsw_sp_mr_erif_sublist, %struct.mlxsw_sp_mr_erif_sublist* %19, i32 0, i32 1
  %21 = call i32 @mlxsw_sp_kvdl_alloc(%struct.mlxsw_sp* %17, i32 %18, i32 1, i32* %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %16
  %25 = load %struct.mlxsw_sp_mr_erif_sublist*, %struct.mlxsw_sp_mr_erif_sublist** %6, align 8
  %26 = call i32 @kfree(%struct.mlxsw_sp_mr_erif_sublist* %25)
  %27 = load i32, i32* %7, align 4
  %28 = call %struct.mlxsw_sp_mr_erif_sublist* @ERR_PTR(i32 %27)
  store %struct.mlxsw_sp_mr_erif_sublist* %28, %struct.mlxsw_sp_mr_erif_sublist** %3, align 8
  br label %36

29:                                               ; preds = %16
  %30 = load %struct.mlxsw_sp_mr_erif_sublist*, %struct.mlxsw_sp_mr_erif_sublist** %6, align 8
  %31 = getelementptr inbounds %struct.mlxsw_sp_mr_erif_sublist, %struct.mlxsw_sp_mr_erif_sublist* %30, i32 0, i32 0
  %32 = load %struct.mlxsw_sp_mr_tcam_erif_list*, %struct.mlxsw_sp_mr_tcam_erif_list** %5, align 8
  %33 = getelementptr inbounds %struct.mlxsw_sp_mr_tcam_erif_list, %struct.mlxsw_sp_mr_tcam_erif_list* %32, i32 0, i32 0
  %34 = call i32 @list_add_tail(i32* %31, i32* %33)
  %35 = load %struct.mlxsw_sp_mr_erif_sublist*, %struct.mlxsw_sp_mr_erif_sublist** %6, align 8
  store %struct.mlxsw_sp_mr_erif_sublist* %35, %struct.mlxsw_sp_mr_erif_sublist** %3, align 8
  br label %36

36:                                               ; preds = %29, %24, %12
  %37 = load %struct.mlxsw_sp_mr_erif_sublist*, %struct.mlxsw_sp_mr_erif_sublist** %3, align 8
  ret %struct.mlxsw_sp_mr_erif_sublist* %37
}

declare dso_local %struct.mlxsw_sp_mr_erif_sublist* @kzalloc(i32, i32) #1

declare dso_local %struct.mlxsw_sp_mr_erif_sublist* @ERR_PTR(i32) #1

declare dso_local i32 @mlxsw_sp_kvdl_alloc(%struct.mlxsw_sp*, i32, i32, i32*) #1

declare dso_local i32 @kfree(%struct.mlxsw_sp_mr_erif_sublist*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
