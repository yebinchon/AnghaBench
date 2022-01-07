; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_main.c_sja1105et_fdb_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_main.c_sja1105et_fdb_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_switch = type { %struct.device*, %struct.sja1105_private* }
%struct.device = type { i32 }
%struct.sja1105_private = type { i32 }
%struct.sja1105_l2_lookup_entry = type { i32, i32, i32, i32, i32 }

@SJA1105ET_FDB_BIN_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [73 x i8] c"Warning, FDB bin %d full while adding entry for %pM. Evicting entry %u.\0A\00", align 1
@BLK_IDX_L2_LOOKUP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sja1105et_fdb_add(%struct.dsa_switch* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dsa_switch*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sja1105_l2_lookup_entry, align 4
  %11 = alloca %struct.sja1105_private*, align 8
  %12 = alloca %struct.device*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.dsa_switch* %0, %struct.dsa_switch** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %18 = bitcast %struct.sja1105_l2_lookup_entry* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %18, i8 0, i64 20, i1 false)
  %19 = load %struct.dsa_switch*, %struct.dsa_switch** %6, align 8
  %20 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %19, i32 0, i32 1
  %21 = load %struct.sja1105_private*, %struct.sja1105_private** %20, align 8
  store %struct.sja1105_private* %21, %struct.sja1105_private** %11, align 8
  %22 = load %struct.dsa_switch*, %struct.dsa_switch** %6, align 8
  %23 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %22, i32 0, i32 0
  %24 = load %struct.device*, %struct.device** %23, align 8
  store %struct.device* %24, %struct.device** %12, align 8
  store i32 -1, i32* %13, align 4
  %25 = load %struct.sja1105_private*, %struct.sja1105_private** %11, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @sja1105et_fdb_hash(%struct.sja1105_private* %25, i8* %26, i32 %27)
  store i32 %28, i32* %14, align 4
  %29 = load %struct.sja1105_private*, %struct.sja1105_private** %11, align 8
  %30 = load i32, i32* %14, align 4
  %31 = load i8*, i8** %8, align 8
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @sja1105et_is_fdb_entry_in_bin(%struct.sja1105_private* %29, i32 %30, i8* %31, i32 %32, %struct.sja1105_l2_lookup_entry* %10, i32* %13)
  store i32 %33, i32* %15, align 4
  %34 = load i32, i32* %15, align 4
  %35 = icmp sge i32 %34, 0
  br i1 %35, label %36, label %50

36:                                               ; preds = %4
  %37 = getelementptr inbounds %struct.sja1105_l2_lookup_entry, %struct.sja1105_l2_lookup_entry* %10, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @BIT(i32 %39)
  %41 = and i32 %38, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  store i32 0, i32* %5, align 4
  br label %101

44:                                               ; preds = %36
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @BIT(i32 %45)
  %47 = getelementptr inbounds %struct.sja1105_l2_lookup_entry, %struct.sja1105_l2_lookup_entry* %10, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %48, %46
  store i32 %49, i32* %47, align 4
  br label %82

50:                                               ; preds = %4
  %51 = load i32, i32* %14, align 4
  %52 = load i32, i32* %15, align 4
  %53 = call i8* @sja1105et_fdb_index(i32 %51, i32 %52)
  %54 = ptrtoint i8* %53 to i32
  store i32 %54, i32* %17, align 4
  %55 = load i8*, i8** %8, align 8
  %56 = call i32 @ether_addr_to_u64(i8* %55)
  %57 = getelementptr inbounds %struct.sja1105_l2_lookup_entry, %struct.sja1105_l2_lookup_entry* %10, i32 0, i32 3
  store i32 %56, i32* %57, align 4
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @BIT(i32 %58)
  %60 = getelementptr inbounds %struct.sja1105_l2_lookup_entry, %struct.sja1105_l2_lookup_entry* %10, i32 0, i32 0
  store i32 %59, i32* %60, align 4
  %61 = load i32, i32* %9, align 4
  %62 = getelementptr inbounds %struct.sja1105_l2_lookup_entry, %struct.sja1105_l2_lookup_entry* %10, i32 0, i32 2
  store i32 %61, i32* %62, align 4
  %63 = load i32, i32* %13, align 4
  %64 = icmp sge i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %50
  %66 = load i32, i32* %13, align 4
  store i32 %66, i32* %15, align 4
  br label %81

