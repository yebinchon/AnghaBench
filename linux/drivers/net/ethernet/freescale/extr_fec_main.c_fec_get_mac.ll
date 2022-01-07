; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_fec_main.c_fec_get_mac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_fec_main.c_fec_get_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i8* }
%struct.fec_enet_private = type { i8, %struct.TYPE_5__*, i64 }
%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.fec_platform_data = type { i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@macaddr = common dso_local global i8* null, align 8
@FEC_ADDR_LOW = common dso_local global i64 0, align 8
@FEC_ADDR_HIGH = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"Invalid MAC address: %pM\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Using random MAC address: %pM\0A\00", align 1
@FEC_FLASHMAC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @fec_get_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fec_get_mac(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.fec_enet_private*, align 8
  %4 = alloca %struct.fec_platform_data*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.device_node*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %11 = load %struct.net_device*, %struct.net_device** %2, align 8
  %12 = call %struct.fec_enet_private* @netdev_priv(%struct.net_device* %11)
  store %struct.fec_enet_private* %12, %struct.fec_enet_private** %3, align 8
  %13 = load %struct.fec_enet_private*, %struct.fec_enet_private** %3, align 8
  %14 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %13, i32 0, i32 1
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = call %struct.fec_platform_data* @dev_get_platdata(%struct.TYPE_6__* %16)
  store %struct.fec_platform_data* %17, %struct.fec_platform_data** %4, align 8
  %18 = load i32, i32* @ETH_ALEN, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %6, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %7, align 8
  %22 = load i8*, i8** @macaddr, align 8
  store i8* %22, i8** %5, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = call i32 @is_valid_ether_addr(i8* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %45, label %26

26:                                               ; preds = %1
  %27 = load %struct.fec_enet_private*, %struct.fec_enet_private** %3, align 8
  %28 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %27, i32 0, i32 1
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load %struct.device_node*, %struct.device_node** %31, align 8
  store %struct.device_node* %32, %struct.device_node** %8, align 8
  %33 = load %struct.device_node*, %struct.device_node** %8, align 8
  %34 = icmp ne %struct.device_node* %33, null
  br i1 %34, label %35, label %44

35:                                               ; preds = %26
  %36 = load %struct.device_node*, %struct.device_node** %8, align 8
  %37 = call i8* @of_get_mac_address(%struct.device_node* %36)
  store i8* %37, i8** %9, align 8
  %38 = load i8*, i8** %9, align 8
  %39 = call i32 @IS_ERR(i8* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %35
  %42 = load i8*, i8** %9, align 8
  store i8* %42, i8** %5, align 8
  br label %43

43:                                               ; preds = %41, %35
  br label %44

44:                                               ; preds = %43, %26
  br label %45

45:                                               ; preds = %44, %1
  %46 = load i8*, i8** %5, align 8
  %47 = call i32 @is_valid_ether_addr(i8* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %57, label %49

49:                                               ; preds = %45
  %50 = load %struct.fec_platform_data*, %struct.fec_platform_data** %4, align 8
  %51 = icmp ne %struct.fec_platform_data* %50, null
  br i1 %51, label %52, label %56

52:                                               ; preds = %49
  %53 = load %struct.fec_platform_data*, %struct.fec_platform_data** %4, align 8
  %54 = getelementptr inbounds %struct.fec_platform_data, %struct.fec_platform_data* %53, i32 0, i32 0
  %55 = bitcast i32* %54 to i8*
  store i8* %55, i8** %5, align 8
  br label %56

56:                                               ; preds = %52, %49
  br label %57

57:                                               ; preds = %56, %45
  %58 = load i8*, i8** %5, align 8
  %59 = call i32 @is_valid_ether_addr(i8* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %82, label %61

61:                                               ; preds = %57
  %62 = load %struct.fec_enet_private*, %struct.fec_enet_private** %3, align 8
  %63 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @FEC_ADDR_LOW, align 8
  %66 = add nsw i64 %64, %65
  %67 = call i32 @readl(i64 %66)
  %68 = call i32 @cpu_to_be32(i32 %67)
  %69 = getelementptr inbounds i8, i8* %21, i64 0
  %70 = bitcast i8* %69 to i32*
  store i32 %68, i32* %70, align 16
  %71 = load %struct.fec_enet_private*, %struct.fec_enet_private** %3, align 8
  %72 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @FEC_ADDR_HIGH, align 8
  %75 = add nsw i64 %73, %74
  %76 = call i32 @readl(i64 %75)
  %77 = ashr i32 %76, 16
  %78 = call i32 @cpu_to_be16(i32 %77)
  %79 = getelementptr inbounds i8, i8* %21, i64 4
  %80 = bitcast i8* %79 to i32*
  store i32 %78, i32* %80, align 4
  %81 = getelementptr inbounds i8, i8* %21, i64 0
  store i8* %81, i8** %5, align 8
  br label %82

82:                                               ; preds = %61, %57
  %83 = load i8*, i8** %5, align 8
  %84 = call i32 @is_valid_ether_addr(i8* %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %103, label %86

86:                                               ; preds = %82
  %87 = load %struct.fec_enet_private*, %struct.fec_enet_private** %3, align 8
  %88 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %87, i32 0, i32 1
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = load i8*, i8** %5, align 8
  %92 = call i32 @dev_err(%struct.TYPE_6__* %90, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %91)
  %93 = load %struct.net_device*, %struct.net_device** %2, align 8
  %94 = call i32 @eth_hw_addr_random(%struct.net_device* %93)
  %95 = load %struct.fec_enet_private*, %struct.fec_enet_private** %3, align 8
  %96 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %95, i32 0, i32 1
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  %99 = load %struct.net_device*, %struct.net_device** %2, align 8
  %100 = getelementptr inbounds %struct.net_device, %struct.net_device* %99, i32 0, i32 0
  %101 = load i8*, i8** %100, align 8
  %102 = call i32 @dev_info(%struct.TYPE_6__* %98, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %101)
  store i32 1, i32* %10, align 4
  br label %135

103:                                              ; preds = %82
  %104 = load %struct.net_device*, %struct.net_device** %2, align 8
  %105 = getelementptr inbounds %struct.net_device, %struct.net_device* %104, i32 0, i32 0
  %106 = load i8*, i8** %105, align 8
  %107 = load i8*, i8** %5, align 8
  %108 = load i32, i32* @ETH_ALEN, align 4
  %109 = call i32 @memcpy(i8* %106, i8* %107, i32 %108)
  %110 = load i8*, i8** %5, align 8
  %111 = load i8*, i8** @macaddr, align 8
  %112 = icmp eq i8* %110, %111
  br i1 %112, label %113, label %134

113:                                              ; preds = %103
  %114 = load i8*, i8** @macaddr, align 8
  %115 = load i32, i32* @ETH_ALEN, align 4
  %116 = sub nsw i32 %115, 1
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8, i8* %114, i64 %117
  %119 = load i8, i8* %118, align 1
  %120 = zext i8 %119 to i32
  %121 = load %struct.fec_enet_private*, %struct.fec_enet_private** %3, align 8
  %122 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %121, i32 0, i32 0
  %123 = load i8, i8* %122, align 8
  %124 = zext i8 %123 to i32
  %125 = add nsw i32 %120, %124
  %126 = trunc i32 %125 to i8
  %127 = load %struct.net_device*, %struct.net_device** %2, align 8
  %128 = getelementptr inbounds %struct.net_device, %struct.net_device* %127, i32 0, i32 0
  %129 = load i8*, i8** %128, align 8
  %130 = load i32, i32* @ETH_ALEN, align 4
  %131 = sub nsw i32 %130, 1
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i8, i8* %129, i64 %132
  store i8 %126, i8* %133, align 1
  br label %134

134:                                              ; preds = %113, %103
  store i32 0, i32* %10, align 4
  br label %135

135:                                              ; preds = %134, %86
  %136 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %136)
  %137 = load i32, i32* %10, align 4
  switch i32 %137, label %139 [
    i32 0, label %138
    i32 1, label %138
  ]

138:                                              ; preds = %135, %135
  ret void

139:                                              ; preds = %135
  unreachable
}

declare dso_local %struct.fec_enet_private* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.fec_platform_data* @dev_get_platdata(%struct.TYPE_6__*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @is_valid_ether_addr(i8*) #1

declare dso_local i8* @of_get_mac_address(%struct.device_node*) #1

declare dso_local i32 @IS_ERR(i8*) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_6__*, i8*, i8*) #1

declare dso_local i32 @eth_hw_addr_random(%struct.net_device*) #1

declare dso_local i32 @dev_info(%struct.TYPE_6__*, i8*, i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
