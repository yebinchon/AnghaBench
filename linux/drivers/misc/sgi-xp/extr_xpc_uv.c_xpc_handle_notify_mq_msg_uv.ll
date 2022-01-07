; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/sgi-xp/extr_xpc_uv.c_xpc_handle_notify_mq_msg_uv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/sgi-xp/extr_xpc_uv.c_xpc_handle_notify_mq_msg_uv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xpc_partition = type { i32, %struct.xpc_channel*, %struct.TYPE_5__ }
%struct.xpc_channel = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.xpc_channel_uv }
%struct.xpc_channel_uv = type { i32, %struct.xpc_notify_mq_msg_uv* }
%struct.TYPE_5__ = type { %struct.xpc_partition_uv }
%struct.xpc_partition_uv = type { i64, i32 }
%struct.xpc_notify_mq_msg_uv = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i64, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@xpc_part = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [91 x i8] c"xpc_handle_notify_IRQ_uv() received invalid channel number=0x%x in message from partid=%d\0A\00", align 1
@xpc_activate_IRQ_rcvd_lock = common dso_local global i32 0, align 4
@xpc_activate_IRQ_rcvd = common dso_local global i32 0, align 4
@XPC_P_ASR_DEACTIVATE_UV = common dso_local global i64 0, align 8
@xpBadChannelNumber = common dso_local global i32 0, align 4
@xpc_activate_IRQ_wq = common dso_local global i32 0, align 4
@XPC_C_CONNECTED = common dso_local global i32 0, align 4
@XPC_C_CONNECTEDCALLOUT_MADE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xpc_partition*, %struct.xpc_notify_mq_msg_uv*)* @xpc_handle_notify_mq_msg_uv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xpc_handle_notify_mq_msg_uv(%struct.xpc_partition* %0, %struct.xpc_notify_mq_msg_uv* %1) #0 {
  %3 = alloca %struct.xpc_partition*, align 8
  %4 = alloca %struct.xpc_notify_mq_msg_uv*, align 8
  %5 = alloca %struct.xpc_partition_uv*, align 8
  %6 = alloca %struct.xpc_channel*, align 8
  %7 = alloca %struct.xpc_channel_uv*, align 8
  %8 = alloca %struct.xpc_notify_mq_msg_uv*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.xpc_partition* %0, %struct.xpc_partition** %3, align 8
  store %struct.xpc_notify_mq_msg_uv* %1, %struct.xpc_notify_mq_msg_uv** %4, align 8
  %11 = load %struct.xpc_partition*, %struct.xpc_partition** %3, align 8
  %12 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  store %struct.xpc_partition_uv* %13, %struct.xpc_partition_uv** %5, align 8
  %14 = load %struct.xpc_notify_mq_msg_uv*, %struct.xpc_notify_mq_msg_uv** %4, align 8
  %15 = getelementptr inbounds %struct.xpc_notify_mq_msg_uv, %struct.xpc_notify_mq_msg_uv* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = load %struct.xpc_partition*, %struct.xpc_partition** %3, align 8
  %20 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp sge i32 %18, %21
  %23 = zext i1 %22 to i32
  %24 = call i64 @unlikely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %51

26:                                               ; preds = %2
  %27 = load i32, i32* @xpc_part, align 4
  %28 = load i32, i32* %10, align 4
  %29 = load %struct.xpc_partition*, %struct.xpc_partition** %3, align 8
  %30 = call i32 @XPC_PARTID(%struct.xpc_partition* %29)
  %31 = call i32 @dev_err(i32 %27, i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %30)
  %32 = load i64, i64* %9, align 8
  %33 = call i32 @spin_lock_irqsave(i32* @xpc_activate_IRQ_rcvd_lock, i64 %32)
  %34 = load %struct.xpc_partition_uv*, %struct.xpc_partition_uv** %5, align 8
  %35 = getelementptr inbounds %struct.xpc_partition_uv, %struct.xpc_partition_uv* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %26
  %39 = load i32, i32* @xpc_activate_IRQ_rcvd, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* @xpc_activate_IRQ_rcvd, align 4
  br label %41

