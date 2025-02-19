; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_main.c_change_mac_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_main.c_change_mac_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.hinic_dev = type { i32, i32 }

@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"change mac addr = %02x %02x %02x %02x %02x %02x\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Failed to delete mac\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Failed to add mac\0A\00", align 1
@VLAN_N_VID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32*)* @change_mac_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @change_mac_addr(%struct.net_device* %0, i32* %1) #0 {
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
  br label %86

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

43:                                               ; preds = %77, %17
  %44 = load %struct.hinic_dev*, %struct.hinic_dev** %6, align 8
  %45 = load %struct.net_device*, %struct.net_device** %4, align 8
  %46 = getelementptr inbounds %struct.net_device, %struct.net_device* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i64, i64* %7, align 8
  %49 = call i32 @hinic_port_del_mac(%struct.hinic_dev* %44, i32 %47, i64 %48)
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %43
  %53 = load %struct.hinic_dev*, %struct.hinic_dev** %6, align 8
  %54 = load i32, i32* @drv, align 4
  %55 = load %struct.net_device*, %struct.net_device** %4, align 8
  %56 = call i32 @netif_err(%struct.hinic_dev* %53, i32 %54, %struct.net_device* %55, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %81

57:                                               ; preds = %43
  %58 = load %struct.hinic_dev*, %struct.hinic_dev** %6, align 8
  %59 = load i32*, i32** %5, align 8
  %60 = load i64, i64* %7, align 8
  %61 = call i32 @hinic_port_add_mac(%struct.hinic_dev* %58, i32* %59, i64 %60)
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %57
  %65 = load %struct.hinic_dev*, %struct.hinic_dev** %6, align 8
  %66 = load i32, i32* @drv, align 4
  %67 = load %struct.net_device*, %struct.net_device** %4, align 8
  %68 = call i32 @netif_err(%struct.hinic_dev* %65, i32 %66, %struct.net_device* %67, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %81

69:                                               ; preds = %57
  %70 = load %struct.hinic_dev*, %struct.hinic_dev** %6, align 8
  %71 = getelementptr inbounds %struct.hinic_dev, %struct.hinic_dev* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i64, i64* @VLAN_N_VID, align 8
  %74 = load i64, i64* %7, align 8
  %75 = add nsw i64 %74, 1
  %76 = call i64 @find_next_bit(i32 %72, i64 %73, i64 %75)
  store i64 %76, i64* %7, align 8
  br label %77

77:                                               ; preds = %69
  %78 = load i64, i64* %7, align 8
  %79 = load i64, i64* @VLAN_N_VID, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %43, label %81

81:                                               ; preds = %77, %64, %52
  %82 = load %struct.hinic_dev*, %struct.hinic_dev** %6, align 8
  %83 = getelementptr inbounds %struct.hinic_dev, %struct.hinic_dev* %82, i32 0, i32 0
  %84 = call i32 @up(i32* %83)
  %85 = load i32, i32* %8, align 4
  store i32 %85, i32* %3, align 4
  br label %86

86:                                               ; preds = %81, %14
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local %struct.hinic_dev* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @is_valid_ether_addr(i32*) #1

declare dso_local i32 @netif_info(%struct.hinic_dev*, i32, %struct.net_device*, i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @down(i32*) #1

declare dso_local i32 @hinic_port_del_mac(%struct.hinic_dev*, i32, i64) #1

declare dso_local i32 @netif_err(%struct.hinic_dev*, i32, %struct.net_device*, i8*) #1

declare dso_local i32 @hinic_port_add_mac(%struct.hinic_dev*, i32*, i64) #1

declare dso_local i64 @find_next_bit(i32, i64, i64) #1

declare dso_local i32 @up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
