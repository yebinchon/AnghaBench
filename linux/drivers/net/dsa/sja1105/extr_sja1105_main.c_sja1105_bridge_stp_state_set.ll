; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_main.c_sja1105_bridge_stp_state_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_main.c_sja1105_bridge_stp_state_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_switch = type { i32, %struct.sja1105_private* }
%struct.sja1105_private = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.sja1105_mac_config_entry* }
%struct.sja1105_mac_config_entry = type { i32, i32, i32 }

@BLK_IDX_MAC_CONFIG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"invalid STP state: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dsa_switch*, i32, i32)* @sja1105_bridge_stp_state_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sja1105_bridge_stp_state_set(%struct.dsa_switch* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.dsa_switch*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sja1105_private*, align 8
  %8 = alloca %struct.sja1105_mac_config_entry*, align 8
  store %struct.dsa_switch* %0, %struct.dsa_switch** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.dsa_switch*, %struct.dsa_switch** %4, align 8
  %10 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %9, i32 0, i32 1
  %11 = load %struct.sja1105_private*, %struct.sja1105_private** %10, align 8
  store %struct.sja1105_private* %11, %struct.sja1105_private** %7, align 8
  %12 = load %struct.sja1105_private*, %struct.sja1105_private** %7, align 8
  %13 = getelementptr inbounds %struct.sja1105_private, %struct.sja1105_private* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = load i64, i64* @BLK_IDX_MAC_CONFIG, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load %struct.sja1105_mac_config_entry*, %struct.sja1105_mac_config_entry** %18, align 8
  store %struct.sja1105_mac_config_entry* %19, %struct.sja1105_mac_config_entry** %8, align 8
  %20 = load i32, i32* %6, align 4
  switch i32 %20, label %85 [
    i32 131, label %21
    i32 132, label %21
    i32 128, label %37
    i32 129, label %53
    i32 130, label %69
  ]

21:                                               ; preds = %3, %3
  %22 = load %struct.sja1105_mac_config_entry*, %struct.sja1105_mac_config_entry** %8, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.sja1105_mac_config_entry, %struct.sja1105_mac_config_entry* %22, i64 %24
  %26 = getelementptr inbounds %struct.sja1105_mac_config_entry, %struct.sja1105_mac_config_entry* %25, i32 0, i32 0
  store i32 0, i32* %26, align 4
  %27 = load %struct.sja1105_mac_config_entry*, %struct.sja1105_mac_config_entry** %8, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.sja1105_mac_config_entry, %struct.sja1105_mac_config_entry* %27, i64 %29
  %31 = getelementptr inbounds %struct.sja1105_mac_config_entry, %struct.sja1105_mac_config_entry* %30, i32 0, i32 1
  store i32 0, i32* %31, align 4
  %32 = load %struct.sja1105_mac_config_entry*, %struct.sja1105_mac_config_entry** %8, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.sja1105_mac_config_entry, %struct.sja1105_mac_config_entry* %32, i64 %34
  %36 = getelementptr inbounds %struct.sja1105_mac_config_entry, %struct.sja1105_mac_config_entry* %35, i32 0, i32 2
  store i32 0, i32* %36, align 4
  br label %91

37:                                               ; preds = %3
  %38 = load %struct.sja1105_mac_config_entry*, %struct.sja1105_mac_config_entry** %8, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.sja1105_mac_config_entry, %struct.sja1105_mac_config_entry* %38, i64 %40
  %42 = getelementptr inbounds %struct.sja1105_mac_config_entry, %struct.sja1105_mac_config_entry* %41, i32 0, i32 0
  store i32 1, i32* %42, align 4
  %43 = load %struct.sja1105_mac_config_entry*, %struct.sja1105_mac_config_entry** %8, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.sja1105_mac_config_entry, %struct.sja1105_mac_config_entry* %43, i64 %45
  %47 = getelementptr inbounds %struct.sja1105_mac_config_entry, %struct.sja1105_mac_config_entry* %46, i32 0, i32 1
  store i32 0, i32* %47, align 4
  %48 = load %struct.sja1105_mac_config_entry*, %struct.sja1105_mac_config_entry** %8, align 8
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.sja1105_mac_config_entry, %struct.sja1105_mac_config_entry* %48, i64 %50
  %52 = getelementptr inbounds %struct.sja1105_mac_config_entry, %struct.sja1105_mac_config_entry* %51, i32 0, i32 2
  store i32 0, i32* %52, align 4
  br label %91

