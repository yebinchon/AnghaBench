; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_nve.c_mlxsw_sp_nve_mc_record_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_nve.c_mlxsw_sp_nve_mc_record_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_nve_mc_record = type { i32, i32, %struct.mlxsw_sp_nve_mc_list*, %struct.mlxsw_sp*, i32, i32 }
%struct.mlxsw_sp = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }
%struct.mlxsw_sp_nve_mc_list = type { i32 }

@entries = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MLXSW_SP_KVDL_ENTRY_TYPE_TNUMT = common dso_local global i32 0, align 4
@mlxsw_sp_nve_mc_record_ops_arr = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlxsw_sp_nve_mc_record* (%struct.mlxsw_sp*, %struct.mlxsw_sp_nve_mc_list*, i32)* @mlxsw_sp_nve_mc_record_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlxsw_sp_nve_mc_record* @mlxsw_sp_nve_mc_record_create(%struct.mlxsw_sp* %0, %struct.mlxsw_sp_nve_mc_list* %1, i32 %2) #0 {
  %4 = alloca %struct.mlxsw_sp_nve_mc_record*, align 8
  %5 = alloca %struct.mlxsw_sp*, align 8
  %6 = alloca %struct.mlxsw_sp_nve_mc_list*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mlxsw_sp_nve_mc_record*, align 8
  %10 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %5, align 8
  store %struct.mlxsw_sp_nve_mc_list* %1, %struct.mlxsw_sp_nve_mc_list** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %12 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* %7, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %8, align 4
  %20 = load %struct.mlxsw_sp_nve_mc_record*, %struct.mlxsw_sp_nve_mc_record** %9, align 8
  %21 = load i32, i32* @entries, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @struct_size(%struct.mlxsw_sp_nve_mc_record* %20, i32 %21, i32 %22)
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.mlxsw_sp_nve_mc_record* @kzalloc(i32 %23, i32 %24)
  store %struct.mlxsw_sp_nve_mc_record* %25, %struct.mlxsw_sp_nve_mc_record** %9, align 8
  %26 = load %struct.mlxsw_sp_nve_mc_record*, %struct.mlxsw_sp_nve_mc_record** %9, align 8
  %27 = icmp ne %struct.mlxsw_sp_nve_mc_record* %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %3
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  %31 = call %struct.mlxsw_sp_nve_mc_record* @ERR_PTR(i32 %30)
  store %struct.mlxsw_sp_nve_mc_record* %31, %struct.mlxsw_sp_nve_mc_record** %4, align 8
  br label %69

32:                                               ; preds = %3
  %33 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %34 = load i32, i32* @MLXSW_SP_KVDL_ENTRY_TYPE_TNUMT, align 4
  %35 = load %struct.mlxsw_sp_nve_mc_record*, %struct.mlxsw_sp_nve_mc_record** %9, align 8
  %36 = getelementptr inbounds %struct.mlxsw_sp_nve_mc_record, %struct.mlxsw_sp_nve_mc_record* %35, i32 0, i32 5
  %37 = call i32 @mlxsw_sp_kvdl_alloc(%struct.mlxsw_sp* %33, i32 %34, i32 1, i32* %36)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  br label %64

41:                                               ; preds = %32
  %42 = load i32*, i32** @mlxsw_sp_nve_mc_record_ops_arr, align 8
  %43 = load i32, i32* %7, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.mlxsw_sp_nve_mc_record*, %struct.mlxsw_sp_nve_mc_record** %9, align 8
  %48 = getelementptr inbounds %struct.mlxsw_sp_nve_mc_record, %struct.mlxsw_sp_nve_mc_record* %47, i32 0, i32 4
  store i32 %46, i32* %48, align 8
  %49 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %50 = load %struct.mlxsw_sp_nve_mc_record*, %struct.mlxsw_sp_nve_mc_record** %9, align 8
  %51 = getelementptr inbounds %struct.mlxsw_sp_nve_mc_record, %struct.mlxsw_sp_nve_mc_record* %50, i32 0, i32 3
  store %struct.mlxsw_sp* %49, %struct.mlxsw_sp** %51, align 8
  %52 = load %struct.mlxsw_sp_nve_mc_list*, %struct.mlxsw_sp_nve_mc_list** %6, align 8
  %53 = load %struct.mlxsw_sp_nve_mc_record*, %struct.mlxsw_sp_nve_mc_record** %9, align 8
  %54 = getelementptr inbounds %struct.mlxsw_sp_nve_mc_record, %struct.mlxsw_sp_nve_mc_record* %53, i32 0, i32 2
  store %struct.mlxsw_sp_nve_mc_list* %52, %struct.mlxsw_sp_nve_mc_list** %54, align 8
  %55 = load i32, i32* %7, align 4
  %56 = load %struct.mlxsw_sp_nve_mc_record*, %struct.mlxsw_sp_nve_mc_record** %9, align 8
  %57 = getelementptr inbounds %struct.mlxsw_sp_nve_mc_record, %struct.mlxsw_sp_nve_mc_record* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load %struct.mlxsw_sp_nve_mc_record*, %struct.mlxsw_sp_nve_mc_record** %9, align 8
  %59 = getelementptr inbounds %struct.mlxsw_sp_nve_mc_record, %struct.mlxsw_sp_nve_mc_record* %58, i32 0, i32 1
  %60 = load %struct.mlxsw_sp_nve_mc_list*, %struct.mlxsw_sp_nve_mc_list** %6, align 8
  %61 = getelementptr inbounds %struct.mlxsw_sp_nve_mc_list, %struct.mlxsw_sp_nve_mc_list* %60, i32 0, i32 0
  %62 = call i32 @list_add_tail(i32* %59, i32* %61)
  %63 = load %struct.mlxsw_sp_nve_mc_record*, %struct.mlxsw_sp_nve_mc_record** %9, align 8
  store %struct.mlxsw_sp_nve_mc_record* %63, %struct.mlxsw_sp_nve_mc_record** %4, align 8
  br label %69

64:                                               ; preds = %40
  %65 = load %struct.mlxsw_sp_nve_mc_record*, %struct.mlxsw_sp_nve_mc_record** %9, align 8
  %66 = call i32 @kfree(%struct.mlxsw_sp_nve_mc_record* %65)
  %67 = load i32, i32* %10, align 4
  %68 = call %struct.mlxsw_sp_nve_mc_record* @ERR_PTR(i32 %67)
  store %struct.mlxsw_sp_nve_mc_record* %68, %struct.mlxsw_sp_nve_mc_record** %4, align 8
  br label %69

69:                                               ; preds = %64, %41, %28
  %70 = load %struct.mlxsw_sp_nve_mc_record*, %struct.mlxsw_sp_nve_mc_record** %4, align 8
  ret %struct.mlxsw_sp_nve_mc_record* %70
}

declare dso_local %struct.mlxsw_sp_nve_mc_record* @kzalloc(i32, i32) #1

declare dso_local i32 @struct_size(%struct.mlxsw_sp_nve_mc_record*, i32, i32) #1

declare dso_local %struct.mlxsw_sp_nve_mc_record* @ERR_PTR(i32) #1

declare dso_local i32 @mlxsw_sp_kvdl_alloc(%struct.mlxsw_sp*, i32, i32, i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @kfree(%struct.mlxsw_sp_nve_mc_record*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
