; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/sgi-xp/extr_xpc_uv.c_xpc_handle_notify_mq_ack_uv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/sgi-xp/extr_xpc_uv.c_xpc_handle_notify_mq_ack_uv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xpc_channel = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.xpc_send_msg_slot_uv* }
%struct.xpc_send_msg_slot_uv = type { i32, i32* }
%struct.xpc_notify_mq_msg_uv = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@xpMsgDelivered = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xpc_channel*, %struct.xpc_notify_mq_msg_uv*)* @xpc_handle_notify_mq_ack_uv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xpc_handle_notify_mq_ack_uv(%struct.xpc_channel* %0, %struct.xpc_notify_mq_msg_uv* %1) #0 {
  %3 = alloca %struct.xpc_channel*, align 8
  %4 = alloca %struct.xpc_notify_mq_msg_uv*, align 8
  %5 = alloca %struct.xpc_send_msg_slot_uv*, align 8
  %6 = alloca i32, align 4
  store %struct.xpc_channel* %0, %struct.xpc_channel** %3, align 8
  store %struct.xpc_notify_mq_msg_uv* %1, %struct.xpc_notify_mq_msg_uv** %4, align 8
  %7 = load %struct.xpc_notify_mq_msg_uv*, %struct.xpc_notify_mq_msg_uv** %4, align 8
  %8 = getelementptr inbounds %struct.xpc_notify_mq_msg_uv, %struct.xpc_notify_mq_msg_uv* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %12 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = srem i32 %10, %13
  store i32 %14, i32* %6, align 4
  %15 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %16 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load %struct.xpc_send_msg_slot_uv*, %struct.xpc_send_msg_slot_uv** %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.xpc_send_msg_slot_uv, %struct.xpc_send_msg_slot_uv* %19, i64 %21
  store %struct.xpc_send_msg_slot_uv* %22, %struct.xpc_send_msg_slot_uv** %5, align 8
  %23 = load %struct.xpc_send_msg_slot_uv*, %struct.xpc_send_msg_slot_uv** %5, align 8
  %24 = getelementptr inbounds %struct.xpc_send_msg_slot_uv, %struct.xpc_send_msg_slot_uv* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.xpc_notify_mq_msg_uv*, %struct.xpc_notify_mq_msg_uv** %4, align 8
  %27 = getelementptr inbounds %struct.xpc_notify_mq_msg_uv, %struct.xpc_notify_mq_msg_uv* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %25, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @BUG_ON(i32 %31)
  %33 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %34 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.xpc_send_msg_slot_uv*, %struct.xpc_send_msg_slot_uv** %5, align 8
  %37 = getelementptr inbounds %struct.xpc_send_msg_slot_uv, %struct.xpc_send_msg_slot_uv* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = add nsw i32 %38, %35
  store i32 %39, i32* %37, align 8
  %40 = load %struct.xpc_send_msg_slot_uv*, %struct.xpc_send_msg_slot_uv** %5, align 8
  %41 = getelementptr inbounds %struct.xpc_send_msg_slot_uv, %struct.xpc_send_msg_slot_uv* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %49

44:                                               ; preds = %2
  %45 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %46 = load %struct.xpc_send_msg_slot_uv*, %struct.xpc_send_msg_slot_uv** %5, align 8
  %47 = load i32, i32* @xpMsgDelivered, align 4
  %48 = call i32 @xpc_notify_sender_uv(%struct.xpc_channel* %45, %struct.xpc_send_msg_slot_uv* %46, i32 %47)
  br label %49

49:                                               ; preds = %44, %2
  %50 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %51 = load %struct.xpc_send_msg_slot_uv*, %struct.xpc_send_msg_slot_uv** %5, align 8
  %52 = call i32 @xpc_free_msg_slot_uv(%struct.xpc_channel* %50, %struct.xpc_send_msg_slot_uv* %51)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @xpc_notify_sender_uv(%struct.xpc_channel*, %struct.xpc_send_msg_slot_uv*, i32) #1

declare dso_local i32 @xpc_free_msg_slot_uv(%struct.xpc_channel*, %struct.xpc_send_msg_slot_uv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