41:                                               ; preds = %38, %26
  %42 = load i64, i64* @XPC_P_ASR_DEACTIVATE_UV, align 8
  %43 = load %struct.xpc_partition_uv*, %struct.xpc_partition_uv** %5, align 8
  %44 = getelementptr inbounds %struct.xpc_partition_uv, %struct.xpc_partition_uv* %43, i32 0, i32 0
  store i64 %42, i64* %44, align 8
  %45 = load i32, i32* @xpBadChannelNumber, align 4
  %46 = load %struct.xpc_partition_uv*, %struct.xpc_partition_uv** %5, align 8
  %47 = getelementptr inbounds %struct.xpc_partition_uv, %struct.xpc_partition_uv* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 8
  %48 = load i64, i64* %9, align 8
  %49 = call i32 @spin_unlock_irqrestore(i32* @xpc_activate_IRQ_rcvd_lock, i64 %48)
  %50 = call i32 @wake_up_interruptible(i32* @xpc_activate_IRQ_wq)
  br label %148

51:                                               ; preds = %2
  %52 = load %struct.xpc_partition*, %struct.xpc_partition** %3, align 8
  %53 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %52, i32 0, i32 1
  %54 = load %struct.xpc_channel*, %struct.xpc_channel** %53, align 8
  %55 = load i32, i32* %10, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %54, i64 %56
  store %struct.xpc_channel* %57, %struct.xpc_channel** %6, align 8
  %58 = load %struct.xpc_channel*, %struct.xpc_channel** %6, align 8
  %59 = call i32 @xpc_msgqueue_ref(%struct.xpc_channel* %58)
  %60 = load %struct.xpc_channel*, %struct.xpc_channel** %6, align 8
  %61 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @XPC_C_CONNECTED, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %51
  %67 = load %struct.xpc_channel*, %struct.xpc_channel** %6, align 8
  %68 = call i32 @xpc_msgqueue_deref(%struct.xpc_channel* %67)
  br label %148

69:                                               ; preds = %51
  %70 = load %struct.xpc_notify_mq_msg_uv*, %struct.xpc_notify_mq_msg_uv** %4, align 8
  %71 = getelementptr inbounds %struct.xpc_notify_mq_msg_uv, %struct.xpc_notify_mq_msg_uv* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %69
  %76 = load %struct.xpc_channel*, %struct.xpc_channel** %6, align 8
  %77 = load %struct.xpc_notify_mq_msg_uv*, %struct.xpc_notify_mq_msg_uv** %4, align 8
  %78 = call i32 @xpc_handle_notify_mq_ack_uv(%struct.xpc_channel* %76, %struct.xpc_notify_mq_msg_uv* %77)
  %79 = load %struct.xpc_channel*, %struct.xpc_channel** %6, align 8
  %80 = call i32 @xpc_msgqueue_deref(%struct.xpc_channel* %79)
  br label %148

