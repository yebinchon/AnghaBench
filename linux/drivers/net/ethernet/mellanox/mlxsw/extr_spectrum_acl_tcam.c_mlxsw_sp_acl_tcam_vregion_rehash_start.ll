; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl_tcam.c_mlxsw_sp_acl_tcam_vregion_rehash_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl_tcam.c_mlxsw_sp_acl_tcam_vregion_rehash_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { %struct.mlxsw_sp_acl_tcam_ops* }
%struct.mlxsw_sp_acl_tcam_ops = type { i32 (i8*)*, i8* (i32)* }
%struct.mlxsw_sp_acl_tcam_vregion = type { %struct.TYPE_2__*, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.mlxsw_sp_acl_tcam_rehash_ctx = type { i32, i8* }
%struct.mlxsw_sp_acl_tcam_region = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp*, %struct.mlxsw_sp_acl_tcam_vregion*, %struct.mlxsw_sp_acl_tcam_rehash_ctx*)* @mlxsw_sp_acl_tcam_vregion_rehash_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_acl_tcam_vregion_rehash_start(%struct.mlxsw_sp* %0, %struct.mlxsw_sp_acl_tcam_vregion* %1, %struct.mlxsw_sp_acl_tcam_rehash_ctx* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlxsw_sp*, align 8
  %6 = alloca %struct.mlxsw_sp_acl_tcam_vregion*, align 8
  %7 = alloca %struct.mlxsw_sp_acl_tcam_rehash_ctx*, align 8
  %8 = alloca %struct.mlxsw_sp_acl_tcam_ops*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mlxsw_sp_acl_tcam_region*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %5, align 8
  store %struct.mlxsw_sp_acl_tcam_vregion* %1, %struct.mlxsw_sp_acl_tcam_vregion** %6, align 8
  store %struct.mlxsw_sp_acl_tcam_rehash_ctx* %2, %struct.mlxsw_sp_acl_tcam_rehash_ctx** %7, align 8
  %13 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %14 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %13, i32 0, i32 0
  %15 = load %struct.mlxsw_sp_acl_tcam_ops*, %struct.mlxsw_sp_acl_tcam_ops** %14, align 8
  store %struct.mlxsw_sp_acl_tcam_ops* %15, %struct.mlxsw_sp_acl_tcam_ops** %8, align 8
  %16 = load %struct.mlxsw_sp_acl_tcam_vregion*, %struct.mlxsw_sp_acl_tcam_vregion** %6, align 8
  %17 = call i32 @mlxsw_sp_acl_tcam_vregion_prio(%struct.mlxsw_sp_acl_tcam_vregion* %16)
  store i32 %17, i32* %9, align 4
  %18 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %19 = load %struct.mlxsw_sp_acl_tcam_vregion*, %struct.mlxsw_sp_acl_tcam_vregion** %6, align 8
  %20 = call i32 @trace_mlxsw_sp_acl_tcam_vregion_rehash(%struct.mlxsw_sp* %18, %struct.mlxsw_sp_acl_tcam_vregion* %19)
  %21 = load %struct.mlxsw_sp_acl_tcam_ops*, %struct.mlxsw_sp_acl_tcam_ops** %8, align 8
  %22 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_ops, %struct.mlxsw_sp_acl_tcam_ops* %21, i32 0, i32 1
  %23 = load i8* (i32)*, i8* (i32)** %22, align 8
  %24 = load %struct.mlxsw_sp_acl_tcam_vregion*, %struct.mlxsw_sp_acl_tcam_vregion** %6, align 8
  %25 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vregion, %struct.mlxsw_sp_acl_tcam_vregion* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i8* %23(i32 %28)
  store i8* %29, i8** %11, align 8
  %30 = load i8*, i8** %11, align 8
  %31 = call i64 @IS_ERR(i8* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %3
  %34 = load i8*, i8** %11, align 8
  %35 = call i32 @PTR_ERR(i8* %34)
  store i32 %35, i32* %4, align 4
  br label %104

36:                                               ; preds = %3
  %37 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %38 = load %struct.mlxsw_sp_acl_tcam_vregion*, %struct.mlxsw_sp_acl_tcam_vregion** %6, align 8
  %39 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vregion, %struct.mlxsw_sp_acl_tcam_vregion* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.mlxsw_sp_acl_tcam_vregion*, %struct.mlxsw_sp_acl_tcam_vregion** %6, align 8
  %42 = load i8*, i8** %11, align 8
  %43 = call i8* @mlxsw_sp_acl_tcam_region_create(%struct.mlxsw_sp* %37, i32 %40, %struct.mlxsw_sp_acl_tcam_vregion* %41, i8* %42)
  %44 = bitcast i8* %43 to %struct.mlxsw_sp_acl_tcam_region*
  store %struct.mlxsw_sp_acl_tcam_region* %44, %struct.mlxsw_sp_acl_tcam_region** %10, align 8
  %45 = load %struct.mlxsw_sp_acl_tcam_region*, %struct.mlxsw_sp_acl_tcam_region** %10, align 8
  %46 = bitcast %struct.mlxsw_sp_acl_tcam_region* %45 to i8*
  %47 = call i64 @IS_ERR(i8* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %36
  %50 = load %struct.mlxsw_sp_acl_tcam_region*, %struct.mlxsw_sp_acl_tcam_region** %10, align 8
  %51 = bitcast %struct.mlxsw_sp_acl_tcam_region* %50 to i8*
  %52 = call i32 @PTR_ERR(i8* %51)
  store i32 %52, i32* %12, align 4
  br label %97

53:                                               ; preds = %36
  %54 = load %struct.mlxsw_sp_acl_tcam_vregion*, %struct.mlxsw_sp_acl_tcam_vregion** %6, align 8
  %55 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vregion, %struct.mlxsw_sp_acl_tcam_vregion* %54, i32 0, i32 1
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = load %struct.mlxsw_sp_acl_tcam_vregion*, %struct.mlxsw_sp_acl_tcam_vregion** %6, align 8
  %58 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vregion, %struct.mlxsw_sp_acl_tcam_vregion* %57, i32 0, i32 0
  store %struct.TYPE_2__* %56, %struct.TYPE_2__** %58, align 8
  %59 = load %struct.mlxsw_sp_acl_tcam_region*, %struct.mlxsw_sp_acl_tcam_region** %10, align 8
  %60 = bitcast %struct.mlxsw_sp_acl_tcam_region* %59 to %struct.TYPE_2__*
  %61 = load %struct.mlxsw_sp_acl_tcam_vregion*, %struct.mlxsw_sp_acl_tcam_vregion** %6, align 8
  %62 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vregion, %struct.mlxsw_sp_acl_tcam_vregion* %61, i32 0, i32 1
  store %struct.TYPE_2__* %60, %struct.TYPE_2__** %62, align 8
  %63 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %64 = load %struct.mlxsw_sp_acl_tcam_vregion*, %struct.mlxsw_sp_acl_tcam_vregion** %6, align 8
  %65 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vregion, %struct.mlxsw_sp_acl_tcam_vregion* %64, i32 0, i32 0
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.mlxsw_sp_acl_tcam_region*, %struct.mlxsw_sp_acl_tcam_region** %10, align 8
  %70 = bitcast %struct.mlxsw_sp_acl_tcam_region* %69 to i8*
  %71 = load i32, i32* %9, align 4
  %72 = load %struct.mlxsw_sp_acl_tcam_vregion*, %struct.mlxsw_sp_acl_tcam_vregion** %6, align 8
  %73 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vregion, %struct.mlxsw_sp_acl_tcam_vregion* %72, i32 0, i32 0
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = call i32 @mlxsw_sp_acl_tcam_group_region_attach(%struct.mlxsw_sp* %63, i32 %68, i8* %70, i32 %71, %struct.TYPE_2__* %74)
  store i32 %75, i32* %12, align 4
  %76 = load i32, i32* %12, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %53
  br label %85

79:                                               ; preds = %53
  %80 = load i8*, i8** %11, align 8
  %81 = load %struct.mlxsw_sp_acl_tcam_rehash_ctx*, %struct.mlxsw_sp_acl_tcam_rehash_ctx** %7, align 8
  %82 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_rehash_ctx, %struct.mlxsw_sp_acl_tcam_rehash_ctx* %81, i32 0, i32 1
  store i8* %80, i8** %82, align 8
  %83 = load %struct.mlxsw_sp_acl_tcam_rehash_ctx*, %struct.mlxsw_sp_acl_tcam_rehash_ctx** %7, align 8
  %84 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_rehash_ctx, %struct.mlxsw_sp_acl_tcam_rehash_ctx* %83, i32 0, i32 0
  store i32 0, i32* %84, align 8
  store i32 0, i32* %4, align 4
  br label %104

85:                                               ; preds = %78
  %86 = load %struct.mlxsw_sp_acl_tcam_vregion*, %struct.mlxsw_sp_acl_tcam_vregion** %6, align 8
  %87 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vregion, %struct.mlxsw_sp_acl_tcam_vregion* %86, i32 0, i32 0
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = load %struct.mlxsw_sp_acl_tcam_vregion*, %struct.mlxsw_sp_acl_tcam_vregion** %6, align 8
  %90 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vregion, %struct.mlxsw_sp_acl_tcam_vregion* %89, i32 0, i32 1
  store %struct.TYPE_2__* %88, %struct.TYPE_2__** %90, align 8
  %91 = load %struct.mlxsw_sp_acl_tcam_vregion*, %struct.mlxsw_sp_acl_tcam_vregion** %6, align 8
  %92 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vregion, %struct.mlxsw_sp_acl_tcam_vregion* %91, i32 0, i32 0
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %92, align 8
  %93 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %94 = load %struct.mlxsw_sp_acl_tcam_region*, %struct.mlxsw_sp_acl_tcam_region** %10, align 8
  %95 = bitcast %struct.mlxsw_sp_acl_tcam_region* %94 to i8*
  %96 = call i32 @mlxsw_sp_acl_tcam_region_destroy(%struct.mlxsw_sp* %93, i8* %95)
  br label %97

97:                                               ; preds = %85, %49
  %98 = load %struct.mlxsw_sp_acl_tcam_ops*, %struct.mlxsw_sp_acl_tcam_ops** %8, align 8
  %99 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_ops, %struct.mlxsw_sp_acl_tcam_ops* %98, i32 0, i32 0
  %100 = load i32 (i8*)*, i32 (i8*)** %99, align 8
  %101 = load i8*, i8** %11, align 8
  %102 = call i32 %100(i8* %101)
  %103 = load i32, i32* %12, align 4
  store i32 %103, i32* %4, align 4
  br label %104

104:                                              ; preds = %97, %79, %33
  %105 = load i32, i32* %4, align 4
  ret i32 %105
}

declare dso_local i32 @mlxsw_sp_acl_tcam_vregion_prio(%struct.mlxsw_sp_acl_tcam_vregion*) #1

declare dso_local i32 @trace_mlxsw_sp_acl_tcam_vregion_rehash(%struct.mlxsw_sp*, %struct.mlxsw_sp_acl_tcam_vregion*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i8* @mlxsw_sp_acl_tcam_region_create(%struct.mlxsw_sp*, i32, %struct.mlxsw_sp_acl_tcam_vregion*, i8*) #1

declare dso_local i32 @mlxsw_sp_acl_tcam_group_region_attach(%struct.mlxsw_sp*, i32, i8*, i32, %struct.TYPE_2__*) #1

declare dso_local i32 @mlxsw_sp_acl_tcam_region_destroy(%struct.mlxsw_sp*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
