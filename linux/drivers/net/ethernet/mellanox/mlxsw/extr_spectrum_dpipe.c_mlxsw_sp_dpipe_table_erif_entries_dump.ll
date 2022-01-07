; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_dpipe.c_mlxsw_sp_dpipe_table_erif_entries_dump.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_dpipe.c_mlxsw_sp_dpipe_table_erif_entries_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devlink_dpipe_dump_ctx = type { i32 }
%struct.devlink_dpipe_value = type { i32 }
%struct.devlink_dpipe_action = type { i32 }
%struct.devlink_dpipe_match = type { i32 }
%struct.devlink_dpipe_entry = type { i32 }
%struct.mlxsw_sp = type { i32 }
%struct.mlxsw_sp_rif = type { i32 }

@MAX_RIFS = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, %struct.devlink_dpipe_dump_ctx*)* @mlxsw_sp_dpipe_table_erif_entries_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_dpipe_table_erif_entries_dump(i8* %0, i32 %1, %struct.devlink_dpipe_dump_ctx* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.devlink_dpipe_dump_ctx*, align 8
  %8 = alloca %struct.devlink_dpipe_value, align 4
  %9 = alloca %struct.devlink_dpipe_value, align 4
  %10 = alloca %struct.devlink_dpipe_action, align 4
  %11 = alloca %struct.devlink_dpipe_match, align 4
  %12 = alloca %struct.devlink_dpipe_entry, align 4
  %13 = alloca %struct.mlxsw_sp*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.mlxsw_sp_rif*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.devlink_dpipe_dump_ctx* %2, %struct.devlink_dpipe_dump_ctx** %7, align 8
  %19 = bitcast %struct.devlink_dpipe_action* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %19, i8 0, i64 4, i1 false)
  %20 = bitcast %struct.devlink_dpipe_match* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %20, i8 0, i64 4, i1 false)
  %21 = bitcast %struct.devlink_dpipe_entry* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %21, i8 0, i64 4, i1 false)
  %22 = load i8*, i8** %5, align 8
  %23 = bitcast i8* %22 to %struct.mlxsw_sp*
  store %struct.mlxsw_sp* %23, %struct.mlxsw_sp** %13, align 8
  %24 = call i32 @memset(%struct.devlink_dpipe_value* %8, i32 0, i32 4)
  %25 = call i32 @memset(%struct.devlink_dpipe_value* %9, i32 0, i32 4)
  %26 = call i32 @mlxsw_sp_erif_match_action_prepare(%struct.devlink_dpipe_match* %11, %struct.devlink_dpipe_action* %10)
  %27 = call i32 @mlxsw_sp_erif_entry_prepare(%struct.devlink_dpipe_entry* %12, %struct.devlink_dpipe_value* %8, %struct.devlink_dpipe_match* %11, %struct.devlink_dpipe_value* %9, %struct.devlink_dpipe_action* %10)
  store i32 %27, i32* %17, align 4
  %28 = load i32, i32* %17, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %3
  %31 = load i32, i32* %17, align 4
  store i32 %31, i32* %4, align 4
  br label %107

32:                                               ; preds = %3
  %33 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %13, align 8
  %34 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @MAX_RIFS, align 4
  %37 = call i32 @MLXSW_CORE_RES_GET(i32 %35, i32 %36)
  store i32 %37, i32* %14, align 4
  %38 = call i32 (...) @rtnl_lock()
  store i32 0, i32* %15, align 4
  br label %39

39:                                               ; preds = %98, %32
  %40 = load %struct.devlink_dpipe_dump_ctx*, %struct.devlink_dpipe_dump_ctx** %7, align 8
  %41 = call i32 @devlink_dpipe_entry_ctx_prepare(%struct.devlink_dpipe_dump_ctx* %40)
  store i32 %41, i32* %17, align 4
  %42 = load i32, i32* %17, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = load i32, i32* %17, align 4
  store i32 %45, i32* %4, align 4
  br label %107

46:                                               ; preds = %39
  store i32 0, i32* %16, align 4
  br label %47

47:                                               ; preds = %89, %46
  %48 = load i32, i32* %15, align 4
  %49 = load i32, i32* %14, align 4
  %50 = icmp ult i32 %48, %49
  br i1 %50, label %51, label %92

51:                                               ; preds = %47
  %52 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %13, align 8
  %53 = load i32, i32* %15, align 4
  %54 = call %struct.mlxsw_sp_rif* @mlxsw_sp_rif_by_index(%struct.mlxsw_sp* %52, i32 %53)
  store %struct.mlxsw_sp_rif* %54, %struct.mlxsw_sp_rif** %18, align 8
  %55 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %18, align 8
  %56 = icmp ne %struct.mlxsw_sp_rif* %55, null
  br i1 %56, label %57, label %61

