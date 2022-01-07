; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_static_config.c_static_config_check_memory_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_static_config.c_static_config_check_memory_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sja1105_table = type { %struct.sja1105_l2_forwarding_params_entry* }
%struct.sja1105_l2_forwarding_params_entry = type { i64* }

@BLK_IDX_L2_FORWARDING_PARAMS = common dso_local global i64 0, align 8
@SJA1105_MAX_FRAME_MEMORY = common dso_local global i32 0, align 4
@SJA1105_OVERCOMMITTED_FRAME_MEMORY = common dso_local global i32 0, align 4
@SJA1105_CONFIG_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sja1105_table*)* @static_config_check_memory_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @static_config_check_memory_size(%struct.sja1105_table* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sja1105_table*, align 8
  %4 = alloca %struct.sja1105_l2_forwarding_params_entry*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.sja1105_table* %0, %struct.sja1105_table** %3, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.sja1105_table*, %struct.sja1105_table** %3, align 8
  %8 = load i64, i64* @BLK_IDX_L2_FORWARDING_PARAMS, align 8
  %9 = getelementptr inbounds %struct.sja1105_table, %struct.sja1105_table* %7, i64 %8
  %10 = getelementptr inbounds %struct.sja1105_table, %struct.sja1105_table* %9, i32 0, i32 0
  %11 = load %struct.sja1105_l2_forwarding_params_entry*, %struct.sja1105_l2_forwarding_params_entry** %10, align 8
  store %struct.sja1105_l2_forwarding_params_entry* %11, %struct.sja1105_l2_forwarding_params_entry** %4, align 8
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %27, %1
  %13 = load i32, i32* %5, align 4
  %14 = icmp slt i32 %13, 8
  br i1 %14, label %15, label %30

15:                                               ; preds = %12
  %16 = load %struct.sja1105_l2_forwarding_params_entry*, %struct.sja1105_l2_forwarding_params_entry** %4, align 8
  %17 = getelementptr inbounds %struct.sja1105_l2_forwarding_params_entry, %struct.sja1105_l2_forwarding_params_entry* %16, i32 0, i32 0
  %18 = load i64*, i64** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i64, i64* %18, i64 %20
  %22 = load i64, i64* %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %24, %22
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %6, align 4
  br label %27

27:                                               ; preds = %15
  %28 = load i32, i32* %5, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %5, align 4
  br label %12

30:                                               ; preds = %12
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @SJA1105_MAX_FRAME_MEMORY, align 4
  %33 = icmp sgt i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load i32, i32* @SJA1105_OVERCOMMITTED_FRAME_MEMORY, align 4
  store i32 %35, i32* %2, align 4
  br label %38

36:                                               ; preds = %30
  %37 = load i32, i32* @SJA1105_CONFIG_OK, align 4
  store i32 %37, i32* %2, align 4
  br label %38

38:                                               ; preds = %36, %34
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
