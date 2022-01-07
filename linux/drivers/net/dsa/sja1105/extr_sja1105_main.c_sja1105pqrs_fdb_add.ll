; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_main.c_sja1105pqrs_fdb_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_main.c_sja1105pqrs_fdb_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_switch = type { i32, i32*, %struct.sja1105_private* }
%struct.sja1105_private = type { i32 }
%struct.sja1105_l2_lookup_entry = type { i32, i32, i32, i32, i64, i32, i32, i32, i32, i32 }

@SJA1105_S_TAG = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@VLAN_VID_MASK = common dso_local global i64 0, align 8
@BLK_IDX_L2_LOOKUP = common dso_local global i32 0, align 4
@SJA1105_SEARCH = common dso_local global i32 0, align 4
@SJA1105_MAX_L2_LOOKUP_COUNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"FDB is full, cannot add entry.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sja1105pqrs_fdb_add(%struct.dsa_switch* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dsa_switch*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sja1105_l2_lookup_entry, align 8
  %11 = alloca %struct.sja1105_private*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.dsa_switch* %0, %struct.dsa_switch** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = bitcast %struct.sja1105_l2_lookup_entry* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %14, i8 0, i64 48, i1 false)
  %15 = load %struct.dsa_switch*, %struct.dsa_switch** %6, align 8
  %16 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %15, i32 0, i32 2
  %17 = load %struct.sja1105_private*, %struct.sja1105_private** %16, align 8
  store %struct.sja1105_private* %17, %struct.sja1105_private** %11, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = call i32 @ether_addr_to_u64(i8* %18)
  %20 = getelementptr inbounds %struct.sja1105_l2_lookup_entry, %struct.sja1105_l2_lookup_entry* %10, i32 0, i32 8
  store i32 %19, i32* %20, align 4
  %21 = load i32, i32* %9, align 4
  %22 = getelementptr inbounds %struct.sja1105_l2_lookup_entry, %struct.sja1105_l2_lookup_entry* %10, i32 0, i32 7
  store i32 %21, i32* %22, align 8
  %23 = load i32, i32* @SJA1105_S_TAG, align 4
  %24 = getelementptr inbounds %struct.sja1105_l2_lookup_entry, %struct.sja1105_l2_lookup_entry* %10, i32 0, i32 6
  store i32 %23, i32* %24, align 4
  %25 = load i32, i32* @ETH_ALEN, align 4
  %26 = mul nsw i32 %25, 8
  %27 = sub nsw i32 %26, 1
  %28 = call i32 @GENMASK_ULL(i32 %27, i32 0)
  %29 = getelementptr inbounds %struct.sja1105_l2_lookup_entry, %struct.sja1105_l2_lookup_entry* %10, i32 0, i32 5
  store i32 %28, i32* %29, align 8
  %30 = load %struct.dsa_switch*, %struct.dsa_switch** %6, align 8
  %31 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = call i64 @dsa_port_is_vlan_filtering(i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %4
  %39 = load i64, i64* @VLAN_VID_MASK, align 8
  %40 = getelementptr inbounds %struct.sja1105_l2_lookup_entry, %struct.sja1105_l2_lookup_entry* %10, i32 0, i32 4
  store i64 %39, i64* %40, align 8
  %41 = call i32 @BIT(i32 0)
  %42 = getelementptr inbounds %struct.sja1105_l2_lookup_entry, %struct.sja1105_l2_lookup_entry* %10, i32 0, i32 0
  store i32 %41, i32* %42, align 8
  br label %46

43:                                               ; preds = %4
  %44 = getelementptr inbounds %struct.sja1105_l2_lookup_entry, %struct.sja1105_l2_lookup_entry* %10, i32 0, i32 4
  store i64 0, i64* %44, align 8
  %45 = getelementptr inbounds %struct.sja1105_l2_lookup_entry, %struct.sja1105_l2_lookup_entry* %10, i32 0, i32 0
  store i32 0, i32* %45, align 8
  br label %46

46:                                               ; preds = %43, %38
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @BIT(i32 %47)
  %49 = getelementptr inbounds %struct.sja1105_l2_lookup_entry, %struct.sja1105_l2_lookup_entry* %10, i32 0, i32 1
  store i32 %48, i32* %49, align 4
  %50 = load %struct.sja1105_private*, %struct.sja1105_private** %11, align 8
  %51 = load i32, i32* @BLK_IDX_L2_LOOKUP, align 4
  %52 = load i32, i32* @SJA1105_SEARCH, align 4
  %53 = call i32 @sja1105_dynamic_config_read(%struct.sja1105_private* %50, i32 %51, i32 %52, %struct.sja1105_l2_lookup_entry* %10)
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* %12, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %70

56:                                               ; preds = %46
  %57 = getelementptr inbounds %struct.sja1105_l2_lookup_entry, %struct.sja1105_l2_lookup_entry* %10, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @BIT(i32 %59)
  %61 = and i32 %58, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %56
  store i32 0, i32* %5, align 4
  br label %116

64:                                               ; preds = %56
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @BIT(i32 %65)
  %67 = getelementptr inbounds %struct.sja1105_l2_lookup_entry, %struct.sja1105_l2_lookup_entry* %10, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = or i32 %68, %66
  store i32 %69, i32* %67, align 4
  br label %102

70:                                               ; preds = %46
  store i32 0, i32* %13, align 4
  br label %71

71:                                               ; preds = %84, %70
  %72 = load i32, i32* %13, align 4
  %73 = load i32, i32* @SJA1105_MAX_L2_LOOKUP_COUNT, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %87

75:                                               ; preds = %71
  %76 = load %struct.sja1105_private*, %struct.sja1105_private** %11, align 8
  %77 = load i32, i32* @BLK_IDX_L2_LOOKUP, align 4
  %78 = load i32, i32* %13, align 4
  %79 = call i32 @sja1105_dynamic_config_read(%struct.sja1105_private* %76, i32 %77, i32 %78, %struct.sja1105_l2_lookup_entry* null)
  store i32 %79, i32* %12, align 4
  %80 = load i32, i32* %12, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %75
  br label %87

83:                                               ; preds = %75
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %13, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %13, align 4
  br label %71

87:                                               ; preds = %82, %71
  %88 = load i32, i32* %13, align 4
  %89 = load i32, i32* @SJA1105_MAX_L2_LOOKUP_COUNT, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %98

91:                                               ; preds = %87
  %92 = load %struct.dsa_switch*, %struct.dsa_switch** %6, align 8
  %93 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @dev_err(i32 %94, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %96 = load i32, i32* @EINVAL, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %5, align 4
  br label %116

98:                                               ; preds = %87
  %99 = getelementptr inbounds %struct.sja1105_l2_lookup_entry, %struct.sja1105_l2_lookup_entry* %10, i32 0, i32 2
  store i32 1, i32* %99, align 8
  %100 = load i32, i32* %13, align 4
  %101 = getelementptr inbounds %struct.sja1105_l2_lookup_entry, %struct.sja1105_l2_lookup_entry* %10, i32 0, i32 3
  store i32 %100, i32* %101, align 4
  br label %102

102:                                              ; preds = %98, %64
  %103 = load %struct.sja1105_private*, %struct.sja1105_private** %11, align 8
  %104 = load i32, i32* @BLK_IDX_L2_LOOKUP, align 4
  %105 = getelementptr inbounds %struct.sja1105_l2_lookup_entry, %struct.sja1105_l2_lookup_entry* %10, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @sja1105_dynamic_config_write(%struct.sja1105_private* %103, i32 %104, i32 %106, %struct.sja1105_l2_lookup_entry* %10, i32 1)
  store i32 %107, i32* %12, align 4
  %108 = load i32, i32* %12, align 4
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %102
  %111 = load i32, i32* %12, align 4
  store i32 %111, i32* %5, align 4
  br label %116

112:                                              ; preds = %102
  %113 = load %struct.sja1105_private*, %struct.sja1105_private** %11, align 8
  %114 = load i32, i32* %7, align 4
  %115 = call i32 @sja1105_static_fdb_change(%struct.sja1105_private* %113, i32 %114, %struct.sja1105_l2_lookup_entry* %10, i32 1)
  store i32 %115, i32* %5, align 4
  br label %116

116:                                              ; preds = %112, %110, %91, %63
  %117 = load i32, i32* %5, align 4
  ret i32 %117
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ether_addr_to_u64(i8*) #2

declare dso_local i32 @GENMASK_ULL(i32, i32) #2

declare dso_local i64 @dsa_port_is_vlan_filtering(i32*) #2

declare dso_local i32 @BIT(i32) #2

declare dso_local i32 @sja1105_dynamic_config_read(%struct.sja1105_private*, i32, i32, %struct.sja1105_l2_lookup_entry*) #2

declare dso_local i32 @dev_err(i32, i8*) #2

declare dso_local i32 @sja1105_dynamic_config_write(%struct.sja1105_private*, i32, i32, %struct.sja1105_l2_lookup_entry*, i32) #2

declare dso_local i32 @sja1105_static_fdb_change(%struct.sja1105_private*, i32, %struct.sja1105_l2_lookup_entry*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
