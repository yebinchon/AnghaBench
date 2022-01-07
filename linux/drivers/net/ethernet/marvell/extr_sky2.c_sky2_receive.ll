; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_sky2.c_sky2_receive.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_sky2.c_sky2_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.sky2_port = type { i32, i32, %struct.TYPE_3__*, %struct.rx_ring_info* }
%struct.TYPE_3__ = type { i64, i64 }
%struct.rx_ring_info = type { i32 }

@GMR_FS_LEN = common dso_local global i32 0, align 4
@rx_status = common dso_local global i32 0, align 4
@KERN_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"rx slot %u status 0x%x len %d\0A\00", align 1
@VLAN_HLEN = common dso_local global i64 0, align 8
@CHIP_ID_YUKON_FE_P = common dso_local global i64 0, align 8
@CHIP_REV_YU_FE2_A0 = common dso_local global i64 0, align 8
@GMR_FS_ANY_ERR = common dso_local global i32 0, align 4
@GMR_FS_RX_OK = common dso_local global i32 0, align 4
@rx_err = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"rx error, status 0x%x length %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.net_device*, i64, i32)* @sky2_receive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @sky2_receive(%struct.net_device* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sky2_port*, align 8
  %8 = alloca %struct.rx_ring_info*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call %struct.sky2_port* @netdev_priv(%struct.net_device* %11)
  store %struct.sky2_port* %12, %struct.sky2_port** %7, align 8
  %13 = load %struct.sky2_port*, %struct.sky2_port** %7, align 8
  %14 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %13, i32 0, i32 3
  %15 = load %struct.rx_ring_info*, %struct.rx_ring_info** %14, align 8
  %16 = load %struct.sky2_port*, %struct.sky2_port** %7, align 8
  %17 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %15, i64 %19
  store %struct.rx_ring_info* %20, %struct.rx_ring_info** %8, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %9, align 8
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @GMR_FS_LEN, align 4
  %23 = and i32 %21, %22
  %24 = ashr i32 %23, 16
  %25 = sext i32 %24 to i64
  store i64 %25, i64* %10, align 8
  %26 = load %struct.sky2_port*, %struct.sky2_port** %7, align 8
  %27 = load i32, i32* @rx_status, align 4
  %28 = load i32, i32* @KERN_DEBUG, align 4
  %29 = load %struct.net_device*, %struct.net_device** %4, align 8
  %30 = load %struct.sky2_port*, %struct.sky2_port** %7, align 8
  %31 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = load i64, i64* %5, align 8
  %35 = call i32 @netif_printk(%struct.sky2_port* %26, i32 %27, i32 %28, %struct.net_device* %29, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %33, i64 %34)
  %36 = load %struct.sky2_port*, %struct.sky2_port** %7, align 8
  %37 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = add nsw i32 %38, 1
  %40 = load %struct.sky2_port*, %struct.sky2_port** %7, align 8
  %41 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = srem i32 %39, %42
  %44 = load %struct.sky2_port*, %struct.sky2_port** %7, align 8
  %45 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load %struct.sky2_port*, %struct.sky2_port** %7, align 8
  %47 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %46, i32 0, i32 3
  %48 = load %struct.rx_ring_info*, %struct.rx_ring_info** %47, align 8
  %49 = load %struct.sky2_port*, %struct.sky2_port** %7, align 8
  %50 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %48, i64 %52
  %54 = call i32 @prefetch(%struct.rx_ring_info* %53)
  %55 = load %struct.rx_ring_info*, %struct.rx_ring_info** %8, align 8
  %56 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @skb_vlan_tag_present(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %3
  %61 = load i64, i64* @VLAN_HLEN, align 8
  %62 = load i64, i64* %10, align 8
  %63 = sub nsw i64 %62, %61
  store i64 %63, i64* %10, align 8
  br label %64

64:                                               ; preds = %60, %3
  %65 = load %struct.sky2_port*, %struct.sky2_port** %7, align 8
  %66 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %65, i32 0, i32 2
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @CHIP_ID_YUKON_FE_P, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %85

72:                                               ; preds = %64
  %73 = load %struct.sky2_port*, %struct.sky2_port** %7, align 8
  %74 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %73, i32 0, i32 2
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @CHIP_REV_YU_FE2_A0, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %85

80:                                               ; preds = %72
  %81 = load i64, i64* %5, align 8
  %82 = load i64, i64* %10, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %80
  br label %103

85:                                               ; preds = %80, %72, %64
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* @GMR_FS_ANY_ERR, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %85
  br label %132

91:                                               ; preds = %85
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* @GMR_FS_RX_OK, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %91
  br label %127

97:                                               ; preds = %91
  %98 = load i64, i64* %5, align 8
  %99 = load i64, i64* %10, align 8
  %100 = icmp ne i64 %98, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %97
  br label %132

102:                                              ; preds = %97
  br label %103

103:                                              ; preds = %102, %84
  %104 = load %struct.rx_ring_info*, %struct.rx_ring_info** %8, align 8
  %105 = load i64, i64* %5, align 8
  %106 = call i64 @needs_copy(%struct.rx_ring_info* %104, i64 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %103
  %109 = load %struct.sky2_port*, %struct.sky2_port** %7, align 8
  %110 = load %struct.rx_ring_info*, %struct.rx_ring_info** %8, align 8
  %111 = load i64, i64* %5, align 8
  %112 = call %struct.sk_buff* @receive_copy(%struct.sky2_port* %109, %struct.rx_ring_info* %110, i64 %111)
  store %struct.sk_buff* %112, %struct.sk_buff** %9, align 8
  br label %118

113:                                              ; preds = %103
  %114 = load %struct.sky2_port*, %struct.sky2_port** %7, align 8
  %115 = load %struct.rx_ring_info*, %struct.rx_ring_info** %8, align 8
  %116 = load i64, i64* %5, align 8
  %117 = call %struct.sk_buff* @receive_new(%struct.sky2_port* %114, %struct.rx_ring_info* %115, i64 %116)
  store %struct.sk_buff* %117, %struct.sk_buff** %9, align 8
  br label %118

118:                                              ; preds = %113, %108
  %119 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %120 = icmp eq %struct.sk_buff* %119, null
  %121 = zext i1 %120 to i32
  %122 = load %struct.net_device*, %struct.net_device** %4, align 8
  %123 = getelementptr inbounds %struct.net_device, %struct.net_device* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = add nsw i32 %125, %121
  store i32 %126, i32* %124, align 4
  br label %127

127:                                              ; preds = %147, %118, %96
  %128 = load %struct.sky2_port*, %struct.sky2_port** %7, align 8
  %129 = load %struct.rx_ring_info*, %struct.rx_ring_info** %8, align 8
  %130 = call i32 @sky2_rx_submit(%struct.sky2_port* %128, %struct.rx_ring_info* %129)
  %131 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  ret %struct.sk_buff* %131

132:                                              ; preds = %101, %90
  %133 = load %struct.net_device*, %struct.net_device** %4, align 8
  %134 = getelementptr inbounds %struct.net_device, %struct.net_device* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %135, align 4
  %138 = call i64 (...) @net_ratelimit()
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %147

140:                                              ; preds = %132
  %141 = load %struct.sky2_port*, %struct.sky2_port** %7, align 8
  %142 = load i32, i32* @rx_err, align 4
  %143 = load %struct.net_device*, %struct.net_device** %4, align 8
  %144 = load i32, i32* %6, align 4
  %145 = load i64, i64* %5, align 8
  %146 = call i32 @netif_info(%struct.sky2_port* %141, i32 %142, %struct.net_device* %143, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %144, i64 %145)
  br label %147

147:                                              ; preds = %140, %132
  br label %127
}

declare dso_local %struct.sky2_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_printk(%struct.sky2_port*, i32, i32, %struct.net_device*, i8*, i32, i32, i64) #1

declare dso_local i32 @prefetch(%struct.rx_ring_info*) #1

declare dso_local i64 @skb_vlan_tag_present(i32) #1

declare dso_local i64 @needs_copy(%struct.rx_ring_info*, i64) #1

declare dso_local %struct.sk_buff* @receive_copy(%struct.sky2_port*, %struct.rx_ring_info*, i64) #1

declare dso_local %struct.sk_buff* @receive_new(%struct.sky2_port*, %struct.rx_ring_info*, i64) #1

declare dso_local i32 @sky2_rx_submit(%struct.sky2_port*, %struct.rx_ring_info*) #1

declare dso_local i64 @net_ratelimit(...) #1

declare dso_local i32 @netif_info(%struct.sky2_port*, i32, %struct.net_device*, i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