53:                                               ; preds = %3
  %54 = load %struct.sja1105_mac_config_entry*, %struct.sja1105_mac_config_entry** %8, align 8
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.sja1105_mac_config_entry, %struct.sja1105_mac_config_entry* %54, i64 %56
  %58 = getelementptr inbounds %struct.sja1105_mac_config_entry, %struct.sja1105_mac_config_entry* %57, i32 0, i32 0
  store i32 1, i32* %58, align 4
  %59 = load %struct.sja1105_mac_config_entry*, %struct.sja1105_mac_config_entry** %8, align 8
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.sja1105_mac_config_entry, %struct.sja1105_mac_config_entry* %59, i64 %61
  %63 = getelementptr inbounds %struct.sja1105_mac_config_entry, %struct.sja1105_mac_config_entry* %62, i32 0, i32 1
  store i32 0, i32* %63, align 4
  %64 = load %struct.sja1105_mac_config_entry*, %struct.sja1105_mac_config_entry** %8, align 8
  %65 = load i32, i32* %5, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.sja1105_mac_config_entry, %struct.sja1105_mac_config_entry* %64, i64 %66
  %68 = getelementptr inbounds %struct.sja1105_mac_config_entry, %struct.sja1105_mac_config_entry* %67, i32 0, i32 2
  store i32 1, i32* %68, align 4
  br label %91

69:                                               ; preds = %3
  %70 = load %struct.sja1105_mac_config_entry*, %struct.sja1105_mac_config_entry** %8, align 8
  %71 = load i32, i32* %5, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.sja1105_mac_config_entry, %struct.sja1105_mac_config_entry* %70, i64 %72
  %74 = getelementptr inbounds %struct.sja1105_mac_config_entry, %struct.sja1105_mac_config_entry* %73, i32 0, i32 0
  store i32 1, i32* %74, align 4
  %75 = load %struct.sja1105_mac_config_entry*, %struct.sja1105_mac_config_entry** %8, align 8
  %76 = load i32, i32* %5, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.sja1105_mac_config_entry, %struct.sja1105_mac_config_entry* %75, i64 %77
  %79 = getelementptr inbounds %struct.sja1105_mac_config_entry, %struct.sja1105_mac_config_entry* %78, i32 0, i32 1
  store i32 1, i32* %79, align 4
  %80 = load %struct.sja1105_mac_config_entry*, %struct.sja1105_mac_config_entry** %8, align 8
  %81 = load i32, i32* %5, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.sja1105_mac_config_entry, %struct.sja1105_mac_config_entry* %80, i64 %82
  %84 = getelementptr inbounds %struct.sja1105_mac_config_entry, %struct.sja1105_mac_config_entry* %83, i32 0, i32 2
  store i32 1, i32* %84, align 4
  br label %91

85:                                               ; preds = %3
  %86 = load %struct.dsa_switch*, %struct.dsa_switch** %4, align 8
  %87 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* %6, align 4
  %90 = call i32 @dev_err(i32 %88, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %89)
  br label %100

91:                                               ; preds = %69, %53, %37, %21
  %92 = load %struct.sja1105_private*, %struct.sja1105_private** %7, align 8
  %93 = load i64, i64* @BLK_IDX_MAC_CONFIG, align 8
  %94 = load i32, i32* %5, align 4
  %95 = load %struct.sja1105_mac_config_entry*, %struct.sja1105_mac_config_entry** %8, align 8
  %96 = load i32, i32* %5, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.sja1105_mac_config_entry, %struct.sja1105_mac_config_entry* %95, i64 %97
  %99 = call i32 @sja1105_dynamic_config_write(%struct.sja1105_private* %92, i64 %93, i32 %94, %struct.sja1105_mac_config_entry* %98, i32 1)
  br label %100

100:                                              ; preds = %91, %85
  ret void
}

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @sja1105_dynamic_config_write(%struct.sja1105_private*, i64, i32, %struct.sja1105_mac_config_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
