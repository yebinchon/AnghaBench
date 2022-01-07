; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3vf/extr_hclgevf_main.c_hclgevf_get_channels.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3vf/extr_hclgevf_main.c_hclgevf_get_channels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hnae3_handle = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ethtool_channels = type { i32, i64, i64, i32 }
%struct.hclgevf_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hnae3_handle*, %struct.ethtool_channels*)* @hclgevf_get_channels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hclgevf_get_channels(%struct.hnae3_handle* %0, %struct.ethtool_channels* %1) #0 {
  %3 = alloca %struct.hnae3_handle*, align 8
  %4 = alloca %struct.ethtool_channels*, align 8
  %5 = alloca %struct.hclgevf_dev*, align 8
  store %struct.hnae3_handle* %0, %struct.hnae3_handle** %3, align 8
  store %struct.ethtool_channels* %1, %struct.ethtool_channels** %4, align 8
  %6 = load %struct.hnae3_handle*, %struct.hnae3_handle** %3, align 8
  %7 = call %struct.hclgevf_dev* @hclgevf_ae_get_hdev(%struct.hnae3_handle* %6)
  store %struct.hclgevf_dev* %7, %struct.hclgevf_dev** %5, align 8
  %8 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %5, align 8
  %9 = call i32 @hclgevf_get_max_channels(%struct.hclgevf_dev* %8)
  %10 = load %struct.ethtool_channels*, %struct.ethtool_channels** %4, align 8
  %11 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %10, i32 0, i32 3
  store i32 %9, i32* %11, align 8
  %12 = load %struct.ethtool_channels*, %struct.ethtool_channels** %4, align 8
  %13 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %12, i32 0, i32 2
  store i64 0, i64* %13, align 8
  %14 = load %struct.ethtool_channels*, %struct.ethtool_channels** %4, align 8
  %15 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %14, i32 0, i32 1
  store i64 0, i64* %15, align 8
  %16 = load %struct.hnae3_handle*, %struct.hnae3_handle** %3, align 8
  %17 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.ethtool_channels*, %struct.ethtool_channels** %4, align 8
  %21 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  ret void
}

declare dso_local %struct.hclgevf_dev* @hclgevf_ae_get_hdev(%struct.hnae3_handle*) #1

declare dso_local i32 @hclgevf_get_max_channels(%struct.hclgevf_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