81:                                               ; preds = %69
  %82 = load %struct.xpc_channel*, %struct.xpc_channel** %6, align 8
  %83 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %82, i32 0, i32 6
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  store %struct.xpc_channel_uv* %84, %struct.xpc_channel_uv** %7, align 8
  %85 = load %struct.xpc_channel_uv*, %struct.xpc_channel_uv** %7, align 8
  %86 = getelementptr inbounds %struct.xpc_channel_uv, %struct.xpc_channel_uv* %85, i32 0, i32 1
  %87 = load %struct.xpc_notify_mq_msg_uv*, %struct.xpc_notify_mq_msg_uv** %86, align 8
  %88 = load %struct.xpc_notify_mq_msg_uv*, %struct.xpc_notify_mq_msg_uv** %4, align 8
  %89 = getelementptr inbounds %struct.xpc_notify_mq_msg_uv, %struct.xpc_notify_mq_msg_uv* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.xpc_channel*, %struct.xpc_channel** %6, align 8
  %93 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = srem i32 %91, %94
  %96 = load %struct.xpc_channel*, %struct.xpc_channel** %6, align 8
  %97 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = mul nsw i32 %95, %98
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.xpc_notify_mq_msg_uv, %struct.xpc_notify_mq_msg_uv* %87, i64 %100
  store %struct.xpc_notify_mq_msg_uv* %101, %struct.xpc_notify_mq_msg_uv** %8, align 8
  %102 = load %struct.xpc_notify_mq_msg_uv*, %struct.xpc_notify_mq_msg_uv** %8, align 8
  %103 = getelementptr inbounds %struct.xpc_notify_mq_msg_uv, %struct.xpc_notify_mq_msg_uv* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  %107 = zext i1 %106 to i32
  %108 = call i32 @BUG_ON(i32 %107)
  %109 = load %struct.xpc_notify_mq_msg_uv*, %struct.xpc_notify_mq_msg_uv** %8, align 8
  %110 = load %struct.xpc_notify_mq_msg_uv*, %struct.xpc_notify_mq_msg_uv** %4, align 8
  %111 = load %struct.xpc_notify_mq_msg_uv*, %struct.xpc_notify_mq_msg_uv** %4, align 8
  %112 = getelementptr inbounds %struct.xpc_notify_mq_msg_uv, %struct.xpc_notify_mq_msg_uv* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = call i32 @memcpy(%struct.xpc_notify_mq_msg_uv* %109, %struct.xpc_notify_mq_msg_uv* %110, i64 %114)
  %116 = load %struct.xpc_channel_uv*, %struct.xpc_channel_uv** %7, align 8
  %117 = getelementptr inbounds %struct.xpc_channel_uv, %struct.xpc_channel_uv* %116, i32 0, i32 0
  %118 = load %struct.xpc_notify_mq_msg_uv*, %struct.xpc_notify_mq_msg_uv** %8, align 8
  %119 = getelementptr inbounds %struct.xpc_notify_mq_msg_uv, %struct.xpc_notify_mq_msg_uv* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 3
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 0
  %122 = call i32 @xpc_put_fifo_entry_uv(i32* %117, i32* %121)
  %123 = load %struct.xpc_channel*, %struct.xpc_channel** %6, align 8
  %124 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @XPC_C_CONNECTEDCALLOUT_MADE, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %145

129:                                              ; preds = %81
  %130 = load %struct.xpc_channel*, %struct.xpc_channel** %6, align 8
  %131 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %130, i32 0, i32 5
  %132 = call i64 @atomic_read(i32* %131)
  %133 = icmp sgt i64 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %129
  %135 = load %struct.xpc_channel*, %struct.xpc_channel** %6, align 8
  %136 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %135, i32 0, i32 4
  %137 = call i32 @wake_up_nr(i32* %136, i32 1)
  br label %144

138:                                              ; preds = %129
  %139 = load %struct.xpc_partition*, %struct.xpc_partition** %3, align 8
  %140 = load %struct.xpc_channel*, %struct.xpc_channel** %6, align 8
  %141 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @xpc_send_chctl_local_msgrequest_uv(%struct.xpc_partition* %139, i32 %142)
  br label %144

144:                                              ; preds = %138, %134
  br label %145

145:                                              ; preds = %144, %81
  %146 = load %struct.xpc_channel*, %struct.xpc_channel** %6, align 8
  %147 = call i32 @xpc_msgqueue_deref(%struct.xpc_channel* %146)
  br label %148

148:                                              ; preds = %145, %75, %66, %41
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

declare dso_local i32 @XPC_PARTID(%struct.xpc_partition*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @xpc_msgqueue_ref(%struct.xpc_channel*) #1

declare dso_local i32 @xpc_msgqueue_deref(%struct.xpc_channel*) #1

declare dso_local i32 @xpc_handle_notify_mq_ack_uv(%struct.xpc_channel*, %struct.xpc_notify_mq_msg_uv*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @memcpy(%struct.xpc_notify_mq_msg_uv*, %struct.xpc_notify_mq_msg_uv*, i64) #1

declare dso_local i32 @xpc_put_fifo_entry_uv(i32*, i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @wake_up_nr(i32*, i32) #1

declare dso_local i32 @xpc_send_chctl_local_msgrequest_uv(%struct.xpc_partition*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
