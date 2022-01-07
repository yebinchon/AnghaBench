; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_nexthop_group_refresh.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_nexthop_group_refresh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.mlxsw_sp_nexthop_group = type { i32, i32, i32, i64, %struct.mlxsw_sp_nexthop*, i64, i32 }
%struct.mlxsw_sp_nexthop = type { i64, i64, i32 }

@.str = private unnamed_addr constant [48 x i8] c"Failed to update neigh MAC in adjacency table.\0A\00", align 1
@MLXSW_SP_KVDL_ENTRY_TYPE_ADJ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"Failed to allocate KVD linear area for nexthop group.\0A\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"Failed to add adjacency index to fib entries.\0A\00", align 1
@.str.3 = private unnamed_addr constant [58 x i8] c"Failed to mass-update adjacency index for nexthop group.\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"Failed to set traps for fib entries.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxsw_sp*, %struct.mlxsw_sp_nexthop_group*)* @mlxsw_sp_nexthop_group_refresh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_sp_nexthop_group_refresh(%struct.mlxsw_sp* %0, %struct.mlxsw_sp_nexthop_group* %1) #0 {
  %3 = alloca %struct.mlxsw_sp*, align 8
  %4 = alloca %struct.mlxsw_sp_nexthop_group*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.mlxsw_sp_nexthop*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %3, align 8
  store %struct.mlxsw_sp_nexthop_group* %1, %struct.mlxsw_sp_nexthop_group** %4, align 8
  store i32 0, i32* %8, align 4
  %14 = load %struct.mlxsw_sp_nexthop_group*, %struct.mlxsw_sp_nexthop_group** %4, align 8
  %15 = getelementptr inbounds %struct.mlxsw_sp_nexthop_group, %struct.mlxsw_sp_nexthop_group* %14, i32 0, i32 6
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %2
  %19 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %20 = load %struct.mlxsw_sp_nexthop_group*, %struct.mlxsw_sp_nexthop_group** %4, align 8
  %21 = call i32 @mlxsw_sp_nexthop_fib_entries_update(%struct.mlxsw_sp* %19, %struct.mlxsw_sp_nexthop_group* %20)
  br label %226

22:                                               ; preds = %2
  store i32 0, i32* %12, align 4
  br label %23

23:                                               ; preds = %53, %22
  %24 = load i32, i32* %12, align 4
  %25 = load %struct.mlxsw_sp_nexthop_group*, %struct.mlxsw_sp_nexthop_group** %4, align 8
  %26 = getelementptr inbounds %struct.mlxsw_sp_nexthop_group, %struct.mlxsw_sp_nexthop_group* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %56

29:                                               ; preds = %23
  %30 = load %struct.mlxsw_sp_nexthop_group*, %struct.mlxsw_sp_nexthop_group** %4, align 8
  %31 = getelementptr inbounds %struct.mlxsw_sp_nexthop_group, %struct.mlxsw_sp_nexthop_group* %30, i32 0, i32 4
  %32 = load %struct.mlxsw_sp_nexthop*, %struct.mlxsw_sp_nexthop** %31, align 8
  %33 = load i32, i32* %12, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.mlxsw_sp_nexthop, %struct.mlxsw_sp_nexthop* %32, i64 %34
  store %struct.mlxsw_sp_nexthop* %35, %struct.mlxsw_sp_nexthop** %7, align 8
  %36 = load %struct.mlxsw_sp_nexthop*, %struct.mlxsw_sp_nexthop** %7, align 8
  %37 = getelementptr inbounds %struct.mlxsw_sp_nexthop, %struct.mlxsw_sp_nexthop* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.mlxsw_sp_nexthop*, %struct.mlxsw_sp_nexthop** %7, align 8
  %40 = getelementptr inbounds %struct.mlxsw_sp_nexthop, %struct.mlxsw_sp_nexthop* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %38, %41
  br i1 %42, label %43, label %52

43:                                               ; preds = %29
  store i32 1, i32* %8, align 4
  %44 = load %struct.mlxsw_sp_nexthop*, %struct.mlxsw_sp_nexthop** %7, align 8
  %45 = getelementptr inbounds %struct.mlxsw_sp_nexthop, %struct.mlxsw_sp_nexthop* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load %struct.mlxsw_sp_nexthop*, %struct.mlxsw_sp_nexthop** %7, align 8
  %50 = getelementptr inbounds %struct.mlxsw_sp_nexthop, %struct.mlxsw_sp_nexthop* %49, i32 0, i32 2
  store i32 1, i32* %50, align 8
  br label %51

51:                                               ; preds = %48, %43
  br label %52

