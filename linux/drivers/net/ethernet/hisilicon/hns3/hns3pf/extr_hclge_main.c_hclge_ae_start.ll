; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_ae_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_ae_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hnae3_handle = type { i32 }
%struct.hclge_vport = type { %struct.hclge_dev* }
%struct.hclge_dev = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@HCLGE_STATE_DOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hnae3_handle*)* @hclge_ae_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclge_ae_start(%struct.hnae3_handle* %0) #0 {
  %2 = alloca %struct.hnae3_handle*, align 8
  %3 = alloca %struct.hclge_vport*, align 8
  %4 = alloca %struct.hclge_dev*, align 8
  store %struct.hnae3_handle* %0, %struct.hnae3_handle** %2, align 8
  %5 = load %struct.hnae3_handle*, %struct.hnae3_handle** %2, align 8
  %6 = call %struct.hclge_vport* @hclge_get_vport(%struct.hnae3_handle* %5)
  store %struct.hclge_vport* %6, %struct.hclge_vport** %3, align 8
  %7 = load %struct.hclge_vport*, %struct.hclge_vport** %3, align 8
  %8 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %7, i32 0, i32 0
  %9 = load %struct.hclge_dev*, %struct.hclge_dev** %8, align 8
  store %struct.hclge_dev* %9, %struct.hclge_dev** %4, align 8
  %10 = load %struct.hclge_dev*, %struct.hclge_dev** %4, align 8
  %11 = call i32 @hclge_cfg_mac_mode(%struct.hclge_dev* %10, i32 1)
  %12 = load i32, i32* @HCLGE_STATE_DOWN, align 4
  %13 = load %struct.hclge_dev*, %struct.hclge_dev** %4, align 8
  %14 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %13, i32 0, i32 1
  %15 = call i32 @clear_bit(i32 %12, i32* %14)
  %16 = load %struct.hclge_dev*, %struct.hclge_dev** %4, align 8
  %17 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  store i64 0, i64* %19, align 8
  %20 = load %struct.hnae3_handle*, %struct.hnae3_handle** %2, align 8
  %21 = call i32 @hclge_reset_tqp_stats(%struct.hnae3_handle* %20)
  %22 = load %struct.hclge_dev*, %struct.hclge_dev** %4, align 8
  %23 = call i32 @hclge_mac_start_phy(%struct.hclge_dev* %22)
  ret i32 0
}

declare dso_local %struct.hclge_vport* @hclge_get_vport(%struct.hnae3_handle*) #1

declare dso_local i32 @hclge_cfg_mac_mode(%struct.hclge_dev*, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @hclge_reset_tqp_stats(%struct.hnae3_handle*) #1

declare dso_local i32 @hclge_mac_start_phy(%struct.hclge_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
