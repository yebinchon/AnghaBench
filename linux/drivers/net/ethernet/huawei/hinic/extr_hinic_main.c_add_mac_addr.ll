; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_main.c_add_mac_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_main.c_add_mac_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.hinic_dev = type { i32, i32 }

@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"set mac addr = %02x %02x %02x %02x %02x %02x\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Failed to add mac\0A\00", align 1
@VLAN_N_VID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32*)* @add_mac_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_mac_addr(%struct.net_device* %0, i32* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.hinic_dev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.hinic_dev* @netdev_priv(%struct.net_device* %8)
  store %struct.hinic_dev* %9, %struct.hinic_dev** %5, align 8
  store i64 0, i64* %6, align 8
  %10 = load %struct.hinic_dev*, %struct.hinic_dev** %5, align 8
  %11 = load i32, i32* @drv, align 4
  %12 = load %struct.net_device*, %struct.net_device** %3, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32*, i32** %4, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32*, i32** %4, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 2
  %21 = load i32, i32* %20, align 4
  %22 = load i32*, i32** %4, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 3
  %24 = load i32, i32* %23, align 4
  %25 = load i32*, i32** %4, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 4
  %27 = load i32, i32* %26, align 4
  %28 = load i32*, i32** %4, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 5
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @netif_info(%struct.hinic_dev* %10, i32 %11, %struct.net_device* %12, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %18, i32 %21, i32 %24, i32 %27, i32 %30)
  %32 = load %struct.hinic_dev*, %struct.hinic_dev** %5, align 8
  %33 = getelementptr inbounds %struct.hinic_dev, %struct.hinic_dev* %32, i32 0, i32 0
  %34 = call i32 @down(i32* %33)
  br label %35

35:                                               ; preds = %55, %2
  %36 = load %struct.hinic_dev*, %struct.hinic_dev** %5, align 8
  %37 = load i32*, i32** %4, align 8
  %38 = load i64, i64* %6, align 8
  %39 = call i32 @hinic_port_add_mac(%struct.hinic_dev* %36, i32* %37, i64 %38)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %35
  %43 = load %struct.hinic_dev*, %struct.hinic_dev** %5, align 8
  %44 = load i32, i32* @drv, align 4
  %45 = load %struct.net_device*, %struct.net_device** %3, align 8
  %46 = call i32 @netif_err(%struct.hinic_dev* %43, i32 %44, %struct.net_device* %45, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %59

47:                                               ; preds = %35
  %48 = load %struct.hinic_dev*, %struct.hinic_dev** %5, align 8
  %49 = getelementptr inbounds %struct.hinic_dev, %struct.hinic_dev* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i64, i64* @VLAN_N_VID, align 8
  %52 = load i64, i64* %6, align 8
  %53 = add nsw i64 %52, 1
  %54 = call i64 @find_next_bit(i32 %50, i64 %51, i64 %53)
  store i64 %54, i64* %6, align 8
  br label %55

55:                                               ; preds = %47
  %56 = load i64, i64* %6, align 8
  %57 = load i64, i64* @VLAN_N_VID, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %35, label %59

59:                                               ; preds = %55, %42
  %60 = load %struct.hinic_dev*, %struct.hinic_dev** %5, align 8
  %61 = getelementptr inbounds %struct.hinic_dev, %struct.hinic_dev* %60, i32 0, i32 0
  %62 = call i32 @up(i32* %61)
  %63 = load i32, i32* %7, align 4
  ret i32 %63
}

declare dso_local %struct.hinic_dev* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_info(%struct.hinic_dev*, i32, %struct.net_device*, i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @down(i32*) #1

declare dso_local i32 @hinic_port_add_mac(%struct.hinic_dev*, i32*, i64) #1

declare dso_local i32 @netif_err(%struct.hinic_dev*, i32, %struct.net_device*, i8*) #1

declare dso_local i64 @find_next_bit(i32, i64, i64) #1

declare dso_local i32 @up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
