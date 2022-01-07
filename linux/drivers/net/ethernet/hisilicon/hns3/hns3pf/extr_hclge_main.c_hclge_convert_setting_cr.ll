; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_convert_setting_cr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_convert_setting_cr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_mac = type { i32 }

@HCLGE_SUPPORT_10G_BIT = common dso_local global i32 0, align 4
@ETHTOOL_LINK_MODE_10000baseCR_Full_BIT = common dso_local global i32 0, align 4
@HCLGE_SUPPORT_25G_BIT = common dso_local global i32 0, align 4
@ETHTOOL_LINK_MODE_25000baseCR_Full_BIT = common dso_local global i32 0, align 4
@HCLGE_SUPPORT_40G_BIT = common dso_local global i32 0, align 4
@ETHTOOL_LINK_MODE_40000baseCR4_Full_BIT = common dso_local global i32 0, align 4
@HCLGE_SUPPORT_50G_BIT = common dso_local global i32 0, align 4
@ETHTOOL_LINK_MODE_50000baseCR2_Full_BIT = common dso_local global i32 0, align 4
@HCLGE_SUPPORT_100G_BIT = common dso_local global i32 0, align 4
@ETHTOOL_LINK_MODE_100000baseCR4_Full_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hclge_mac*, i32)* @hclge_convert_setting_cr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hclge_convert_setting_cr(%struct.hclge_mac* %0, i32 %1) #0 {
  %3 = alloca %struct.hclge_mac*, align 8
  %4 = alloca i32, align 4
  store %struct.hclge_mac* %0, %struct.hclge_mac** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @HCLGE_SUPPORT_10G_BIT, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = load i32, i32* @ETHTOOL_LINK_MODE_10000baseCR_Full_BIT, align 4
  %11 = load %struct.hclge_mac*, %struct.hclge_mac** %3, align 8
  %12 = getelementptr inbounds %struct.hclge_mac, %struct.hclge_mac* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @linkmode_set_bit(i32 %10, i32 %13)
  br label %15

15:                                               ; preds = %9, %2
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @HCLGE_SUPPORT_25G_BIT, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %15
  %21 = load i32, i32* @ETHTOOL_LINK_MODE_25000baseCR_Full_BIT, align 4
  %22 = load %struct.hclge_mac*, %struct.hclge_mac** %3, align 8
  %23 = getelementptr inbounds %struct.hclge_mac, %struct.hclge_mac* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @linkmode_set_bit(i32 %21, i32 %24)
  br label %26

26:                                               ; preds = %20, %15
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @HCLGE_SUPPORT_40G_BIT, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %26
  %32 = load i32, i32* @ETHTOOL_LINK_MODE_40000baseCR4_Full_BIT, align 4
  %33 = load %struct.hclge_mac*, %struct.hclge_mac** %3, align 8
  %34 = getelementptr inbounds %struct.hclge_mac, %struct.hclge_mac* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @linkmode_set_bit(i32 %32, i32 %35)
  br label %37

37:                                               ; preds = %31, %26
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @HCLGE_SUPPORT_50G_BIT, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = load i32, i32* @ETHTOOL_LINK_MODE_50000baseCR2_Full_BIT, align 4
  %44 = load %struct.hclge_mac*, %struct.hclge_mac** %3, align 8
  %45 = getelementptr inbounds %struct.hclge_mac, %struct.hclge_mac* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @linkmode_set_bit(i32 %43, i32 %46)
  br label %48

48:                                               ; preds = %42, %37
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @HCLGE_SUPPORT_100G_BIT, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %48
  %54 = load i32, i32* @ETHTOOL_LINK_MODE_100000baseCR4_Full_BIT, align 4
  %55 = load %struct.hclge_mac*, %struct.hclge_mac** %3, align 8
  %56 = getelementptr inbounds %struct.hclge_mac, %struct.hclge_mac* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @linkmode_set_bit(i32 %54, i32 %57)
  br label %59

59:                                               ; preds = %53, %48
  ret void
}

declare dso_local i32 @linkmode_set_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
