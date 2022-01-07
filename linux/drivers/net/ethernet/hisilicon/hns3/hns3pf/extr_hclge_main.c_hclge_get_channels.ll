; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_get_channels.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_get_channels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hnae3_handle = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ethtool_channels = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hnae3_handle*, %struct.ethtool_channels*)* @hclge_get_channels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hclge_get_channels(%struct.hnae3_handle* %0, %struct.ethtool_channels* %1) #0 {
  %3 = alloca %struct.hnae3_handle*, align 8
  %4 = alloca %struct.ethtool_channels*, align 8
  store %struct.hnae3_handle* %0, %struct.hnae3_handle** %3, align 8
  store %struct.ethtool_channels* %1, %struct.ethtool_channels** %4, align 8
  %5 = load %struct.hnae3_handle*, %struct.hnae3_handle** %3, align 8
  %6 = call i32 @hclge_get_max_channels(%struct.hnae3_handle* %5)
  %7 = load %struct.ethtool_channels*, %struct.ethtool_channels** %4, align 8
  %8 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %7, i32 0, i32 3
  store i32 %6, i32* %8, align 4
  %9 = load %struct.ethtool_channels*, %struct.ethtool_channels** %4, align 8
  %10 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %9, i32 0, i32 0
  store i32 1, i32* %10, align 4
  %11 = load %struct.ethtool_channels*, %struct.ethtool_channels** %4, align 8
  %12 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %11, i32 0, i32 1
  store i32 1, i32* %12, align 4
  %13 = load %struct.hnae3_handle*, %struct.hnae3_handle** %3, align 8
  %14 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.ethtool_channels*, %struct.ethtool_channels** %4, align 8
  %18 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %17, i32 0, i32 2
  store i32 %16, i32* %18, align 4
  ret void
}

declare dso_local i32 @hclge_get_max_channels(%struct.hnae3_handle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
