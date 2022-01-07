; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_tm.c_hclge_tm_lvl34_schd_mode_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_tm.c_hclge_tm_lvl34_schd_mode_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_dev = type { i64, i64, %struct.TYPE_2__, %struct.hclge_vport* }
%struct.TYPE_2__ = type { i64 }
%struct.hclge_vport = type { i64 }

@HCLGE_FLAG_TC_BASE_SCH_MODE = common dso_local global i64 0, align 8
@HCLGE_SCH_MODE_DWRR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hclge_dev*)* @hclge_tm_lvl34_schd_mode_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclge_tm_lvl34_schd_mode_cfg(%struct.hclge_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hclge_dev*, align 8
  %4 = alloca %struct.hclge_vport*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.hclge_dev* %0, %struct.hclge_dev** %3, align 8
  %8 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %9 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %8, i32 0, i32 3
  %10 = load %struct.hclge_vport*, %struct.hclge_vport** %9, align 8
  store %struct.hclge_vport* %10, %struct.hclge_vport** %4, align 8
  %11 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %12 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @HCLGE_FLAG_TC_BASE_SCH_MODE, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %63

16:                                               ; preds = %1
  store i64 0, i64* %6, align 8
  br label %17

17:                                               ; preds = %59, %16
  %18 = load i64, i64* %6, align 8
  %19 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %20 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp slt i64 %18, %22
  br i1 %23, label %24, label %62

24:                                               ; preds = %17
  %25 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %26 = load i64, i64* %6, align 8
  %27 = call i32 @hclge_tm_pri_schd_mode_cfg(%struct.hclge_dev* %25, i64 %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i32, i32* %5, align 4
  store i32 %31, i32* %2, align 4
  br label %85

32:                                               ; preds = %24
  store i64 0, i64* %7, align 8
  br label %33

33:                                               ; preds = %55, %32
  %34 = load i64, i64* %7, align 8
  %35 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %36 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp slt i64 %34, %37
  br i1 %38, label %39, label %58

39:                                               ; preds = %33
  %40 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %41 = load %struct.hclge_vport*, %struct.hclge_vport** %4, align 8
  %42 = load i64, i64* %7, align 8
  %43 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %41, i64 %42
  %44 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %6, align 8
  %47 = add nsw i64 %45, %46
  %48 = load i32, i32* @HCLGE_SCH_MODE_DWRR, align 4
  %49 = call i32 @hclge_tm_qs_schd_mode_cfg(%struct.hclge_dev* %40, i64 %47, i32 %48)
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %5, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %39
  %53 = load i32, i32* %5, align 4
  store i32 %53, i32* %2, align 4
  br label %85

54:                                               ; preds = %39
  br label %55

55:                                               ; preds = %54
  %56 = load i64, i64* %7, align 8
  %57 = add nsw i64 %56, 1
  store i64 %57, i64* %7, align 8
  br label %33

58:                                               ; preds = %33
  br label %59

59:                                               ; preds = %58
  %60 = load i64, i64* %6, align 8
  %61 = add nsw i64 %60, 1
  store i64 %61, i64* %6, align 8
  br label %17

62:                                               ; preds = %17
  br label %84

63:                                               ; preds = %1
  store i64 0, i64* %6, align 8
  br label %64

64:                                               ; preds = %80, %63
  %65 = load i64, i64* %6, align 8
  %66 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %67 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp slt i64 %65, %68
  br i1 %69, label %70, label %83

70:                                               ; preds = %64
  %71 = load %struct.hclge_vport*, %struct.hclge_vport** %4, align 8
  %72 = call i32 @hclge_tm_schd_mode_vnet_base_cfg(%struct.hclge_vport* %71)
  store i32 %72, i32* %5, align 4
  %73 = load i32, i32* %5, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %70
  %76 = load i32, i32* %5, align 4
  store i32 %76, i32* %2, align 4
  br label %85

77:                                               ; preds = %70
  %78 = load %struct.hclge_vport*, %struct.hclge_vport** %4, align 8
  %79 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %78, i32 1
  store %struct.hclge_vport* %79, %struct.hclge_vport** %4, align 8
  br label %80

80:                                               ; preds = %77
  %81 = load i64, i64* %6, align 8
  %82 = add nsw i64 %81, 1
  store i64 %82, i64* %6, align 8
  br label %64

83:                                               ; preds = %64
  br label %84

84:                                               ; preds = %83, %62
  store i32 0, i32* %2, align 4
  br label %85

85:                                               ; preds = %84, %75, %52, %30
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local i32 @hclge_tm_pri_schd_mode_cfg(%struct.hclge_dev*, i64) #1

declare dso_local i32 @hclge_tm_qs_schd_mode_cfg(%struct.hclge_dev*, i64, i32) #1

declare dso_local i32 @hclge_tm_schd_mode_vnet_base_cfg(%struct.hclge_vport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
