; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eswitch_offloads_termtbl.c_mlx5_eswitch_add_termtbl_rule.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eswitch_offloads_termtbl.c_mlx5_eswitch_add_termtbl_rule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_flow_handle = type { i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.mlx5_eswitch = type { i32 }
%struct.mlx5_flow_table = type { i32 }
%struct.mlx5_flow_spec = type { i32 }
%struct.mlx5_esw_flow_attr = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.mlx5_termtbl_handle* }
%struct.mlx5_termtbl_handle = type { i64, %struct.TYPE_8__ }
%struct.mlx5_flow_act = type { i32 }
%struct.mlx5_flow_destination = type { i64, i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

@MLX5_FLOW_CONTEXT_ACTION_FWD_DEST = common dso_local global i32 0, align 4
@MLX5_FLOW_DESTINATION_TYPE_VPORT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"Failed to create termination table\0A\00", align 1
@MLX5_FLOW_DESTINATION_TYPE_FLOW_TABLE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mlx5_flow_handle* @mlx5_eswitch_add_termtbl_rule(%struct.mlx5_eswitch* %0, %struct.mlx5_flow_table* %1, %struct.mlx5_flow_spec* %2, %struct.mlx5_esw_flow_attr* %3, %struct.mlx5_flow_act* %4, %struct.mlx5_flow_destination* %5, i32 %6) #0 {
  %8 = alloca %struct.mlx5_eswitch*, align 8
  %9 = alloca %struct.mlx5_flow_table*, align 8
  %10 = alloca %struct.mlx5_flow_spec*, align 8
  %11 = alloca %struct.mlx5_esw_flow_attr*, align 8
  %12 = alloca %struct.mlx5_flow_act*, align 8
  %13 = alloca %struct.mlx5_flow_destination*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.mlx5_flow_act, align 4
  %16 = alloca %struct.mlx5_flow_handle*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.mlx5_termtbl_handle*, align 8
  %22 = alloca %struct.mlx5_termtbl_handle*, align 8
  store %struct.mlx5_eswitch* %0, %struct.mlx5_eswitch** %8, align 8
  store %struct.mlx5_flow_table* %1, %struct.mlx5_flow_table** %9, align 8
  store %struct.mlx5_flow_spec* %2, %struct.mlx5_flow_spec** %10, align 8
  store %struct.mlx5_esw_flow_attr* %3, %struct.mlx5_esw_flow_attr** %11, align 8
  store %struct.mlx5_flow_act* %4, %struct.mlx5_flow_act** %12, align 8
  store %struct.mlx5_flow_destination* %5, %struct.mlx5_flow_destination** %13, align 8
  store i32 %6, i32* %14, align 4
  %23 = bitcast %struct.mlx5_flow_act* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %23, i8 0, i64 4, i1 false)
  store %struct.mlx5_flow_handle* null, %struct.mlx5_flow_handle** %16, align 8
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %24 = load %struct.mlx5_flow_act*, %struct.mlx5_flow_act** %12, align 8
  %25 = call i32 @mlx5_eswitch_termtbl_actions_move(%struct.mlx5_flow_act* %24, %struct.mlx5_flow_act* %15)
  %26 = load i32, i32* @MLX5_FLOW_CONTEXT_ACTION_FWD_DEST, align 4
  %27 = getelementptr inbounds %struct.mlx5_flow_act, %struct.mlx5_flow_act* %15, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, %26
  store i32 %29, i32* %27, align 4
  store i32 0, i32* %19, align 4
  br label %30

30:                                               ; preds = %84, %7
  %31 = load i32, i32* %19, align 4
  %32 = load i32, i32* %14, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %87

34:                                               ; preds = %30
  %35 = load %struct.mlx5_flow_destination*, %struct.mlx5_flow_destination** %13, align 8
  %36 = load i32, i32* %19, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.mlx5_flow_destination, %struct.mlx5_flow_destination* %35, i64 %37
  %39 = getelementptr inbounds %struct.mlx5_flow_destination, %struct.mlx5_flow_destination* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @MLX5_FLOW_DESTINATION_TYPE_VPORT, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %34
  br label %84

