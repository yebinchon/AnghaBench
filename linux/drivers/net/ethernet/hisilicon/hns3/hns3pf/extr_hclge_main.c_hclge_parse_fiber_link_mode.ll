; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_parse_fiber_link_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_parse_fiber_link_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_dev = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.hclge_mac }
%struct.hclge_mac = type { i32 }

@HCLGE_SUPPORT_1G_BIT = common dso_local global i32 0, align 4
@ETHTOOL_LINK_MODE_1000baseX_Full_BIT = common dso_local global i32 0, align 4
@ETHTOOL_LINK_MODE_FIBRE_BIT = common dso_local global i32 0, align 4
@ETHTOOL_LINK_MODE_Pause_BIT = common dso_local global i32 0, align 4
@ETHTOOL_LINK_MODE_FEC_NONE_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hclge_dev*, i32)* @hclge_parse_fiber_link_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hclge_parse_fiber_link_mode(%struct.hclge_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.hclge_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hclge_mac*, align 8
  store %struct.hclge_dev* %0, %struct.hclge_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %7 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  store %struct.hclge_mac* %8, %struct.hclge_mac** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @HCLGE_SUPPORT_1G_BIT, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load i32, i32* @ETHTOOL_LINK_MODE_1000baseX_Full_BIT, align 4
  %15 = load %struct.hclge_mac*, %struct.hclge_mac** %5, align 8
  %16 = getelementptr inbounds %struct.hclge_mac, %struct.hclge_mac* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @linkmode_set_bit(i32 %14, i32 %17)
  br label %19

19:                                               ; preds = %13, %2
  %20 = load %struct.hclge_mac*, %struct.hclge_mac** %5, align 8
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @hclge_convert_setting_sr(%struct.hclge_mac* %20, i32 %21)
  %23 = load %struct.hclge_mac*, %struct.hclge_mac** %5, align 8
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @hclge_convert_setting_lr(%struct.hclge_mac* %23, i32 %24)
  %26 = load %struct.hclge_mac*, %struct.hclge_mac** %5, align 8
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @hclge_convert_setting_cr(%struct.hclge_mac* %26, i32 %27)
  %29 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %30 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp sge i32 %33, 33
  br i1 %34, label %35, label %38

35:                                               ; preds = %19
  %36 = load %struct.hclge_mac*, %struct.hclge_mac** %5, align 8
  %37 = call i32 @hclge_convert_setting_fec(%struct.hclge_mac* %36)
  br label %38

38:                                               ; preds = %35, %19
  %39 = load i32, i32* @ETHTOOL_LINK_MODE_FIBRE_BIT, align 4
  %40 = load %struct.hclge_mac*, %struct.hclge_mac** %5, align 8
  %41 = getelementptr inbounds %struct.hclge_mac, %struct.hclge_mac* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @linkmode_set_bit(i32 %39, i32 %42)
  %44 = load i32, i32* @ETHTOOL_LINK_MODE_Pause_BIT, align 4
  %45 = load %struct.hclge_mac*, %struct.hclge_mac** %5, align 8
  %46 = getelementptr inbounds %struct.hclge_mac, %struct.hclge_mac* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @linkmode_set_bit(i32 %44, i32 %47)
  %49 = load i32, i32* @ETHTOOL_LINK_MODE_FEC_NONE_BIT, align 4
  %50 = load %struct.hclge_mac*, %struct.hclge_mac** %5, align 8
  %51 = getelementptr inbounds %struct.hclge_mac, %struct.hclge_mac* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @linkmode_set_bit(i32 %49, i32 %52)
  ret void
}

declare dso_local i32 @linkmode_set_bit(i32, i32) #1

declare dso_local i32 @hclge_convert_setting_sr(%struct.hclge_mac*, i32) #1

declare dso_local i32 @hclge_convert_setting_lr(%struct.hclge_mac*, i32) #1

declare dso_local i32 @hclge_convert_setting_cr(%struct.hclge_mac*, i32) #1

declare dso_local i32 @hclge_convert_setting_fec(%struct.hclge_mac*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
