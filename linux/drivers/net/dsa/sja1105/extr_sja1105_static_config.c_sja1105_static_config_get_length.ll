; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_static_config.c_sja1105_static_config_get_length.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_static_config.c_sja1105_static_config_get_length.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sja1105_static_config = type { %struct.sja1105_table* }
%struct.sja1105_table = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@SJA1105_SIZE_DEVICE_ID = common dso_local global i32 0, align 4
@BLK_IDX_MAX = common dso_local global i32 0, align 4
@SJA1105_SIZE_TABLE_HEADER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @sja1105_static_config_get_length(%struct.sja1105_static_config* %0) #0 {
  %2 = alloca %struct.sja1105_static_config*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.sja1105_table*, align 8
  store %struct.sja1105_static_config* %0, %struct.sja1105_static_config** %2, align 8
  store i32 1, i32* %4, align 4
  %7 = load i32, i32* @SJA1105_SIZE_DEVICE_ID, align 4
  store i32 %7, i32* %3, align 4
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %38, %1
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @BLK_IDX_MAX, align 4
  %11 = icmp ult i32 %9, %10
  br i1 %11, label %12, label %41

12:                                               ; preds = %8
  %13 = load %struct.sja1105_static_config*, %struct.sja1105_static_config** %2, align 8
  %14 = getelementptr inbounds %struct.sja1105_static_config, %struct.sja1105_static_config* %13, i32 0, i32 0
  %15 = load %struct.sja1105_table*, %struct.sja1105_table** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.sja1105_table, %struct.sja1105_table* %15, i64 %17
  store %struct.sja1105_table* %18, %struct.sja1105_table** %6, align 8
  %19 = load %struct.sja1105_table*, %struct.sja1105_table** %6, align 8
  %20 = getelementptr inbounds %struct.sja1105_table, %struct.sja1105_table* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %12
  %24 = load i32, i32* %4, align 4
  %25 = add i32 %24, 1
  store i32 %25, i32* %4, align 4
  br label %26

26:                                               ; preds = %23, %12
  %27 = load %struct.sja1105_table*, %struct.sja1105_table** %6, align 8
  %28 = getelementptr inbounds %struct.sja1105_table, %struct.sja1105_table* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.sja1105_table*, %struct.sja1105_table** %6, align 8
  %33 = getelementptr inbounds %struct.sja1105_table, %struct.sja1105_table* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = mul i32 %31, %34
  %36 = load i32, i32* %3, align 4
  %37 = add i32 %36, %35
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %26
  %39 = load i32, i32* %5, align 4
  %40 = add i32 %39, 1
  store i32 %40, i32* %5, align 4
  br label %8

41:                                               ; preds = %8
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @SJA1105_SIZE_TABLE_HEADER, align 4
  %44 = add nsw i32 %43, 4
  %45 = mul i32 %42, %44
  %46 = load i32, i32* %3, align 4
  %47 = add i32 %46, %45
  store i32 %47, i32* %3, align 4
  %48 = load i32, i32* %3, align 4
  %49 = sub i32 %48, 4
  store i32 %49, i32* %3, align 4
  %50 = load i32, i32* %3, align 4
  %51 = zext i32 %50 to i64
  ret i64 %51
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
