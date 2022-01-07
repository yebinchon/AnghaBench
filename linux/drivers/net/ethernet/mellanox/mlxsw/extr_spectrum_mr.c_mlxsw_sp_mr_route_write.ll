; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_mr.c_mlxsw_sp_mr_route_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_mr.c_mlxsw_sp_mr_route_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_mr_table = type { %struct.mlxsw_sp* }
%struct.mlxsw_sp = type { %struct.mlxsw_sp_mr* }
%struct.mlxsw_sp_mr = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.mlxsw_sp*, i32, i32, %struct.mlxsw_sp_mr_route_params*)*, i32 (%struct.mlxsw_sp*, i32, %struct.mlxsw_sp_mr_route_info*)*, i32 }
%struct.mlxsw_sp_mr_route_params = type { i32, %struct.mlxsw_sp_mr_route_info, i32 }
%struct.mlxsw_sp_mr_route_info = type { i32 }
%struct.mlxsw_sp_mr_route = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp_mr_table*, %struct.mlxsw_sp_mr_route*, i32)* @mlxsw_sp_mr_route_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_mr_route_write(%struct.mlxsw_sp_mr_table* %0, %struct.mlxsw_sp_mr_route* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlxsw_sp_mr_table*, align 8
  %6 = alloca %struct.mlxsw_sp_mr_route*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlxsw_sp*, align 8
  %9 = alloca %struct.mlxsw_sp_mr_route_info, align 4
  %10 = alloca %struct.mlxsw_sp_mr*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.mlxsw_sp_mr_route_params, align 4
  store %struct.mlxsw_sp_mr_table* %0, %struct.mlxsw_sp_mr_table** %5, align 8
  store %struct.mlxsw_sp_mr_route* %1, %struct.mlxsw_sp_mr_route** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.mlxsw_sp_mr_table*, %struct.mlxsw_sp_mr_table** %5, align 8
  %14 = getelementptr inbounds %struct.mlxsw_sp_mr_table, %struct.mlxsw_sp_mr_table* %13, i32 0, i32 0
  %15 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %14, align 8
  store %struct.mlxsw_sp* %15, %struct.mlxsw_sp** %8, align 8
  %16 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %8, align 8
  %17 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %16, i32 0, i32 0
  %18 = load %struct.mlxsw_sp_mr*, %struct.mlxsw_sp_mr** %17, align 8
  store %struct.mlxsw_sp_mr* %18, %struct.mlxsw_sp_mr** %10, align 8
  %19 = load %struct.mlxsw_sp_mr_table*, %struct.mlxsw_sp_mr_table** %5, align 8
  %20 = load %struct.mlxsw_sp_mr_route*, %struct.mlxsw_sp_mr_route** %6, align 8
  %21 = call i32 @mlxsw_sp_mr_route_info_create(%struct.mlxsw_sp_mr_table* %19, %struct.mlxsw_sp_mr_route* %20, %struct.mlxsw_sp_mr_route_info* %9)
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i32, i32* %11, align 4
  store i32 %25, i32* %4, align 4
  br label %93

26:                                               ; preds = %3
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %78, label %29

29:                                               ; preds = %26
  %30 = load %struct.mlxsw_sp_mr*, %struct.mlxsw_sp_mr** %10, align 8
  %31 = getelementptr inbounds %struct.mlxsw_sp_mr, %struct.mlxsw_sp_mr* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call i32 @kzalloc(i32 %34, i32 %35)
  %37 = load %struct.mlxsw_sp_mr_route*, %struct.mlxsw_sp_mr_route** %6, align 8
  %38 = getelementptr inbounds %struct.mlxsw_sp_mr_route, %struct.mlxsw_sp_mr_route* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = load %struct.mlxsw_sp_mr_route*, %struct.mlxsw_sp_mr_route** %6, align 8
  %40 = getelementptr inbounds %struct.mlxsw_sp_mr_route, %struct.mlxsw_sp_mr_route* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %29
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %11, align 4
  br label %90

46:                                               ; preds = %29
  %47 = load %struct.mlxsw_sp_mr_route*, %struct.mlxsw_sp_mr_route** %6, align 8
  %48 = getelementptr inbounds %struct.mlxsw_sp_mr_route, %struct.mlxsw_sp_mr_route* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds %struct.mlxsw_sp_mr_route_params, %struct.mlxsw_sp_mr_route_params* %12, i32 0, i32 2
  store i32 %49, i32* %50, align 4
  %51 = getelementptr inbounds %struct.mlxsw_sp_mr_route_params, %struct.mlxsw_sp_mr_route_params* %12, i32 0, i32 1
  %52 = bitcast %struct.mlxsw_sp_mr_route_info* %51 to i8*
  %53 = bitcast %struct.mlxsw_sp_mr_route_info* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %52, i8* align 4 %53, i64 4, i1 false)
  %54 = load %struct.mlxsw_sp_mr_route*, %struct.mlxsw_sp_mr_route** %6, align 8
  %55 = call i32 @mlxsw_sp_mr_route_prio(%struct.mlxsw_sp_mr_route* %54)
  %56 = getelementptr inbounds %struct.mlxsw_sp_mr_route_params, %struct.mlxsw_sp_mr_route_params* %12, i32 0, i32 0
  store i32 %55, i32* %56, align 4
  %57 = load %struct.mlxsw_sp_mr*, %struct.mlxsw_sp_mr** %10, align 8
  %58 = getelementptr inbounds %struct.mlxsw_sp_mr, %struct.mlxsw_sp_mr* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32 (%struct.mlxsw_sp*, i32, i32, %struct.mlxsw_sp_mr_route_params*)*, i32 (%struct.mlxsw_sp*, i32, i32, %struct.mlxsw_sp_mr_route_params*)** %60, align 8
  %62 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %8, align 8
  %63 = load %struct.mlxsw_sp_mr*, %struct.mlxsw_sp_mr** %10, align 8
  %64 = getelementptr inbounds %struct.mlxsw_sp_mr, %struct.mlxsw_sp_mr* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.mlxsw_sp_mr_route*, %struct.mlxsw_sp_mr_route** %6, align 8
  %67 = getelementptr inbounds %struct.mlxsw_sp_mr_route, %struct.mlxsw_sp_mr_route* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 %61(%struct.mlxsw_sp* %62, i32 %65, i32 %68, %struct.mlxsw_sp_mr_route_params* %12)
  store i32 %69, i32* %11, align 4
  %70 = load i32, i32* %11, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %46
  %73 = load %struct.mlxsw_sp_mr_route*, %struct.mlxsw_sp_mr_route** %6, align 8
  %74 = getelementptr inbounds %struct.mlxsw_sp_mr_route, %struct.mlxsw_sp_mr_route* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @kfree(i32 %75)
  br label %77

