; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3vf/extr_hclgevf_main.c_hclgevf_flr_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3vf/extr_hclgevf_main.c_hclgevf_flr_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hnae3_ae_dev = type { %struct.hclgevf_dev* }
%struct.hclgevf_dev = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@HNAE3_FLR_DOWN = common dso_local global i32 0, align 4
@HNAE3_FLR_DONE = common dso_local global i32 0, align 4
@HNAE3_FLR_RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"flr wait down timeout: %d\0A\00", align 1
@HCLGEVF_FLR_WAIT_CNT = common dso_local global i32 0, align 4
@HCLGEVF_FLR_WAIT_MS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hnae3_ae_dev*)* @hclgevf_flr_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hclgevf_flr_prepare(%struct.hnae3_ae_dev* %0) #0 {
  %2 = alloca %struct.hnae3_ae_dev*, align 8
  %3 = alloca %struct.hclgevf_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.hnae3_ae_dev* %0, %struct.hnae3_ae_dev** %2, align 8
  %5 = load %struct.hnae3_ae_dev*, %struct.hnae3_ae_dev** %2, align 8
  %6 = getelementptr inbounds %struct.hnae3_ae_dev, %struct.hnae3_ae_dev* %5, i32 0, i32 0
  %7 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %6, align 8
  store %struct.hclgevf_dev* %7, %struct.hclgevf_dev** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load i32, i32* @HNAE3_FLR_DOWN, align 4
  %9 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %10 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %9, i32 0, i32 1
  %11 = call i32 @clear_bit(i32 %8, i32* %10)
  %12 = load i32, i32* @HNAE3_FLR_DONE, align 4
  %13 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %14 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %13, i32 0, i32 1
  %15 = call i32 @clear_bit(i32 %12, i32* %14)
  %16 = load i32, i32* @HNAE3_FLR_RESET, align 4
  %17 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %18 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %17, i32 0, i32 2
  %19 = call i32 @set_bit(i32 %16, i32* %18)
  %20 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %21 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = call i32 @hclgevf_reset_event(%struct.TYPE_2__* %22, i32* null)
  br label %24

24:                                               ; preds = %36, %1
  %25 = load i32, i32* @HNAE3_FLR_DOWN, align 4
  %26 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %27 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %26, i32 0, i32 1
  %28 = call i32 @test_bit(i32 %25, i32* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %24
  %31 = load i32, i32* %4, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %4, align 4
  %33 = icmp slt i32 %31, 50
  br label %34

34:                                               ; preds = %30, %24
  %35 = phi i1 [ false, %24 ], [ %33, %30 ]
  br i1 %35, label %36, label %38

36:                                               ; preds = %34
  %37 = call i32 @msleep(i32 100)
  br label %24

38:                                               ; preds = %34
  %39 = load i32, i32* @HNAE3_FLR_DOWN, align 4
  %40 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %41 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %40, i32 0, i32 1
  %42 = call i32 @test_bit(i32 %39, i32* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %51, label %44

44:                                               ; preds = %38
  %45 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %46 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @dev_err(i32* %48, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %49)
  br label %51

51:                                               ; preds = %44, %38
  ret void
}

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @hclgevf_reset_event(%struct.TYPE_2__*, i32*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
