; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_parse_link_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_parse_link_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_dev = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@HNAE3_MEDIA_TYPE_FIBER = common dso_local global i64 0, align 8
@HNAE3_MEDIA_TYPE_COPPER = common dso_local global i64 0, align 8
@HNAE3_MEDIA_TYPE_BACKPLANE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hclge_dev*, i64)* @hclge_parse_link_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hclge_parse_link_mode(%struct.hclge_dev* %0, i64 %1) #0 {
  %3 = alloca %struct.hclge_dev*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.hclge_dev* %0, %struct.hclge_dev** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %7 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %5, align 8
  %11 = load i64, i64* %5, align 8
  %12 = load i64, i64* @HNAE3_MEDIA_TYPE_FIBER, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %16 = load i64, i64* %4, align 8
  %17 = call i32 @hclge_parse_fiber_link_mode(%struct.hclge_dev* %15, i64 %16)
  br label %36

18:                                               ; preds = %2
  %19 = load i64, i64* %5, align 8
  %20 = load i64, i64* @HNAE3_MEDIA_TYPE_COPPER, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %24 = load i64, i64* %4, align 8
  %25 = call i32 @hclge_parse_copper_link_mode(%struct.hclge_dev* %23, i64 %24)
  br label %35

26:                                               ; preds = %18
  %27 = load i64, i64* %5, align 8
  %28 = load i64, i64* @HNAE3_MEDIA_TYPE_BACKPLANE, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %32 = load i64, i64* %4, align 8
  %33 = call i32 @hclge_parse_backplane_link_mode(%struct.hclge_dev* %31, i64 %32)
  br label %34

34:                                               ; preds = %30, %26
  br label %35

35:                                               ; preds = %34, %22
  br label %36

36:                                               ; preds = %35, %14
  ret void
}

declare dso_local i32 @hclge_parse_fiber_link_mode(%struct.hclge_dev*, i64) #1

declare dso_local i32 @hclge_parse_copper_link_mode(%struct.hclge_dev*, i64) #1

declare dso_local i32 @hclge_parse_backplane_link_mode(%struct.hclge_dev*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
