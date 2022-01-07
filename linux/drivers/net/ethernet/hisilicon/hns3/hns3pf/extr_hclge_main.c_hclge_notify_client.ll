; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_notify_client.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_notify_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_dev = type { i64, %struct.TYPE_6__*, %struct.TYPE_4__*, i32, %struct.hnae3_client* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { %struct.hnae3_handle }
%struct.hnae3_handle = type { i32 }
%struct.hnae3_client = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.hnae3_handle*, i32)* }

@HCLGE_STATE_NIC_REGISTERED = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"notify nic client failed %d(%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hclge_notify_client(%struct.hclge_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hclge_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hnae3_client*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.hnae3_handle*, align 8
  %9 = alloca i32, align 4
  store %struct.hclge_dev* %0, %struct.hclge_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.hclge_dev*, %struct.hclge_dev** %4, align 8
  %11 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %10, i32 0, i32 4
  %12 = load %struct.hnae3_client*, %struct.hnae3_client** %11, align 8
  store %struct.hnae3_client* %12, %struct.hnae3_client** %6, align 8
  %13 = load i32, i32* @HCLGE_STATE_NIC_REGISTERED, align 4
  %14 = load %struct.hclge_dev*, %struct.hclge_dev** %4, align 8
  %15 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %14, i32 0, i32 3
  %16 = call i32 @test_bit(i32 %13, i32* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load %struct.hnae3_client*, %struct.hnae3_client** %6, align 8
  %20 = icmp ne %struct.hnae3_client* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %18, %2
  store i32 0, i32* %3, align 4
  br label %71

22:                                               ; preds = %18
  %23 = load %struct.hnae3_client*, %struct.hnae3_client** %6, align 8
  %24 = getelementptr inbounds %struct.hnae3_client, %struct.hnae3_client* %23, i32 0, i32 0
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32 (%struct.hnae3_handle*, i32)*, i32 (%struct.hnae3_handle*, i32)** %26, align 8
  %28 = icmp ne i32 (%struct.hnae3_handle*, i32)* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %22
  %30 = load i32, i32* @EOPNOTSUPP, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %71

32:                                               ; preds = %22
  store i64 0, i64* %7, align 8
  br label %33

33:                                               ; preds = %67, %32
  %34 = load i64, i64* %7, align 8
  %35 = load %struct.hclge_dev*, %struct.hclge_dev** %4, align 8
  %36 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = add i64 %37, 1
  %39 = icmp ult i64 %34, %38
  br i1 %39, label %40, label %70

40:                                               ; preds = %33
  %41 = load %struct.hclge_dev*, %struct.hclge_dev** %4, align 8
  %42 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %41, i32 0, i32 2
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = load i64, i64* %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  store %struct.hnae3_handle* %46, %struct.hnae3_handle** %8, align 8
  %47 = load %struct.hnae3_client*, %struct.hnae3_client** %6, align 8
  %48 = getelementptr inbounds %struct.hnae3_client, %struct.hnae3_client* %47, i32 0, i32 0
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32 (%struct.hnae3_handle*, i32)*, i32 (%struct.hnae3_handle*, i32)** %50, align 8
  %52 = load %struct.hnae3_handle*, %struct.hnae3_handle** %8, align 8
  %53 = load i32, i32* %5, align 4
  %54 = call i32 %51(%struct.hnae3_handle* %52, i32 %53)
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %40
  %58 = load %struct.hclge_dev*, %struct.hclge_dev** %4, align 8
  %59 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %58, i32 0, i32 1
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @dev_err(i32* %61, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %62, i32 %63)
  %65 = load i32, i32* %9, align 4
  store i32 %65, i32* %3, align 4
  br label %71

66:                                               ; preds = %40
  br label %67

67:                                               ; preds = %66
  %68 = load i64, i64* %7, align 8
  %69 = add i64 %68, 1
  store i64 %69, i64* %7, align 8
  br label %33

70:                                               ; preds = %33
  store i32 0, i32* %3, align 4
  br label %71

71:                                               ; preds = %70, %57, %29, %21
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
