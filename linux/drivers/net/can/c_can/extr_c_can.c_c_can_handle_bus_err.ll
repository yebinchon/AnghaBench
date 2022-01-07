; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/c_can/extr_c_can.c_c_can_handle_bus_err.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/c_can/extr_c_can.c_c_can_handle_bus_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.net_device_stats }
%struct.net_device_stats = type { i32, i32, i32 }
%struct.c_can_priv = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.can_frame = type { i32, i64, i32* }
%struct.sk_buff = type { i32 }

@LEC_UNUSED = common dso_local global i32 0, align 4
@LEC_NO_ERROR = common dso_local global i32 0, align 4
@CAN_CTRLMODE_BERR_REPORTING = common dso_local global i32 0, align 4
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @c_can_handle_bus_err to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @c_can_handle_bus_err(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.c_can_priv*, align 8
  %7 = alloca %struct.net_device_stats*, align 8
  %8 = alloca %struct.can_frame*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.c_can_priv* @netdev_priv(%struct.net_device* %10)
  store %struct.c_can_priv* %11, %struct.c_can_priv** %6, align 8
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 0
  store %struct.net_device_stats* %13, %struct.net_device_stats** %7, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @LEC_UNUSED, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %21, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @LEC_NO_ERROR, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %17, %2
  store i32 0, i32* %3, align 4
  br label %133

22:                                               ; preds = %17
  %23 = load %struct.c_can_priv*, %struct.c_can_priv** %6, align 8
  %24 = getelementptr inbounds %struct.c_can_priv, %struct.c_can_priv* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @CAN_CTRLMODE_BERR_REPORTING, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %133

31:                                               ; preds = %22
  %32 = load %struct.c_can_priv*, %struct.c_can_priv** %6, align 8
  %33 = getelementptr inbounds %struct.c_can_priv, %struct.c_can_priv* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 4
  %38 = load %struct.net_device_stats*, %struct.net_device_stats** %7, align 8
  %39 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 4
  %42 = load %struct.net_device*, %struct.net_device** %4, align 8
  %43 = call %struct.sk_buff* @alloc_can_err_skb(%struct.net_device* %42, %struct.can_frame** %8)
  store %struct.sk_buff* %43, %struct.sk_buff** %9, align 8
  %44 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %45 = icmp ne %struct.sk_buff* %44, null
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  %48 = call i64 @unlikely(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %133

51:                                               ; preds = %31
  %52 = load i32, i32* @CAN_ERR_PROT, align 4
  %53 = load i32, i32* @CAN_ERR_BUSERROR, align 4
  %54 = or i32 %52, %53
  %55 = load %struct.can_frame*, %struct.can_frame** %8, align 8
  %56 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 8
  %59 = load i32, i32* %5, align 4
  switch i32 %59, label %116 [
    i32 128, label %60
    i32 129, label %70
    i32 133, label %80
    i32 131, label %88
    i32 132, label %98
    i32 130, label %108
  ]

60:                                               ; preds = %51
  %61 = load %struct.net_device*, %struct.net_device** %4, align 8
  %62 = call i32 @netdev_dbg(%struct.net_device* %61, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %63 = load i32, i32* @CAN_ERR_PROT_STUFF, align 4
  %64 = load %struct.can_frame*, %struct.can_frame** %8, align 8
  %65 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %64, i32 0, i32 2
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 2
  %68 = load i32, i32* %67, align 4
  %69 = or i32 %68, %63
  store i32 %69, i32* %67, align 4
  br label %117

70:                                               ; preds = %51
  %71 = load %struct.net_device*, %struct.net_device** %4, align 8
  %72 = call i32 @netdev_dbg(%struct.net_device* %71, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %73 = load i32, i32* @CAN_ERR_PROT_FORM, align 4
  %74 = load %struct.can_frame*, %struct.can_frame** %8, align 8
  %75 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %74, i32 0, i32 2
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 2
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %78, %73
  store i32 %79, i32* %77, align 4
  br label %117

80:                                               ; preds = %51
  %81 = load %struct.net_device*, %struct.net_device** %4, align 8
  %82 = call i32 @netdev_dbg(%struct.net_device* %81, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %83 = load i32, i32* @CAN_ERR_PROT_LOC_ACK, align 4
  %84 = load %struct.can_frame*, %struct.can_frame** %8, align 8
  %85 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %84, i32 0, i32 2
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 3
  store i32 %83, i32* %87, align 4
  br label %117

88:                                               ; preds = %51
  %89 = load %struct.net_device*, %struct.net_device** %4, align 8
  %90 = call i32 @netdev_dbg(%struct.net_device* %89, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %91 = load i32, i32* @CAN_ERR_PROT_BIT1, align 4
  %92 = load %struct.can_frame*, %struct.can_frame** %8, align 8
  %93 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %92, i32 0, i32 2
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 2
  %96 = load i32, i32* %95, align 4
  %97 = or i32 %96, %91
  store i32 %97, i32* %95, align 4
  br label %117

98:                                               ; preds = %51
  %99 = load %struct.net_device*, %struct.net_device** %4, align 8
  %100 = call i32 @netdev_dbg(%struct.net_device* %99, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %101 = load i32, i32* @CAN_ERR_PROT_BIT0, align 4
  %102 = load %struct.can_frame*, %struct.can_frame** %8, align 8
  %103 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %102, i32 0, i32 2
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 2
  %106 = load i32, i32* %105, align 4
  %107 = or i32 %106, %101
  store i32 %107, i32* %105, align 4
  br label %117

108:                                              ; preds = %51
  %109 = load %struct.net_device*, %struct.net_device** %4, align 8
  %110 = call i32 @netdev_dbg(%struct.net_device* %109, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  %111 = load i32, i32* @CAN_ERR_PROT_LOC_CRC_SEQ, align 4
  %112 = load %struct.can_frame*, %struct.can_frame** %8, align 8
  %113 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %112, i32 0, i32 2
  %114 = load i32*, i32** %113, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 3
  store i32 %111, i32* %115, align 4
  br label %117

116:                                              ; preds = %51
  br label %117

117:                                              ; preds = %116, %108, %98, %88, %80, %70, %60
  %118 = load %struct.net_device_stats*, %struct.net_device_stats** %7, align 8
  %119 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %119, align 4
  %122 = load %struct.can_frame*, %struct.can_frame** %8, align 8
  %123 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.net_device_stats*, %struct.net_device_stats** %7, align 8
  %126 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = sext i32 %127 to i64
  %129 = add nsw i64 %128, %124
  %130 = trunc i64 %129 to i32
  store i32 %130, i32* %126, align 4
  %131 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %132 = call i32 @netif_receive_skb(%struct.sk_buff* %131)
  store i32 1, i32* %3, align 4
  br label %133

133:                                              ; preds = %117, %50, %30, %21
  %134 = load i32, i32* %3, align 4
  ret i32 %134
}

declare dso_local %struct.c_can_priv* @netdev_priv(%struct.net_device*) #1

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
