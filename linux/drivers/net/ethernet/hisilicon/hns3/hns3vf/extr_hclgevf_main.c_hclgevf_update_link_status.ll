; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3vf/extr_hclgevf_main.c_hclgevf_update_link_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3vf/extr_hclgevf_main.c_hclgevf_update_link_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclgevf_dev = type { %struct.TYPE_6__, i32, %struct.hnae3_client*, %struct.hnae3_handle, %struct.hnae3_handle }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.hnae3_client = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.hnae3_handle*, i32)* }
%struct.hnae3_handle = type { %struct.hnae3_client* }

@HCLGEVF_STATE_DOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hclgevf_update_link_status(%struct.hclgevf_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.hclgevf_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hnae3_handle*, align 8
  %6 = alloca %struct.hnae3_handle*, align 8
  %7 = alloca %struct.hnae3_client*, align 8
  %8 = alloca %struct.hnae3_client*, align 8
  store %struct.hclgevf_dev* %0, %struct.hclgevf_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %10 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %9, i32 0, i32 4
  store %struct.hnae3_handle* %10, %struct.hnae3_handle** %5, align 8
  %11 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %12 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %11, i32 0, i32 3
  store %struct.hnae3_handle* %12, %struct.hnae3_handle** %6, align 8
  %13 = load %struct.hnae3_handle*, %struct.hnae3_handle** %6, align 8
  %14 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %13, i32 0, i32 0
  %15 = load %struct.hnae3_client*, %struct.hnae3_client** %14, align 8
  store %struct.hnae3_client* %15, %struct.hnae3_client** %8, align 8
  %16 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %17 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %16, i32 0, i32 2
  %18 = load %struct.hnae3_client*, %struct.hnae3_client** %17, align 8
  store %struct.hnae3_client* %18, %struct.hnae3_client** %7, align 8
  %19 = load i32, i32* @HCLGEVF_STATE_DOWN, align 4
  %20 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %21 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %20, i32 0, i32 1
  %22 = call i64 @test_bit(i32 %19, i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  br label %27

25:                                               ; preds = %2
  %26 = load i32, i32* %4, align 4
  br label %27

27:                                               ; preds = %25, %24
  %28 = phi i32 [ 0, %24 ], [ %26, %25 ]
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %31 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %29, %34
  br i1 %35, label %36, label %77

36:                                               ; preds = %27
  %37 = load %struct.hnae3_client*, %struct.hnae3_client** %8, align 8
  %38 = getelementptr inbounds %struct.hnae3_client, %struct.hnae3_client* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32 (%struct.hnae3_handle*, i32)*, i32 (%struct.hnae3_handle*, i32)** %40, align 8
  %42 = load %struct.hnae3_handle*, %struct.hnae3_handle** %6, align 8
  %43 = load i32, i32* %4, align 4
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  %48 = call i32 %41(%struct.hnae3_handle* %42, i32 %47)
  %49 = load %struct.hnae3_client*, %struct.hnae3_client** %7, align 8
  %50 = icmp ne %struct.hnae3_client* %49, null
  br i1 %50, label %51, label %71

51:                                               ; preds = %36
  %52 = load %struct.hnae3_client*, %struct.hnae3_client** %7, align 8
  %53 = getelementptr inbounds %struct.hnae3_client, %struct.hnae3_client* %52, i32 0, i32 0
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32 (%struct.hnae3_handle*, i32)*, i32 (%struct.hnae3_handle*, i32)** %55, align 8
  %57 = icmp ne i32 (%struct.hnae3_handle*, i32)* %56, null
  br i1 %57, label %58, label %71

58:                                               ; preds = %51
  %59 = load %struct.hnae3_client*, %struct.hnae3_client** %7, align 8
  %60 = getelementptr inbounds %struct.hnae3_client, %struct.hnae3_client* %59, i32 0, i32 0
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32 (%struct.hnae3_handle*, i32)*, i32 (%struct.hnae3_handle*, i32)** %62, align 8
  %64 = load %struct.hnae3_handle*, %struct.hnae3_handle** %5, align 8
  %65 = load i32, i32* %4, align 4
  %66 = icmp ne i32 %65, 0
  %67 = xor i1 %66, true
  %68 = xor i1 %67, true
  %69 = zext i1 %68 to i32
  %70 = call i32 %63(%struct.hnae3_handle* %64, i32 %69)
  br label %71

71:                                               ; preds = %58, %51, %36
  %72 = load i32, i32* %4, align 4
  %73 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %74 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  store i32 %72, i32* %76, align 8
  br label %77

77:                                               ; preds = %71, %27
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