77:                                               ; preds = %72, %46
  br label %89

78:                                               ; preds = %26
  %79 = load %struct.mlxsw_sp_mr*, %struct.mlxsw_sp_mr** %10, align 8
  %80 = getelementptr inbounds %struct.mlxsw_sp_mr, %struct.mlxsw_sp_mr* %79, i32 0, i32 0
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 1
  %83 = load i32 (%struct.mlxsw_sp*, i32, %struct.mlxsw_sp_mr_route_info*)*, i32 (%struct.mlxsw_sp*, i32, %struct.mlxsw_sp_mr_route_info*)** %82, align 8
  %84 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %8, align 8
  %85 = load %struct.mlxsw_sp_mr_route*, %struct.mlxsw_sp_mr_route** %6, align 8
  %86 = getelementptr inbounds %struct.mlxsw_sp_mr_route, %struct.mlxsw_sp_mr_route* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 %83(%struct.mlxsw_sp* %84, i32 %87, %struct.mlxsw_sp_mr_route_info* %9)
  store i32 %88, i32* %11, align 4
  br label %89

89:                                               ; preds = %78, %77
  br label %90

90:                                               ; preds = %89, %43
  %91 = call i32 @mlxsw_sp_mr_route_info_destroy(%struct.mlxsw_sp_mr_route_info* %9)
  %92 = load i32, i32* %11, align 4
  store i32 %92, i32* %4, align 4
  br label %93

93:                                               ; preds = %90, %24
  %94 = load i32, i32* %4, align 4
  ret i32 %94
}

declare dso_local i32 @mlxsw_sp_mr_route_info_create(%struct.mlxsw_sp_mr_table*, %struct.mlxsw_sp_mr_route*, %struct.mlxsw_sp_mr_route_info*) #1

declare dso_local i32 @kzalloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mlxsw_sp_mr_route_prio(%struct.mlxsw_sp_mr_route*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @mlxsw_sp_mr_route_info_destroy(%struct.mlxsw_sp_mr_route_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