52:                                               ; preds = %51, %29
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %12, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %12, align 4
  br label %23

56:                                               ; preds = %23
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %73, label %59

59:                                               ; preds = %56
  %60 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %61 = load %struct.mlxsw_sp_nexthop_group*, %struct.mlxsw_sp_nexthop_group** %4, align 8
  %62 = call i32 @mlxsw_sp_nexthop_group_update(%struct.mlxsw_sp* %60, %struct.mlxsw_sp_nexthop_group* %61, i32 0)
  store i32 %62, i32* %13, align 4
  %63 = load i32, i32* %13, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %59
  %66 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %67 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %66, i32 0, i32 0
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @dev_warn(i32 %70, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  br label %176

72:                                               ; preds = %59
  br label %226

73:                                               ; preds = %56
  %74 = load %struct.mlxsw_sp_nexthop_group*, %struct.mlxsw_sp_nexthop_group** %4, align 8
  %75 = call i32 @mlxsw_sp_nexthop_group_normalize(%struct.mlxsw_sp_nexthop_group* %74)
  %76 = load %struct.mlxsw_sp_nexthop_group*, %struct.mlxsw_sp_nexthop_group** %4, align 8
  %77 = getelementptr inbounds %struct.mlxsw_sp_nexthop_group, %struct.mlxsw_sp_nexthop_group* %76, i32 0, i32 5
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %73
  br label %176

81:                                               ; preds = %73
  %82 = load %struct.mlxsw_sp_nexthop_group*, %struct.mlxsw_sp_nexthop_group** %4, align 8
  %83 = getelementptr inbounds %struct.mlxsw_sp_nexthop_group, %struct.mlxsw_sp_nexthop_group* %82, i32 0, i32 5
  %84 = load i64, i64* %83, align 8
  store i64 %84, i64* %5, align 8
  %85 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %86 = call i32 @mlxsw_sp_fix_adj_grp_size(%struct.mlxsw_sp* %85, i64* %5)
  store i32 %86, i32* %13, align 4
  %87 = load i32, i32* %13, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %81
  br label %176

90:                                               ; preds = %81
  %91 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %92 = load i32, i32* @MLXSW_SP_KVDL_ENTRY_TYPE_ADJ, align 4
  %93 = load i64, i64* %5, align 8
  %94 = call i32 @mlxsw_sp_kvdl_alloc(%struct.mlxsw_sp* %91, i32 %92, i64 %93, i32* %9)
  store i32 %94, i32* %13, align 4
  %95 = load i32, i32* %13, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %104

97:                                               ; preds = %90
  %98 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %99 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %98, i32 0, i32 0
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @dev_warn(i32 %102, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0))
  br label %176

104:                                              ; preds = %90
  %105 = load %struct.mlxsw_sp_nexthop_group*, %struct.mlxsw_sp_nexthop_group** %4, align 8
  %106 = getelementptr inbounds %struct.mlxsw_sp_nexthop_group, %struct.mlxsw_sp_nexthop_group* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  store i32 %107, i32* %10, align 4
  %108 = load %struct.mlxsw_sp_nexthop_group*, %struct.mlxsw_sp_nexthop_group** %4, align 8
  %109 = getelementptr inbounds %struct.mlxsw_sp_nexthop_group, %struct.mlxsw_sp_nexthop_group* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  store i32 %110, i32* %11, align 4
  %111 = load %struct.mlxsw_sp_nexthop_group*, %struct.mlxsw_sp_nexthop_group** %4, align 8
  %112 = getelementptr inbounds %struct.mlxsw_sp_nexthop_group, %struct.mlxsw_sp_nexthop_group* %111, i32 0, i32 3
  %113 = load i64, i64* %112, align 8
  store i64 %113, i64* %6, align 8
  %114 = load %struct.mlxsw_sp_nexthop_group*, %struct.mlxsw_sp_nexthop_group** %4, align 8
  %115 = getelementptr inbounds %struct.mlxsw_sp_nexthop_group, %struct.mlxsw_sp_nexthop_group* %114, i32 0, i32 1
  store i32 1, i32* %115, align 4
  %116 = load i32, i32* %9, align 4
  %117 = load %struct.mlxsw_sp_nexthop_group*, %struct.mlxsw_sp_nexthop_group** %4, align 8
  %118 = getelementptr inbounds %struct.mlxsw_sp_nexthop_group, %struct.mlxsw_sp_nexthop_group* %117, i32 0, i32 2
  store i32 %116, i32* %118, align 8
  %119 = load i64, i64* %5, align 8
  %120 = load %struct.mlxsw_sp_nexthop_group*, %struct.mlxsw_sp_nexthop_group** %4, align 8
  %121 = getelementptr inbounds %struct.mlxsw_sp_nexthop_group, %struct.mlxsw_sp_nexthop_group* %120, i32 0, i32 3
  store i64 %119, i64* %121, align 8
  %122 = load %struct.mlxsw_sp_nexthop_group*, %struct.mlxsw_sp_nexthop_group** %4, align 8
  %123 = call i32 @mlxsw_sp_nexthop_group_rebalance(%struct.mlxsw_sp_nexthop_group* %122)
  %124 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %125 = load %struct.mlxsw_sp_nexthop_group*, %struct.mlxsw_sp_nexthop_group** %4, align 8
  %126 = call i32 @mlxsw_sp_nexthop_group_update(%struct.mlxsw_sp* %124, %struct.mlxsw_sp_nexthop_group* %125, i32 1)
  store i32 %126, i32* %13, align 4
  %127 = load i32, i32* %13, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %136

