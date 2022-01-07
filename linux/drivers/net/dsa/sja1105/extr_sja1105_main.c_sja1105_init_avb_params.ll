; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_main.c_sja1105_init_avb_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_main.c_sja1105_init_avb_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sja1105_private = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.sja1105_table* }
%struct.sja1105_table = type { %struct.sja1105_avb_params_entry*, i64, %struct.TYPE_3__* }
%struct.sja1105_avb_params_entry = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@BLK_IDX_AVB_PARAMS = common dso_local global i64 0, align 8
@SJA1105_MAX_AVB_PARAMS_COUNT = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SJA1105_META_DMAC = common dso_local global i32 0, align 4
@SJA1105_META_SMAC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sja1105_private*, i32)* @sja1105_init_avb_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sja1105_init_avb_params(%struct.sja1105_private* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sja1105_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sja1105_avb_params_entry*, align 8
  %7 = alloca %struct.sja1105_table*, align 8
  store %struct.sja1105_private* %0, %struct.sja1105_private** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.sja1105_private*, %struct.sja1105_private** %4, align 8
  %9 = getelementptr inbounds %struct.sja1105_private, %struct.sja1105_private* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.sja1105_table*, %struct.sja1105_table** %10, align 8
  %12 = load i64, i64* @BLK_IDX_AVB_PARAMS, align 8
  %13 = getelementptr inbounds %struct.sja1105_table, %struct.sja1105_table* %11, i64 %12
  store %struct.sja1105_table* %13, %struct.sja1105_table** %7, align 8
  %14 = load %struct.sja1105_table*, %struct.sja1105_table** %7, align 8
  %15 = getelementptr inbounds %struct.sja1105_table, %struct.sja1105_table* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %2
  %19 = load %struct.sja1105_table*, %struct.sja1105_table** %7, align 8
  %20 = getelementptr inbounds %struct.sja1105_table, %struct.sja1105_table* %19, i32 0, i32 0
  %21 = load %struct.sja1105_avb_params_entry*, %struct.sja1105_avb_params_entry** %20, align 8
  %22 = call i32 @kfree(%struct.sja1105_avb_params_entry* %21)
  %23 = load %struct.sja1105_table*, %struct.sja1105_table** %7, align 8
  %24 = getelementptr inbounds %struct.sja1105_table, %struct.sja1105_table* %23, i32 0, i32 1
  store i64 0, i64* %24, align 8
  br label %25

25:                                               ; preds = %18, %2
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %60

29:                                               ; preds = %25
  %30 = load i64, i64* @SJA1105_MAX_AVB_PARAMS_COUNT, align 8
  %31 = load %struct.sja1105_table*, %struct.sja1105_table** %7, align 8
  %32 = getelementptr inbounds %struct.sja1105_table, %struct.sja1105_table* %31, i32 0, i32 2
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call %struct.sja1105_avb_params_entry* @kcalloc(i64 %30, i32 %35, i32 %36)
  %38 = load %struct.sja1105_table*, %struct.sja1105_table** %7, align 8
  %39 = getelementptr inbounds %struct.sja1105_table, %struct.sja1105_table* %38, i32 0, i32 0
  store %struct.sja1105_avb_params_entry* %37, %struct.sja1105_avb_params_entry** %39, align 8
  %40 = load %struct.sja1105_table*, %struct.sja1105_table** %7, align 8
  %41 = getelementptr inbounds %struct.sja1105_table, %struct.sja1105_table* %40, i32 0, i32 0
  %42 = load %struct.sja1105_avb_params_entry*, %struct.sja1105_avb_params_entry** %41, align 8
  %43 = icmp ne %struct.sja1105_avb_params_entry* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %29
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %60

47:                                               ; preds = %29
  %48 = load i64, i64* @SJA1105_MAX_AVB_PARAMS_COUNT, align 8
  %49 = load %struct.sja1105_table*, %struct.sja1105_table** %7, align 8
  %50 = getelementptr inbounds %struct.sja1105_table, %struct.sja1105_table* %49, i32 0, i32 1
  store i64 %48, i64* %50, align 8
  %51 = load %struct.sja1105_table*, %struct.sja1105_table** %7, align 8
  %52 = getelementptr inbounds %struct.sja1105_table, %struct.sja1105_table* %51, i32 0, i32 0
  %53 = load %struct.sja1105_avb_params_entry*, %struct.sja1105_avb_params_entry** %52, align 8
  store %struct.sja1105_avb_params_entry* %53, %struct.sja1105_avb_params_entry** %6, align 8
  %54 = load i32, i32* @SJA1105_META_DMAC, align 4
  %55 = load %struct.sja1105_avb_params_entry*, %struct.sja1105_avb_params_entry** %6, align 8
  %56 = getelementptr inbounds %struct.sja1105_avb_params_entry, %struct.sja1105_avb_params_entry* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* @SJA1105_META_SMAC, align 4
  %58 = load %struct.sja1105_avb_params_entry*, %struct.sja1105_avb_params_entry** %6, align 8
  %59 = getelementptr inbounds %struct.sja1105_avb_params_entry, %struct.sja1105_avb_params_entry* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 4
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %47, %44, %28
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @kfree(%struct.sja1105_avb_params_entry*) #1

declare dso_local %struct.sja1105_avb_params_entry* @kcalloc(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
