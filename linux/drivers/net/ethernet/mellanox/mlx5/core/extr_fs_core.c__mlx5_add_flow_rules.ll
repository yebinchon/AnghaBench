; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_fs_core.c__mlx5_add_flow_rules.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_fs_core.c__mlx5_add_flow_rules.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_flow_handle = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.mlx5_flow_table = type { %struct.TYPE_7__ }
%struct.mlx5_flow_spec = type { i32 }
%struct.mlx5_flow_act = type { i32 }
%struct.mlx5_flow_destination = type { i32 }
%struct.mlx5_flow_steering = type { i32 }
%struct.mlx5_flow_group = type { %struct.TYPE_7__ }
%struct.match_list_head = type { i32 }
%struct.fs_fte = type { %struct.TYPE_7__ }

@EINVAL = common dso_local global i32 0, align 4
@FS_LOCK_GRANDPARENT = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@FS_LOCK_PARENT = common dso_local global i32 0, align 4
@FS_LOCK_CHILD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlx5_flow_handle* (%struct.mlx5_flow_table*, %struct.mlx5_flow_spec*, %struct.mlx5_flow_act*, %struct.mlx5_flow_destination*, i32)* @_mlx5_add_flow_rules to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlx5_flow_handle* @_mlx5_add_flow_rules(%struct.mlx5_flow_table* %0, %struct.mlx5_flow_spec* %1, %struct.mlx5_flow_act* %2, %struct.mlx5_flow_destination* %3, i32 %4) #0 {
  %6 = alloca %struct.mlx5_flow_handle*, align 8
  %7 = alloca %struct.mlx5_flow_table*, align 8
  %8 = alloca %struct.mlx5_flow_spec*, align 8
  %9 = alloca %struct.mlx5_flow_act*, align 8
  %10 = alloca %struct.mlx5_flow_destination*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.mlx5_flow_steering*, align 8
  %13 = alloca %struct.mlx5_flow_group*, align 8
  %14 = alloca %struct.mlx5_flow_handle*, align 8
  %15 = alloca %struct.match_list_head, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.fs_fte*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.mlx5_flow_table* %0, %struct.mlx5_flow_table** %7, align 8
  store %struct.mlx5_flow_spec* %1, %struct.mlx5_flow_spec** %8, align 8
  store %struct.mlx5_flow_act* %2, %struct.mlx5_flow_act** %9, align 8
  store %struct.mlx5_flow_destination* %3, %struct.mlx5_flow_destination** %10, align 8
  store i32 %4, i32* %11, align 4
  %21 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %7, align 8
  %22 = getelementptr inbounds %struct.mlx5_flow_table, %struct.mlx5_flow_table* %21, i32 0, i32 0
  %23 = call %struct.mlx5_flow_steering* @get_steering(%struct.TYPE_7__* %22)
  store %struct.mlx5_flow_steering* %23, %struct.mlx5_flow_steering** %12, align 8
  store i32 0, i32* %16, align 4
  %24 = load %struct.mlx5_flow_spec*, %struct.mlx5_flow_spec** %8, align 8
  %25 = call i32 @check_valid_spec(%struct.mlx5_flow_spec* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %5
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  %30 = call %struct.mlx5_flow_handle* @ERR_PTR(i32 %29)
  store %struct.mlx5_flow_handle* %30, %struct.mlx5_flow_handle** %6, align 8
  br label %244

31:                                               ; preds = %5
  store i32 0, i32* %20, align 4
  br label %32

32:                                               ; preds = %52, %31
  %33 = load i32, i32* %20, align 4
  %34 = load i32, i32* %11, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %55

36:                                               ; preds = %32
  %37 = load %struct.mlx5_flow_destination*, %struct.mlx5_flow_destination** %10, align 8
  %38 = load i32, i32* %20, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.mlx5_flow_destination, %struct.mlx5_flow_destination* %37, i64 %39
  %41 = load %struct.mlx5_flow_act*, %struct.mlx5_flow_act** %9, align 8
  %42 = getelementptr inbounds %struct.mlx5_flow_act, %struct.mlx5_flow_act* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %7, align 8
  %45 = call i32 @dest_is_valid(%struct.mlx5_flow_destination* %40, i32 %43, %struct.mlx5_flow_table* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %36
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  %50 = call %struct.mlx5_flow_handle* @ERR_PTR(i32 %49)
  store %struct.mlx5_flow_handle* %50, %struct.mlx5_flow_handle** %6, align 8
  br label %244

51:                                               ; preds = %36
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %20, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %20, align 4
  br label %32

55:                                               ; preds = %32
  %56 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %7, align 8
  %57 = getelementptr inbounds %struct.mlx5_flow_table, %struct.mlx5_flow_table* %56, i32 0, i32 0
  %58 = load i32, i32* @FS_LOCK_GRANDPARENT, align 4
  %59 = call i32 @nested_down_read_ref_node(%struct.TYPE_7__* %57, i32 %58)
  br label %60

60:                                               ; preds = %146, %55
  %61 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %7, align 8
  %62 = getelementptr inbounds %struct.mlx5_flow_table, %struct.mlx5_flow_table* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = call i32 @atomic_read(i32* %63)
  store i32 %64, i32* %18, align 4
  %65 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %7, align 8
  %66 = load %struct.mlx5_flow_spec*, %struct.mlx5_flow_spec** %8, align 8
  %67 = call i32 @build_match_list(%struct.match_list_head* %15, %struct.mlx5_flow_table* %65, %struct.mlx5_flow_spec* %66)
  store i32 %67, i32* %19, align 4
  %68 = load i32, i32* %19, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %84

70:                                               ; preds = %60
  %71 = load i32, i32* %16, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %70
  %74 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %7, align 8
  %75 = getelementptr inbounds %struct.mlx5_flow_table, %struct.mlx5_flow_table* %74, i32 0, i32 0
  %76 = call i32 @up_write_ref_node(%struct.TYPE_7__* %75, i32 0)
  br label %81

77:                                               ; preds = %70
  %78 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %7, align 8
  %79 = getelementptr inbounds %struct.mlx5_flow_table, %struct.mlx5_flow_table* %78, i32 0, i32 0
  %80 = call i32 @up_read_ref_node(%struct.TYPE_7__* %79)
  br label %81

81:                                               ; preds = %77, %73
  %82 = load i32, i32* %19, align 4
  %83 = call %struct.mlx5_flow_handle* @ERR_PTR(i32 %82)
  store %struct.mlx5_flow_handle* %83, %struct.mlx5_flow_handle** %6, align 8
  br label %244

84:                                               ; preds = %60
  %85 = load i32, i32* %16, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %91, label %87

87:                                               ; preds = %84
  %88 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %7, align 8
  %89 = getelementptr inbounds %struct.mlx5_flow_table, %struct.mlx5_flow_table* %88, i32 0, i32 0
  %90 = call i32 @up_read_ref_node(%struct.TYPE_7__* %89)
  br label %91

91:                                               ; preds = %87, %84
  %92 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %7, align 8
  %93 = getelementptr inbounds %struct.match_list_head, %struct.match_list_head* %15, i32 0, i32 0
  %94 = load %struct.mlx5_flow_spec*, %struct.mlx5_flow_spec** %8, align 8
  %95 = load %struct.mlx5_flow_act*, %struct.mlx5_flow_act** %9, align 8
  %96 = load %struct.mlx5_flow_destination*, %struct.mlx5_flow_destination** %10, align 8
  %97 = load i32, i32* %11, align 4
  %98 = load i32, i32* %18, align 4
  %99 = call %struct.mlx5_flow_handle* @try_add_to_existing_fg(%struct.mlx5_flow_table* %92, i32* %93, %struct.mlx5_flow_spec* %94, %struct.mlx5_flow_act* %95, %struct.mlx5_flow_destination* %96, i32 %97, i32 %98)
  store %struct.mlx5_flow_handle* %99, %struct.mlx5_flow_handle** %14, align 8
  %100 = call i32 @free_match_list(%struct.match_list_head* %15)
  %101 = load %struct.mlx5_flow_handle*, %struct.mlx5_flow_handle** %14, align 8
  %102 = call i64 @IS_ERR(%struct.mlx5_flow_handle* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %116

104:                                              ; preds = %91
  %105 = load %struct.mlx5_flow_handle*, %struct.mlx5_flow_handle** %14, align 8
  %106 = call i32 @PTR_ERR(%struct.mlx5_flow_handle* %105)
  %107 = load i32, i32* @ENOENT, align 4
  %108 = sub nsw i32 0, %107
  %109 = icmp ne i32 %106, %108
  br i1 %109, label %110, label %125

110:                                              ; preds = %104
  %111 = load %struct.mlx5_flow_handle*, %struct.mlx5_flow_handle** %14, align 8
  %112 = call i32 @PTR_ERR(%struct.mlx5_flow_handle* %111)
  %113 = load i32, i32* @EAGAIN, align 4
  %114 = sub nsw i32 0, %113
  %115 = icmp ne i32 %112, %114
  br i1 %115, label %116, label %125

116:                                              ; preds = %110, %91
  %117 = load i32, i32* %16, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %116
  %120 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %7, align 8
  %121 = getelementptr inbounds %struct.mlx5_flow_table, %struct.mlx5_flow_table* %120, i32 0, i32 0
  %122 = call i32 @up_write_ref_node(%struct.TYPE_7__* %121, i32 0)
  br label %123

123:                                              ; preds = %119, %116
  %124 = load %struct.mlx5_flow_handle*, %struct.mlx5_flow_handle** %14, align 8
  store %struct.mlx5_flow_handle* %124, %struct.mlx5_flow_handle** %6, align 8
  br label %244

125:                                              ; preds = %110, %104
  %126 = load i32, i32* %16, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %133, label %128

128:                                              ; preds = %125
  %129 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %7, align 8
  %130 = getelementptr inbounds %struct.mlx5_flow_table, %struct.mlx5_flow_table* %129, i32 0, i32 0
  %131 = load i32, i32* @FS_LOCK_GRANDPARENT, align 4
  %132 = call i32 @nested_down_write_ref_node(%struct.TYPE_7__* %130, i32 %131)
  store i32 1, i32* %16, align 4
  br label %133

133:                                              ; preds = %128, %125
  %134 = load %struct.mlx5_flow_handle*, %struct.mlx5_flow_handle** %14, align 8
  %135 = call i32 @PTR_ERR(%struct.mlx5_flow_handle* %134)
  %136 = load i32, i32* @EAGAIN, align 4
  %137 = sub nsw i32 0, %136
  %138 = icmp eq i32 %135, %137
  br i1 %138, label %146, label %139

139:                                              ; preds = %133
  %140 = load i32, i32* %18, align 4
  %141 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %7, align 8
  %142 = getelementptr inbounds %struct.mlx5_flow_table, %struct.mlx5_flow_table* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 0
  %144 = call i32 @atomic_read(i32* %143)
  %145 = icmp ne i32 %140, %144
  br i1 %145, label %146, label %147

146:                                              ; preds = %139, %133
  br label %60

147:                                              ; preds = %139
  %148 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %7, align 8
  %149 = load %struct.mlx5_flow_spec*, %struct.mlx5_flow_spec** %8, align 8
  %150 = call %struct.mlx5_flow_handle* @alloc_auto_flow_group(%struct.mlx5_flow_table* %148, %struct.mlx5_flow_spec* %149)
  %151 = bitcast %struct.mlx5_flow_handle* %150 to %struct.mlx5_flow_group*
  store %struct.mlx5_flow_group* %151, %struct.mlx5_flow_group** %13, align 8
  %152 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %13, align 8
  %153 = bitcast %struct.mlx5_flow_group* %152 to %struct.mlx5_flow_handle*
  %154 = call i64 @IS_ERR(%struct.mlx5_flow_handle* %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %164

156:                                              ; preds = %147
  %157 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %13, align 8
  %158 = bitcast %struct.mlx5_flow_group* %157 to %struct.mlx5_flow_handle*
  %159 = call %struct.mlx5_flow_handle* @ERR_CAST(%struct.mlx5_flow_handle* %158)
  store %struct.mlx5_flow_handle* %159, %struct.mlx5_flow_handle** %14, align 8
  %160 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %7, align 8
  %161 = getelementptr inbounds %struct.mlx5_flow_table, %struct.mlx5_flow_table* %160, i32 0, i32 0
  %162 = call i32 @up_write_ref_node(%struct.TYPE_7__* %161, i32 0)
  %163 = load %struct.mlx5_flow_handle*, %struct.mlx5_flow_handle** %14, align 8
  store %struct.mlx5_flow_handle* %163, %struct.mlx5_flow_handle** %6, align 8
  br label %244

164:                                              ; preds = %147
  %165 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %13, align 8
  %166 = getelementptr inbounds %struct.mlx5_flow_group, %struct.mlx5_flow_group* %165, i32 0, i32 0
  %167 = load i32, i32* @FS_LOCK_PARENT, align 4
  %168 = call i32 @nested_down_write_ref_node(%struct.TYPE_7__* %166, i32 %167)
  %169 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %7, align 8
  %170 = getelementptr inbounds %struct.mlx5_flow_table, %struct.mlx5_flow_table* %169, i32 0, i32 0
  %171 = call i32 @up_write_ref_node(%struct.TYPE_7__* %170, i32 0)
  %172 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %7, align 8
  %173 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %13, align 8
  %174 = bitcast %struct.mlx5_flow_group* %173 to %struct.mlx5_flow_handle*
  %175 = call i32 @create_auto_flow_group(%struct.mlx5_flow_table* %172, %struct.mlx5_flow_handle* %174)
  store i32 %175, i32* %19, align 4
  %176 = load i32, i32* %19, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %164
  br label %235

179:                                              ; preds = %164
  %180 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %7, align 8
  %181 = load %struct.mlx5_flow_spec*, %struct.mlx5_flow_spec** %8, align 8
  %182 = load %struct.mlx5_flow_act*, %struct.mlx5_flow_act** %9, align 8
  %183 = call %struct.mlx5_flow_handle* @alloc_fte(%struct.mlx5_flow_table* %180, %struct.mlx5_flow_spec* %181, %struct.mlx5_flow_act* %182)
  %184 = bitcast %struct.mlx5_flow_handle* %183 to %struct.fs_fte*
  store %struct.fs_fte* %184, %struct.fs_fte** %17, align 8
  %185 = load %struct.fs_fte*, %struct.fs_fte** %17, align 8
  %186 = bitcast %struct.fs_fte* %185 to %struct.mlx5_flow_handle*
  %187 = call i64 @IS_ERR(%struct.mlx5_flow_handle* %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %193

189:                                              ; preds = %179
  %190 = load %struct.fs_fte*, %struct.fs_fte** %17, align 8
  %191 = bitcast %struct.fs_fte* %190 to %struct.mlx5_flow_handle*
  %192 = call i32 @PTR_ERR(%struct.mlx5_flow_handle* %191)
  store i32 %192, i32* %19, align 4
  br label %235

193:                                              ; preds = %179
  %194 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %13, align 8
  %195 = bitcast %struct.mlx5_flow_group* %194 to %struct.mlx5_flow_handle*
  %196 = load %struct.fs_fte*, %struct.fs_fte** %17, align 8
  %197 = bitcast %struct.fs_fte* %196 to %struct.mlx5_flow_handle*
  %198 = call i32 @insert_fte(%struct.mlx5_flow_handle* %195, %struct.mlx5_flow_handle* %197)
  store i32 %198, i32* %19, align 4
  %199 = load i32, i32* %19, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %208

201:                                              ; preds = %193
  %202 = load %struct.mlx5_flow_steering*, %struct.mlx5_flow_steering** %12, align 8
  %203 = getelementptr inbounds %struct.mlx5_flow_steering, %struct.mlx5_flow_steering* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = load %struct.fs_fte*, %struct.fs_fte** %17, align 8
  %206 = bitcast %struct.fs_fte* %205 to %struct.mlx5_flow_handle*
  %207 = call i32 @kmem_cache_free(i32 %204, %struct.mlx5_flow_handle* %206)
  br label %235

208:                                              ; preds = %193
  %209 = load %struct.fs_fte*, %struct.fs_fte** %17, align 8
  %210 = getelementptr inbounds %struct.fs_fte, %struct.fs_fte* %209, i32 0, i32 0
  %211 = load i32, i32* @FS_LOCK_CHILD, align 4
  %212 = call i32 @nested_down_write_ref_node(%struct.TYPE_7__* %210, i32 %211)
  %213 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %13, align 8
  %214 = getelementptr inbounds %struct.mlx5_flow_group, %struct.mlx5_flow_group* %213, i32 0, i32 0
  %215 = call i32 @up_write_ref_node(%struct.TYPE_7__* %214, i32 0)
  %216 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %13, align 8
  %217 = bitcast %struct.mlx5_flow_group* %216 to %struct.mlx5_flow_handle*
  %218 = load %struct.mlx5_flow_spec*, %struct.mlx5_flow_spec** %8, align 8
  %219 = load %struct.mlx5_flow_act*, %struct.mlx5_flow_act** %9, align 8
  %220 = load %struct.mlx5_flow_destination*, %struct.mlx5_flow_destination** %10, align 8
  %221 = load i32, i32* %11, align 4
  %222 = load %struct.fs_fte*, %struct.fs_fte** %17, align 8
  %223 = bitcast %struct.fs_fte* %222 to %struct.mlx5_flow_handle*
  %224 = call %struct.mlx5_flow_handle* @add_rule_fg(%struct.mlx5_flow_handle* %217, %struct.mlx5_flow_spec* %218, %struct.mlx5_flow_act* %219, %struct.mlx5_flow_destination* %220, i32 %221, %struct.mlx5_flow_handle* %223)
  store %struct.mlx5_flow_handle* %224, %struct.mlx5_flow_handle** %14, align 8
  %225 = load %struct.fs_fte*, %struct.fs_fte** %17, align 8
  %226 = getelementptr inbounds %struct.fs_fte, %struct.fs_fte* %225, i32 0, i32 0
  %227 = call i32 @up_write_ref_node(%struct.TYPE_7__* %226, i32 0)
  %228 = load %struct.fs_fte*, %struct.fs_fte** %17, align 8
  %229 = getelementptr inbounds %struct.fs_fte, %struct.fs_fte* %228, i32 0, i32 0
  %230 = call i32 @tree_put_node(%struct.TYPE_7__* %229, i32 0)
  %231 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %13, align 8
  %232 = getelementptr inbounds %struct.mlx5_flow_group, %struct.mlx5_flow_group* %231, i32 0, i32 0
  %233 = call i32 @tree_put_node(%struct.TYPE_7__* %232, i32 0)
  %234 = load %struct.mlx5_flow_handle*, %struct.mlx5_flow_handle** %14, align 8
  store %struct.mlx5_flow_handle* %234, %struct.mlx5_flow_handle** %6, align 8
  br label %244

235:                                              ; preds = %201, %189, %178
  %236 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %13, align 8
  %237 = getelementptr inbounds %struct.mlx5_flow_group, %struct.mlx5_flow_group* %236, i32 0, i32 0
  %238 = call i32 @up_write_ref_node(%struct.TYPE_7__* %237, i32 0)
  %239 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %13, align 8
  %240 = getelementptr inbounds %struct.mlx5_flow_group, %struct.mlx5_flow_group* %239, i32 0, i32 0
  %241 = call i32 @tree_put_node(%struct.TYPE_7__* %240, i32 0)
  %242 = load i32, i32* %19, align 4
  %243 = call %struct.mlx5_flow_handle* @ERR_PTR(i32 %242)
  store %struct.mlx5_flow_handle* %243, %struct.mlx5_flow_handle** %6, align 8
  br label %244

244:                                              ; preds = %235, %208, %156, %123, %81, %47, %27
  %245 = load %struct.mlx5_flow_handle*, %struct.mlx5_flow_handle** %6, align 8
  ret %struct.mlx5_flow_handle* %245
}

declare dso_local %struct.mlx5_flow_steering* @get_steering(%struct.TYPE_7__*) #1

declare dso_local i32 @check_valid_spec(%struct.mlx5_flow_spec*) #1

declare dso_local %struct.mlx5_flow_handle* @ERR_PTR(i32) #1

declare dso_local i32 @dest_is_valid(%struct.mlx5_flow_destination*, i32, %struct.mlx5_flow_table*) #1

declare dso_local i32 @nested_down_read_ref_node(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @build_match_list(%struct.match_list_head*, %struct.mlx5_flow_table*, %struct.mlx5_flow_spec*) #1

declare dso_local i32 @up_write_ref_node(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @up_read_ref_node(%struct.TYPE_7__*) #1

declare dso_local %struct.mlx5_flow_handle* @try_add_to_existing_fg(%struct.mlx5_flow_table*, i32*, %struct.mlx5_flow_spec*, %struct.mlx5_flow_act*, %struct.mlx5_flow_destination*, i32, i32) #1

declare dso_local i32 @free_match_list(%struct.match_list_head*) #1

declare dso_local i64 @IS_ERR(%struct.mlx5_flow_handle*) #1

declare dso_local i32 @PTR_ERR(%struct.mlx5_flow_handle*) #1

declare dso_local i32 @nested_down_write_ref_node(%struct.TYPE_7__*, i32) #1

declare dso_local %struct.mlx5_flow_handle* @alloc_auto_flow_group(%struct.mlx5_flow_table*, %struct.mlx5_flow_spec*) #1

declare dso_local %struct.mlx5_flow_handle* @ERR_CAST(%struct.mlx5_flow_handle*) #1

declare dso_local i32 @create_auto_flow_group(%struct.mlx5_flow_table*, %struct.mlx5_flow_handle*) #1

declare dso_local %struct.mlx5_flow_handle* @alloc_fte(%struct.mlx5_flow_table*, %struct.mlx5_flow_spec*, %struct.mlx5_flow_act*) #1

declare dso_local i32 @insert_fte(%struct.mlx5_flow_handle*, %struct.mlx5_flow_handle*) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.mlx5_flow_handle*) #1

declare dso_local %struct.mlx5_flow_handle* @add_rule_fg(%struct.mlx5_flow_handle*, %struct.mlx5_flow_spec*, %struct.mlx5_flow_act*, %struct.mlx5_flow_destination*, i32, %struct.mlx5_flow_handle*) #1

declare dso_local i32 @tree_put_node(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
