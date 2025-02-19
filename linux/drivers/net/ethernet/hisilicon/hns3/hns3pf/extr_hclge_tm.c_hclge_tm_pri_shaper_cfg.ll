; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_tm.c_hclge_tm_pri_shaper_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_tm.c_hclge_tm_pri_shaper_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_dev = type { i64 }

@HCLGE_FLAG_TC_BASE_SCH_MODE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hclge_dev*)* @hclge_tm_pri_shaper_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclge_tm_pri_shaper_cfg(%struct.hclge_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hclge_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.hclge_dev* %0, %struct.hclge_dev** %3, align 8
  %5 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %6 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @HCLGE_FLAG_TC_BASE_SCH_MODE, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %18

10:                                               ; preds = %1
  %11 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %12 = call i32 @hclge_tm_pri_tc_base_shaper_cfg(%struct.hclge_dev* %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = load i32, i32* %4, align 4
  store i32 %16, i32* %2, align 4
  br label %27

17:                                               ; preds = %10
  br label %26

18:                                               ; preds = %1
  %19 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %20 = call i32 @hclge_tm_pri_vnet_base_shaper_cfg(%struct.hclge_dev* %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32, i32* %4, align 4
  store i32 %24, i32* %2, align 4
  br label %27

25:                                               ; preds = %18
  br label %26

26:                                               ; preds = %25, %17
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %26, %23, %15
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i32 @hclge_tm_pri_tc_base_shaper_cfg(%struct.hclge_dev*) #1

declare dso_local i32 @hclge_tm_pri_vnet_base_shaper_cfg(%struct.hclge_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
