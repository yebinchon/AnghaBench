; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_span.c_mlxsw_sp_span_respin.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_span.c_mlxsw_sp_span_respin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.mlxsw_sp_span_entry* }
%struct.mlxsw_sp_span_entry = type { i32, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 (i32, %struct.mlxsw_sp_span_parms*)* }
%struct.mlxsw_sp_span_parms = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlxsw_sp_span_respin(%struct.mlxsw_sp* %0) #0 {
  %2 = alloca %struct.mlxsw_sp*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlxsw_sp_span_entry*, align 8
  %6 = alloca %struct.mlxsw_sp_span_parms, align 8
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %2, align 8
  %7 = call i32 (...) @ASSERT_RTNL()
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %56, %1
  %9 = load i32, i32* %3, align 4
  %10 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %2, align 8
  %11 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %9, %13
  br i1 %14, label %15, label %59

15:                                               ; preds = %8
  %16 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %2, align 8
  %17 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load %struct.mlxsw_sp_span_entry*, %struct.mlxsw_sp_span_entry** %18, align 8
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.mlxsw_sp_span_entry, %struct.mlxsw_sp_span_entry* %19, i64 %21
  store %struct.mlxsw_sp_span_entry* %22, %struct.mlxsw_sp_span_entry** %5, align 8
  %23 = bitcast %struct.mlxsw_sp_span_parms* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %23, i8 0, i64 8, i1 false)
  %24 = load %struct.mlxsw_sp_span_entry*, %struct.mlxsw_sp_span_entry** %5, align 8
  %25 = getelementptr inbounds %struct.mlxsw_sp_span_entry, %struct.mlxsw_sp_span_entry* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %15
  br label %56

29:                                               ; preds = %15
  %30 = load %struct.mlxsw_sp_span_entry*, %struct.mlxsw_sp_span_entry** %5, align 8
  %31 = getelementptr inbounds %struct.mlxsw_sp_span_entry, %struct.mlxsw_sp_span_entry* %30, i32 0, i32 2
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32 (i32, %struct.mlxsw_sp_span_parms*)*, i32 (i32, %struct.mlxsw_sp_span_parms*)** %33, align 8
  %35 = load %struct.mlxsw_sp_span_entry*, %struct.mlxsw_sp_span_entry** %5, align 8
  %36 = getelementptr inbounds %struct.mlxsw_sp_span_entry, %struct.mlxsw_sp_span_entry* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 %34(i32 %37, %struct.mlxsw_sp_span_parms* %6)
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %29
  br label %56

42:                                               ; preds = %29
  %43 = load %struct.mlxsw_sp_span_entry*, %struct.mlxsw_sp_span_entry** %5, align 8
  %44 = getelementptr inbounds %struct.mlxsw_sp_span_entry, %struct.mlxsw_sp_span_entry* %43, i32 0, i32 0
  %45 = call i64 @memcmp(%struct.mlxsw_sp_span_parms* %6, i32* %44, i32 8)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %42
  %48 = load %struct.mlxsw_sp_span_entry*, %struct.mlxsw_sp_span_entry** %5, align 8
  %49 = call i32 @mlxsw_sp_span_entry_deconfigure(%struct.mlxsw_sp_span_entry* %48)
  %50 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %2, align 8
  %51 = load %struct.mlxsw_sp_span_entry*, %struct.mlxsw_sp_span_entry** %5, align 8
  %52 = getelementptr inbounds %struct.mlxsw_sp_span_parms, %struct.mlxsw_sp_span_parms* %6, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = call i32 @mlxsw_sp_span_entry_configure(%struct.mlxsw_sp* %50, %struct.mlxsw_sp_span_entry* %51, i32* %53)
  br label %55

55:                                               ; preds = %47, %42
  br label %56

56:                                               ; preds = %55, %41, %28
  %57 = load i32, i32* %3, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %3, align 4
  br label %8

59:                                               ; preds = %8
  ret void
}

declare dso_local i32 @ASSERT_RTNL(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i64 @memcmp(%struct.mlxsw_sp_span_parms*, i32*, i32) #1

declare dso_local i32 @mlxsw_sp_span_entry_deconfigure(%struct.mlxsw_sp_span_entry*) #1

declare dso_local i32 @mlxsw_sp_span_entry_configure(%struct.mlxsw_sp*, %struct.mlxsw_sp_span_entry*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
