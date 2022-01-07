; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_main.c_sja1105_init_l2_lookup_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_main.c_sja1105_init_l2_lookup_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sja1105_private = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.sja1105_table* }
%struct.sja1105_table = type { i64, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.sja1105_l2_lookup_params_entry = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@SJA1105_MAX_L2_LOOKUP_COUNT = common dso_local global i32 0, align 4
@SJA1105_NUM_PORTS = common dso_local global i32 0, align 4
@SJA1105ET_FDB_BIN_SIZE = common dso_local global i32 0, align 4
@BLK_IDX_L2_LOOKUP_PARAMS = common dso_local global i64 0, align 8
@SJA1105_MAX_L2_LOOKUP_PARAMS_COUNT = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sja1105_private*)* @sja1105_init_l2_lookup_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sja1105_init_l2_lookup_params(%struct.sja1105_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sja1105_private*, align 8
  %4 = alloca %struct.sja1105_table*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sja1105_l2_lookup_params_entry, align 4
  store %struct.sja1105_private* %0, %struct.sja1105_private** %3, align 8
  %7 = load i32, i32* @SJA1105_MAX_L2_LOOKUP_COUNT, align 4
  %8 = load i32, i32* @SJA1105_NUM_PORTS, align 4
  %9 = sdiv i32 %7, %8
  store i32 %9, i32* %5, align 4
  %10 = getelementptr inbounds %struct.sja1105_l2_lookup_params_entry, %struct.sja1105_l2_lookup_params_entry* %6, i32 0, i32 0
  store i32 151, i32* %10, align 4
  %11 = getelementptr inbounds %struct.sja1105_l2_lookup_params_entry, %struct.sja1105_l2_lookup_params_entry* %6, i32 0, i32 1
  store i32 1, i32* %11, align 4
  %12 = getelementptr inbounds %struct.sja1105_l2_lookup_params_entry, %struct.sja1105_l2_lookup_params_entry* %6, i32 0, i32 2
  store i32 0, i32* %12, align 4
  %13 = getelementptr inbounds %struct.sja1105_l2_lookup_params_entry, %struct.sja1105_l2_lookup_params_entry* %6, i32 0, i32 3
  store i32 1, i32* %13, align 4
  %14 = getelementptr inbounds %struct.sja1105_l2_lookup_params_entry, %struct.sja1105_l2_lookup_params_entry* %6, i32 0, i32 4
  store i32 1, i32* %14, align 4
  %15 = getelementptr inbounds %struct.sja1105_l2_lookup_params_entry, %struct.sja1105_l2_lookup_params_entry* %6, i32 0, i32 5
  store i32 1, i32* %15, align 4
  %16 = getelementptr inbounds %struct.sja1105_l2_lookup_params_entry, %struct.sja1105_l2_lookup_params_entry* %6, i32 0, i32 6
  store i32 1, i32* %16, align 4
  %17 = getelementptr inbounds %struct.sja1105_l2_lookup_params_entry, %struct.sja1105_l2_lookup_params_entry* %6, i32 0, i32 7
  %18 = load i32, i32* %5, align 4
  store i32 %18, i32* %17, align 4
  %19 = getelementptr inbounds %struct.sja1105_l2_lookup_params_entry, %struct.sja1105_l2_lookup_params_entry* %6, i32 0, i32 8
  store i32 0, i32* %19, align 4
  %20 = getelementptr inbounds %struct.sja1105_l2_lookup_params_entry, %struct.sja1105_l2_lookup_params_entry* %6, i32 0, i32 9
  %21 = load i32, i32* @SJA1105ET_FDB_BIN_SIZE, align 4
  store i32 %21, i32* %20, align 4
  %22 = getelementptr inbounds %struct.sja1105_l2_lookup_params_entry, %struct.sja1105_l2_lookup_params_entry* %6, i32 0, i32 10
  %23 = call i32 @SJA1105_AGEING_TIME_MS(i32 300000)
  store i32 %23, i32* %22, align 4
  %24 = load %struct.sja1105_private*, %struct.sja1105_private** %3, align 8
  %25 = getelementptr inbounds %struct.sja1105_private, %struct.sja1105_private* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load %struct.sja1105_table*, %struct.sja1105_table** %26, align 8
  %28 = load i64, i64* @BLK_IDX_L2_LOOKUP_PARAMS, align 8
  %29 = getelementptr inbounds %struct.sja1105_table, %struct.sja1105_table* %27, i64 %28
  store %struct.sja1105_table* %29, %struct.sja1105_table** %4, align 8
  %30 = load %struct.sja1105_table*, %struct.sja1105_table** %4, align 8
  %31 = getelementptr inbounds %struct.sja1105_table, %struct.sja1105_table* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %1
  %35 = load %struct.sja1105_table*, %struct.sja1105_table** %4, align 8
  %36 = getelementptr inbounds %struct.sja1105_table, %struct.sja1105_table* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @kfree(i64 %37)
  %39 = load %struct.sja1105_table*, %struct.sja1105_table** %4, align 8
  %40 = getelementptr inbounds %struct.sja1105_table, %struct.sja1105_table* %39, i32 0, i32 1
  store i64 0, i64* %40, align 8
  br label %41

41:                                               ; preds = %34, %1
  %42 = load i64, i64* @SJA1105_MAX_L2_LOOKUP_PARAMS_COUNT, align 8
  %43 = load %struct.sja1105_table*, %struct.sja1105_table** %4, align 8
  %44 = getelementptr inbounds %struct.sja1105_table, %struct.sja1105_table* %43, i32 0, i32 2
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @GFP_KERNEL, align 4
  %49 = call i64 @kcalloc(i64 %42, i32 %47, i32 %48)
  %50 = load %struct.sja1105_table*, %struct.sja1105_table** %4, align 8
  %51 = getelementptr inbounds %struct.sja1105_table, %struct.sja1105_table* %50, i32 0, i32 0
  store i64 %49, i64* %51, align 8
  %52 = load %struct.sja1105_table*, %struct.sja1105_table** %4, align 8
  %53 = getelementptr inbounds %struct.sja1105_table, %struct.sja1105_table* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %41
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %2, align 4
  br label %70

59:                                               ; preds = %41
  %60 = load i64, i64* @SJA1105_MAX_L2_LOOKUP_PARAMS_COUNT, align 8
  %61 = load %struct.sja1105_table*, %struct.sja1105_table** %4, align 8
  %62 = getelementptr inbounds %struct.sja1105_table, %struct.sja1105_table* %61, i32 0, i32 1
  store i64 %60, i64* %62, align 8
  %63 = load %struct.sja1105_table*, %struct.sja1105_table** %4, align 8
  %64 = getelementptr inbounds %struct.sja1105_table, %struct.sja1105_table* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = inttoptr i64 %65 to %struct.sja1105_l2_lookup_params_entry*
  %67 = getelementptr inbounds %struct.sja1105_l2_lookup_params_entry, %struct.sja1105_l2_lookup_params_entry* %66, i64 0
  %68 = bitcast %struct.sja1105_l2_lookup_params_entry* %67 to i8*
  %69 = bitcast %struct.sja1105_l2_lookup_params_entry* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %68, i8* align 4 %69, i64 44, i1 false)
  store i32 0, i32* %2, align 4
  br label %70

70:                                               ; preds = %59, %56
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i32 @SJA1105_AGEING_TIME_MS(i32) #1

declare dso_local i32 @kfree(i64) #1

declare dso_local i64 @kcalloc(i64, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
