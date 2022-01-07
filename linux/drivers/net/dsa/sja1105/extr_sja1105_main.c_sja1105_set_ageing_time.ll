; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_main.c_sja1105_set_ageing_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_main.c_sja1105_set_ageing_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_switch = type { %struct.sja1105_private* }
%struct.sja1105_private = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.sja1105_table* }
%struct.sja1105_table = type { %struct.sja1105_l2_lookup_params_entry* }
%struct.sja1105_l2_lookup_params_entry = type { i32 }

@BLK_IDX_L2_LOOKUP_PARAMS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dsa_switch*, i32)* @sja1105_set_ageing_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sja1105_set_ageing_time(%struct.dsa_switch* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dsa_switch*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sja1105_l2_lookup_params_entry*, align 8
  %7 = alloca %struct.sja1105_private*, align 8
  %8 = alloca %struct.sja1105_table*, align 8
  %9 = alloca i32, align 4
  store %struct.dsa_switch* %0, %struct.dsa_switch** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.dsa_switch*, %struct.dsa_switch** %4, align 8
  %11 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %10, i32 0, i32 0
  %12 = load %struct.sja1105_private*, %struct.sja1105_private** %11, align 8
  store %struct.sja1105_private* %12, %struct.sja1105_private** %7, align 8
  %13 = load %struct.sja1105_private*, %struct.sja1105_private** %7, align 8
  %14 = getelementptr inbounds %struct.sja1105_private, %struct.sja1105_private* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.sja1105_table*, %struct.sja1105_table** %15, align 8
  %17 = load i64, i64* @BLK_IDX_L2_LOOKUP_PARAMS, align 8
  %18 = getelementptr inbounds %struct.sja1105_table, %struct.sja1105_table* %16, i64 %17
  store %struct.sja1105_table* %18, %struct.sja1105_table** %8, align 8
  %19 = load %struct.sja1105_table*, %struct.sja1105_table** %8, align 8
  %20 = getelementptr inbounds %struct.sja1105_table, %struct.sja1105_table* %19, i32 0, i32 0
  %21 = load %struct.sja1105_l2_lookup_params_entry*, %struct.sja1105_l2_lookup_params_entry** %20, align 8
  store %struct.sja1105_l2_lookup_params_entry* %21, %struct.sja1105_l2_lookup_params_entry** %6, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @SJA1105_AGEING_TIME_MS(i32 %22)
  store i32 %23, i32* %9, align 4
  %24 = load %struct.sja1105_l2_lookup_params_entry*, %struct.sja1105_l2_lookup_params_entry** %6, align 8
  %25 = getelementptr inbounds %struct.sja1105_l2_lookup_params_entry, %struct.sja1105_l2_lookup_params_entry* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %36

30:                                               ; preds = %2
  %31 = load i32, i32* %9, align 4
  %32 = load %struct.sja1105_l2_lookup_params_entry*, %struct.sja1105_l2_lookup_params_entry** %6, align 8
  %33 = getelementptr inbounds %struct.sja1105_l2_lookup_params_entry, %struct.sja1105_l2_lookup_params_entry* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load %struct.sja1105_private*, %struct.sja1105_private** %7, align 8
  %35 = call i32 @sja1105_static_config_reload(%struct.sja1105_private* %34)
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %30, %29
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @SJA1105_AGEING_TIME_MS(i32) #1

declare dso_local i32 @sja1105_static_config_reload(%struct.sja1105_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
