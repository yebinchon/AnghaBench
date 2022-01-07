; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_report_hw_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_report_hw_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_dev = type { i64, %struct.TYPE_3__*, i32, %struct.hnae3_client* }
%struct.TYPE_3__ = type { i32 }
%struct.hnae3_client = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (i32*, i32)* }

@HCLGE_STATE_NIC_REGISTERED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hclge_report_hw_error(%struct.hclge_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.hclge_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hnae3_client*, align 8
  %6 = alloca i64, align 8
  store %struct.hclge_dev* %0, %struct.hclge_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %8 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %7, i32 0, i32 3
  %9 = load %struct.hnae3_client*, %struct.hnae3_client** %8, align 8
  store %struct.hnae3_client* %9, %struct.hnae3_client** %5, align 8
  %10 = load %struct.hnae3_client*, %struct.hnae3_client** %5, align 8
  %11 = icmp ne %struct.hnae3_client* %10, null
  br i1 %11, label %12, label %25

12:                                               ; preds = %2
  %13 = load %struct.hnae3_client*, %struct.hnae3_client** %5, align 8
  %14 = getelementptr inbounds %struct.hnae3_client, %struct.hnae3_client* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32 (i32*, i32)*, i32 (i32*, i32)** %16, align 8
  %18 = icmp ne i32 (i32*, i32)* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %12
  %20 = load i32, i32* @HCLGE_STATE_NIC_REGISTERED, align 4
  %21 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %22 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %21, i32 0, i32 2
  %23 = call i32 @test_bit(i32 %20, i32* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %19, %12, %2
  br label %51

26:                                               ; preds = %19
  store i64 0, i64* %6, align 8
  br label %27

27:                                               ; preds = %48, %26
  %28 = load i64, i64* %6, align 8
  %29 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %30 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = add i64 %31, 1
  %33 = icmp ult i64 %28, %32
  br i1 %33, label %34, label %51

34:                                               ; preds = %27
  %35 = load %struct.hnae3_client*, %struct.hnae3_client** %5, align 8
  %36 = getelementptr inbounds %struct.hnae3_client, %struct.hnae3_client* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32 (i32*, i32)*, i32 (i32*, i32)** %38, align 8
  %40 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %41 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %40, i32 0, i32 1
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = load i64, i64* %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %4, align 4
  %47 = call i32 %39(i32* %45, i32 %46)
  br label %48

48:                                               ; preds = %34
  %49 = load i64, i64* %6, align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* %6, align 8
  br label %27

51:                                               ; preds = %25, %27
  ret void
}

declare dso_local i32 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
