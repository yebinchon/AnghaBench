; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_main.c_sja1105_vlan_filtering.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_main.c_sja1105_vlan_filtering.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_switch = type { i32, %struct.sja1105_private* }
%struct.sja1105_private = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.sja1105_table* }
%struct.sja1105_table = type { %struct.sja1105_l2_lookup_params_entry* }
%struct.sja1105_l2_lookup_params_entry = type { i32, i32, i32, i8*, i8* }
%struct.sja1105_general_params_entry = type { i32, i32, i32, i8*, i8* }

@ETH_P_8021AD = common dso_local global i8* null, align 8
@ETH_P_8021Q = common dso_local global i8* null, align 8
@ETH_P_SJA1105 = common dso_local global i8* null, align 8
@BLK_IDX_GENERAL_PARAMS = common dso_local global i64 0, align 8
@BLK_IDX_L2_LOOKUP_PARAMS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"Failed to change VLAN Ethertype\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dsa_switch*, i32, i32)* @sja1105_vlan_filtering to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sja1105_vlan_filtering(%struct.dsa_switch* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.dsa_switch*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sja1105_l2_lookup_params_entry*, align 8
  %8 = alloca %struct.sja1105_general_params_entry*, align 8
  %9 = alloca %struct.sja1105_private*, align 8
  %10 = alloca %struct.sja1105_table*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.dsa_switch* %0, %struct.dsa_switch** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %14 = load %struct.dsa_switch*, %struct.dsa_switch** %4, align 8
  %15 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %14, i32 0, i32 1
  %16 = load %struct.sja1105_private*, %struct.sja1105_private** %15, align 8
  store %struct.sja1105_private* %16, %struct.sja1105_private** %9, align 8
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i8*, i8** @ETH_P_8021AD, align 8
  store i8* %20, i8** %11, align 8
  %21 = load i8*, i8** @ETH_P_8021Q, align 8
  store i8* %21, i8** %12, align 8
  br label %25

22:                                               ; preds = %3
  %23 = load i8*, i8** @ETH_P_SJA1105, align 8
  store i8* %23, i8** %11, align 8
  %24 = load i8*, i8** @ETH_P_SJA1105, align 8
  store i8* %24, i8** %12, align 8
  br label %25

25:                                               ; preds = %22, %19
  %26 = load %struct.sja1105_private*, %struct.sja1105_private** %9, align 8
  %27 = getelementptr inbounds %struct.sja1105_private, %struct.sja1105_private* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load %struct.sja1105_table*, %struct.sja1105_table** %28, align 8
  %30 = load i64, i64* @BLK_IDX_GENERAL_PARAMS, align 8
  %31 = getelementptr inbounds %struct.sja1105_table, %struct.sja1105_table* %29, i64 %30
  store %struct.sja1105_table* %31, %struct.sja1105_table** %10, align 8
  %32 = load %struct.sja1105_table*, %struct.sja1105_table** %10, align 8
  %33 = getelementptr inbounds %struct.sja1105_table, %struct.sja1105_table* %32, i32 0, i32 0
  %34 = load %struct.sja1105_l2_lookup_params_entry*, %struct.sja1105_l2_lookup_params_entry** %33, align 8
  %35 = bitcast %struct.sja1105_l2_lookup_params_entry* %34 to %struct.sja1105_general_params_entry*
  store %struct.sja1105_general_params_entry* %35, %struct.sja1105_general_params_entry** %8, align 8
  %36 = load i8*, i8** %11, align 8
  %37 = load %struct.sja1105_general_params_entry*, %struct.sja1105_general_params_entry** %8, align 8
  %38 = getelementptr inbounds %struct.sja1105_general_params_entry, %struct.sja1105_general_params_entry* %37, i32 0, i32 4
  store i8* %36, i8** %38, align 8
  %39 = load i8*, i8** %12, align 8
  %40 = load %struct.sja1105_general_params_entry*, %struct.sja1105_general_params_entry** %8, align 8
  %41 = getelementptr inbounds %struct.sja1105_general_params_entry, %struct.sja1105_general_params_entry* %40, i32 0, i32 3
  store i8* %39, i8** %41, align 8
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.sja1105_general_params_entry*, %struct.sja1105_general_params_entry** %8, align 8
  %44 = getelementptr inbounds %struct.sja1105_general_params_entry, %struct.sja1105_general_params_entry* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load i32, i32* %6, align 4
  %46 = load %struct.sja1105_general_params_entry*, %struct.sja1105_general_params_entry** %8, align 8
  %47 = getelementptr inbounds %struct.sja1105_general_params_entry, %struct.sja1105_general_params_entry* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load %struct.sja1105_private*, %struct.sja1105_private** %9, align 8
  %49 = getelementptr inbounds %struct.sja1105_private, %struct.sja1105_private* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load %struct.sja1105_table*, %struct.sja1105_table** %50, align 8
  %52 = load i64, i64* @BLK_IDX_L2_LOOKUP_PARAMS, align 8
  %53 = getelementptr inbounds %struct.sja1105_table, %struct.sja1105_table* %51, i64 %52
  store %struct.sja1105_table* %53, %struct.sja1105_table** %10, align 8
  %54 = load %struct.sja1105_table*, %struct.sja1105_table** %10, align 8
  %55 = getelementptr inbounds %struct.sja1105_table, %struct.sja1105_table* %54, i32 0, i32 0
  %56 = load %struct.sja1105_l2_lookup_params_entry*, %struct.sja1105_l2_lookup_params_entry** %55, align 8
  store %struct.sja1105_l2_lookup_params_entry* %56, %struct.sja1105_l2_lookup_params_entry** %7, align 8
  %57 = load i32, i32* %6, align 4
  %58 = icmp ne i32 %57, 0
  %59 = xor i1 %58, true
  %60 = zext i1 %59 to i32
  %61 = load %struct.sja1105_l2_lookup_params_entry*, %struct.sja1105_l2_lookup_params_entry** %7, align 8
  %62 = getelementptr inbounds %struct.sja1105_l2_lookup_params_entry, %struct.sja1105_l2_lookup_params_entry* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 8
  %63 = load %struct.sja1105_private*, %struct.sja1105_private** %9, align 8
  %64 = call i32 @sja1105_static_config_reload(%struct.sja1105_private* %63)
  store i32 %64, i32* %13, align 4
  %65 = load i32, i32* %13, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %25
  %68 = load %struct.dsa_switch*, %struct.dsa_switch** %4, align 8
  %69 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @dev_err(i32 %70, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %72

72:                                               ; preds = %67, %25
  %73 = load %struct.dsa_switch*, %struct.dsa_switch** %4, align 8
  %74 = load i32, i32* %6, align 4
  %75 = icmp ne i32 %74, 0
  %76 = xor i1 %75, true
  %77 = zext i1 %76 to i32
  %78 = call i32 @sja1105_setup_8021q_tagging(%struct.dsa_switch* %73, i32 %77)
  ret i32 %78
}

declare dso_local i32 @sja1105_static_config_reload(%struct.sja1105_private*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @sja1105_setup_8021q_tagging(%struct.dsa_switch*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