67:                                               ; preds = %50
  %68 = call i32 @get_random_bytes(i32* %15, i32 4)
  %69 = load i32, i32* @SJA1105ET_FDB_BIN_SIZE, align 4
  %70 = load i32, i32* %15, align 4
  %71 = srem i32 %70, %69
  store i32 %71, i32* %15, align 4
  %72 = load %struct.device*, %struct.device** %12, align 8
  %73 = load i32, i32* %14, align 4
  %74 = load i8*, i8** %8, align 8
  %75 = load i32, i32* %15, align 4
  %76 = call i32 @dev_warn(%struct.device* %72, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0), i32 %73, i8* %74, i32 %75)
  %77 = load %struct.sja1105_private*, %struct.sja1105_private** %11, align 8
  %78 = load i32, i32* @BLK_IDX_L2_LOOKUP, align 4
  %79 = load i32, i32* %17, align 4
  %80 = call i32 @sja1105_dynamic_config_write(%struct.sja1105_private* %77, i32 %78, i32 %79, %struct.sja1105_l2_lookup_entry* null, i32 0)
  br label %81

81:                                               ; preds = %67, %65
  br label %82

82:                                               ; preds = %81, %44
  %83 = load i32, i32* %14, align 4
  %84 = load i32, i32* %15, align 4
  %85 = call i8* @sja1105et_fdb_index(i32 %83, i32 %84)
  %86 = ptrtoint i8* %85 to i32
  %87 = getelementptr inbounds %struct.sja1105_l2_lookup_entry, %struct.sja1105_l2_lookup_entry* %10, i32 0, i32 1
  store i32 %86, i32* %87, align 4
  %88 = load %struct.sja1105_private*, %struct.sja1105_private** %11, align 8
  %89 = load i32, i32* @BLK_IDX_L2_LOOKUP, align 4
  %90 = getelementptr inbounds %struct.sja1105_l2_lookup_entry, %struct.sja1105_l2_lookup_entry* %10, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @sja1105_dynamic_config_write(%struct.sja1105_private* %88, i32 %89, i32 %91, %struct.sja1105_l2_lookup_entry* %10, i32 1)
  store i32 %92, i32* %16, align 4
  %93 = load i32, i32* %16, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %82
  %96 = load i32, i32* %16, align 4
  store i32 %96, i32* %5, align 4
  br label %101

97:                                               ; preds = %82
  %98 = load %struct.sja1105_private*, %struct.sja1105_private** %11, align 8
  %99 = load i32, i32* %7, align 4
  %100 = call i32 @sja1105_static_fdb_change(%struct.sja1105_private* %98, i32 %99, %struct.sja1105_l2_lookup_entry* %10, i32 1)
  store i32 %100, i32* %5, align 4
  br label %101

101:                                              ; preds = %97, %95, %43
  %102 = load i32, i32* %5, align 4
  ret i32 %102
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @sja1105et_fdb_hash(%struct.sja1105_private*, i8*, i32) #2

declare dso_local i32 @sja1105et_is_fdb_entry_in_bin(%struct.sja1105_private*, i32, i8*, i32, %struct.sja1105_l2_lookup_entry*, i32*) #2

declare dso_local i32 @BIT(i32) #2

declare dso_local i8* @sja1105et_fdb_index(i32, i32) #2

declare dso_local i32 @ether_addr_to_u64(i8*) #2

declare dso_local i32 @get_random_bytes(i32*, i32) #2

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32, i8*, i32) #2

declare dso_local i32 @sja1105_dynamic_config_write(%struct.sja1105_private*, i32, i32, %struct.sja1105_l2_lookup_entry*, i32) #2

declare dso_local i32 @sja1105_static_fdb_change(%struct.sja1105_private*, i32, %struct.sja1105_l2_lookup_entry*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