129:                                              ; preds = %104
  %130 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %131 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %130, i32 0, i32 0
  %132 = load %struct.TYPE_2__*, %struct.TYPE_2__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @dev_warn(i32 %134, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  br label %176

136:                                              ; preds = %104
  %137 = load i32, i32* %10, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %153, label %139

139:                                              ; preds = %136
  %140 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %141 = load %struct.mlxsw_sp_nexthop_group*, %struct.mlxsw_sp_nexthop_group** %4, align 8
  %142 = call i32 @mlxsw_sp_nexthop_fib_entries_update(%struct.mlxsw_sp* %140, %struct.mlxsw_sp_nexthop_group* %141)
  store i32 %142, i32* %13, align 4
  %143 = load i32, i32* %13, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %152

145:                                              ; preds = %139
  %146 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %147 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %146, i32 0, i32 0
  %148 = load %struct.TYPE_2__*, %struct.TYPE_2__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @dev_warn(i32 %150, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  br label %176

152:                                              ; preds = %139
  br label %226

153:                                              ; preds = %136
  %154 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %155 = load %struct.mlxsw_sp_nexthop_group*, %struct.mlxsw_sp_nexthop_group** %4, align 8
  %156 = load i32, i32* %11, align 4
  %157 = load i64, i64* %6, align 8
  %158 = call i32 @mlxsw_sp_adj_index_mass_update(%struct.mlxsw_sp* %154, %struct.mlxsw_sp_nexthop_group* %155, i32 %156, i64 %157)
  store i32 %158, i32* %13, align 4
  %159 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %160 = load i32, i32* @MLXSW_SP_KVDL_ENTRY_TYPE_ADJ, align 4
  %161 = load i64, i64* %6, align 8
  %162 = load i32, i32* %11, align 4
  %163 = call i32 @mlxsw_sp_kvdl_free(%struct.mlxsw_sp* %159, i32 %160, i64 %161, i32 %162)
  %164 = load i32, i32* %13, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %173

166:                                              ; preds = %153
  %167 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %168 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %167, i32 0, i32 0
  %169 = load %struct.TYPE_2__*, %struct.TYPE_2__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @dev_warn(i32 %171, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i64 0, i64 0))
  br label %176

173:                                              ; preds = %153
  %174 = load %struct.mlxsw_sp_nexthop_group*, %struct.mlxsw_sp_nexthop_group** %4, align 8
  %175 = call i32 @mlxsw_sp_nexthop_fib_entries_refresh(%struct.mlxsw_sp_nexthop_group* %174)
  br label %226

176:                                              ; preds = %166, %145, %129, %97, %89, %80, %65
  %177 = load %struct.mlxsw_sp_nexthop_group*, %struct.mlxsw_sp_nexthop_group** %4, align 8
  %178 = getelementptr inbounds %struct.mlxsw_sp_nexthop_group, %struct.mlxsw_sp_nexthop_group* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  store i32 %179, i32* %10, align 4
  %180 = load %struct.mlxsw_sp_nexthop_group*, %struct.mlxsw_sp_nexthop_group** %4, align 8
  %181 = getelementptr inbounds %struct.mlxsw_sp_nexthop_group, %struct.mlxsw_sp_nexthop_group* %180, i32 0, i32 1
  store i32 0, i32* %181, align 4
  store i32 0, i32* %12, align 4
  br label %182

182:                                              ; preds = %197, %176
  %183 = load i32, i32* %12, align 4
  %184 = load %struct.mlxsw_sp_nexthop_group*, %struct.mlxsw_sp_nexthop_group** %4, align 8
  %185 = getelementptr inbounds %struct.mlxsw_sp_nexthop_group, %struct.mlxsw_sp_nexthop_group* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = icmp slt i32 %183, %186
  br i1 %187, label %188, label %200

188:                                              ; preds = %182
  %189 = load %struct.mlxsw_sp_nexthop_group*, %struct.mlxsw_sp_nexthop_group** %4, align 8
  %190 = getelementptr inbounds %struct.mlxsw_sp_nexthop_group, %struct.mlxsw_sp_nexthop_group* %189, i32 0, i32 4
  %191 = load %struct.mlxsw_sp_nexthop*, %struct.mlxsw_sp_nexthop** %190, align 8
  %192 = load i32, i32* %12, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.mlxsw_sp_nexthop, %struct.mlxsw_sp_nexthop* %191, i64 %193
  store %struct.mlxsw_sp_nexthop* %194, %struct.mlxsw_sp_nexthop** %7, align 8
  %195 = load %struct.mlxsw_sp_nexthop*, %struct.mlxsw_sp_nexthop** %7, align 8
  %196 = getelementptr inbounds %struct.mlxsw_sp_nexthop, %struct.mlxsw_sp_nexthop* %195, i32 0, i32 1
  store i64 0, i64* %196, align 8
  br label %197

197:                                              ; preds = %188
  %198 = load i32, i32* %12, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %12, align 4
  br label %182

200:                                              ; preds = %182
  %201 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %202 = load %struct.mlxsw_sp_nexthop_group*, %struct.mlxsw_sp_nexthop_group** %4, align 8
  %203 = call i32 @mlxsw_sp_nexthop_fib_entries_update(%struct.mlxsw_sp* %201, %struct.mlxsw_sp_nexthop_group* %202)
  store i32 %203, i32* %13, align 4
  %204 = load i32, i32* %13, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %213

206:                                              ; preds = %200
  %207 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %208 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %207, i32 0, i32 0
  %209 = load %struct.TYPE_2__*, %struct.TYPE_2__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = call i32 @dev_warn(i32 %211, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  br label %213

213:                                              ; preds = %206, %200
  %214 = load i32, i32* %10, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %226

216:                                              ; preds = %213
  %217 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %218 = load i32, i32* @MLXSW_SP_KVDL_ENTRY_TYPE_ADJ, align 4
  %219 = load %struct.mlxsw_sp_nexthop_group*, %struct.mlxsw_sp_nexthop_group** %4, align 8
  %220 = getelementptr inbounds %struct.mlxsw_sp_nexthop_group, %struct.mlxsw_sp_nexthop_group* %219, i32 0, i32 3
  %221 = load i64, i64* %220, align 8
  %222 = load %struct.mlxsw_sp_nexthop_group*, %struct.mlxsw_sp_nexthop_group** %4, align 8
  %223 = getelementptr inbounds %struct.mlxsw_sp_nexthop_group, %struct.mlxsw_sp_nexthop_group* %222, i32 0, i32 2
  %224 = load i32, i32* %223, align 8
  %225 = call i32 @mlxsw_sp_kvdl_free(%struct.mlxsw_sp* %217, i32 %218, i64 %221, i32 %224)
  br label %226

226:                                              ; preds = %18, %72, %152, %173, %216, %213
  ret void
}

declare dso_local i32 @mlxsw_sp_nexthop_fib_entries_update(%struct.mlxsw_sp*, %struct.mlxsw_sp_nexthop_group*) #1

declare dso_local i32 @mlxsw_sp_nexthop_group_update(%struct.mlxsw_sp*, %struct.mlxsw_sp_nexthop_group*, i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @mlxsw_sp_nexthop_group_normalize(%struct.mlxsw_sp_nexthop_group*) #1

declare dso_local i32 @mlxsw_sp_fix_adj_grp_size(%struct.mlxsw_sp*, i64*) #1

declare dso_local i32 @mlxsw_sp_kvdl_alloc(%struct.mlxsw_sp*, i32, i64, i32*) #1

declare dso_local i32 @mlxsw_sp_nexthop_group_rebalance(%struct.mlxsw_sp_nexthop_group*) #1

declare dso_local i32 @mlxsw_sp_adj_index_mass_update(%struct.mlxsw_sp*, %struct.mlxsw_sp_nexthop_group*, i32, i64) #1

declare dso_local i32 @mlxsw_sp_kvdl_free(%struct.mlxsw_sp*, i32, i64, i32) #1

declare dso_local i32 @mlxsw_sp_nexthop_fib_entries_refresh(%struct.mlxsw_sp_nexthop_group*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
