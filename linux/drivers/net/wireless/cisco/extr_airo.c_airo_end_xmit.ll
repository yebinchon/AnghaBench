; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/cisco/extr_airo.c_airo_end_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/cisco/extr_airo.c_airo_end_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_4__, %struct.airo_info* }
%struct.TYPE_4__ = type { i32 }
%struct.airo_info = type { i32*, i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, %struct.sk_buff* }
%struct.sk_buff = type { i32 }

@JOB_XMIT = common dso_local global i32 0, align 4
@FLAG_PENDING_XMIT = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i64 0, align 8
@MAX_FIDS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @airo_end_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @airo_end_xmit(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.airo_info*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = getelementptr inbounds %struct.net_device, %struct.net_device* %9, i32 0, i32 1
  %11 = load %struct.airo_info*, %struct.airo_info** %10, align 8
  store %struct.airo_info* %11, %struct.airo_info** %5, align 8
  %12 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %13 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %12, i32 0, i32 4
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  store %struct.sk_buff* %15, %struct.sk_buff** %6, align 8
  %16 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %17 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %16, i32 0, i32 4
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %7, align 4
  %20 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %21 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %8, align 8
  %23 = load i32, i32* @JOB_XMIT, align 4
  %24 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %25 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %24, i32 0, i32 3
  %26 = call i32 @clear_bit(i32 %23, i32* %25)
  %27 = load i32, i32* @FLAG_PENDING_XMIT, align 4
  %28 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %29 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %28, i32 0, i32 2
  %30 = call i32 @clear_bit(i32 %27, i32* %29)
  %31 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %32 = load i32*, i32** %8, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %38 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @transmit_802_3_packet(%struct.airo_info* %31, i32 %36, i32 %39)
  store i64 %40, i64* %3, align 8
  %41 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %42 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %41, i32 0, i32 1
  %43 = call i32 @up(i32* %42)
  store i32 0, i32* %4, align 4
  %44 = load i64, i64* %3, align 8
  %45 = load i64, i64* @SUCCESS, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %72

47:                                               ; preds = %1
  %48 = load %struct.net_device*, %struct.net_device** %2, align 8
  %49 = call i32 @netif_trans_update(%struct.net_device* %48)
  br label %50

50:                                               ; preds = %68, %47
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* @MAX_FIDS, align 4
  %53 = sdiv i32 %52, 2
  %54 = icmp slt i32 %51, %53
  br i1 %54, label %55, label %65

55:                                               ; preds = %50
  %56 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %57 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %4, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = and i32 %62, -65536
  %64 = icmp ne i32 %63, 0
  br label %65

65:                                               ; preds = %55, %50
  %66 = phi i1 [ false, %50 ], [ %64, %55 ]
  br i1 %66, label %67, label %71

67:                                               ; preds = %65
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %4, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %4, align 4
  br label %50

71:                                               ; preds = %65
  br label %86

72:                                               ; preds = %1
  %73 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %74 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %7, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = and i32 %79, 65535
  store i32 %80, i32* %78, align 4
  %81 = load %struct.net_device*, %struct.net_device** %2, align 8
  %82 = getelementptr inbounds %struct.net_device, %struct.net_device* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %83, align 8
  br label %86

86:                                               ; preds = %72, %71
  %87 = load i32, i32* %4, align 4
  %88 = load i32, i32* @MAX_FIDS, align 4
  %89 = sdiv i32 %88, 2
  %90 = icmp slt i32 %87, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %86
  %92 = load %struct.net_device*, %struct.net_device** %2, align 8
  %93 = call i32 @netif_wake_queue(%struct.net_device* %92)
  br label %94

94:                                               ; preds = %91, %86
  %95 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %96 = call i32 @dev_kfree_skb(%struct.sk_buff* %95)
  ret void
}

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i64 @transmit_802_3_packet(%struct.airo_info*, i32, i32) #1

declare dso_local i32 @up(i32*) #1

declare dso_local i32 @netif_trans_update(%struct.net_device*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
