; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3vf/extr_hclgevf_main.c_hclgevf_notify_client.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3vf/extr_hclgevf_main.c_hclgevf_notify_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclgevf_dev = type { %struct.TYPE_3__*, i32, %struct.hnae3_handle, %struct.hnae3_client* }
%struct.TYPE_3__ = type { i32 }
%struct.hnae3_handle = type { i32 }
%struct.hnae3_client = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.hnae3_handle*, i32)* }

@HCLGEVF_STATE_NIC_REGISTERED = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"notify nic client failed %d(%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hclgevf_dev*, i32)* @hclgevf_notify_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclgevf_notify_client(%struct.hclgevf_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hclgevf_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hnae3_client*, align 8
  %7 = alloca %struct.hnae3_handle*, align 8
  %8 = alloca i32, align 4
  store %struct.hclgevf_dev* %0, %struct.hclgevf_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %4, align 8
  %10 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %9, i32 0, i32 3
  %11 = load %struct.hnae3_client*, %struct.hnae3_client** %10, align 8
  store %struct.hnae3_client* %11, %struct.hnae3_client** %6, align 8
  %12 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %4, align 8
  %13 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %12, i32 0, i32 2
  store %struct.hnae3_handle* %13, %struct.hnae3_handle** %7, align 8
  %14 = load i32, i32* @HCLGEVF_STATE_NIC_REGISTERED, align 4
  %15 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %4, align 8
  %16 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %15, i32 0, i32 1
  %17 = call i32 @test_bit(i32 %14, i32* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load %struct.hnae3_client*, %struct.hnae3_client** %6, align 8
  %21 = icmp ne %struct.hnae3_client* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %19, %2
  store i32 0, i32* %3, align 4
  br label %54

23:                                               ; preds = %19
  %24 = load %struct.hnae3_client*, %struct.hnae3_client** %6, align 8
  %25 = getelementptr inbounds %struct.hnae3_client, %struct.hnae3_client* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32 (%struct.hnae3_handle*, i32)*, i32 (%struct.hnae3_handle*, i32)** %27, align 8
  %29 = icmp ne i32 (%struct.hnae3_handle*, i32)* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %23
  %31 = load i32, i32* @EOPNOTSUPP, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %54

33:                                               ; preds = %23
  %34 = load %struct.hnae3_client*, %struct.hnae3_client** %6, align 8
  %35 = getelementptr inbounds %struct.hnae3_client, %struct.hnae3_client* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32 (%struct.hnae3_handle*, i32)*, i32 (%struct.hnae3_handle*, i32)** %37, align 8
  %39 = load %struct.hnae3_handle*, %struct.hnae3_handle** %7, align 8
  %40 = load i32, i32* %5, align 4
  %41 = call i32 %38(%struct.hnae3_handle* %39, i32 %40)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %33
  %45 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %4, align 8
  %46 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %45, i32 0, i32 0
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @dev_err(i32* %48, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %49, i32 %50)
  br label %52

52:                                               ; preds = %44, %33
  %53 = load i32, i32* %8, align 4
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %52, %30, %22
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
