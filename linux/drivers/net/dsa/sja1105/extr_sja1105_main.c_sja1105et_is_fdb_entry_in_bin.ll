; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_main.c_sja1105et_is_fdb_entry_in_bin.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_main.c_sja1105et_is_fdb_entry_in_bin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sja1105_private = type { i32 }
%struct.sja1105_l2_lookup_entry = type { i64, i64, i32 }

@SJA1105ET_FDB_BIN_SIZE = common dso_local global i32 0, align 4
@BLK_IDX_L2_LOOKUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sja1105_private*, i32, i32*, i64, %struct.sja1105_l2_lookup_entry*, i32*)* @sja1105et_is_fdb_entry_in_bin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sja1105et_is_fdb_entry_in_bin(%struct.sja1105_private* %0, i32 %1, i32* %2, i64 %3, %struct.sja1105_l2_lookup_entry* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.sja1105_private*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.sja1105_l2_lookup_entry*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.sja1105_l2_lookup_entry, align 8
  %16 = alloca i32, align 4
  store %struct.sja1105_private* %0, %struct.sja1105_private** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i64 %3, i64* %11, align 8
  store %struct.sja1105_l2_lookup_entry* %4, %struct.sja1105_l2_lookup_entry** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32 0, i32* %14, align 4
  br label %17

17:                                               ; preds = %59, %6
  %18 = load i32, i32* %14, align 4
  %19 = load i32, i32* @SJA1105ET_FDB_BIN_SIZE, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %62

21:                                               ; preds = %17
  %22 = bitcast %struct.sja1105_l2_lookup_entry* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %22, i8 0, i64 24, i1 false)
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* %14, align 4
  %25 = call i32 @sja1105et_fdb_index(i32 %23, i32 %24)
  store i32 %25, i32* %16, align 4
  %26 = load %struct.sja1105_private*, %struct.sja1105_private** %8, align 8
  %27 = load i32, i32* @BLK_IDX_L2_LOOKUP, align 4
  %28 = load i32, i32* %16, align 4
  %29 = call i64 @sja1105_dynamic_config_read(%struct.sja1105_private* %26, i32 %27, i32 %28, %struct.sja1105_l2_lookup_entry* %15)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %21
  %32 = load i32*, i32** %13, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load i32, i32* %14, align 4
  %36 = load i32*, i32** %13, align 8
  store i32 %35, i32* %36, align 4
  br label %37

37:                                               ; preds = %34, %31
  br label %59

38:                                               ; preds = %21
  %39 = getelementptr inbounds %struct.sja1105_l2_lookup_entry, %struct.sja1105_l2_lookup_entry* %15, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i32*, i32** %10, align 8
  %42 = call i64 @ether_addr_to_u64(i32* %41)
  %43 = icmp eq i64 %40, %42
  br i1 %43, label %44, label %58

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.sja1105_l2_lookup_entry, %struct.sja1105_l2_lookup_entry* %15, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %11, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %58

49:                                               ; preds = %44
  %50 = load %struct.sja1105_l2_lookup_entry*, %struct.sja1105_l2_lookup_entry** %12, align 8
  %51 = icmp ne %struct.sja1105_l2_lookup_entry* %50, null
  br i1 %51, label %52, label %56

52:                                               ; preds = %49
  %53 = load %struct.sja1105_l2_lookup_entry*, %struct.sja1105_l2_lookup_entry** %12, align 8
  %54 = bitcast %struct.sja1105_l2_lookup_entry* %53 to i8*
  %55 = bitcast %struct.sja1105_l2_lookup_entry* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %54, i8* align 8 %55, i64 24, i1 false)
  br label %56

56:                                               ; preds = %52, %49
  %57 = load i32, i32* %14, align 4
  store i32 %57, i32* %7, align 4
  br label %63

58:                                               ; preds = %44, %38
  br label %59

59:                                               ; preds = %58, %37
  %60 = load i32, i32* %14, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %14, align 4
  br label %17

62:                                               ; preds = %17
  store i32 -1, i32* %7, align 4
  br label %63

63:                                               ; preds = %62, %56
  %64 = load i32, i32* %7, align 4
  ret i32 %64
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @sja1105et_fdb_index(i32, i32) #2

declare dso_local i64 @sja1105_dynamic_config_read(%struct.sja1105_private*, i32, i32, %struct.sja1105_l2_lookup_entry*) #2

declare dso_local i64 @ether_addr_to_u64(i32*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
