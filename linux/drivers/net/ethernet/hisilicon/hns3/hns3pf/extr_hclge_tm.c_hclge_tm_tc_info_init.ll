; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_tm.c_hclge_tm_tc_info_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_tm.c_hclge_tm_tc_info_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_dev = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64*, i64, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64, i32, i64, i32 }

@HCLGE_SCH_MODE_DWRR = common dso_local global i32 0, align 4
@HNAE3_MAX_USER_PRIO = common dso_local global i64 0, align 8
@HCLGE_FLAG_DCB_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hclge_dev*)* @hclge_tm_tc_info_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hclge_tm_tc_info_init(%struct.hclge_dev* %0) #0 {
  %2 = alloca %struct.hclge_dev*, align 8
  %3 = alloca i64, align 8
  store %struct.hclge_dev* %0, %struct.hclge_dev** %2, align 8
  store i64 0, i64* %3, align 8
  br label %4

4:                                                ; preds = %49, %1
  %5 = load i64, i64* %3, align 8
  %6 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %7 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ult i64 %5, %9
  br i1 %10, label %11, label %52

11:                                               ; preds = %4
  %12 = load i64, i64* %3, align 8
  %13 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %14 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 4
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = load i64, i64* %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  store i64 %12, i64* %19, align 8
  %20 = load i32, i32* @HCLGE_SCH_MODE_DWRR, align 4
  %21 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %22 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 4
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = load i64, i64* %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 3
  store i32 %20, i32* %27, align 8
  %28 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %29 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 4
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = load i64, i64* %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 2
  store i64 0, i64* %34, align 8
  %35 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %36 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 3
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i64 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %43 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 4
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = load i64, i64* %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  store i32 %41, i32* %48, align 8
  br label %49

49:                                               ; preds = %11
  %50 = load i64, i64* %3, align 8
  %51 = add i64 %50, 1
  store i64 %51, i64* %3, align 8
  br label %4

52:                                               ; preds = %4
  store i64 0, i64* %3, align 8
  br label %53

53:                                               ; preds = %75, %52
  %54 = load i64, i64* %3, align 8
  %55 = load i64, i64* @HNAE3_MAX_USER_PRIO, align 8
  %56 = icmp ult i64 %54, %55
  br i1 %56, label %57, label %78

57:                                               ; preds = %53
  %58 = load i64, i64* %3, align 8
  %59 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %60 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp uge i64 %58, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %57
  br label %67

65:                                               ; preds = %57
  %66 = load i64, i64* %3, align 8
  br label %67

67:                                               ; preds = %65, %64
  %68 = phi i64 [ 0, %64 ], [ %66, %65 ]
  %69 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %70 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 1
  %72 = load i64*, i64** %71, align 8
  %73 = load i64, i64* %3, align 8
  %74 = getelementptr inbounds i64, i64* %72, i64 %73
  store i64 %68, i64* %74, align 8
  br label %75

75:                                               ; preds = %67
  %76 = load i64, i64* %3, align 8
  %77 = add i64 %76, 1
  store i64 %77, i64* %3, align 8
  br label %53

78:                                               ; preds = %53
  %79 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %80 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp ugt i64 %82, 1
  br i1 %83, label %90, label %84

84:                                               ; preds = %78
  %85 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %86 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %84, %78
  %91 = load i32, i32* @HCLGE_FLAG_DCB_ENABLE, align 4
  %92 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %93 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = or i32 %94, %91
  store i32 %95, i32* %93, align 8
  br label %103

96:                                               ; preds = %84
  %97 = load i32, i32* @HCLGE_FLAG_DCB_ENABLE, align 4
  %98 = xor i32 %97, -1
  %99 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %100 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = and i32 %101, %98
  store i32 %102, i32* %100, align 8
  br label %103

103:                                              ; preds = %96, %90
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
