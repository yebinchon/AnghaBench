; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_tc.c_mlx5e_attach_mod_hdr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_tc.c_mlx5e_attach_mod_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { i32 }
%struct.mlx5e_tc_flow = type { %struct.TYPE_6__*, %struct.TYPE_5__*, i32, %struct.mlx5e_mod_hdr_entry* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.mlx5e_mod_hdr_entry = type { i32, i32, i32, i32, i32, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32, i8* }
%struct.mlx5e_tc_flow_parse_attr = type { i32, i32 }
%struct.mod_hdr_tbl = type { i32, i32 }
%struct.mod_hdr_key = type { i32, i32 }

@MLX5_MH_ACT_SZ = common dso_local global i32 0, align 4
@EREMOTEIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5e_priv*, %struct.mlx5e_tc_flow*, %struct.mlx5e_tc_flow_parse_attr*)* @mlx5e_attach_mod_hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_attach_mod_hdr(%struct.mlx5e_priv* %0, %struct.mlx5e_tc_flow* %1, %struct.mlx5e_tc_flow_parse_attr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5e_priv*, align 8
  %6 = alloca %struct.mlx5e_tc_flow*, align 8
  %7 = alloca %struct.mlx5e_tc_flow_parse_attr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.mlx5e_mod_hdr_entry*, align 8
  %13 = alloca %struct.mod_hdr_tbl*, align 8
  %14 = alloca %struct.mod_hdr_key, align 4
  %15 = alloca i32, align 4
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %5, align 8
  store %struct.mlx5e_tc_flow* %1, %struct.mlx5e_tc_flow** %6, align 8
  store %struct.mlx5e_tc_flow_parse_attr* %2, %struct.mlx5e_tc_flow_parse_attr** %7, align 8
  %16 = load %struct.mlx5e_tc_flow_parse_attr*, %struct.mlx5e_tc_flow_parse_attr** %7, align 8
  %17 = getelementptr inbounds %struct.mlx5e_tc_flow_parse_attr, %struct.mlx5e_tc_flow_parse_attr* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* @MLX5_MH_ACT_SZ, align 4
  %20 = load i32, i32* %8, align 4
  %21 = mul nsw i32 %19, %20
  store i32 %21, i32* %9, align 4
  %22 = load %struct.mlx5e_tc_flow_parse_attr*, %struct.mlx5e_tc_flow_parse_attr** %7, align 8
  %23 = getelementptr inbounds %struct.mlx5e_tc_flow_parse_attr, %struct.mlx5e_tc_flow_parse_attr* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds %struct.mod_hdr_key, %struct.mod_hdr_key* %14, i32 0, i32 1
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* %8, align 4
  %27 = getelementptr inbounds %struct.mod_hdr_key, %struct.mod_hdr_key* %14, i32 0, i32 0
  store i32 %26, i32* %27, align 4
  %28 = call i32 @hash_mod_hdr_info(%struct.mod_hdr_key* %14)
  store i32 %28, i32* %15, align 4
  %29 = load %struct.mlx5e_tc_flow*, %struct.mlx5e_tc_flow** %6, align 8
  %30 = call i32 @get_flow_name_space(%struct.mlx5e_tc_flow* %29)
  store i32 %30, i32* %10, align 4
  %31 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %32 = load i32, i32* %10, align 4
  %33 = call %struct.mod_hdr_tbl* @get_mod_hdr_table(%struct.mlx5e_priv* %31, i32 %32)
  store %struct.mod_hdr_tbl* %33, %struct.mod_hdr_tbl** %13, align 8
  %34 = load %struct.mod_hdr_tbl*, %struct.mod_hdr_tbl** %13, align 8
  %35 = getelementptr inbounds %struct.mod_hdr_tbl, %struct.mod_hdr_tbl* %34, i32 0, i32 0
  %36 = call i32 @mutex_lock(i32* %35)
  %37 = load %struct.mod_hdr_tbl*, %struct.mod_hdr_tbl** %13, align 8
  %38 = load i32, i32* %15, align 4
  %39 = call %struct.mlx5e_mod_hdr_entry* @mlx5e_mod_hdr_get(%struct.mod_hdr_tbl* %37, %struct.mod_hdr_key* %14, i32 %38)
  store %struct.mlx5e_mod_hdr_entry* %39, %struct.mlx5e_mod_hdr_entry** %12, align 8
  %40 = load %struct.mlx5e_mod_hdr_entry*, %struct.mlx5e_mod_hdr_entry** %12, align 8
  %41 = icmp ne %struct.mlx5e_mod_hdr_entry* %40, null
  br i1 %41, label %42, label %57

42:                                               ; preds = %3
  %43 = load %struct.mod_hdr_tbl*, %struct.mod_hdr_tbl** %13, align 8
  %44 = getelementptr inbounds %struct.mod_hdr_tbl, %struct.mod_hdr_tbl* %43, i32 0, i32 0
  %45 = call i32 @mutex_unlock(i32* %44)
  %46 = load %struct.mlx5e_mod_hdr_entry*, %struct.mlx5e_mod_hdr_entry** %12, align 8
  %47 = getelementptr inbounds %struct.mlx5e_mod_hdr_entry, %struct.mlx5e_mod_hdr_entry* %46, i32 0, i32 1
  %48 = call i32 @wait_for_completion(i32* %47)
  %49 = load %struct.mlx5e_mod_hdr_entry*, %struct.mlx5e_mod_hdr_entry** %12, align 8
  %50 = getelementptr inbounds %struct.mlx5e_mod_hdr_entry, %struct.mlx5e_mod_hdr_entry* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %42
  %54 = load i32, i32* @EREMOTEIO, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %11, align 4
  br label %186

56:                                               ; preds = %42
  br label %147

57:                                               ; preds = %3
  %58 = load i32, i32* %9, align 4
  %59 = sext i32 %58 to i64
  %60 = add i64 48, %59
  %61 = trunc i64 %60 to i32
  %62 = load i32, i32* @GFP_KERNEL, align 4
  %63 = call %struct.mlx5e_mod_hdr_entry* @kzalloc(i32 %61, i32 %62)
  store %struct.mlx5e_mod_hdr_entry* %63, %struct.mlx5e_mod_hdr_entry** %12, align 8
  %64 = load %struct.mlx5e_mod_hdr_entry*, %struct.mlx5e_mod_hdr_entry** %12, align 8
  %65 = icmp ne %struct.mlx5e_mod_hdr_entry* %64, null
  br i1 %65, label %72, label %66

66:                                               ; preds = %57
  %67 = load %struct.mod_hdr_tbl*, %struct.mod_hdr_tbl** %13, align 8
  %68 = getelementptr inbounds %struct.mod_hdr_tbl, %struct.mod_hdr_tbl* %67, i32 0, i32 0
  %69 = call i32 @mutex_unlock(i32* %68)
  %70 = load i32, i32* @ENOMEM, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %4, align 4
  br label %192

72:                                               ; preds = %57
  %73 = load %struct.mlx5e_mod_hdr_entry*, %struct.mlx5e_mod_hdr_entry** %12, align 8
  %74 = bitcast %struct.mlx5e_mod_hdr_entry* %73 to i8*
  %75 = getelementptr i8, i8* %74, i64 48
  %76 = load %struct.mlx5e_mod_hdr_entry*, %struct.mlx5e_mod_hdr_entry** %12, align 8
  %77 = getelementptr inbounds %struct.mlx5e_mod_hdr_entry, %struct.mlx5e_mod_hdr_entry* %76, i32 0, i32 5
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 1
  store i8* %75, i8** %78, align 8
  %79 = load %struct.mlx5e_mod_hdr_entry*, %struct.mlx5e_mod_hdr_entry** %12, align 8
  %80 = getelementptr inbounds %struct.mlx5e_mod_hdr_entry, %struct.mlx5e_mod_hdr_entry* %79, i32 0, i32 5
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 1
  %82 = load i8*, i8** %81, align 8
  %83 = getelementptr inbounds %struct.mod_hdr_key, %struct.mod_hdr_key* %14, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %9, align 4
  %86 = call i32 @memcpy(i8* %82, i32 %84, i32 %85)
  %87 = load i32, i32* %8, align 4
  %88 = load %struct.mlx5e_mod_hdr_entry*, %struct.mlx5e_mod_hdr_entry** %12, align 8
  %89 = getelementptr inbounds %struct.mlx5e_mod_hdr_entry, %struct.mlx5e_mod_hdr_entry* %88, i32 0, i32 5
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  store i32 %87, i32* %90, align 8
  %91 = load %struct.mlx5e_mod_hdr_entry*, %struct.mlx5e_mod_hdr_entry** %12, align 8
  %92 = getelementptr inbounds %struct.mlx5e_mod_hdr_entry, %struct.mlx5e_mod_hdr_entry* %91, i32 0, i32 3
  %93 = call i32 @spin_lock_init(i32* %92)
  %94 = load %struct.mlx5e_mod_hdr_entry*, %struct.mlx5e_mod_hdr_entry** %12, align 8
  %95 = getelementptr inbounds %struct.mlx5e_mod_hdr_entry, %struct.mlx5e_mod_hdr_entry* %94, i32 0, i32 4
  %96 = call i32 @INIT_LIST_HEAD(i32* %95)
  %97 = load %struct.mlx5e_mod_hdr_entry*, %struct.mlx5e_mod_hdr_entry** %12, align 8
  %98 = getelementptr inbounds %struct.mlx5e_mod_hdr_entry, %struct.mlx5e_mod_hdr_entry* %97, i32 0, i32 7
  %99 = call i32 @refcount_set(i32* %98, i32 1)
  %100 = load %struct.mlx5e_mod_hdr_entry*, %struct.mlx5e_mod_hdr_entry** %12, align 8
  %101 = getelementptr inbounds %struct.mlx5e_mod_hdr_entry, %struct.mlx5e_mod_hdr_entry* %100, i32 0, i32 1
  %102 = call i32 @init_completion(i32* %101)
  %103 = load %struct.mod_hdr_tbl*, %struct.mod_hdr_tbl** %13, align 8
  %104 = getelementptr inbounds %struct.mod_hdr_tbl, %struct.mod_hdr_tbl* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.mlx5e_mod_hdr_entry*, %struct.mlx5e_mod_hdr_entry** %12, align 8
  %107 = getelementptr inbounds %struct.mlx5e_mod_hdr_entry, %struct.mlx5e_mod_hdr_entry* %106, i32 0, i32 6
  %108 = load i32, i32* %15, align 4
  %109 = call i32 @hash_add(i32 %105, i32* %107, i32 %108)
  %110 = load %struct.mod_hdr_tbl*, %struct.mod_hdr_tbl** %13, align 8
  %111 = getelementptr inbounds %struct.mod_hdr_tbl, %struct.mod_hdr_tbl* %110, i32 0, i32 0
  %112 = call i32 @mutex_unlock(i32* %111)
  %113 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %114 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* %10, align 4
  %117 = load %struct.mlx5e_mod_hdr_entry*, %struct.mlx5e_mod_hdr_entry** %12, align 8
  %118 = getelementptr inbounds %struct.mlx5e_mod_hdr_entry, %struct.mlx5e_mod_hdr_entry* %117, i32 0, i32 5
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.mlx5e_mod_hdr_entry*, %struct.mlx5e_mod_hdr_entry** %12, align 8
  %122 = getelementptr inbounds %struct.mlx5e_mod_hdr_entry, %struct.mlx5e_mod_hdr_entry* %121, i32 0, i32 5
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 1
  %124 = load i8*, i8** %123, align 8
  %125 = call i32 @mlx5_modify_header_alloc(i32 %115, i32 %116, i32 %120, i8* %124)
  %126 = load %struct.mlx5e_mod_hdr_entry*, %struct.mlx5e_mod_hdr_entry** %12, align 8
  %127 = getelementptr inbounds %struct.mlx5e_mod_hdr_entry, %struct.mlx5e_mod_hdr_entry* %126, i32 0, i32 2
  store i32 %125, i32* %127, align 8
  %128 = load %struct.mlx5e_mod_hdr_entry*, %struct.mlx5e_mod_hdr_entry** %12, align 8
  %129 = getelementptr inbounds %struct.mlx5e_mod_hdr_entry, %struct.mlx5e_mod_hdr_entry* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = call i64 @IS_ERR(i32 %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %141

133:                                              ; preds = %72
  %134 = load %struct.mlx5e_mod_hdr_entry*, %struct.mlx5e_mod_hdr_entry** %12, align 8
  %135 = getelementptr inbounds %struct.mlx5e_mod_hdr_entry, %struct.mlx5e_mod_hdr_entry* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @PTR_ERR(i32 %136)
  store i32 %137, i32* %11, align 4
  %138 = load i32, i32* %11, align 4
  %139 = load %struct.mlx5e_mod_hdr_entry*, %struct.mlx5e_mod_hdr_entry** %12, align 8
  %140 = getelementptr inbounds %struct.mlx5e_mod_hdr_entry, %struct.mlx5e_mod_hdr_entry* %139, i32 0, i32 0
  store i32 %138, i32* %140, align 8
  br label %182

141:                                              ; preds = %72
  %142 = load %struct.mlx5e_mod_hdr_entry*, %struct.mlx5e_mod_hdr_entry** %12, align 8
  %143 = getelementptr inbounds %struct.mlx5e_mod_hdr_entry, %struct.mlx5e_mod_hdr_entry* %142, i32 0, i32 0
  store i32 1, i32* %143, align 8
  %144 = load %struct.mlx5e_mod_hdr_entry*, %struct.mlx5e_mod_hdr_entry** %12, align 8
  %145 = getelementptr inbounds %struct.mlx5e_mod_hdr_entry, %struct.mlx5e_mod_hdr_entry* %144, i32 0, i32 1
  %146 = call i32 @complete_all(i32* %145)
  br label %147

147:                                              ; preds = %141, %56
  %148 = load %struct.mlx5e_mod_hdr_entry*, %struct.mlx5e_mod_hdr_entry** %12, align 8
  %149 = load %struct.mlx5e_tc_flow*, %struct.mlx5e_tc_flow** %6, align 8
  %150 = getelementptr inbounds %struct.mlx5e_tc_flow, %struct.mlx5e_tc_flow* %149, i32 0, i32 3
  store %struct.mlx5e_mod_hdr_entry* %148, %struct.mlx5e_mod_hdr_entry** %150, align 8
  %151 = load %struct.mlx5e_mod_hdr_entry*, %struct.mlx5e_mod_hdr_entry** %12, align 8
  %152 = getelementptr inbounds %struct.mlx5e_mod_hdr_entry, %struct.mlx5e_mod_hdr_entry* %151, i32 0, i32 3
  %153 = call i32 @spin_lock(i32* %152)
  %154 = load %struct.mlx5e_tc_flow*, %struct.mlx5e_tc_flow** %6, align 8
  %155 = getelementptr inbounds %struct.mlx5e_tc_flow, %struct.mlx5e_tc_flow* %154, i32 0, i32 2
  %156 = load %struct.mlx5e_mod_hdr_entry*, %struct.mlx5e_mod_hdr_entry** %12, align 8
  %157 = getelementptr inbounds %struct.mlx5e_mod_hdr_entry, %struct.mlx5e_mod_hdr_entry* %156, i32 0, i32 4
  %158 = call i32 @list_add(i32* %155, i32* %157)
  %159 = load %struct.mlx5e_mod_hdr_entry*, %struct.mlx5e_mod_hdr_entry** %12, align 8
  %160 = getelementptr inbounds %struct.mlx5e_mod_hdr_entry, %struct.mlx5e_mod_hdr_entry* %159, i32 0, i32 3
  %161 = call i32 @spin_unlock(i32* %160)
  %162 = load %struct.mlx5e_tc_flow*, %struct.mlx5e_tc_flow** %6, align 8
  %163 = call i64 @mlx5e_is_eswitch_flow(%struct.mlx5e_tc_flow* %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %173

165:                                              ; preds = %147
  %166 = load %struct.mlx5e_mod_hdr_entry*, %struct.mlx5e_mod_hdr_entry** %12, align 8
  %167 = getelementptr inbounds %struct.mlx5e_mod_hdr_entry, %struct.mlx5e_mod_hdr_entry* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.mlx5e_tc_flow*, %struct.mlx5e_tc_flow** %6, align 8
  %170 = getelementptr inbounds %struct.mlx5e_tc_flow, %struct.mlx5e_tc_flow* %169, i32 0, i32 1
  %171 = load %struct.TYPE_5__*, %struct.TYPE_5__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i32 0, i32 0
  store i32 %168, i32* %172, align 4
  br label %181

173:                                              ; preds = %147
  %174 = load %struct.mlx5e_mod_hdr_entry*, %struct.mlx5e_mod_hdr_entry** %12, align 8
  %175 = getelementptr inbounds %struct.mlx5e_mod_hdr_entry, %struct.mlx5e_mod_hdr_entry* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 8
  %177 = load %struct.mlx5e_tc_flow*, %struct.mlx5e_tc_flow** %6, align 8
  %178 = getelementptr inbounds %struct.mlx5e_tc_flow, %struct.mlx5e_tc_flow* %177, i32 0, i32 0
  %179 = load %struct.TYPE_6__*, %struct.TYPE_6__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i32 0, i32 0
  store i32 %176, i32* %180, align 4
  br label %181

181:                                              ; preds = %173, %165
  store i32 0, i32* %4, align 4
  br label %192

182:                                              ; preds = %133
  %183 = load %struct.mlx5e_mod_hdr_entry*, %struct.mlx5e_mod_hdr_entry** %12, align 8
  %184 = getelementptr inbounds %struct.mlx5e_mod_hdr_entry, %struct.mlx5e_mod_hdr_entry* %183, i32 0, i32 1
  %185 = call i32 @complete_all(i32* %184)
  br label %186

186:                                              ; preds = %182, %53
  %187 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %188 = load %struct.mlx5e_mod_hdr_entry*, %struct.mlx5e_mod_hdr_entry** %12, align 8
  %189 = load i32, i32* %10, align 4
  %190 = call i32 @mlx5e_mod_hdr_put(%struct.mlx5e_priv* %187, %struct.mlx5e_mod_hdr_entry* %188, i32 %189)
  %191 = load i32, i32* %11, align 4
  store i32 %191, i32* %4, align 4
  br label %192

192:                                              ; preds = %186, %181, %66
  %193 = load i32, i32* %4, align 4
  ret i32 %193
}

declare dso_local i32 @hash_mod_hdr_info(%struct.mod_hdr_key*) #1

declare dso_local i32 @get_flow_name_space(%struct.mlx5e_tc_flow*) #1

declare dso_local %struct.mod_hdr_tbl* @get_mod_hdr_table(%struct.mlx5e_priv*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.mlx5e_mod_hdr_entry* @mlx5e_mod_hdr_get(%struct.mod_hdr_tbl*, %struct.mod_hdr_key*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local %struct.mlx5e_mod_hdr_entry* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @refcount_set(i32*, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @hash_add(i32, i32*, i32) #1

declare dso_local i32 @mlx5_modify_header_alloc(i32, i32, i32, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @complete_all(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @mlx5e_is_eswitch_flow(%struct.mlx5e_tc_flow*) #1

declare dso_local i32 @mlx5e_mod_hdr_put(%struct.mlx5e_priv*, %struct.mlx5e_mod_hdr_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
