; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_dcb.c_hclge_tm_info_to_ieee_ets.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_dcb.c_hclge_tm_info_to_ieee_ets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_dev = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, %struct.TYPE_4__*, i32* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32* }
%struct.ieee_ets = type { i32, i32*, i32*, i32*, i32 }

@HNAE3_MAX_TC = common dso_local global i64 0, align 8
@HCLGE_SCH_MODE_SP = common dso_local global i64 0, align 8
@IEEE_8021QAZ_TSA_STRICT = common dso_local global i32 0, align 4
@IEEE_8021QAZ_TSA_ETS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hclge_dev*, %struct.ieee_ets*)* @hclge_tm_info_to_ieee_ets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hclge_tm_info_to_ieee_ets(%struct.hclge_dev* %0, %struct.ieee_ets* %1) #0 {
  %3 = alloca %struct.hclge_dev*, align 8
  %4 = alloca %struct.ieee_ets*, align 8
  %5 = alloca i64, align 8
  store %struct.hclge_dev* %0, %struct.hclge_dev** %3, align 8
  store %struct.ieee_ets* %1, %struct.ieee_ets** %4, align 8
  %6 = load %struct.ieee_ets*, %struct.ieee_ets** %4, align 8
  %7 = call i32 @memset(%struct.ieee_ets* %6, i32 0, i32 40)
  %8 = load %struct.ieee_ets*, %struct.ieee_ets** %4, align 8
  %9 = getelementptr inbounds %struct.ieee_ets, %struct.ieee_ets* %8, i32 0, i32 0
  store i32 1, i32* %9, align 8
  %10 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %11 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.ieee_ets*, %struct.ieee_ets** %4, align 8
  %14 = getelementptr inbounds %struct.ieee_ets, %struct.ieee_ets* %13, i32 0, i32 4
  store i32 %12, i32* %14, align 8
  store i64 0, i64* %5, align 8
  br label %15

15:                                               ; preds = %72, %2
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* @HNAE3_MAX_TC, align 8
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %19, label %75

19:                                               ; preds = %15
  %20 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %21 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 2
  %23 = load i32*, i32** %22, align 8
  %24 = load i64, i64* %5, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.ieee_ets*, %struct.ieee_ets** %4, align 8
  %28 = getelementptr inbounds %struct.ieee_ets, %struct.ieee_ets* %27, i32 0, i32 3
  %29 = load i32*, i32** %28, align 8
  %30 = load i64, i64* %5, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  store i32 %26, i32* %31, align 4
  %32 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %33 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i64 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i64, i64* %5, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.ieee_ets*, %struct.ieee_ets** %4, align 8
  %43 = getelementptr inbounds %struct.ieee_ets, %struct.ieee_ets* %42, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  %45 = load i64, i64* %5, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  store i32 %41, i32* %46, align 4
  %47 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %48 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = load i64, i64* %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @HCLGE_SCH_MODE_SP, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %64

57:                                               ; preds = %19
  %58 = load i32, i32* @IEEE_8021QAZ_TSA_STRICT, align 4
  %59 = load %struct.ieee_ets*, %struct.ieee_ets** %4, align 8
  %60 = getelementptr inbounds %struct.ieee_ets, %struct.ieee_ets* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = load i64, i64* %5, align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  store i32 %58, i32* %63, align 4
  br label %71

64:                                               ; preds = %19
  %65 = load i32, i32* @IEEE_8021QAZ_TSA_ETS, align 4
  %66 = load %struct.ieee_ets*, %struct.ieee_ets** %4, align 8
  %67 = getelementptr inbounds %struct.ieee_ets, %struct.ieee_ets* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = load i64, i64* %5, align 8
  %70 = getelementptr inbounds i32, i32* %68, i64 %69
  store i32 %65, i32* %70, align 4
  br label %71

71:                                               ; preds = %64, %57
  br label %72

72:                                               ; preds = %71
  %73 = load i64, i64* %5, align 8
  %74 = add i64 %73, 1
  store i64 %74, i64* %5, align 8
  br label %15

75:                                               ; preds = %15
  ret void
}

declare dso_local i32 @memset(%struct.ieee_ets*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
