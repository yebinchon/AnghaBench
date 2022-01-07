; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wimax/i2400m/extr_driver.c_i2400m_check_mac_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wimax/i2400m/extr_driver.c_i2400m_check_mac_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2400m = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.net_device* }
%struct.net_device = type { i32, i32, i32 }
%struct.device = type { i32 }
%struct.sk_buff = type { i64 }
%struct.i2400m_tlv_detailed_device_info = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"(i2400m %p)\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"Cannot verify MAC address, error reading: %d\0A\00", align 1
@ETH_ALEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"GET DEVICE INFO: mac addr %pM\0A\00", align 1
@.str.3 = private unnamed_addr constant [72 x i8] c"warning: device reports a different MAC address to that of boot mode's\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"device reports     %pM\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"boot mode reported %pM\0A\00", align 1
@.str.6 = private unnamed_addr constant [53 x i8] c"device reports an invalid MAC address, not updating\0A\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"updating MAC address\0A\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"(i2400m %p) = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2400m*)* @i2400m_check_mac_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2400m_check_mac_addr(%struct.i2400m* %0) #0 {
  %2 = alloca %struct.i2400m*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.i2400m_tlv_detailed_device_info*, align 8
  %7 = alloca %struct.net_device*, align 8
  store %struct.i2400m* %0, %struct.i2400m** %2, align 8
  %8 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %9 = call %struct.device* @i2400m_dev(%struct.i2400m* %8)
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %11 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.net_device*, %struct.net_device** %12, align 8
  store %struct.net_device* %13, %struct.net_device** %7, align 8
  %14 = load %struct.device*, %struct.device** %4, align 8
  %15 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %16 = call i32 @d_fnstart(i32 3, %struct.device* %14, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), %struct.i2400m* %15)
  %17 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %18 = call %struct.sk_buff* @i2400m_get_device_info(%struct.i2400m* %17)
  store %struct.sk_buff* %18, %struct.sk_buff** %5, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %20 = call i64 @IS_ERR(%struct.sk_buff* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %1
  %23 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %24 = call i32 @PTR_ERR(%struct.sk_buff* %23)
  store i32 %24, i32* %3, align 4
  %25 = load %struct.device*, %struct.device** %4, align 8
  %26 = load i32, i32* %3, align 4
  %27 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %25, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  br label %100

28:                                               ; preds = %1
  %29 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %30 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to i8*
  %33 = bitcast i8* %32 to %struct.i2400m_tlv_detailed_device_info*
  store %struct.i2400m_tlv_detailed_device_info* %33, %struct.i2400m_tlv_detailed_device_info** %6, align 8
  %34 = load i32, i32* @ETH_ALEN, align 4
  %35 = sext i32 %34 to i64
  %36 = icmp ne i64 %35, 4
  %37 = zext i1 %36 to i32
  %38 = call i32 @BUILD_BUG_ON(i32 %37)
  %39 = load %struct.device*, %struct.device** %4, align 8
  %40 = load %struct.i2400m_tlv_detailed_device_info*, %struct.i2400m_tlv_detailed_device_info** %6, align 8
  %41 = getelementptr inbounds %struct.i2400m_tlv_detailed_device_info, %struct.i2400m_tlv_detailed_device_info* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @d_printf(i32 2, %struct.device* %39, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %42)
  %44 = load %struct.net_device*, %struct.net_device** %7, align 8
  %45 = getelementptr inbounds %struct.net_device, %struct.net_device* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.i2400m_tlv_detailed_device_info*, %struct.i2400m_tlv_detailed_device_info** %6, align 8
  %48 = getelementptr inbounds %struct.i2400m_tlv_detailed_device_info, %struct.i2400m_tlv_detailed_device_info* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @memcmp(i32 %46, i32 %49, i32 4)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %28
  br label %97

53:                                               ; preds = %28
  %54 = load %struct.device*, %struct.device** %4, align 8
  %55 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %54, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.3, i64 0, i64 0))
  %56 = load %struct.device*, %struct.device** %4, align 8
  %57 = load %struct.i2400m_tlv_detailed_device_info*, %struct.i2400m_tlv_detailed_device_info** %6, align 8
  %58 = getelementptr inbounds %struct.i2400m_tlv_detailed_device_info, %struct.i2400m_tlv_detailed_device_info* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %56, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %59)
  %61 = load %struct.device*, %struct.device** %4, align 8
  %62 = load %struct.net_device*, %struct.net_device** %7, align 8
  %63 = getelementptr inbounds %struct.net_device, %struct.net_device* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %61, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 %64)
  %66 = load %struct.i2400m_tlv_detailed_device_info*, %struct.i2400m_tlv_detailed_device_info** %6, align 8
  %67 = getelementptr inbounds %struct.i2400m_tlv_detailed_device_info, %struct.i2400m_tlv_detailed_device_info* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @is_zero_ether_addr(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %53
  %72 = load %struct.device*, %struct.device** %4, align 8
  %73 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %72, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.6, i64 0, i64 0))
  br label %96

74:                                               ; preds = %53
  %75 = load %struct.device*, %struct.device** %4, align 8
  %76 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %75, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0))
  %77 = load i32, i32* @ETH_ALEN, align 4
  %78 = load %struct.net_device*, %struct.net_device** %7, align 8
  %79 = getelementptr inbounds %struct.net_device, %struct.net_device* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 4
  %80 = load %struct.net_device*, %struct.net_device** %7, align 8
  %81 = getelementptr inbounds %struct.net_device, %struct.net_device* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.i2400m_tlv_detailed_device_info*, %struct.i2400m_tlv_detailed_device_info** %6, align 8
  %84 = getelementptr inbounds %struct.i2400m_tlv_detailed_device_info, %struct.i2400m_tlv_detailed_device_info* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @ETH_ALEN, align 4
  %87 = call i32 @memcpy(i32 %82, i32 %85, i32 %86)
  %88 = load %struct.net_device*, %struct.net_device** %7, align 8
  %89 = getelementptr inbounds %struct.net_device, %struct.net_device* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.i2400m_tlv_detailed_device_info*, %struct.i2400m_tlv_detailed_device_info** %6, align 8
  %92 = getelementptr inbounds %struct.i2400m_tlv_detailed_device_info, %struct.i2400m_tlv_detailed_device_info* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @ETH_ALEN, align 4
  %95 = call i32 @memcpy(i32 %90, i32 %93, i32 %94)
  br label %96

96:                                               ; preds = %74, %71
  br label %97

97:                                               ; preds = %96, %52
  store i32 0, i32* %3, align 4
  %98 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %99 = call i32 @kfree_skb(%struct.sk_buff* %98)
  br label %100

100:                                              ; preds = %97, %22
  %101 = load %struct.device*, %struct.device** %4, align 8
  %102 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %103 = load i32, i32* %3, align 4
  %104 = call i32 @d_fnend(i32 3, %struct.device* %101, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), %struct.i2400m* %102, i32 %103)
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local %struct.device* @i2400m_dev(%struct.i2400m*) #1

declare dso_local i32 @d_fnstart(i32, %struct.device*, i8*, %struct.i2400m*) #1

declare dso_local %struct.sk_buff* @i2400m_get_device_info(%struct.i2400m*) #1

declare dso_local i64 @IS_ERR(%struct.sk_buff*) #1

declare dso_local i32 @PTR_ERR(%struct.sk_buff*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @d_printf(i32, %struct.device*, i8*, i32) #1

declare dso_local i32 @memcmp(i32, i32, i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, ...) #1

declare dso_local i64 @is_zero_ether_addr(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @d_fnend(i32, %struct.device*, i8*, %struct.i2400m*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
