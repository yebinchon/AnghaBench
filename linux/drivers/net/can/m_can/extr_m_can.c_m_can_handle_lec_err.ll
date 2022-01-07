; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/m_can/extr_m_can.c_m_can_handle_lec_err.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/m_can/extr_m_can.c_m_can_handle_lec_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.net_device_stats }
%struct.net_device_stats = type { i32, i32, i32 }
%struct.m_can_classdev = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.can_frame = type { i32, i64, i32* }
%struct.sk_buff = type { i32 }

@CAN_ERR_PROT = common dso_local global i32 0, align 4
@CAN_ERR_BUSERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"stuff error\0A\00", align 1
@CAN_ERR_PROT_STUFF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"form error\0A\00", align 1
@CAN_ERR_PROT_FORM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"ack error\0A\00", align 1
@CAN_ERR_PROT_LOC_ACK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"bit1 error\0A\00", align 1
@CAN_ERR_PROT_BIT1 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"bit0 error\0A\00", align 1
@CAN_ERR_PROT_BIT0 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [11 x i8] c"CRC error\0A\00", align 1
@CAN_ERR_PROT_LOC_CRC_SEQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @m_can_handle_lec_err to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m_can_handle_lec_err(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.m_can_classdev*, align 8
  %7 = alloca %struct.net_device_stats*, align 8
  %8 = alloca %struct.can_frame*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.m_can_classdev* @netdev_priv(%struct.net_device* %10)
  store %struct.m_can_classdev* %11, %struct.m_can_classdev** %6, align 8
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 0
  store %struct.net_device_stats* %13, %struct.net_device_stats** %7, align 8
  %14 = load %struct.m_can_classdev*, %struct.m_can_classdev** %6, align 8
  %15 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %17, align 4
  %20 = load %struct.net_device_stats*, %struct.net_device_stats** %7, align 8
  %21 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %21, align 4
  %24 = load %struct.net_device*, %struct.net_device** %4, align 8
  %25 = call %struct.sk_buff* @alloc_can_err_skb(%struct.net_device* %24, %struct.can_frame** %8)
  store %struct.sk_buff* %25, %struct.sk_buff** %9, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %27 = icmp ne %struct.sk_buff* %26, null
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = call i64 @unlikely(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %115

33:                                               ; preds = %2
  %34 = load i32, i32* @CAN_ERR_PROT, align 4
  %35 = load i32, i32* @CAN_ERR_BUSERROR, align 4
  %36 = or i32 %34, %35
  %37 = load %struct.can_frame*, %struct.can_frame** %8, align 8
  %38 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 8
  %41 = load i32, i32* %5, align 4
  switch i32 %41, label %98 [
    i32 128, label %42
    i32 129, label %52
    i32 133, label %62
    i32 131, label %70
    i32 132, label %80
    i32 130, label %90
  ]

42:                                               ; preds = %33
  %43 = load %struct.net_device*, %struct.net_device** %4, align 8
  %44 = call i32 @netdev_dbg(%struct.net_device* %43, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %45 = load i32, i32* @CAN_ERR_PROT_STUFF, align 4
  %46 = load %struct.can_frame*, %struct.can_frame** %8, align 8
  %47 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 2
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %45
  store i32 %51, i32* %49, align 4
  br label %99

52:                                               ; preds = %33
  %53 = load %struct.net_device*, %struct.net_device** %4, align 8
  %54 = call i32 @netdev_dbg(%struct.net_device* %53, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %55 = load i32, i32* @CAN_ERR_PROT_FORM, align 4
  %56 = load %struct.can_frame*, %struct.can_frame** %8, align 8
  %57 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %56, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 2
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %60, %55
  store i32 %61, i32* %59, align 4
  br label %99

62:                                               ; preds = %33
  %63 = load %struct.net_device*, %struct.net_device** %4, align 8
  %64 = call i32 @netdev_dbg(%struct.net_device* %63, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %65 = load i32, i32* @CAN_ERR_PROT_LOC_ACK, align 4
  %66 = load %struct.can_frame*, %struct.can_frame** %8, align 8
  %67 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %66, i32 0, i32 2
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 3
  store i32 %65, i32* %69, align 4
  br label %99

70:                                               ; preds = %33
  %71 = load %struct.net_device*, %struct.net_device** %4, align 8
  %72 = call i32 @netdev_dbg(%struct.net_device* %71, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %73 = load i32, i32* @CAN_ERR_PROT_BIT1, align 4
  %74 = load %struct.can_frame*, %struct.can_frame** %8, align 8
  %75 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %74, i32 0, i32 2
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 2
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %78, %73
  store i32 %79, i32* %77, align 4
  br label %99

80:                                               ; preds = %33
  %81 = load %struct.net_device*, %struct.net_device** %4, align 8
  %82 = call i32 @netdev_dbg(%struct.net_device* %81, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %83 = load i32, i32* @CAN_ERR_PROT_BIT0, align 4
  %84 = load %struct.can_frame*, %struct.can_frame** %8, align 8
  %85 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %84, i32 0, i32 2
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 2
  %88 = load i32, i32* %87, align 4
  %89 = or i32 %88, %83
  store i32 %89, i32* %87, align 4
  br label %99

90:                                               ; preds = %33
  %91 = load %struct.net_device*, %struct.net_device** %4, align 8
  %92 = call i32 @netdev_dbg(%struct.net_device* %91, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  %93 = load i32, i32* @CAN_ERR_PROT_LOC_CRC_SEQ, align 4
  %94 = load %struct.can_frame*, %struct.can_frame** %8, align 8
  %95 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %94, i32 0, i32 2
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 3
  store i32 %93, i32* %97, align 4
  br label %99

98:                                               ; preds = %33
  br label %99

99:                                               ; preds = %98, %90, %80, %70, %62, %52, %42
  %100 = load %struct.net_device_stats*, %struct.net_device_stats** %7, align 8
  %101 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %101, align 4
  %104 = load %struct.can_frame*, %struct.can_frame** %8, align 8
  %105 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.net_device_stats*, %struct.net_device_stats** %7, align 8
  %108 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = sext i32 %109 to i64
  %111 = add nsw i64 %110, %106
  %112 = trunc i64 %111 to i32
  store i32 %112, i32* %108, align 4
  %113 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %114 = call i32 @netif_receive_skb(%struct.sk_buff* %113)
  store i32 1, i32* %3, align 4
  br label %115

115:                                              ; preds = %99, %32
  %116 = load i32, i32* %3, align 4
  ret i32 %116
}

declare dso_local %struct.m_can_classdev* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.sk_buff* @alloc_can_err_skb(%struct.net_device*, %struct.can_frame**) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @netdev_dbg(%struct.net_device*, i8*) #1

declare dso_local i32 @netif_receive_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
