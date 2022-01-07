; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/sgi-xp/extr_xpc_uv.c_xpc_free_msg_slot_uv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/sgi-xp/extr_xpc_uv.c_xpc_free_msg_slot_uv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xpc_channel = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.xpc_send_msg_slot_uv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xpc_channel*, %struct.xpc_send_msg_slot_uv*)* @xpc_free_msg_slot_uv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xpc_free_msg_slot_uv(%struct.xpc_channel* %0, %struct.xpc_send_msg_slot_uv* %1) #0 {
  %3 = alloca %struct.xpc_channel*, align 8
  %4 = alloca %struct.xpc_send_msg_slot_uv*, align 8
  store %struct.xpc_channel* %0, %struct.xpc_channel** %3, align 8
  store %struct.xpc_send_msg_slot_uv* %1, %struct.xpc_send_msg_slot_uv** %4, align 8
  %5 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %6 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %5, i32 0, i32 2
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load %struct.xpc_send_msg_slot_uv*, %struct.xpc_send_msg_slot_uv** %4, align 8
  %10 = getelementptr inbounds %struct.xpc_send_msg_slot_uv, %struct.xpc_send_msg_slot_uv* %9, i32 0, i32 0
  %11 = call i32 @xpc_put_fifo_entry_uv(i32* %8, i32* %10)
  %12 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %13 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %12, i32 0, i32 1
  %14 = call i64 @atomic_read(i32* %13)
  %15 = icmp sgt i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %18 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %17, i32 0, i32 0
  %19 = call i32 @wake_up(i32* %18)
  br label %20

20:                                               ; preds = %16, %2
  ret void
}

declare dso_local i32 @xpc_put_fifo_entry_uv(i32*, i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
