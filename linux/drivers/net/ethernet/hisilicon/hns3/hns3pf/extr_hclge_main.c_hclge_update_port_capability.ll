; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_update_port_capability.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_update_port_capability.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_mac = type { i64, i64, i32, i32, i32 }

@HNAE3_MEDIA_TYPE_BACKPLANE = common dso_local global i64 0, align 8
@HNAE3_MODULE_TYPE_UNKNOWN = common dso_local global i64 0, align 8
@HNAE3_MODULE_TYPE_KR = common dso_local global i64 0, align 8
@HNAE3_MEDIA_TYPE_COPPER = common dso_local global i64 0, align 8
@HNAE3_MODULE_TYPE_TP = common dso_local global i64 0, align 8
@ETHTOOL_LINK_MODE_Autoneg_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hclge_mac*)* @hclge_update_port_capability to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hclge_update_port_capability(%struct.hclge_mac* %0) #0 {
  %2 = alloca %struct.hclge_mac*, align 8
  store %struct.hclge_mac* %0, %struct.hclge_mac** %2, align 8
  %3 = load %struct.hclge_mac*, %struct.hclge_mac** %2, align 8
  %4 = call i32 @hclge_convert_setting_fec(%struct.hclge_mac* %3)
  %5 = load %struct.hclge_mac*, %struct.hclge_mac** %2, align 8
  %6 = getelementptr inbounds %struct.hclge_mac, %struct.hclge_mac* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @HNAE3_MEDIA_TYPE_BACKPLANE, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %20

10:                                               ; preds = %1
  %11 = load %struct.hclge_mac*, %struct.hclge_mac** %2, align 8
  %12 = getelementptr inbounds %struct.hclge_mac, %struct.hclge_mac* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @HNAE3_MODULE_TYPE_UNKNOWN, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %10
  %17 = load i64, i64* @HNAE3_MODULE_TYPE_KR, align 8
  %18 = load %struct.hclge_mac*, %struct.hclge_mac** %2, align 8
  %19 = getelementptr inbounds %struct.hclge_mac, %struct.hclge_mac* %18, i32 0, i32 1
  store i64 %17, i64* %19, align 8
  br label %31

20:                                               ; preds = %10, %1
  %21 = load %struct.hclge_mac*, %struct.hclge_mac** %2, align 8
  %22 = getelementptr inbounds %struct.hclge_mac, %struct.hclge_mac* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @HNAE3_MEDIA_TYPE_COPPER, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %20
  %27 = load i64, i64* @HNAE3_MODULE_TYPE_TP, align 8
  %28 = load %struct.hclge_mac*, %struct.hclge_mac** %2, align 8
  %29 = getelementptr inbounds %struct.hclge_mac, %struct.hclge_mac* %28, i32 0, i32 1
  store i64 %27, i64* %29, align 8
  br label %30

30:                                               ; preds = %26, %20
  br label %31

31:                                               ; preds = %30, %16
  %32 = load %struct.hclge_mac*, %struct.hclge_mac** %2, align 8
  %33 = getelementptr inbounds %struct.hclge_mac, %struct.hclge_mac* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %36, label %49

36:                                               ; preds = %31
  %37 = load i32, i32* @ETHTOOL_LINK_MODE_Autoneg_BIT, align 4
  %38 = load %struct.hclge_mac*, %struct.hclge_mac** %2, align 8
  %39 = getelementptr inbounds %struct.hclge_mac, %struct.hclge_mac* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @linkmode_set_bit(i32 %37, i32 %40)
  %42 = load %struct.hclge_mac*, %struct.hclge_mac** %2, align 8
  %43 = getelementptr inbounds %struct.hclge_mac, %struct.hclge_mac* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.hclge_mac*, %struct.hclge_mac** %2, align 8
  %46 = getelementptr inbounds %struct.hclge_mac, %struct.hclge_mac* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @linkmode_copy(i32 %44, i32 %47)
  br label %59

49:                                               ; preds = %31
  %50 = load i32, i32* @ETHTOOL_LINK_MODE_Autoneg_BIT, align 4
  %51 = load %struct.hclge_mac*, %struct.hclge_mac** %2, align 8
  %52 = getelementptr inbounds %struct.hclge_mac, %struct.hclge_mac* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @linkmode_clear_bit(i32 %50, i32 %53)
  %55 = load %struct.hclge_mac*, %struct.hclge_mac** %2, align 8
  %56 = getelementptr inbounds %struct.hclge_mac, %struct.hclge_mac* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @linkmode_zero(i32 %57)
  br label %59

59:                                               ; preds = %49, %36
  ret void
}

declare dso_local i32 @hclge_convert_setting_fec(%struct.hclge_mac*) #1

declare dso_local i32 @linkmode_set_bit(i32, i32) #1

declare dso_local i32 @linkmode_copy(i32, i32) #1

declare dso_local i32 @linkmode_clear_bit(i32, i32) #1

declare dso_local i32 @linkmode_zero(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
