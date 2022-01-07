; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3vf/extr_hclgevf_main.c_hclgevf_uninit_client_instance.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3vf/extr_hclgevf_main.c_hclgevf_uninit_client_instance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hnae3_client = type { i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 (%struct.TYPE_9__*, i32)* }
%struct.TYPE_9__ = type { i32* }
%struct.hnae3_ae_dev = type { %struct.hclgevf_dev* }
%struct.hclgevf_dev = type { %struct.TYPE_9__, i32*, i32, %struct.TYPE_10__, %struct.TYPE_7__* }
%struct.TYPE_10__ = type { i32* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.TYPE_10__*, i32)* }

@HNAE3_CLIENT_ROCE = common dso_local global i64 0, align 8
@HCLGEVF_STATE_NIC_REGISTERED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hnae3_client*, %struct.hnae3_ae_dev*)* @hclgevf_uninit_client_instance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hclgevf_uninit_client_instance(%struct.hnae3_client* %0, %struct.hnae3_ae_dev* %1) #0 {
  %3 = alloca %struct.hnae3_client*, align 8
  %4 = alloca %struct.hnae3_ae_dev*, align 8
  %5 = alloca %struct.hclgevf_dev*, align 8
  store %struct.hnae3_client* %0, %struct.hnae3_client** %3, align 8
  store %struct.hnae3_ae_dev* %1, %struct.hnae3_ae_dev** %4, align 8
  %6 = load %struct.hnae3_ae_dev*, %struct.hnae3_ae_dev** %4, align 8
  %7 = getelementptr inbounds %struct.hnae3_ae_dev, %struct.hnae3_ae_dev* %6, i32 0, i32 0
  %8 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %7, align 8
  store %struct.hclgevf_dev* %8, %struct.hclgevf_dev** %5, align 8
  %9 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %5, align 8
  %10 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %9, i32 0, i32 4
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %12 = icmp ne %struct.TYPE_7__* %11, null
  br i1 %12, label %13, label %29

13:                                               ; preds = %2
  %14 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %5, align 8
  %15 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %14, i32 0, i32 4
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32 (%struct.TYPE_10__*, i32)*, i32 (%struct.TYPE_10__*, i32)** %19, align 8
  %21 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %5, align 8
  %22 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %21, i32 0, i32 3
  %23 = call i32 %20(%struct.TYPE_10__* %22, i32 0)
  %24 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %5, align 8
  %25 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %24, i32 0, i32 4
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %25, align 8
  %26 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %5, align 8
  %27 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  store i32* null, i32** %28, align 8
  br label %29

29:                                               ; preds = %13, %2
  %30 = load %struct.hnae3_client*, %struct.hnae3_client** %3, align 8
  %31 = getelementptr inbounds %struct.hnae3_client, %struct.hnae3_client* %30, i32 0, i32 1
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i32 (%struct.TYPE_9__*, i32)*, i32 (%struct.TYPE_9__*, i32)** %33, align 8
  %35 = icmp ne i32 (%struct.TYPE_9__*, i32)* %34, null
  br i1 %35, label %36, label %65

36:                                               ; preds = %29
  %37 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %5, align 8
  %38 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %65

41:                                               ; preds = %36
  %42 = load %struct.hnae3_client*, %struct.hnae3_client** %3, align 8
  %43 = getelementptr inbounds %struct.hnae3_client, %struct.hnae3_client* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @HNAE3_CLIENT_ROCE, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %65

47:                                               ; preds = %41
  %48 = load i32, i32* @HCLGEVF_STATE_NIC_REGISTERED, align 4
  %49 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %5, align 8
  %50 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %49, i32 0, i32 2
  %51 = call i32 @clear_bit(i32 %48, i32* %50)
  %52 = load %struct.hnae3_client*, %struct.hnae3_client** %3, align 8
  %53 = getelementptr inbounds %struct.hnae3_client, %struct.hnae3_client* %52, i32 0, i32 1
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load i32 (%struct.TYPE_9__*, i32)*, i32 (%struct.TYPE_9__*, i32)** %55, align 8
  %57 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %5, align 8
  %58 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %57, i32 0, i32 0
  %59 = call i32 %56(%struct.TYPE_9__* %58, i32 0)
  %60 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %5, align 8
  %61 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %60, i32 0, i32 1
  store i32* null, i32** %61, align 8
  %62 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %5, align 8
  %63 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  store i32* null, i32** %64, align 8
  br label %65

65:                                               ; preds = %47, %41, %36, %29
  ret void
}

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
