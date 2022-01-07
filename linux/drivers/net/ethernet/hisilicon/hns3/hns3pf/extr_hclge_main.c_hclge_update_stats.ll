; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_update_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_update_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hnae3_handle = type { i32 }
%struct.net_device_stats = type { i32 }
%struct.hclge_vport = type { %struct.hclge_dev* }
%struct.hclge_dev = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@HCLGE_STATE_STATISTICS_UPDATING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Update MAC stats fail, status = %d.\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Update TQPS stats fail, status = %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hnae3_handle*, %struct.net_device_stats*)* @hclge_update_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hclge_update_stats(%struct.hnae3_handle* %0, %struct.net_device_stats* %1) #0 {
  %3 = alloca %struct.hnae3_handle*, align 8
  %4 = alloca %struct.net_device_stats*, align 8
  %5 = alloca %struct.hclge_vport*, align 8
  %6 = alloca %struct.hclge_dev*, align 8
  %7 = alloca i32, align 4
  store %struct.hnae3_handle* %0, %struct.hnae3_handle** %3, align 8
  store %struct.net_device_stats* %1, %struct.net_device_stats** %4, align 8
  %8 = load %struct.hnae3_handle*, %struct.hnae3_handle** %3, align 8
  %9 = call %struct.hclge_vport* @hclge_get_vport(%struct.hnae3_handle* %8)
  store %struct.hclge_vport* %9, %struct.hclge_vport** %5, align 8
  %10 = load %struct.hclge_vport*, %struct.hclge_vport** %5, align 8
  %11 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %10, i32 0, i32 0
  %12 = load %struct.hclge_dev*, %struct.hclge_dev** %11, align 8
  store %struct.hclge_dev* %12, %struct.hclge_dev** %6, align 8
  %13 = load i32, i32* @HCLGE_STATE_STATISTICS_UPDATING, align 4
  %14 = load %struct.hclge_dev*, %struct.hclge_dev** %6, align 8
  %15 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %14, i32 0, i32 0
  %16 = call i64 @test_and_set_bit(i32 %13, i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %48

19:                                               ; preds = %2
  %20 = load %struct.hclge_dev*, %struct.hclge_dev** %6, align 8
  %21 = call i32 @hclge_mac_update_stats(%struct.hclge_dev* %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %19
  %25 = load %struct.hclge_dev*, %struct.hclge_dev** %6, align 8
  %26 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @dev_err(i32* %28, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %29)
  br label %31

31:                                               ; preds = %24, %19
  %32 = load %struct.hnae3_handle*, %struct.hnae3_handle** %3, align 8
  %33 = call i32 @hclge_tqps_update_stats(%struct.hnae3_handle* %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %31
  %37 = load %struct.hclge_dev*, %struct.hclge_dev** %6, align 8
  %38 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @dev_err(i32* %40, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  br label %43

43:                                               ; preds = %36, %31
  %44 = load i32, i32* @HCLGE_STATE_STATISTICS_UPDATING, align 4
  %45 = load %struct.hclge_dev*, %struct.hclge_dev** %6, align 8
  %46 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %45, i32 0, i32 0
  %47 = call i32 @clear_bit(i32 %44, i32* %46)
  br label %48

48:                                               ; preds = %43, %18
  ret void
}

declare dso_local %struct.hclge_vport* @hclge_get_vport(%struct.hnae3_handle*) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @hclge_mac_update_stats(%struct.hclge_dev*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @hclge_tqps_update_stats(%struct.hnae3_handle*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
