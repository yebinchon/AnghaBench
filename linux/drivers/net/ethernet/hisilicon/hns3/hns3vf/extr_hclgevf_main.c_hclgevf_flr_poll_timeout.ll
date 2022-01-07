; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3vf/extr_hclgevf_main.c_hclgevf_flr_poll_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3vf/extr_hclgevf_main.c_hclgevf_flr_poll_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclgevf_dev = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@HNAE3_FLR_DONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"flr wait timeout\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hclgevf_dev*, i64, i64)* @hclgevf_flr_poll_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclgevf_flr_poll_timeout(%struct.hclgevf_dev* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hclgevf_dev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.hclgevf_dev* %0, %struct.hclgevf_dev** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 0, i64* %8, align 8
  br label %9

9:                                                ; preds = %22, %3
  %10 = load i32, i32* @HNAE3_FLR_DONE, align 4
  %11 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %5, align 8
  %12 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %11, i32 0, i32 1
  %13 = call i32 @test_bit(i32 %10, i32* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %9
  %16 = load i64, i64* %8, align 8
  %17 = add i64 %16, 1
  store i64 %17, i64* %8, align 8
  %18 = load i64, i64* %7, align 8
  %19 = icmp ult i64 %16, %18
  br label %20

20:                                               ; preds = %15, %9
  %21 = phi i1 [ false, %9 ], [ %19, %15 ]
  br i1 %21, label %22, label %27

22:                                               ; preds = %20
  %23 = load i64, i64* %6, align 8
  %24 = load i64, i64* %6, align 8
  %25 = mul i64 %24, 2
  %26 = call i32 @usleep_range(i64 %23, i64 %25)
  br label %9

27:                                               ; preds = %20
  %28 = load i32, i32* @HNAE3_FLR_DONE, align 4
  %29 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %5, align 8
  %30 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %29, i32 0, i32 1
  %31 = call i32 @test_bit(i32 %28, i32* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %41, label %33

33:                                               ; preds = %27
  %34 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %5, align 8
  %35 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = call i32 @dev_err(i32* %37, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* @ETIMEDOUT, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %42

41:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  br label %42

42:                                               ; preds = %41, %33
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @usleep_range(i64, i64) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
