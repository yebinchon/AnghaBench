; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_span.c_mlxsw_sp_span_entry_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_span.c_mlxsw_sp_span_entry_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { i32 }
%struct.mlxsw_sp_span_entry = type { %struct.mlxsw_sp_span_parms, i32, %struct.TYPE_4__* }
%struct.mlxsw_sp_span_parms = type { %struct.TYPE_5__* }
%struct.TYPE_4__ = type { i64 (%struct.mlxsw_sp_span_entry*, %struct.TYPE_5__*)* }
%struct.TYPE_5__ = type { %struct.TYPE_6__*, %struct.mlxsw_sp* }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [65 x i8] c"Cannot mirror to %s, which belongs to a different mlxsw instance\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Failed to offload mirror to %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxsw_sp*, %struct.mlxsw_sp_span_entry*, %struct.TYPE_5__*)* @mlxsw_sp_span_entry_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_sp_span_entry_configure(%struct.mlxsw_sp* %0, %struct.mlxsw_sp_span_entry* %1, %struct.TYPE_5__* %2) #0 {
  %4 = alloca %struct.mlxsw_sp_span_parms, align 8
  %5 = alloca %struct.mlxsw_sp*, align 8
  %6 = alloca %struct.mlxsw_sp_span_entry*, align 8
  %7 = getelementptr inbounds %struct.mlxsw_sp_span_parms, %struct.mlxsw_sp_span_parms* %4, i32 0, i32 0
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %7, align 8
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %5, align 8
  store %struct.mlxsw_sp_span_entry* %1, %struct.mlxsw_sp_span_entry** %6, align 8
  %8 = getelementptr inbounds %struct.mlxsw_sp_span_parms, %struct.mlxsw_sp_span_parms* %4, i32 0, i32 0
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = icmp ne %struct.TYPE_5__* %9, null
  br i1 %10, label %11, label %55

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.mlxsw_sp_span_parms, %struct.mlxsw_sp_span_parms* %4, i32 0, i32 0
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  %15 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %14, align 8
  %16 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %17 = icmp ne %struct.mlxsw_sp* %15, %16
  br i1 %17, label %18, label %30

18:                                               ; preds = %11
  %19 = load %struct.mlxsw_sp_span_entry*, %struct.mlxsw_sp_span_entry** %6, align 8
  %20 = getelementptr inbounds %struct.mlxsw_sp_span_entry, %struct.mlxsw_sp_span_entry* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = getelementptr inbounds %struct.mlxsw_sp_span_parms, %struct.mlxsw_sp_span_parms* %4, i32 0, i32 0
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @netdev_err(i32 %21, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = getelementptr inbounds %struct.mlxsw_sp_span_parms, %struct.mlxsw_sp_span_parms* %4, i32 0, i32 0
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %29, align 8
  br label %54

30:                                               ; preds = %11
  %31 = load %struct.mlxsw_sp_span_entry*, %struct.mlxsw_sp_span_entry** %6, align 8
  %32 = getelementptr inbounds %struct.mlxsw_sp_span_entry, %struct.mlxsw_sp_span_entry* %31, i32 0, i32 2
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i64 (%struct.mlxsw_sp_span_entry*, %struct.TYPE_5__*)*, i64 (%struct.mlxsw_sp_span_entry*, %struct.TYPE_5__*)** %34, align 8
  %36 = load %struct.mlxsw_sp_span_entry*, %struct.mlxsw_sp_span_entry** %6, align 8
  %37 = getelementptr inbounds %struct.mlxsw_sp_span_parms, %struct.mlxsw_sp_span_parms* %4, i32 0, i32 0
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = call i64 %35(%struct.mlxsw_sp_span_entry* %36, %struct.TYPE_5__* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %53

41:                                               ; preds = %30
  %42 = load %struct.mlxsw_sp_span_entry*, %struct.mlxsw_sp_span_entry** %6, align 8
  %43 = getelementptr inbounds %struct.mlxsw_sp_span_entry, %struct.mlxsw_sp_span_entry* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = getelementptr inbounds %struct.mlxsw_sp_span_parms, %struct.mlxsw_sp_span_parms* %4, i32 0, i32 0
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @netdev_err(i32 %44, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  %52 = getelementptr inbounds %struct.mlxsw_sp_span_parms, %struct.mlxsw_sp_span_parms* %4, i32 0, i32 0
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %52, align 8
  br label %53

53:                                               ; preds = %41, %30
  br label %54

54:                                               ; preds = %53, %18
  br label %55

55:                                               ; preds = %54, %3
  %56 = load %struct.mlxsw_sp_span_entry*, %struct.mlxsw_sp_span_entry** %6, align 8
  %57 = getelementptr inbounds %struct.mlxsw_sp_span_entry, %struct.mlxsw_sp_span_entry* %56, i32 0, i32 0
  %58 = bitcast %struct.mlxsw_sp_span_parms* %57 to i8*
  %59 = bitcast %struct.mlxsw_sp_span_parms* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %58, i8* align 8 %59, i64 8, i1 false)
  ret void
}

declare dso_local i32 @netdev_err(i32, i8*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