57:                                               ; preds = %51
  %58 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %18, align 8
  %59 = call i32 @mlxsw_sp_rif_dev(%struct.mlxsw_sp_rif* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %57, %51
  br label %89

62:                                               ; preds = %57
  %63 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %13, align 8
  %64 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %18, align 8
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @mlxsw_sp_erif_entry_get(%struct.mlxsw_sp* %63, %struct.devlink_dpipe_entry* %12, %struct.mlxsw_sp_rif* %64, i32 %65)
  store i32 %66, i32* %17, align 4
  %67 = load i32, i32* %17, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %62
  br label %103

70:                                               ; preds = %62
  %71 = load %struct.devlink_dpipe_dump_ctx*, %struct.devlink_dpipe_dump_ctx** %7, align 8
  %72 = call i32 @devlink_dpipe_entry_ctx_append(%struct.devlink_dpipe_dump_ctx* %71, %struct.devlink_dpipe_entry* %12)
  store i32 %72, i32* %17, align 4
  %73 = load i32, i32* %17, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %86

75:                                               ; preds = %70
  %76 = load i32, i32* %17, align 4
  %77 = load i32, i32* @EMSGSIZE, align 4
  %78 = sub nsw i32 0, %77
  %79 = icmp eq i32 %76, %78
  br i1 %79, label %80, label %85

80:                                               ; preds = %75
  %81 = load i32, i32* %16, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %80
  br label %102

84:                                               ; preds = %80
  br label %92

85:                                               ; preds = %75
  br label %102

86:                                               ; preds = %70
  %87 = load i32, i32* %16, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %16, align 4
  br label %89

89:                                               ; preds = %86, %61
  %90 = load i32, i32* %15, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %15, align 4
  br label %47

92:                                               ; preds = %84, %47
  %93 = load %struct.devlink_dpipe_dump_ctx*, %struct.devlink_dpipe_dump_ctx** %7, align 8
  %94 = call i32 @devlink_dpipe_entry_ctx_close(%struct.devlink_dpipe_dump_ctx* %93)
  %95 = load i32, i32* %15, align 4
  %96 = load i32, i32* %14, align 4
  %97 = icmp ne i32 %95, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %92
  br label %39

99:                                               ; preds = %92
  %100 = call i32 (...) @rtnl_unlock()
  %101 = call i32 @devlink_dpipe_entry_clear(%struct.devlink_dpipe_entry* %12)
  store i32 0, i32* %4, align 4
  br label %107

102:                                              ; preds = %85, %83
  br label %103

103:                                              ; preds = %102, %69
  %104 = call i32 (...) @rtnl_unlock()
  %105 = call i32 @devlink_dpipe_entry_clear(%struct.devlink_dpipe_entry* %12)
  %106 = load i32, i32* %17, align 4
  store i32 %106, i32* %4, align 4
  br label %107

107:                                              ; preds = %103, %99, %44, %30
  %108 = load i32, i32* %4, align 4
  ret i32 %108
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @memset(%struct.devlink_dpipe_value*, i32, i32) #2

declare dso_local i32 @mlxsw_sp_erif_match_action_prepare(%struct.devlink_dpipe_match*, %struct.devlink_dpipe_action*) #2

declare dso_local i32 @mlxsw_sp_erif_entry_prepare(%struct.devlink_dpipe_entry*, %struct.devlink_dpipe_value*, %struct.devlink_dpipe_match*, %struct.devlink_dpipe_value*, %struct.devlink_dpipe_action*) #2

declare dso_local i32 @MLXSW_CORE_RES_GET(i32, i32) #2

declare dso_local i32 @rtnl_lock(...) #2

declare dso_local i32 @devlink_dpipe_entry_ctx_prepare(%struct.devlink_dpipe_dump_ctx*) #2

declare dso_local %struct.mlxsw_sp_rif* @mlxsw_sp_rif_by_index(%struct.mlxsw_sp*, i32) #2

declare dso_local i32 @mlxsw_sp_rif_dev(%struct.mlxsw_sp_rif*) #2

declare dso_local i32 @mlxsw_sp_erif_entry_get(%struct.mlxsw_sp*, %struct.devlink_dpipe_entry*, %struct.mlxsw_sp_rif*, i32) #2

declare dso_local i32 @devlink_dpipe_entry_ctx_append(%struct.devlink_dpipe_dump_ctx*, %struct.devlink_dpipe_entry*) #2

declare dso_local i32 @devlink_dpipe_entry_ctx_close(%struct.devlink_dpipe_dump_ctx*) #2

declare dso_local i32 @rtnl_unlock(...) #2

declare dso_local i32 @devlink_dpipe_entry_clear(%struct.devlink_dpipe_entry*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
