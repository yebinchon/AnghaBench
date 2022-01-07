; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_main.c_sja1105_find_static_fdb_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_main.c_sja1105_find_static_fdb_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sja1105_private = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.sja1105_table* }
%struct.sja1105_table = type { i32, %struct.sja1105_l2_lookup_entry* }
%struct.sja1105_l2_lookup_entry = type { i64, i64, i32 }

@BLK_IDX_L2_LOOKUP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sja1105_private*, i32, %struct.sja1105_l2_lookup_entry*)* @sja1105_find_static_fdb_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sja1105_find_static_fdb_entry(%struct.sja1105_private* %0, i32 %1, %struct.sja1105_l2_lookup_entry* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sja1105_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sja1105_l2_lookup_entry*, align 8
  %8 = alloca %struct.sja1105_l2_lookup_entry*, align 8
  %9 = alloca %struct.sja1105_table*, align 8
  %10 = alloca i32, align 4
  store %struct.sja1105_private* %0, %struct.sja1105_private** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.sja1105_l2_lookup_entry* %2, %struct.sja1105_l2_lookup_entry** %7, align 8
  %11 = load %struct.sja1105_private*, %struct.sja1105_private** %5, align 8
  %12 = getelementptr inbounds %struct.sja1105_private, %struct.sja1105_private* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.sja1105_table*, %struct.sja1105_table** %13, align 8
  %15 = load i64, i64* @BLK_IDX_L2_LOOKUP, align 8
  %16 = getelementptr inbounds %struct.sja1105_table, %struct.sja1105_table* %14, i64 %15
  store %struct.sja1105_table* %16, %struct.sja1105_table** %9, align 8
  %17 = load %struct.sja1105_table*, %struct.sja1105_table** %9, align 8
  %18 = getelementptr inbounds %struct.sja1105_table, %struct.sja1105_table* %17, i32 0, i32 1
  %19 = load %struct.sja1105_l2_lookup_entry*, %struct.sja1105_l2_lookup_entry** %18, align 8
  store %struct.sja1105_l2_lookup_entry* %19, %struct.sja1105_l2_lookup_entry** %8, align 8
  store i32 0, i32* %10, align 4
  br label %20

20:                                               ; preds = %62, %3
  %21 = load i32, i32* %10, align 4
  %22 = load %struct.sja1105_table*, %struct.sja1105_table** %9, align 8
  %23 = getelementptr inbounds %struct.sja1105_table, %struct.sja1105_table* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %65

26:                                               ; preds = %20
  %27 = load %struct.sja1105_l2_lookup_entry*, %struct.sja1105_l2_lookup_entry** %8, align 8
  %28 = load i32, i32* %10, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.sja1105_l2_lookup_entry, %struct.sja1105_l2_lookup_entry* %27, i64 %29
  %31 = getelementptr inbounds %struct.sja1105_l2_lookup_entry, %struct.sja1105_l2_lookup_entry* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.sja1105_l2_lookup_entry*, %struct.sja1105_l2_lookup_entry** %7, align 8
  %34 = getelementptr inbounds %struct.sja1105_l2_lookup_entry, %struct.sja1105_l2_lookup_entry* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %32, %35
  br i1 %36, label %37, label %61

37:                                               ; preds = %26
  %38 = load %struct.sja1105_l2_lookup_entry*, %struct.sja1105_l2_lookup_entry** %8, align 8
  %39 = load i32, i32* %10, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.sja1105_l2_lookup_entry, %struct.sja1105_l2_lookup_entry* %38, i64 %40
  %42 = getelementptr inbounds %struct.sja1105_l2_lookup_entry, %struct.sja1105_l2_lookup_entry* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.sja1105_l2_lookup_entry*, %struct.sja1105_l2_lookup_entry** %7, align 8
  %45 = getelementptr inbounds %struct.sja1105_l2_lookup_entry, %struct.sja1105_l2_lookup_entry* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %43, %46
  br i1 %47, label %48, label %61

48:                                               ; preds = %37
  %49 = load %struct.sja1105_l2_lookup_entry*, %struct.sja1105_l2_lookup_entry** %8, align 8
  %50 = load i32, i32* %10, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.sja1105_l2_lookup_entry, %struct.sja1105_l2_lookup_entry* %49, i64 %51
  %53 = getelementptr inbounds %struct.sja1105_l2_lookup_entry, %struct.sja1105_l2_lookup_entry* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @BIT(i32 %55)
  %57 = and i32 %54, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %48
  %60 = load i32, i32* %10, align 4
  store i32 %60, i32* %4, align 4
  br label %66

61:                                               ; preds = %48, %37, %26
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %10, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %10, align 4
  br label %20

65:                                               ; preds = %20
  store i32 -1, i32* %4, align 4
  br label %66

66:                                               ; preds = %65, %59
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
