; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_main.c_sja1105_static_fdb_change.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_main.c_sja1105_static_fdb_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sja1105_private = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.sja1105_table* }
%struct.sja1105_table = type { i32, %struct.sja1105_l2_lookup_entry* }
%struct.sja1105_l2_lookup_entry = type { i32 }

@BLK_IDX_L2_LOOKUP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sja1105_private*, i32, %struct.sja1105_l2_lookup_entry*, i32)* @sja1105_static_fdb_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sja1105_static_fdb_change(%struct.sja1105_private* %0, i32 %1, %struct.sja1105_l2_lookup_entry* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sja1105_private*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sja1105_l2_lookup_entry*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sja1105_l2_lookup_entry*, align 8
  %11 = alloca %struct.sja1105_table*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.sja1105_private* %0, %struct.sja1105_private** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.sja1105_l2_lookup_entry* %2, %struct.sja1105_l2_lookup_entry** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.sja1105_private*, %struct.sja1105_private** %6, align 8
  %15 = getelementptr inbounds %struct.sja1105_private, %struct.sja1105_private* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.sja1105_table*, %struct.sja1105_table** %16, align 8
  %18 = load i64, i64* @BLK_IDX_L2_LOOKUP, align 8
  %19 = getelementptr inbounds %struct.sja1105_table, %struct.sja1105_table* %17, i64 %18
  store %struct.sja1105_table* %19, %struct.sja1105_table** %11, align 8
  %20 = load %struct.sja1105_private*, %struct.sja1105_private** %6, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.sja1105_l2_lookup_entry*, %struct.sja1105_l2_lookup_entry** %8, align 8
  %23 = call i32 @sja1105_find_static_fdb_entry(%struct.sja1105_private* %20, i32 %21, %struct.sja1105_l2_lookup_entry* %22)
  store i32 %23, i32* %13, align 4
  %24 = load i32, i32* %13, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %46

26:                                               ; preds = %4
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %26
  store i32 0, i32* %5, align 4
  br label %80

30:                                               ; preds = %26
  %31 = load %struct.sja1105_table*, %struct.sja1105_table** %11, align 8
  %32 = load %struct.sja1105_table*, %struct.sja1105_table** %11, align 8
  %33 = getelementptr inbounds %struct.sja1105_table, %struct.sja1105_table* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = add nsw i32 %34, 1
  %36 = call i32 @sja1105_table_resize(%struct.sja1105_table* %31, i32 %35)
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %12, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %30
  %40 = load i32, i32* %12, align 4
  store i32 %40, i32* %5, align 4
  br label %80

41:                                               ; preds = %30
  %42 = load %struct.sja1105_table*, %struct.sja1105_table** %11, align 8
  %43 = getelementptr inbounds %struct.sja1105_table, %struct.sja1105_table* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = sub nsw i32 %44, 1
  store i32 %45, i32* %13, align 4
  br label %46

46:                                               ; preds = %41, %4
  %47 = load %struct.sja1105_table*, %struct.sja1105_table** %11, align 8
  %48 = getelementptr inbounds %struct.sja1105_table, %struct.sja1105_table* %47, i32 0, i32 1
  %49 = load %struct.sja1105_l2_lookup_entry*, %struct.sja1105_l2_lookup_entry** %48, align 8
  store %struct.sja1105_l2_lookup_entry* %49, %struct.sja1105_l2_lookup_entry** %10, align 8
  %50 = load i32, i32* %9, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %46
  %53 = load %struct.sja1105_l2_lookup_entry*, %struct.sja1105_l2_lookup_entry** %10, align 8
  %54 = load i32, i32* %13, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.sja1105_l2_lookup_entry, %struct.sja1105_l2_lookup_entry* %53, i64 %55
  %57 = load %struct.sja1105_l2_lookup_entry*, %struct.sja1105_l2_lookup_entry** %8, align 8
  %58 = bitcast %struct.sja1105_l2_lookup_entry* %56 to i8*
  %59 = bitcast %struct.sja1105_l2_lookup_entry* %57 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %58, i8* align 4 %59, i64 4, i1 false)
  store i32 0, i32* %5, align 4
  br label %80

60:                                               ; preds = %46
  %61 = load %struct.sja1105_l2_lookup_entry*, %struct.sja1105_l2_lookup_entry** %10, align 8
  %62 = load i32, i32* %13, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.sja1105_l2_lookup_entry, %struct.sja1105_l2_lookup_entry* %61, i64 %63
  %65 = load %struct.sja1105_l2_lookup_entry*, %struct.sja1105_l2_lookup_entry** %10, align 8
  %66 = load %struct.sja1105_table*, %struct.sja1105_table** %11, align 8
  %67 = getelementptr inbounds %struct.sja1105_table, %struct.sja1105_table* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = sub nsw i32 %68, 1
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.sja1105_l2_lookup_entry, %struct.sja1105_l2_lookup_entry* %65, i64 %70
  %72 = bitcast %struct.sja1105_l2_lookup_entry* %64 to i8*
  %73 = bitcast %struct.sja1105_l2_lookup_entry* %71 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %72, i8* align 4 %73, i64 4, i1 false)
  %74 = load %struct.sja1105_table*, %struct.sja1105_table** %11, align 8
  %75 = load %struct.sja1105_table*, %struct.sja1105_table** %11, align 8
  %76 = getelementptr inbounds %struct.sja1105_table, %struct.sja1105_table* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = sub nsw i32 %77, 1
  %79 = call i32 @sja1105_table_resize(%struct.sja1105_table* %74, i32 %78)
  store i32 %79, i32* %5, align 4
  br label %80

80:                                               ; preds = %60, %52, %39, %29
  %81 = load i32, i32* %5, align 4
  ret i32 %81
}

declare dso_local i32 @sja1105_find_static_fdb_entry(%struct.sja1105_private*, i32, %struct.sja1105_l2_lookup_entry*) #1

declare dso_local i32 @sja1105_table_resize(%struct.sja1105_table*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
