; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_main.c_remove_mac_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_main.c_remove_mac_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.hinic_dev = type { i32, i32 }

@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"remove mac addr = %02x %02x %02x %02x %02x %02x\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Failed to delete mac\0A\00", align 1
@VLAN_N_VID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32*)* @remove_mac_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @remove_mac_addr(%struct.net_device* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.hinic_dev*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.hinic_dev* @netdev_priv(%struct.net_device* %9)
  store %struct.hinic_dev* %10, %struct.hinic_dev** %6, align 8
  store i64 0, i64* %7, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = call i32 @is_valid_ether_addr(i32* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @EADDRNOTAVAIL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %72

17:                                               ; preds = %2
  %18 = load %struct.hinic_dev*, %struct.hinic_dev** %6, align 8
  %19 = load i32, i32* @drv, align 4
  %20 = load %struct.net_device*, %struct.net_device** %4, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32*, i32** %5, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32*, i32** %5, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 2
  %29 = load i32, i32* %28, align 4
  %30 = load i32*, i32** %5, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 3
  %32 = load i32, i32* %31, align 4
  %33 = load i32*, i32** %5, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 4
  %35 = load i32, i32* %34, align 4
  %36 = load i32*, i32** %5, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 5
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @netif_info(%struct.hinic_dev* %18, i32 %19, %struct.net_device* %20, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %26, i32 %29, i32 %32, i32 %35, i32 %38)
  %40 = load %struct.hinic_dev*, %struct.hinic_dev** %6, align 8
  %41 = getelementptr inbounds %struct.hinic_dev, %struct.hinic_dev* %40, i32 0, i32 0
  %42 = call i32 @down(i32* %41)
  br label %43

43:                                               ; preds = %63, %17
  %44 = load %struct.hinic_dev*, %struct.hinic_dev** %6, align 8
  %45 = load i32*, i32** %5, align 8
  %46 = load i64, i64* %7, align 8
  %47 = call i32 @hinic_port_del_mac(%struct.hinic_dev* %44, i32* %45, i64 %46)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %43
  %51 = load %struct.hinic_dev*, %struct.hinic_dev** %6, align 8
  %52 = load i32, i32* @drv, align 4
  %53 = load %struct.net_device*, %struct.net_device** %4, align 8
  %54 = call i32 @netif_err(%struct.hinic_dev* %51, i32 %52, %struct.net_device* %53, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %67

55:                                               ; preds = %43
  %56 = load %struct.hinic_dev*, %struct.hinic_dev** %6, align 8
  %57 = getelementptr inbounds %struct.hinic_dev, %struct.hinic_dev* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i64, i64* @VLAN_N_VID, align 8
  %60 = load i64, i64* %7, align 8
  %61 = add nsw i64 %60, 1
  %62 = call i64 @find_next_bit(i32 %58, i64 %59, i64 %61)
  store i64 %62, i64* %7, align 8
  br label %63

63:                                               ; preds = %55
  %64 = load i64, i64* %7, align 8
  %65 = load i64, i64* @VLAN_N_VID, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %43, label %67

67:                                               ; preds = %63, %50
  %68 = load %struct.hinic_dev*, %struct.hinic_dev** %6, align 8
  %69 = getelementptr inbounds %struct.hinic_dev, %struct.hinic_dev* %68, i32 0, i32 0
  %70 = call i32 @up(i32* %69)
  %71 = load i32, i32* %8, align 4
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %67, %14
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local %struct.hinic_dev* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @is_valid_ether_addr(i32*) #1

declare dso_local i32 @netif_info(%struct.hinic_dev*, i32, %struct.net_device*, i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @down(i32*) #1

declare dso_local i32 @hinic_port_del_mac(%struct.hinic_dev*, i32*, i64) #1

declare dso_local i32 @netif_err(%struct.hinic_dev*, i32, %struct.net_device*, i8*) #1

declare dso_local i64 @find_next_bit(i32, i64, i64) #1

declare dso_local i32 @up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
