; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_get_pauseparam.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_get_pauseparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hnae3_handle = type { i32 }
%struct.hclge_vport = type { %struct.hclge_dev* }
%struct.hclge_dev = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.phy_device* }
%struct.phy_device = type { i32 }

@HCLGE_FC_PFC = common dso_local global i64 0, align 8
@HCLGE_FC_RX_PAUSE = common dso_local global i64 0, align 8
@HCLGE_FC_TX_PAUSE = common dso_local global i64 0, align 8
@HCLGE_FC_FULL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hnae3_handle*, i32*, i32*, i32*)* @hclge_get_pauseparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hclge_get_pauseparam(%struct.hnae3_handle* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.hnae3_handle*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.hclge_vport*, align 8
  %10 = alloca %struct.hclge_dev*, align 8
  %11 = alloca %struct.phy_device*, align 8
  store %struct.hnae3_handle* %0, %struct.hnae3_handle** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %12 = load %struct.hnae3_handle*, %struct.hnae3_handle** %5, align 8
  %13 = call %struct.hclge_vport* @hclge_get_vport(%struct.hnae3_handle* %12)
  store %struct.hclge_vport* %13, %struct.hclge_vport** %9, align 8
  %14 = load %struct.hclge_vport*, %struct.hclge_vport** %9, align 8
  %15 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %14, i32 0, i32 0
  %16 = load %struct.hclge_dev*, %struct.hclge_dev** %15, align 8
  store %struct.hclge_dev* %16, %struct.hclge_dev** %10, align 8
  %17 = load %struct.hclge_dev*, %struct.hclge_dev** %10, align 8
  %18 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.phy_device*, %struct.phy_device** %20, align 8
  store %struct.phy_device* %21, %struct.phy_device** %11, align 8
  %22 = load %struct.phy_device*, %struct.phy_device** %11, align 8
  %23 = icmp ne %struct.phy_device* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %4
  %25 = load %struct.hnae3_handle*, %struct.hnae3_handle** %5, align 8
  %26 = call i32 @hclge_get_autoneg(%struct.hnae3_handle* %25)
  br label %28

27:                                               ; preds = %4
  br label %28

28:                                               ; preds = %27, %24
  %29 = phi i32 [ %26, %24 ], [ 0, %27 ]
  %30 = load i32*, i32** %6, align 8
  store i32 %29, i32* %30, align 4
  %31 = load %struct.hclge_dev*, %struct.hclge_dev** %10, align 8
  %32 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @HCLGE_FC_PFC, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %28
  %38 = load i32*, i32** %7, align 8
  store i32 0, i32* %38, align 4
  %39 = load i32*, i32** %8, align 8
  store i32 0, i32* %39, align 4
  br label %75

40:                                               ; preds = %28
  %41 = load %struct.hclge_dev*, %struct.hclge_dev** %10, align 8
  %42 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @HCLGE_FC_RX_PAUSE, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %40
  %48 = load i32*, i32** %7, align 8
  store i32 1, i32* %48, align 4
  %49 = load i32*, i32** %8, align 8
  store i32 0, i32* %49, align 4
  br label %75

50:                                               ; preds = %40
  %51 = load %struct.hclge_dev*, %struct.hclge_dev** %10, align 8
  %52 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @HCLGE_FC_TX_PAUSE, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %50
  %58 = load i32*, i32** %8, align 8
  store i32 1, i32* %58, align 4
  %59 = load i32*, i32** %7, align 8
  store i32 0, i32* %59, align 4
  br label %74

60:                                               ; preds = %50
  %61 = load %struct.hclge_dev*, %struct.hclge_dev** %10, align 8
  %62 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @HCLGE_FC_FULL, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %60
  %68 = load i32*, i32** %7, align 8
  store i32 1, i32* %68, align 4
  %69 = load i32*, i32** %8, align 8
  store i32 1, i32* %69, align 4
  br label %73

70:                                               ; preds = %60
  %71 = load i32*, i32** %7, align 8
  store i32 0, i32* %71, align 4
  %72 = load i32*, i32** %8, align 8
  store i32 0, i32* %72, align 4
  br label %73

73:                                               ; preds = %70, %67
  br label %74

74:                                               ; preds = %73, %57
  br label %75

75:                                               ; preds = %37, %74, %47
  ret void
}

declare dso_local %struct.hclge_vport* @hclge_get_vport(%struct.hnae3_handle*) #1

declare dso_local i32 @hclge_get_autoneg(%struct.hnae3_handle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
