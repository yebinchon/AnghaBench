; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_mdio.c_hclge_mac_adjust_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_mdio.c_hclge_mac_adjust_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32, i32 }
%struct.hnae3_handle = type { i32 }
%struct.hclge_vport = type { %struct.hclge_dev* }
%struct.hclge_dev = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"failed to adjust link.\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"failed to configure flow control.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @hclge_mac_adjust_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hclge_mac_adjust_link(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.hnae3_handle*, align 8
  %4 = alloca %struct.hclge_vport*, align 8
  %5 = alloca %struct.hclge_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = call i64 @netdev_priv(%struct.net_device* %9)
  %11 = inttoptr i64 %10 to i8**
  %12 = load i8*, i8** %11, align 8
  %13 = bitcast i8* %12 to %struct.hnae3_handle*
  store %struct.hnae3_handle* %13, %struct.hnae3_handle** %3, align 8
  %14 = load %struct.hnae3_handle*, %struct.hnae3_handle** %3, align 8
  %15 = call %struct.hclge_vport* @hclge_get_vport(%struct.hnae3_handle* %14)
  store %struct.hclge_vport* %15, %struct.hclge_vport** %4, align 8
  %16 = load %struct.hclge_vport*, %struct.hclge_vport** %4, align 8
  %17 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %16, i32 0, i32 0
  %18 = load %struct.hclge_dev*, %struct.hclge_dev** %17, align 8
  store %struct.hclge_dev* %18, %struct.hclge_dev** %5, align 8
  %19 = load %struct.net_device*, %struct.net_device** %2, align 8
  %20 = getelementptr inbounds %struct.net_device, %struct.net_device* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %1
  br label %54

26:                                               ; preds = %1
  %27 = load %struct.net_device*, %struct.net_device** %2, align 8
  %28 = getelementptr inbounds %struct.net_device, %struct.net_device* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %7, align 4
  %32 = load %struct.net_device*, %struct.net_device** %2, align 8
  %33 = getelementptr inbounds %struct.net_device, %struct.net_device* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %6, align 4
  %37 = load %struct.hclge_dev*, %struct.hclge_dev** %5, align 8
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @hclge_cfg_mac_speed_dup(%struct.hclge_dev* %37, i32 %38, i32 %39)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %26
  %44 = load %struct.net_device*, %struct.net_device** %2, align 8
  %45 = call i32 @netdev_err(%struct.net_device* %44, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %46

46:                                               ; preds = %43, %26
  %47 = load %struct.hclge_dev*, %struct.hclge_dev** %5, align 8
  %48 = call i32 @hclge_cfg_flowctrl(%struct.hclge_dev* %47)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load %struct.net_device*, %struct.net_device** %2, align 8
  %53 = call i32 @netdev_err(%struct.net_device* %52, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %54

54:                                               ; preds = %25, %51, %46
  ret void
}

declare dso_local i64 @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.hclge_vport* @hclge_get_vport(%struct.hnae3_handle*) #1

declare dso_local i32 @hclge_cfg_mac_speed_dup(%struct.hclge_dev*, i32, i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @hclge_cfg_flowctrl(%struct.hclge_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