44:                                               ; preds = %34
  %45 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %8, align 8
  %46 = load %struct.mlx5_flow_destination*, %struct.mlx5_flow_destination** %13, align 8
  %47 = load i32, i32* %19, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.mlx5_flow_destination, %struct.mlx5_flow_destination* %46, i64 %48
  %50 = call %struct.mlx5_termtbl_handle* @mlx5_eswitch_termtbl_get_create(%struct.mlx5_eswitch* %45, %struct.mlx5_flow_act* %15, %struct.mlx5_flow_destination* %49)
  store %struct.mlx5_termtbl_handle* %50, %struct.mlx5_termtbl_handle** %21, align 8
  %51 = load %struct.mlx5_termtbl_handle*, %struct.mlx5_termtbl_handle** %21, align 8
  %52 = call i64 @IS_ERR(%struct.mlx5_termtbl_handle* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %44
  %55 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %8, align 8
  %56 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @esw_warn(i32 %57, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %105

59:                                               ; preds = %44
  %60 = load %struct.mlx5_termtbl_handle*, %struct.mlx5_termtbl_handle** %21, align 8
  %61 = load %struct.mlx5_esw_flow_attr*, %struct.mlx5_esw_flow_attr** %11, align 8
  %62 = getelementptr inbounds %struct.mlx5_esw_flow_attr, %struct.mlx5_esw_flow_attr* %61, i32 0, i32 0
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = load i32, i32* %18, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  store %struct.mlx5_termtbl_handle* %60, %struct.mlx5_termtbl_handle** %67, align 8
  %68 = load i32, i32* %18, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %18, align 4
  %70 = load i64, i64* @MLX5_FLOW_DESTINATION_TYPE_FLOW_TABLE, align 8
  %71 = load %struct.mlx5_flow_destination*, %struct.mlx5_flow_destination** %13, align 8
  %72 = load i32, i32* %19, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.mlx5_flow_destination, %struct.mlx5_flow_destination* %71, i64 %73
  %75 = getelementptr inbounds %struct.mlx5_flow_destination, %struct.mlx5_flow_destination* %74, i32 0, i32 0
  store i64 %70, i64* %75, align 8
  %76 = load %struct.mlx5_termtbl_handle*, %struct.mlx5_termtbl_handle** %21, align 8
  %77 = getelementptr inbounds %struct.mlx5_termtbl_handle, %struct.mlx5_termtbl_handle* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.mlx5_flow_destination*, %struct.mlx5_flow_destination** %13, align 8
  %80 = load i32, i32* %19, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.mlx5_flow_destination, %struct.mlx5_flow_destination* %79, i64 %81
  %83 = getelementptr inbounds %struct.mlx5_flow_destination, %struct.mlx5_flow_destination* %82, i32 0, i32 1
  store i64 %78, i64* %83, align 8
  store i32 1, i32* %17, align 4
  br label %84

84:                                               ; preds = %59, %43
  %85 = load i32, i32* %19, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %19, align 4
  br label %30

87:                                               ; preds = %30
  %88 = load i32, i32* %17, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %87
  br label %105

91:                                               ; preds = %87
  %92 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %9, align 8
  %93 = load %struct.mlx5_flow_spec*, %struct.mlx5_flow_spec** %10, align 8
  %94 = load %struct.mlx5_flow_act*, %struct.mlx5_flow_act** %12, align 8
  %95 = load %struct.mlx5_flow_destination*, %struct.mlx5_flow_destination** %13, align 8
  %96 = load i32, i32* %14, align 4
  %97 = call %struct.mlx5_termtbl_handle* @mlx5_add_flow_rules(%struct.mlx5_flow_table* %92, %struct.mlx5_flow_spec* %93, %struct.mlx5_flow_act* %94, %struct.mlx5_flow_destination* %95, i32 %96)
  %98 = bitcast %struct.mlx5_termtbl_handle* %97 to %struct.mlx5_flow_handle*
  store %struct.mlx5_flow_handle* %98, %struct.mlx5_flow_handle** %16, align 8
  %99 = load %struct.mlx5_flow_handle*, %struct.mlx5_flow_handle** %16, align 8
  %100 = bitcast %struct.mlx5_flow_handle* %99 to %struct.mlx5_termtbl_handle*
  %101 = call i64 @IS_ERR(%struct.mlx5_termtbl_handle* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %91
  br label %105

104:                                              ; preds = %91
  br label %189

105:                                              ; preds = %103, %90, %54
  %106 = load %struct.mlx5_flow_act*, %struct.mlx5_flow_act** %12, align 8
  %107 = call i32 @mlx5_eswitch_termtbl_actions_move(%struct.mlx5_flow_act* %15, %struct.mlx5_flow_act* %106)
  store i32 0, i32* %20, align 4
  br label %108

108:                                              ; preds = %178, %105
  %109 = load i32, i32* %20, align 4
  %110 = load i32, i32* %18, align 4
  %111 = icmp slt i32 %109, %110
  br i1 %111, label %112, label %181

112:                                              ; preds = %108
  %113 = load %struct.mlx5_esw_flow_attr*, %struct.mlx5_esw_flow_attr** %11, align 8
  %114 = getelementptr inbounds %struct.mlx5_esw_flow_attr, %struct.mlx5_esw_flow_attr* %113, i32 0, i32 0
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %114, align 8
  %116 = load i32, i32* %20, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 0
  %120 = load %struct.mlx5_termtbl_handle*, %struct.mlx5_termtbl_handle** %119, align 8
  store %struct.mlx5_termtbl_handle* %120, %struct.mlx5_termtbl_handle** %22, align 8
  store i32 0, i32* %19, align 4
  br label %121

121:                                              ; preds = %174, %112
  %122 = load i32, i32* %19, align 4
  %123 = load i32, i32* %14, align 4
  %124 = icmp slt i32 %122, %123
  br i1 %124, label %125, label %177

125:                                              ; preds = %121
  %126 = load %struct.mlx5_flow_destination*, %struct.mlx5_flow_destination** %13, align 8
  %127 = load i32, i32* %19, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.mlx5_flow_destination, %struct.mlx5_flow_destination* %126, i64 %128
  %130 = getelementptr inbounds %struct.mlx5_flow_destination, %struct.mlx5_flow_destination* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = load %struct.mlx5_termtbl_handle*, %struct.mlx5_termtbl_handle** %22, align 8
  %133 = getelementptr inbounds %struct.mlx5_termtbl_handle, %struct.mlx5_termtbl_handle* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %131, %134
  br i1 %135, label %136, label %137

136:                                              ; preds = %125
  br label %174

137:                                              ; preds = %125
  %138 = load %struct.mlx5_flow_destination*, %struct.mlx5_flow_destination** %13, align 8
  %139 = load i32, i32* %19, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.mlx5_flow_destination, %struct.mlx5_flow_destination* %138, i64 %140
  %142 = call i32 @memset(%struct.mlx5_flow_destination* %141, i32 0, i32 24)
  %143 = load i64, i64* @MLX5_FLOW_DESTINATION_TYPE_VPORT, align 8
  %144 = load %struct.mlx5_flow_destination*, %struct.mlx5_flow_destination** %13, align 8
  %145 = load i32, i32* %19, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.mlx5_flow_destination, %struct.mlx5_flow_destination* %144, i64 %146
  %148 = getelementptr inbounds %struct.mlx5_flow_destination, %struct.mlx5_flow_destination* %147, i32 0, i32 0
  store i64 %143, i64* %148, align 8
  %149 = load %struct.mlx5_termtbl_handle*, %struct.mlx5_termtbl_handle** %22, align 8
  %150 = getelementptr inbounds %struct.mlx5_termtbl_handle, %struct.mlx5_termtbl_handle* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.mlx5_flow_destination*, %struct.mlx5_flow_destination** %13, align 8
  %155 = load i32, i32* %19, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.mlx5_flow_destination, %struct.mlx5_flow_destination* %154, i64 %156
  %158 = getelementptr inbounds %struct.mlx5_flow_destination, %struct.mlx5_flow_destination* %157, i32 0, i32 2
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 1
  store i32 %153, i32* %159, align 4
  %160 = load %struct.mlx5_termtbl_handle*, %struct.mlx5_termtbl_handle** %22, align 8
  %161 = getelementptr inbounds %struct.mlx5_termtbl_handle, %struct.mlx5_termtbl_handle* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = load %struct.mlx5_flow_destination*, %struct.mlx5_flow_destination** %13, align 8
  %166 = load i32, i32* %19, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.mlx5_flow_destination, %struct.mlx5_flow_destination* %165, i64 %167
  %169 = getelementptr inbounds %struct.mlx5_flow_destination, %struct.mlx5_flow_destination* %168, i32 0, i32 2
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 0
  store i32 %164, i32* %170, align 8
  %171 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %8, align 8
  %172 = load %struct.mlx5_termtbl_handle*, %struct.mlx5_termtbl_handle** %22, align 8
  %173 = call i32 @mlx5_eswitch_termtbl_put(%struct.mlx5_eswitch* %171, %struct.mlx5_termtbl_handle* %172)
  br label %177

174:                                              ; preds = %136
  %175 = load i32, i32* %19, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %19, align 4
  br label %121

177:                                              ; preds = %137, %121
  br label %178

178:                                              ; preds = %177
  %179 = load i32, i32* %20, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %20, align 4
  br label %108

181:                                              ; preds = %108
  %182 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %9, align 8
  %183 = load %struct.mlx5_flow_spec*, %struct.mlx5_flow_spec** %10, align 8
  %184 = load %struct.mlx5_flow_act*, %struct.mlx5_flow_act** %12, align 8
  %185 = load %struct.mlx5_flow_destination*, %struct.mlx5_flow_destination** %13, align 8
  %186 = load i32, i32* %14, align 4
  %187 = call %struct.mlx5_termtbl_handle* @mlx5_add_flow_rules(%struct.mlx5_flow_table* %182, %struct.mlx5_flow_spec* %183, %struct.mlx5_flow_act* %184, %struct.mlx5_flow_destination* %185, i32 %186)
  %188 = bitcast %struct.mlx5_termtbl_handle* %187 to %struct.mlx5_flow_handle*
  store %struct.mlx5_flow_handle* %188, %struct.mlx5_flow_handle** %16, align 8
  br label %189

189:                                              ; preds = %181, %104
  %190 = load %struct.mlx5_flow_handle*, %struct.mlx5_flow_handle** %16, align 8
  ret %struct.mlx5_flow_handle* %190
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @mlx5_eswitch_termtbl_actions_move(%struct.mlx5_flow_act*, %struct.mlx5_flow_act*) #2

declare dso_local %struct.mlx5_termtbl_handle* @mlx5_eswitch_termtbl_get_create(%struct.mlx5_eswitch*, %struct.mlx5_flow_act*, %struct.mlx5_flow_destination*) #2

declare dso_local i64 @IS_ERR(%struct.mlx5_termtbl_handle*) #2

declare dso_local i32 @esw_warn(i32, i8*) #2

declare dso_local %struct.mlx5_termtbl_handle* @mlx5_add_flow_rules(%struct.mlx5_flow_table*, %struct.mlx5_flow_spec*, %struct.mlx5_flow_act*, %struct.mlx5_flow_destination*, i32) #2

declare dso_local i32 @memset(%struct.mlx5_flow_destination*, i32, i32) #2

declare dso_local i32 @mlx5_eswitch_termtbl_put(%struct.mlx5_eswitch*, %struct.mlx5_termtbl_handle*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
