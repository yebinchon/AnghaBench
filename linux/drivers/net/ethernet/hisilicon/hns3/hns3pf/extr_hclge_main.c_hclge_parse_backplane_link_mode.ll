; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_parse_backplane_link_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_parse_backplane_link_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_dev = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.hclge_mac }
%struct.hclge_mac = type { i32 }

@ETHTOOL_LINK_MODE_Backplane_BIT = common dso_local global i32 0, align 4
@ETHTOOL_LINK_MODE_Pause_BIT = common dso_local global i32 0, align 4
@ETHTOOL_LINK_MODE_FEC_NONE_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hclge_dev*, i32)* @hclge_parse_backplane_link_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hclge_parse_backplane_link_mode(%struct.hclge_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.hclge_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hclge_mac*, align 8
  store %struct.hclge_dev* %0, %struct.hclge_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %7 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  store %struct.hclge_mac* %8, %struct.hclge_mac** %5, align 8
  %9 = load %struct.hclge_mac*, %struct.hclge_mac** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @hclge_convert_setting_kr(%struct.hclge_mac* %9, i32 %10)
  %12 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %13 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp sge i32 %16, 33
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load %struct.hclge_mac*, %struct.hclge_mac** %5, align 8
  %20 = call i32 @hclge_convert_setting_fec(%struct.hclge_mac* %19)
  br label %21

21:                                               ; preds = %18, %2
  %22 = load i32, i32* @ETHTOOL_LINK_MODE_Backplane_BIT, align 4
  %23 = load %struct.hclge_mac*, %struct.hclge_mac** %5, align 8
  %24 = getelementptr inbounds %struct.hclge_mac, %struct.hclge_mac* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @linkmode_set_bit(i32 %22, i32 %25)
  %27 = load i32, i32* @ETHTOOL_LINK_MODE_Pause_BIT, align 4
  %28 = load %struct.hclge_mac*, %struct.hclge_mac** %5, align 8
  %29 = getelementptr inbounds %struct.hclge_mac, %struct.hclge_mac* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @linkmode_set_bit(i32 %27, i32 %30)
  %32 = load i32, i32* @ETHTOOL_LINK_MODE_FEC_NONE_BIT, align 4
  %33 = load %struct.hclge_mac*, %struct.hclge_mac** %5, align 8
  %34 = getelementptr inbounds %struct.hclge_mac, %struct.hclge_mac* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @linkmode_set_bit(i32 %32, i32 %35)
  ret void
}

declare dso_local i32 @hclge_convert_setting_kr(%struct.hclge_mac*, i32) #1

declare dso_local i32 @hclge_convert_setting_fec(%struct.hclge_mac*) #1

declare dso_local i32 @linkmode_set_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
