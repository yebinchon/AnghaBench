; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_tm.c_hclge_tm_pg_to_pri_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_tm.c_hclge_tm_pg_to_pri_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_dev = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@HCLGE_FLAG_TC_BASE_SCH_MODE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hclge_dev*)* @hclge_tm_pg_to_pri_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclge_tm_pg_to_pri_map(%struct.hclge_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hclge_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.hclge_dev* %0, %struct.hclge_dev** %3, align 8
  %6 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %7 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @HCLGE_FLAG_TC_BASE_SCH_MODE, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %41

12:                                               ; preds = %1
  store i64 0, i64* %5, align 8
  br label %13

13:                                               ; preds = %37, %12
  %14 = load i64, i64* %5, align 8
  %15 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %16 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ult i64 %14, %18
  br i1 %19, label %20, label %40

20:                                               ; preds = %13
  %21 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %22 = load i64, i64* %5, align 8
  %23 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %24 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = load i64, i64* %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @hclge_tm_pg_to_pri_map_cfg(%struct.hclge_dev* %21, i64 %22, i32 %30)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %20
  %35 = load i32, i32* %4, align 4
  store i32 %35, i32* %2, align 4
  br label %41

36:                                               ; preds = %20
  br label %37

37:                                               ; preds = %36
  %38 = load i64, i64* %5, align 8
  %39 = add i64 %38, 1
  store i64 %39, i64* %5, align 8
  br label %13

40:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %40, %34, %11
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @hclge_tm_pg_to_pri_map_cfg(%struct.hclge_dev*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
