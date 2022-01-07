; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_lpm_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_lpm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, %struct.mlxsw_sp_lpm_tree*, %struct.mlxsw_sp_lpm_tree** }
%struct.mlxsw_sp_lpm_tree = type { i8* }
%struct.mlxsw_sp_prefix_usage = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@MAX_LPM_TREES = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@MLXSW_SP_LPM_TREE_MIN = common dso_local global i8* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MLXSW_SP_L3_PROTO_IPV4 = common dso_local global i64 0, align 8
@MLXSW_SP_L3_PROTO_IPV6 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp*)* @mlxsw_sp_lpm_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_lpm_init(%struct.mlxsw_sp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlxsw_sp*, align 8
  %4 = alloca %struct.mlxsw_sp_prefix_usage, align 4
  %5 = alloca %struct.mlxsw_sp_lpm_tree*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %3, align 8
  %9 = bitcast %struct.mlxsw_sp_prefix_usage* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %9, i8 0, i64 4, i1 false)
  %10 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %11 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @MAX_LPM_TREES, align 4
  %14 = call i32 @MLXSW_CORE_RES_VALID(i32 %12, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @EIO, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %149

19:                                               ; preds = %1
  %20 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %21 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @MAX_LPM_TREES, align 4
  %24 = call i8* @MLXSW_CORE_RES_GET(i32 %22, i32 %23)
  store i8* %24, i8** %6, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = load i8*, i8** @MLXSW_SP_LPM_TREE_MIN, align 8
  %27 = ptrtoint i8* %25 to i64
  %28 = ptrtoint i8* %26 to i64
  %29 = sub i64 %27, %28
  %30 = trunc i64 %29 to i32
  %31 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %32 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %31, i32 0, i32 0
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  store i32 %30, i32* %35, align 8
  %36 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %37 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %36, i32 0, i32 0
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @GFP_KERNEL, align 4
  %43 = call %struct.mlxsw_sp_lpm_tree* @kcalloc(i32 %41, i32 8, i32 %42)
  %44 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %45 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %44, i32 0, i32 0
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  store %struct.mlxsw_sp_lpm_tree* %43, %struct.mlxsw_sp_lpm_tree** %48, align 8
  %49 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %50 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %49, i32 0, i32 0
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  %54 = load %struct.mlxsw_sp_lpm_tree*, %struct.mlxsw_sp_lpm_tree** %53, align 8
  %55 = icmp ne %struct.mlxsw_sp_lpm_tree* %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %19
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %2, align 4
  br label %149

59:                                               ; preds = %19
  store i32 0, i32* %8, align 4
  br label %60

60:                                               ; preds = %85, %59
  %61 = load i32, i32* %8, align 4
  %62 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %63 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %62, i32 0, i32 0
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp slt i32 %61, %67
  br i1 %68, label %69, label %88

69:                                               ; preds = %60
  %70 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %71 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %70, i32 0, i32 0
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 1
  %75 = load %struct.mlxsw_sp_lpm_tree*, %struct.mlxsw_sp_lpm_tree** %74, align 8
  %76 = load i32, i32* %8, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.mlxsw_sp_lpm_tree, %struct.mlxsw_sp_lpm_tree* %75, i64 %77
  store %struct.mlxsw_sp_lpm_tree* %78, %struct.mlxsw_sp_lpm_tree** %5, align 8
  %79 = load i32, i32* %8, align 4
  %80 = load i8*, i8** @MLXSW_SP_LPM_TREE_MIN, align 8
  %81 = sext i32 %79 to i64
  %82 = getelementptr i8, i8* %80, i64 %81
  %83 = load %struct.mlxsw_sp_lpm_tree*, %struct.mlxsw_sp_lpm_tree** %5, align 8
  %84 = getelementptr inbounds %struct.mlxsw_sp_lpm_tree, %struct.mlxsw_sp_lpm_tree* %83, i32 0, i32 0
  store i8* %82, i8** %84, align 8
  br label %85

85:                                               ; preds = %69
  %86 = load i32, i32* %8, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %8, align 4
  br label %60

88:                                               ; preds = %60
  %89 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %90 = load i64, i64* @MLXSW_SP_L3_PROTO_IPV4, align 8
  %91 = call %struct.mlxsw_sp_lpm_tree* @mlxsw_sp_lpm_tree_get(%struct.mlxsw_sp* %89, %struct.mlxsw_sp_prefix_usage* %4, i64 %90)
  store %struct.mlxsw_sp_lpm_tree* %91, %struct.mlxsw_sp_lpm_tree** %5, align 8
  %92 = load %struct.mlxsw_sp_lpm_tree*, %struct.mlxsw_sp_lpm_tree** %5, align 8
  %93 = call i64 @IS_ERR(%struct.mlxsw_sp_lpm_tree* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %88
  %96 = load %struct.mlxsw_sp_lpm_tree*, %struct.mlxsw_sp_lpm_tree** %5, align 8
  %97 = call i32 @PTR_ERR(%struct.mlxsw_sp_lpm_tree* %96)
  store i32 %97, i32* %7, align 4
  br label %140

98:                                               ; preds = %88
  %99 = load %struct.mlxsw_sp_lpm_tree*, %struct.mlxsw_sp_lpm_tree** %5, align 8
  %100 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %101 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %100, i32 0, i32 0
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 2
  %105 = load %struct.mlxsw_sp_lpm_tree**, %struct.mlxsw_sp_lpm_tree*** %104, align 8
  %106 = load i64, i64* @MLXSW_SP_L3_PROTO_IPV4, align 8
  %107 = getelementptr inbounds %struct.mlxsw_sp_lpm_tree*, %struct.mlxsw_sp_lpm_tree** %105, i64 %106
  store %struct.mlxsw_sp_lpm_tree* %99, %struct.mlxsw_sp_lpm_tree** %107, align 8
  %108 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %109 = load i64, i64* @MLXSW_SP_L3_PROTO_IPV6, align 8
  %110 = call %struct.mlxsw_sp_lpm_tree* @mlxsw_sp_lpm_tree_get(%struct.mlxsw_sp* %108, %struct.mlxsw_sp_prefix_usage* %4, i64 %109)
  store %struct.mlxsw_sp_lpm_tree* %110, %struct.mlxsw_sp_lpm_tree** %5, align 8
  %111 = load %struct.mlxsw_sp_lpm_tree*, %struct.mlxsw_sp_lpm_tree** %5, align 8
  %112 = call i64 @IS_ERR(%struct.mlxsw_sp_lpm_tree* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %98
  %115 = load %struct.mlxsw_sp_lpm_tree*, %struct.mlxsw_sp_lpm_tree** %5, align 8
  %116 = call i32 @PTR_ERR(%struct.mlxsw_sp_lpm_tree* %115)
  store i32 %116, i32* %7, align 4
  br label %127

117:                                              ; preds = %98
  %118 = load %struct.mlxsw_sp_lpm_tree*, %struct.mlxsw_sp_lpm_tree** %5, align 8
  %119 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %120 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %119, i32 0, i32 0
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 2
  %124 = load %struct.mlxsw_sp_lpm_tree**, %struct.mlxsw_sp_lpm_tree*** %123, align 8
  %125 = load i64, i64* @MLXSW_SP_L3_PROTO_IPV6, align 8
  %126 = getelementptr inbounds %struct.mlxsw_sp_lpm_tree*, %struct.mlxsw_sp_lpm_tree** %124, i64 %125
  store %struct.mlxsw_sp_lpm_tree* %118, %struct.mlxsw_sp_lpm_tree** %126, align 8
  store i32 0, i32* %2, align 4
  br label %149

127:                                              ; preds = %114
  %128 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %129 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %128, i32 0, i32 0
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 2
  %133 = load %struct.mlxsw_sp_lpm_tree**, %struct.mlxsw_sp_lpm_tree*** %132, align 8
  %134 = load i64, i64* @MLXSW_SP_L3_PROTO_IPV4, align 8
  %135 = getelementptr inbounds %struct.mlxsw_sp_lpm_tree*, %struct.mlxsw_sp_lpm_tree** %133, i64 %134
  %136 = load %struct.mlxsw_sp_lpm_tree*, %struct.mlxsw_sp_lpm_tree** %135, align 8
  store %struct.mlxsw_sp_lpm_tree* %136, %struct.mlxsw_sp_lpm_tree** %5, align 8
  %137 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %138 = load %struct.mlxsw_sp_lpm_tree*, %struct.mlxsw_sp_lpm_tree** %5, align 8
  %139 = call i32 @mlxsw_sp_lpm_tree_put(%struct.mlxsw_sp* %137, %struct.mlxsw_sp_lpm_tree* %138)
  br label %140

140:                                              ; preds = %127, %95
  %141 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %142 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %141, i32 0, i32 0
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 1
  %146 = load %struct.mlxsw_sp_lpm_tree*, %struct.mlxsw_sp_lpm_tree** %145, align 8
  %147 = call i32 @kfree(%struct.mlxsw_sp_lpm_tree* %146)
  %148 = load i32, i32* %7, align 4
  store i32 %148, i32* %2, align 4
  br label %149

149:                                              ; preds = %140, %117, %56, %16
  %150 = load i32, i32* %2, align 4
  ret i32 %150
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @MLXSW_CORE_RES_VALID(i32, i32) #2

declare dso_local i8* @MLXSW_CORE_RES_GET(i32, i32) #2

declare dso_local %struct.mlxsw_sp_lpm_tree* @kcalloc(i32, i32, i32) #2

declare dso_local %struct.mlxsw_sp_lpm_tree* @mlxsw_sp_lpm_tree_get(%struct.mlxsw_sp*, %struct.mlxsw_sp_prefix_usage*, i64) #2

declare dso_local i64 @IS_ERR(%struct.mlxsw_sp_lpm_tree*) #2

declare dso_local i32 @PTR_ERR(%struct.mlxsw_sp_lpm_tree*) #2

declare dso_local i32 @mlxsw_sp_lpm_tree_put(%struct.mlxsw_sp*, %struct.mlxsw_sp_lpm_tree*) #2

declare dso_local i32 @kfree(%struct.mlxsw_sp_lpm_tree*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
