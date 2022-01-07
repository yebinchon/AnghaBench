; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/sgi-xp/extr_xpc_uv.c_xpc_setup_msg_structures_uv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/sgi-xp/extr_xpc_uv.c_xpc_setup_msg_structures_uv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xpc_channel = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.xpc_channel_uv }
%struct.xpc_channel_uv = type { i32, i32, i32* }

@xpc_setup_msg_structures_uv.ret = internal global i32 0, align 4
@XPC_C_SETUP = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@xpNoMemory = common dso_local global i32 0, align 4
@xpSuccess = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xpc_channel*)* @xpc_setup_msg_structures_uv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xpc_setup_msg_structures_uv(%struct.xpc_channel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xpc_channel*, align 8
  %4 = alloca %struct.xpc_channel_uv*, align 8
  store %struct.xpc_channel* %0, %struct.xpc_channel** %3, align 8
  %5 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %6 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  store %struct.xpc_channel_uv* %7, %struct.xpc_channel_uv** %4, align 8
  %8 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %9 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @XPC_C_SETUP, align 4
  %12 = and i32 %10, %11
  %13 = call i32 @DBUG_ON(i32 %12)
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call i32* @kmalloc(i32 4, i32 %14)
  %16 = load %struct.xpc_channel_uv*, %struct.xpc_channel_uv** %4, align 8
  %17 = getelementptr inbounds %struct.xpc_channel_uv, %struct.xpc_channel_uv* %16, i32 0, i32 2
  store i32* %15, i32** %17, align 8
  %18 = load %struct.xpc_channel_uv*, %struct.xpc_channel_uv** %4, align 8
  %19 = getelementptr inbounds %struct.xpc_channel_uv, %struct.xpc_channel_uv* %18, i32 0, i32 2
  %20 = load i32*, i32** %19, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = load i32, i32* @xpNoMemory, align 4
  store i32 %23, i32* %2, align 4
  br label %47

24:                                               ; preds = %1
  %25 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %26 = call i32 @xpc_allocate_send_msg_slot_uv(%struct.xpc_channel* %25)
  store i32 %26, i32* @xpc_setup_msg_structures_uv.ret, align 4
  %27 = load i32, i32* @xpc_setup_msg_structures_uv.ret, align 4
  %28 = load i32, i32* @xpSuccess, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %45

30:                                               ; preds = %24
  %31 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %32 = call i32 @xpc_allocate_recv_msg_slot_uv(%struct.xpc_channel* %31)
  store i32 %32, i32* @xpc_setup_msg_structures_uv.ret, align 4
  %33 = load i32, i32* @xpc_setup_msg_structures_uv.ret, align 4
  %34 = load i32, i32* @xpSuccess, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %44

36:                                               ; preds = %30
  %37 = load %struct.xpc_channel_uv*, %struct.xpc_channel_uv** %4, align 8
  %38 = getelementptr inbounds %struct.xpc_channel_uv, %struct.xpc_channel_uv* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @kfree(i32 %39)
  %41 = load %struct.xpc_channel_uv*, %struct.xpc_channel_uv** %4, align 8
  %42 = getelementptr inbounds %struct.xpc_channel_uv, %struct.xpc_channel_uv* %41, i32 0, i32 0
  %43 = call i32 @xpc_init_fifo_uv(i32* %42)
  br label %44

44:                                               ; preds = %36, %30
  br label %45

45:                                               ; preds = %44, %24
  %46 = load i32, i32* @xpc_setup_msg_structures_uv.ret, align 4
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %45, %22
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32 @DBUG_ON(i32) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @xpc_allocate_send_msg_slot_uv(%struct.xpc_channel*) #1

declare dso_local i32 @xpc_allocate_recv_msg_slot_uv(%struct.xpc_channel*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @xpc_init_fifo_uv(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
