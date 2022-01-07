; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_dcb.c_hclge_ieee_ets_to_tm_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_dcb.c_hclge_ieee_ets_to_tm_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_dev = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_4__ = type { i32 }
%struct.ieee_ets = type { i32*, i32, i32* }

@HNAE3_MAX_TC = common dso_local global i64 0, align 8
@HCLGE_SCH_MODE_SP = common dso_local global i32 0, align 4
@HCLGE_SCH_MODE_DWRR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hclge_dev*, %struct.ieee_ets*)* @hclge_ieee_ets_to_tm_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclge_ieee_ets_to_tm_info(%struct.hclge_dev* %0, %struct.ieee_ets* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hclge_dev*, align 8
  %5 = alloca %struct.ieee_ets*, align 8
  %6 = alloca i64, align 8
  store %struct.hclge_dev* %0, %struct.hclge_dev** %4, align 8
  store %struct.ieee_ets* %1, %struct.ieee_ets** %5, align 8
  store i64 0, i64* %6, align 8
  br label %7

7:                                                ; preds = %64, %2
  %8 = load i64, i64* %6, align 8
  %9 = load i64, i64* @HNAE3_MAX_TC, align 8
  %10 = icmp ult i64 %8, %9
  br i1 %10, label %11, label %67

11:                                               ; preds = %7
  %12 = load %struct.ieee_ets*, %struct.ieee_ets** %5, align 8
  %13 = getelementptr inbounds %struct.ieee_ets, %struct.ieee_ets* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load i64, i64* %6, align 8
  %16 = getelementptr inbounds i32, i32* %14, i64 %15
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %60 [
    i32 128, label %18
    i32 129, label %36
  ]

18:                                               ; preds = %11
  %19 = load i32, i32* @HCLGE_SCH_MODE_SP, align 4
  %20 = load %struct.hclge_dev*, %struct.hclge_dev** %4, align 8
  %21 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = load i64, i64* %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  store i32 %19, i32* %26, align 4
  %27 = load %struct.hclge_dev*, %struct.hclge_dev** %4, align 8
  %28 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i64 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i64, i64* %6, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  store i32 0, i32* %35, align 4
  br label %63

36:                                               ; preds = %11
  %37 = load i32, i32* @HCLGE_SCH_MODE_DWRR, align 4
  %38 = load %struct.hclge_dev*, %struct.hclge_dev** %4, align 8
  %39 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = load i64, i64* %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  store i32 %37, i32* %44, align 4
  %45 = load %struct.ieee_ets*, %struct.ieee_ets** %5, align 8
  %46 = getelementptr inbounds %struct.ieee_ets, %struct.ieee_ets* %45, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  %48 = load i64, i64* %6, align 8
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.hclge_dev*, %struct.hclge_dev** %4, align 8
  %52 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i64 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load i64, i64* %6, align 8
  %59 = getelementptr inbounds i32, i32* %57, i64 %58
  store i32 %50, i32* %59, align 4
  br label %63

60:                                               ; preds = %11
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %3, align 4
  br label %73

63:                                               ; preds = %36, %18
  br label %64

64:                                               ; preds = %63
  %65 = load i64, i64* %6, align 8
  %66 = add i64 %65, 1
  store i64 %66, i64* %6, align 8
  br label %7

67:                                               ; preds = %7
  %68 = load %struct.hclge_dev*, %struct.hclge_dev** %4, align 8
  %69 = load %struct.ieee_ets*, %struct.ieee_ets** %5, align 8
  %70 = getelementptr inbounds %struct.ieee_ets, %struct.ieee_ets* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @hclge_tm_prio_tc_info_update(%struct.hclge_dev* %68, i32 %71)
  store i32 0, i32* %3, align 4
  br label %73

73:                                               ; preds = %67, %60
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @hclge_tm_prio_tc_info_update(%struct.hclge_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
