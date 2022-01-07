; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_dpipe.c_mlxsw_sp_dpipe_table_adj_entry_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_dpipe.c_mlxsw_sp_dpipe_table_adj_entry_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devlink_dpipe_entry = type { i32, %struct.devlink_dpipe_value*, i32, %struct.devlink_dpipe_value* }
%struct.devlink_dpipe_match = type { i32 }
%struct.devlink_dpipe_value = type { i32, i8*, %struct.devlink_dpipe_action*, %struct.devlink_dpipe_match* }
%struct.devlink_dpipe_action = type { i32 }

@MLXSW_SP_DPIPE_TABLE_ADJ_MATCH_COUNT = common dso_local global i32 0, align 4
@MLXSW_SP_DPIPE_TABLE_ADJ_ACTION_COUNT = common dso_local global i32 0, align 4
@MLXSW_SP_DPIPE_TABLE_ADJ_MATCH_INDEX = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MLXSW_SP_DPIPE_TABLE_ADJ_MATCH_SIZE = common dso_local global i64 0, align 8
@MLXSW_SP_DPIPE_TABLE_ADJ_MATCH_HASH_INDEX = common dso_local global i64 0, align 8
@MLXSW_SP_DPIPE_TABLE_ADJ_ACTION_DST_MAC = common dso_local global i64 0, align 8
@MLXSW_SP_DPIPE_TABLE_ADJ_ACTION_ERIF_PORT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.devlink_dpipe_entry*, %struct.devlink_dpipe_value*, %struct.devlink_dpipe_match*, %struct.devlink_dpipe_value*, %struct.devlink_dpipe_action*)* @mlxsw_sp_dpipe_table_adj_entry_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_dpipe_table_adj_entry_prepare(%struct.devlink_dpipe_entry* %0, %struct.devlink_dpipe_value* %1, %struct.devlink_dpipe_match* %2, %struct.devlink_dpipe_value* %3, %struct.devlink_dpipe_action* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.devlink_dpipe_entry*, align 8
  %8 = alloca %struct.devlink_dpipe_value*, align 8
  %9 = alloca %struct.devlink_dpipe_match*, align 8
  %10 = alloca %struct.devlink_dpipe_value*, align 8
  %11 = alloca %struct.devlink_dpipe_action*, align 8
  %12 = alloca %struct.devlink_dpipe_value*, align 8
  %13 = alloca %struct.devlink_dpipe_value*, align 8
  %14 = alloca %struct.devlink_dpipe_action*, align 8
  %15 = alloca %struct.devlink_dpipe_match*, align 8
  store %struct.devlink_dpipe_entry* %0, %struct.devlink_dpipe_entry** %7, align 8
  store %struct.devlink_dpipe_value* %1, %struct.devlink_dpipe_value** %8, align 8
  store %struct.devlink_dpipe_match* %2, %struct.devlink_dpipe_match** %9, align 8
  store %struct.devlink_dpipe_value* %3, %struct.devlink_dpipe_value** %10, align 8
  store %struct.devlink_dpipe_action* %4, %struct.devlink_dpipe_action** %11, align 8
  %16 = load %struct.devlink_dpipe_value*, %struct.devlink_dpipe_value** %8, align 8
  %17 = load %struct.devlink_dpipe_entry*, %struct.devlink_dpipe_entry** %7, align 8
  %18 = getelementptr inbounds %struct.devlink_dpipe_entry, %struct.devlink_dpipe_entry* %17, i32 0, i32 3
  store %struct.devlink_dpipe_value* %16, %struct.devlink_dpipe_value** %18, align 8
  %19 = load i32, i32* @MLXSW_SP_DPIPE_TABLE_ADJ_MATCH_COUNT, align 4
  %20 = load %struct.devlink_dpipe_entry*, %struct.devlink_dpipe_entry** %7, align 8
  %21 = getelementptr inbounds %struct.devlink_dpipe_entry, %struct.devlink_dpipe_entry* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 8
  %22 = load %struct.devlink_dpipe_value*, %struct.devlink_dpipe_value** %10, align 8
  %23 = load %struct.devlink_dpipe_entry*, %struct.devlink_dpipe_entry** %7, align 8
  %24 = getelementptr inbounds %struct.devlink_dpipe_entry, %struct.devlink_dpipe_entry* %23, i32 0, i32 1
  store %struct.devlink_dpipe_value* %22, %struct.devlink_dpipe_value** %24, align 8
  %25 = load i32, i32* @MLXSW_SP_DPIPE_TABLE_ADJ_ACTION_COUNT, align 4
  %26 = load %struct.devlink_dpipe_entry*, %struct.devlink_dpipe_entry** %7, align 8
  %27 = getelementptr inbounds %struct.devlink_dpipe_entry, %struct.devlink_dpipe_entry* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load %struct.devlink_dpipe_match*, %struct.devlink_dpipe_match** %9, align 8
  %29 = load i64, i64* @MLXSW_SP_DPIPE_TABLE_ADJ_MATCH_INDEX, align 8
  %30 = getelementptr inbounds %struct.devlink_dpipe_match, %struct.devlink_dpipe_match* %28, i64 %29
  store %struct.devlink_dpipe_match* %30, %struct.devlink_dpipe_match** %15, align 8
  %31 = load %struct.devlink_dpipe_value*, %struct.devlink_dpipe_value** %8, align 8
  %32 = load i64, i64* @MLXSW_SP_DPIPE_TABLE_ADJ_MATCH_INDEX, align 8
  %33 = getelementptr inbounds %struct.devlink_dpipe_value, %struct.devlink_dpipe_value* %31, i64 %32
  store %struct.devlink_dpipe_value* %33, %struct.devlink_dpipe_value** %13, align 8
  %34 = load %struct.devlink_dpipe_match*, %struct.devlink_dpipe_match** %15, align 8
  %35 = load %struct.devlink_dpipe_value*, %struct.devlink_dpipe_value** %13, align 8
  %36 = getelementptr inbounds %struct.devlink_dpipe_value, %struct.devlink_dpipe_value* %35, i32 0, i32 3
  store %struct.devlink_dpipe_match* %34, %struct.devlink_dpipe_match** %36, align 8
  %37 = load %struct.devlink_dpipe_value*, %struct.devlink_dpipe_value** %13, align 8
  %38 = getelementptr inbounds %struct.devlink_dpipe_value, %struct.devlink_dpipe_value* %37, i32 0, i32 0
  store i32 4, i32* %38, align 8
  %39 = load %struct.devlink_dpipe_value*, %struct.devlink_dpipe_value** %13, align 8
  %40 = getelementptr inbounds %struct.devlink_dpipe_value, %struct.devlink_dpipe_value* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @GFP_KERNEL, align 4
  %43 = call i8* @kmalloc(i32 %41, i32 %42)
  %44 = load %struct.devlink_dpipe_value*, %struct.devlink_dpipe_value** %13, align 8
  %45 = getelementptr inbounds %struct.devlink_dpipe_value, %struct.devlink_dpipe_value* %44, i32 0, i32 1
  store i8* %43, i8** %45, align 8
  %46 = load %struct.devlink_dpipe_value*, %struct.devlink_dpipe_value** %13, align 8
  %47 = getelementptr inbounds %struct.devlink_dpipe_value, %struct.devlink_dpipe_value* %46, i32 0, i32 1
  %48 = load i8*, i8** %47, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %5
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %6, align 4
  br label %158

53:                                               ; preds = %5
  %54 = load %struct.devlink_dpipe_match*, %struct.devlink_dpipe_match** %9, align 8
  %55 = load i64, i64* @MLXSW_SP_DPIPE_TABLE_ADJ_MATCH_SIZE, align 8
  %56 = getelementptr inbounds %struct.devlink_dpipe_match, %struct.devlink_dpipe_match* %54, i64 %55
  store %struct.devlink_dpipe_match* %56, %struct.devlink_dpipe_match** %15, align 8
  %57 = load %struct.devlink_dpipe_value*, %struct.devlink_dpipe_value** %8, align 8
  %58 = load i64, i64* @MLXSW_SP_DPIPE_TABLE_ADJ_MATCH_SIZE, align 8
  %59 = getelementptr inbounds %struct.devlink_dpipe_value, %struct.devlink_dpipe_value* %57, i64 %58
  store %struct.devlink_dpipe_value* %59, %struct.devlink_dpipe_value** %13, align 8
  %60 = load %struct.devlink_dpipe_match*, %struct.devlink_dpipe_match** %15, align 8
  %61 = load %struct.devlink_dpipe_value*, %struct.devlink_dpipe_value** %13, align 8
  %62 = getelementptr inbounds %struct.devlink_dpipe_value, %struct.devlink_dpipe_value* %61, i32 0, i32 3
  store %struct.devlink_dpipe_match* %60, %struct.devlink_dpipe_match** %62, align 8
  %63 = load %struct.devlink_dpipe_value*, %struct.devlink_dpipe_value** %13, align 8
  %64 = getelementptr inbounds %struct.devlink_dpipe_value, %struct.devlink_dpipe_value* %63, i32 0, i32 0
  store i32 4, i32* %64, align 8
  %65 = load %struct.devlink_dpipe_value*, %struct.devlink_dpipe_value** %13, align 8
  %66 = getelementptr inbounds %struct.devlink_dpipe_value, %struct.devlink_dpipe_value* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @GFP_KERNEL, align 4
  %69 = call i8* @kmalloc(i32 %67, i32 %68)
  %70 = load %struct.devlink_dpipe_value*, %struct.devlink_dpipe_value** %13, align 8
  %71 = getelementptr inbounds %struct.devlink_dpipe_value, %struct.devlink_dpipe_value* %70, i32 0, i32 1
  store i8* %69, i8** %71, align 8
  %72 = load %struct.devlink_dpipe_value*, %struct.devlink_dpipe_value** %13, align 8
  %73 = getelementptr inbounds %struct.devlink_dpipe_value, %struct.devlink_dpipe_value* %72, i32 0, i32 1
  %74 = load i8*, i8** %73, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %79, label %76

76:                                               ; preds = %53
  %77 = load i32, i32* @ENOMEM, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %6, align 4
  br label %158

79:                                               ; preds = %53
  %80 = load %struct.devlink_dpipe_match*, %struct.devlink_dpipe_match** %9, align 8
  %81 = load i64, i64* @MLXSW_SP_DPIPE_TABLE_ADJ_MATCH_HASH_INDEX, align 8
  %82 = getelementptr inbounds %struct.devlink_dpipe_match, %struct.devlink_dpipe_match* %80, i64 %81
  store %struct.devlink_dpipe_match* %82, %struct.devlink_dpipe_match** %15, align 8
  %83 = load %struct.devlink_dpipe_value*, %struct.devlink_dpipe_value** %8, align 8
  %84 = load i64, i64* @MLXSW_SP_DPIPE_TABLE_ADJ_MATCH_HASH_INDEX, align 8
  %85 = getelementptr inbounds %struct.devlink_dpipe_value, %struct.devlink_dpipe_value* %83, i64 %84
  store %struct.devlink_dpipe_value* %85, %struct.devlink_dpipe_value** %13, align 8
  %86 = load %struct.devlink_dpipe_match*, %struct.devlink_dpipe_match** %15, align 8
  %87 = load %struct.devlink_dpipe_value*, %struct.devlink_dpipe_value** %13, align 8
  %88 = getelementptr inbounds %struct.devlink_dpipe_value, %struct.devlink_dpipe_value* %87, i32 0, i32 3
  store %struct.devlink_dpipe_match* %86, %struct.devlink_dpipe_match** %88, align 8
  %89 = load %struct.devlink_dpipe_value*, %struct.devlink_dpipe_value** %13, align 8
  %90 = getelementptr inbounds %struct.devlink_dpipe_value, %struct.devlink_dpipe_value* %89, i32 0, i32 0
  store i32 4, i32* %90, align 8
  %91 = load %struct.devlink_dpipe_value*, %struct.devlink_dpipe_value** %13, align 8
  %92 = getelementptr inbounds %struct.devlink_dpipe_value, %struct.devlink_dpipe_value* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @GFP_KERNEL, align 4
  %95 = call i8* @kmalloc(i32 %93, i32 %94)
  %96 = load %struct.devlink_dpipe_value*, %struct.devlink_dpipe_value** %13, align 8
  %97 = getelementptr inbounds %struct.devlink_dpipe_value, %struct.devlink_dpipe_value* %96, i32 0, i32 1
  store i8* %95, i8** %97, align 8
  %98 = load %struct.devlink_dpipe_value*, %struct.devlink_dpipe_value** %13, align 8
  %99 = getelementptr inbounds %struct.devlink_dpipe_value, %struct.devlink_dpipe_value* %98, i32 0, i32 1
  %100 = load i8*, i8** %99, align 8
  %101 = icmp ne i8* %100, null
  br i1 %101, label %105, label %102

102:                                              ; preds = %79
  %103 = load i32, i32* @ENOMEM, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %6, align 4
  br label %158

105:                                              ; preds = %79
  %106 = load %struct.devlink_dpipe_action*, %struct.devlink_dpipe_action** %11, align 8
  %107 = load i64, i64* @MLXSW_SP_DPIPE_TABLE_ADJ_ACTION_DST_MAC, align 8
  %108 = getelementptr inbounds %struct.devlink_dpipe_action, %struct.devlink_dpipe_action* %106, i64 %107
  store %struct.devlink_dpipe_action* %108, %struct.devlink_dpipe_action** %14, align 8
  %109 = load %struct.devlink_dpipe_value*, %struct.devlink_dpipe_value** %10, align 8
  %110 = load i64, i64* @MLXSW_SP_DPIPE_TABLE_ADJ_ACTION_DST_MAC, align 8
  %111 = getelementptr inbounds %struct.devlink_dpipe_value, %struct.devlink_dpipe_value* %109, i64 %110
  store %struct.devlink_dpipe_value* %111, %struct.devlink_dpipe_value** %12, align 8
  %112 = load %struct.devlink_dpipe_action*, %struct.devlink_dpipe_action** %14, align 8
  %113 = load %struct.devlink_dpipe_value*, %struct.devlink_dpipe_value** %12, align 8
  %114 = getelementptr inbounds %struct.devlink_dpipe_value, %struct.devlink_dpipe_value* %113, i32 0, i32 2
  store %struct.devlink_dpipe_action* %112, %struct.devlink_dpipe_action** %114, align 8
  %115 = load %struct.devlink_dpipe_value*, %struct.devlink_dpipe_value** %12, align 8
  %116 = getelementptr inbounds %struct.devlink_dpipe_value, %struct.devlink_dpipe_value* %115, i32 0, i32 0
  store i32 4, i32* %116, align 8
  %117 = load %struct.devlink_dpipe_value*, %struct.devlink_dpipe_value** %12, align 8
  %118 = getelementptr inbounds %struct.devlink_dpipe_value, %struct.devlink_dpipe_value* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @GFP_KERNEL, align 4
  %121 = call i8* @kmalloc(i32 %119, i32 %120)
  %122 = load %struct.devlink_dpipe_value*, %struct.devlink_dpipe_value** %12, align 8
  %123 = getelementptr inbounds %struct.devlink_dpipe_value, %struct.devlink_dpipe_value* %122, i32 0, i32 1
  store i8* %121, i8** %123, align 8
  %124 = load %struct.devlink_dpipe_value*, %struct.devlink_dpipe_value** %12, align 8
  %125 = getelementptr inbounds %struct.devlink_dpipe_value, %struct.devlink_dpipe_value* %124, i32 0, i32 1
  %126 = load i8*, i8** %125, align 8
  %127 = icmp ne i8* %126, null
  br i1 %127, label %131, label %128

128:                                              ; preds = %105
  %129 = load i32, i32* @ENOMEM, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %6, align 4
  br label %158

131:                                              ; preds = %105
  %132 = load %struct.devlink_dpipe_action*, %struct.devlink_dpipe_action** %11, align 8
  %133 = load i64, i64* @MLXSW_SP_DPIPE_TABLE_ADJ_ACTION_ERIF_PORT, align 8
  %134 = getelementptr inbounds %struct.devlink_dpipe_action, %struct.devlink_dpipe_action* %132, i64 %133
  store %struct.devlink_dpipe_action* %134, %struct.devlink_dpipe_action** %14, align 8
  %135 = load %struct.devlink_dpipe_value*, %struct.devlink_dpipe_value** %10, align 8
  %136 = load i64, i64* @MLXSW_SP_DPIPE_TABLE_ADJ_ACTION_ERIF_PORT, align 8
  %137 = getelementptr inbounds %struct.devlink_dpipe_value, %struct.devlink_dpipe_value* %135, i64 %136
  store %struct.devlink_dpipe_value* %137, %struct.devlink_dpipe_value** %12, align 8
  %138 = load %struct.devlink_dpipe_action*, %struct.devlink_dpipe_action** %14, align 8
  %139 = load %struct.devlink_dpipe_value*, %struct.devlink_dpipe_value** %12, align 8
  %140 = getelementptr inbounds %struct.devlink_dpipe_value, %struct.devlink_dpipe_value* %139, i32 0, i32 2
  store %struct.devlink_dpipe_action* %138, %struct.devlink_dpipe_action** %140, align 8
  %141 = load %struct.devlink_dpipe_value*, %struct.devlink_dpipe_value** %12, align 8
  %142 = getelementptr inbounds %struct.devlink_dpipe_value, %struct.devlink_dpipe_value* %141, i32 0, i32 0
  store i32 4, i32* %142, align 8
  %143 = load %struct.devlink_dpipe_value*, %struct.devlink_dpipe_value** %12, align 8
  %144 = getelementptr inbounds %struct.devlink_dpipe_value, %struct.devlink_dpipe_value* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @GFP_KERNEL, align 4
  %147 = call i8* @kmalloc(i32 %145, i32 %146)
  %148 = load %struct.devlink_dpipe_value*, %struct.devlink_dpipe_value** %12, align 8
  %149 = getelementptr inbounds %struct.devlink_dpipe_value, %struct.devlink_dpipe_value* %148, i32 0, i32 1
  store i8* %147, i8** %149, align 8
  %150 = load %struct.devlink_dpipe_value*, %struct.devlink_dpipe_value** %12, align 8
  %151 = getelementptr inbounds %struct.devlink_dpipe_value, %struct.devlink_dpipe_value* %150, i32 0, i32 1
  %152 = load i8*, i8** %151, align 8
  %153 = icmp ne i8* %152, null
  br i1 %153, label %157, label %154

154:                                              ; preds = %131
  %155 = load i32, i32* @ENOMEM, align 4
  %156 = sub nsw i32 0, %155
  store i32 %156, i32* %6, align 4
  br label %158

157:                                              ; preds = %131
  store i32 0, i32* %6, align 4
  br label %158

158:                                              ; preds = %157, %154, %128, %102, %76, %50
  %159 = load i32, i32* %6, align 4
  ret i32 %159
}

declare dso_local i8* @kmalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
