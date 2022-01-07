; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_dpipe.c_mlxsw_sp_dpipe_table_host_entry_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_dpipe.c_mlxsw_sp_dpipe_table_host_entry_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devlink_dpipe_entry = type { i32, %struct.devlink_dpipe_value*, i32, %struct.devlink_dpipe_value* }
%struct.devlink_dpipe_match = type { i32 }
%struct.devlink_dpipe_value = type { i32, i8*, %struct.devlink_dpipe_action*, %struct.devlink_dpipe_match* }
%struct.devlink_dpipe_action = type { i32 }

@MLXSW_SP_DPIPE_TABLE_HOST_MATCH_COUNT = common dso_local global i32 0, align 4
@MLXSW_SP_DPIPE_TABLE_HOST_MATCH_RIF = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MLXSW_SP_DPIPE_TABLE_HOST_MATCH_DIP = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.devlink_dpipe_entry*, %struct.devlink_dpipe_value*, %struct.devlink_dpipe_match*, %struct.devlink_dpipe_value*, %struct.devlink_dpipe_action*, i32)* @mlxsw_sp_dpipe_table_host_entry_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_dpipe_table_host_entry_prepare(%struct.devlink_dpipe_entry* %0, %struct.devlink_dpipe_value* %1, %struct.devlink_dpipe_match* %2, %struct.devlink_dpipe_value* %3, %struct.devlink_dpipe_action* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.devlink_dpipe_entry*, align 8
  %9 = alloca %struct.devlink_dpipe_value*, align 8
  %10 = alloca %struct.devlink_dpipe_match*, align 8
  %11 = alloca %struct.devlink_dpipe_value*, align 8
  %12 = alloca %struct.devlink_dpipe_action*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.devlink_dpipe_value*, align 8
  %15 = alloca %struct.devlink_dpipe_match*, align 8
  store %struct.devlink_dpipe_entry* %0, %struct.devlink_dpipe_entry** %8, align 8
  store %struct.devlink_dpipe_value* %1, %struct.devlink_dpipe_value** %9, align 8
  store %struct.devlink_dpipe_match* %2, %struct.devlink_dpipe_match** %10, align 8
  store %struct.devlink_dpipe_value* %3, %struct.devlink_dpipe_value** %11, align 8
  store %struct.devlink_dpipe_action* %4, %struct.devlink_dpipe_action** %12, align 8
  store i32 %5, i32* %13, align 4
  %16 = load %struct.devlink_dpipe_value*, %struct.devlink_dpipe_value** %9, align 8
  %17 = load %struct.devlink_dpipe_entry*, %struct.devlink_dpipe_entry** %8, align 8
  %18 = getelementptr inbounds %struct.devlink_dpipe_entry, %struct.devlink_dpipe_entry* %17, i32 0, i32 3
  store %struct.devlink_dpipe_value* %16, %struct.devlink_dpipe_value** %18, align 8
  %19 = load i32, i32* @MLXSW_SP_DPIPE_TABLE_HOST_MATCH_COUNT, align 4
  %20 = load %struct.devlink_dpipe_entry*, %struct.devlink_dpipe_entry** %8, align 8
  %21 = getelementptr inbounds %struct.devlink_dpipe_entry, %struct.devlink_dpipe_entry* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 8
  %22 = load %struct.devlink_dpipe_value*, %struct.devlink_dpipe_value** %11, align 8
  %23 = load %struct.devlink_dpipe_entry*, %struct.devlink_dpipe_entry** %8, align 8
  %24 = getelementptr inbounds %struct.devlink_dpipe_entry, %struct.devlink_dpipe_entry* %23, i32 0, i32 1
  store %struct.devlink_dpipe_value* %22, %struct.devlink_dpipe_value** %24, align 8
  %25 = load %struct.devlink_dpipe_entry*, %struct.devlink_dpipe_entry** %8, align 8
  %26 = getelementptr inbounds %struct.devlink_dpipe_entry, %struct.devlink_dpipe_entry* %25, i32 0, i32 0
  store i32 1, i32* %26, align 8
  %27 = load %struct.devlink_dpipe_match*, %struct.devlink_dpipe_match** %10, align 8
  %28 = load i64, i64* @MLXSW_SP_DPIPE_TABLE_HOST_MATCH_RIF, align 8
  %29 = getelementptr inbounds %struct.devlink_dpipe_match, %struct.devlink_dpipe_match* %27, i64 %28
  store %struct.devlink_dpipe_match* %29, %struct.devlink_dpipe_match** %15, align 8
  %30 = load %struct.devlink_dpipe_value*, %struct.devlink_dpipe_value** %9, align 8
  %31 = load i64, i64* @MLXSW_SP_DPIPE_TABLE_HOST_MATCH_RIF, align 8
  %32 = getelementptr inbounds %struct.devlink_dpipe_value, %struct.devlink_dpipe_value* %30, i64 %31
  store %struct.devlink_dpipe_value* %32, %struct.devlink_dpipe_value** %14, align 8
  %33 = load %struct.devlink_dpipe_match*, %struct.devlink_dpipe_match** %15, align 8
  %34 = load %struct.devlink_dpipe_value*, %struct.devlink_dpipe_value** %14, align 8
  %35 = getelementptr inbounds %struct.devlink_dpipe_value, %struct.devlink_dpipe_value* %34, i32 0, i32 3
  store %struct.devlink_dpipe_match* %33, %struct.devlink_dpipe_match** %35, align 8
  %36 = load %struct.devlink_dpipe_value*, %struct.devlink_dpipe_value** %14, align 8
  %37 = getelementptr inbounds %struct.devlink_dpipe_value, %struct.devlink_dpipe_value* %36, i32 0, i32 0
  store i32 4, i32* %37, align 8
  %38 = load %struct.devlink_dpipe_value*, %struct.devlink_dpipe_value** %14, align 8
  %39 = getelementptr inbounds %struct.devlink_dpipe_value, %struct.devlink_dpipe_value* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @GFP_KERNEL, align 4
  %42 = call i8* @kmalloc(i32 %40, i32 %41)
  %43 = load %struct.devlink_dpipe_value*, %struct.devlink_dpipe_value** %14, align 8
  %44 = getelementptr inbounds %struct.devlink_dpipe_value, %struct.devlink_dpipe_value* %43, i32 0, i32 1
  store i8* %42, i8** %44, align 8
  %45 = load %struct.devlink_dpipe_value*, %struct.devlink_dpipe_value** %14, align 8
  %46 = getelementptr inbounds %struct.devlink_dpipe_value, %struct.devlink_dpipe_value* %45, i32 0, i32 1
  %47 = load i8*, i8** %46, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %6
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %7, align 4
  br label %109

52:                                               ; preds = %6
  %53 = load %struct.devlink_dpipe_match*, %struct.devlink_dpipe_match** %10, align 8
  %54 = load i64, i64* @MLXSW_SP_DPIPE_TABLE_HOST_MATCH_DIP, align 8
  %55 = getelementptr inbounds %struct.devlink_dpipe_match, %struct.devlink_dpipe_match* %53, i64 %54
  store %struct.devlink_dpipe_match* %55, %struct.devlink_dpipe_match** %15, align 8
  %56 = load %struct.devlink_dpipe_value*, %struct.devlink_dpipe_value** %9, align 8
  %57 = load i64, i64* @MLXSW_SP_DPIPE_TABLE_HOST_MATCH_DIP, align 8
  %58 = getelementptr inbounds %struct.devlink_dpipe_value, %struct.devlink_dpipe_value* %56, i64 %57
  store %struct.devlink_dpipe_value* %58, %struct.devlink_dpipe_value** %14, align 8
  %59 = load %struct.devlink_dpipe_match*, %struct.devlink_dpipe_match** %15, align 8
  %60 = load %struct.devlink_dpipe_value*, %struct.devlink_dpipe_value** %14, align 8
  %61 = getelementptr inbounds %struct.devlink_dpipe_value, %struct.devlink_dpipe_value* %60, i32 0, i32 3
  store %struct.devlink_dpipe_match* %59, %struct.devlink_dpipe_match** %61, align 8
  %62 = load i32, i32* %13, align 4
  switch i32 %62, label %69 [
    i32 129, label %63
    i32 128, label %66
  ]

63:                                               ; preds = %52
  %64 = load %struct.devlink_dpipe_value*, %struct.devlink_dpipe_value** %14, align 8
  %65 = getelementptr inbounds %struct.devlink_dpipe_value, %struct.devlink_dpipe_value* %64, i32 0, i32 0
  store i32 4, i32* %65, align 8
  br label %73

66:                                               ; preds = %52
  %67 = load %struct.devlink_dpipe_value*, %struct.devlink_dpipe_value** %14, align 8
  %68 = getelementptr inbounds %struct.devlink_dpipe_value, %struct.devlink_dpipe_value* %67, i32 0, i32 0
  store i32 4, i32* %68, align 8
  br label %73

69:                                               ; preds = %52
  %70 = call i32 @WARN_ON(i32 1)
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %7, align 4
  br label %109

73:                                               ; preds = %66, %63
  %74 = load %struct.devlink_dpipe_value*, %struct.devlink_dpipe_value** %14, align 8
  %75 = getelementptr inbounds %struct.devlink_dpipe_value, %struct.devlink_dpipe_value* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @GFP_KERNEL, align 4
  %78 = call i8* @kmalloc(i32 %76, i32 %77)
  %79 = load %struct.devlink_dpipe_value*, %struct.devlink_dpipe_value** %14, align 8
  %80 = getelementptr inbounds %struct.devlink_dpipe_value, %struct.devlink_dpipe_value* %79, i32 0, i32 1
  store i8* %78, i8** %80, align 8
  %81 = load %struct.devlink_dpipe_value*, %struct.devlink_dpipe_value** %14, align 8
  %82 = getelementptr inbounds %struct.devlink_dpipe_value, %struct.devlink_dpipe_value* %81, i32 0, i32 1
  %83 = load i8*, i8** %82, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %88, label %85

85:                                               ; preds = %73
  %86 = load i32, i32* @ENOMEM, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %7, align 4
  br label %109

88:                                               ; preds = %73
  %89 = load %struct.devlink_dpipe_action*, %struct.devlink_dpipe_action** %12, align 8
  %90 = load %struct.devlink_dpipe_value*, %struct.devlink_dpipe_value** %11, align 8
  %91 = getelementptr inbounds %struct.devlink_dpipe_value, %struct.devlink_dpipe_value* %90, i32 0, i32 2
  store %struct.devlink_dpipe_action* %89, %struct.devlink_dpipe_action** %91, align 8
  %92 = load %struct.devlink_dpipe_value*, %struct.devlink_dpipe_value** %11, align 8
  %93 = getelementptr inbounds %struct.devlink_dpipe_value, %struct.devlink_dpipe_value* %92, i32 0, i32 0
  store i32 4, i32* %93, align 8
  %94 = load %struct.devlink_dpipe_value*, %struct.devlink_dpipe_value** %11, align 8
  %95 = getelementptr inbounds %struct.devlink_dpipe_value, %struct.devlink_dpipe_value* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @GFP_KERNEL, align 4
  %98 = call i8* @kmalloc(i32 %96, i32 %97)
  %99 = load %struct.devlink_dpipe_value*, %struct.devlink_dpipe_value** %11, align 8
  %100 = getelementptr inbounds %struct.devlink_dpipe_value, %struct.devlink_dpipe_value* %99, i32 0, i32 1
  store i8* %98, i8** %100, align 8
  %101 = load %struct.devlink_dpipe_value*, %struct.devlink_dpipe_value** %11, align 8
  %102 = getelementptr inbounds %struct.devlink_dpipe_value, %struct.devlink_dpipe_value* %101, i32 0, i32 1
  %103 = load i8*, i8** %102, align 8
  %104 = icmp ne i8* %103, null
  br i1 %104, label %108, label %105

105:                                              ; preds = %88
  %106 = load i32, i32* @ENOMEM, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %7, align 4
  br label %109

108:                                              ; preds = %88
  store i32 0, i32* %7, align 4
  br label %109

109:                                              ; preds = %108, %105, %85, %69, %49
  %110 = load i32, i32* %7, align 4
  ret i32 %110
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
