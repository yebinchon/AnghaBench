; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/sgi-xp/extr_xpc_uv.c_xpc_allocate_recv_msg_slot_uv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/sgi-xp/extr_xpc_uv.c_xpc_allocate_recv_msg_slot_uv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xpc_channel = type { i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.xpc_channel_uv }
%struct.xpc_channel_uv = type { %struct.xpc_notify_mq_msg_uv* }
%struct.xpc_notify_mq_msg_uv = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@xpSuccess = common dso_local global i32 0, align 4
@xpNoMemory = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xpc_channel*)* @xpc_allocate_recv_msg_slot_uv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xpc_allocate_recv_msg_slot_uv(%struct.xpc_channel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xpc_channel*, align 8
  %4 = alloca %struct.xpc_channel_uv*, align 8
  %5 = alloca %struct.xpc_notify_mq_msg_uv*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.xpc_channel* %0, %struct.xpc_channel** %3, align 8
  %10 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %11 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  store %struct.xpc_channel_uv* %12, %struct.xpc_channel_uv** %4, align 8
  %13 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %14 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %7, align 4
  br label %16

16:                                               ; preds = %79, %1
  %17 = load i32, i32* %7, align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %82

19:                                               ; preds = %16
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %22 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = mul nsw i32 %20, %23
  %25 = sext i32 %24 to i64
  store i64 %25, i64* %9, align 8
  %26 = load i64, i64* %9, align 8
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call %struct.xpc_notify_mq_msg_uv* @kzalloc(i64 %26, i32 %27)
  %29 = load %struct.xpc_channel_uv*, %struct.xpc_channel_uv** %4, align 8
  %30 = getelementptr inbounds %struct.xpc_channel_uv, %struct.xpc_channel_uv* %29, i32 0, i32 0
  store %struct.xpc_notify_mq_msg_uv* %28, %struct.xpc_notify_mq_msg_uv** %30, align 8
  %31 = load %struct.xpc_channel_uv*, %struct.xpc_channel_uv** %4, align 8
  %32 = getelementptr inbounds %struct.xpc_channel_uv, %struct.xpc_channel_uv* %31, i32 0, i32 0
  %33 = load %struct.xpc_notify_mq_msg_uv*, %struct.xpc_notify_mq_msg_uv** %32, align 8
  %34 = icmp eq %struct.xpc_notify_mq_msg_uv* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %19
  br label %79

36:                                               ; preds = %19
  store i32 0, i32* %8, align 4
  br label %37

37:                                               ; preds = %56, %36
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %59

41:                                               ; preds = %37
  %42 = load %struct.xpc_channel_uv*, %struct.xpc_channel_uv** %4, align 8
  %43 = getelementptr inbounds %struct.xpc_channel_uv, %struct.xpc_channel_uv* %42, i32 0, i32 0
  %44 = load %struct.xpc_notify_mq_msg_uv*, %struct.xpc_notify_mq_msg_uv** %43, align 8
  %45 = load i32, i32* %8, align 4
  %46 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %47 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = mul nsw i32 %45, %48
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.xpc_notify_mq_msg_uv, %struct.xpc_notify_mq_msg_uv* %44, i64 %50
  store %struct.xpc_notify_mq_msg_uv* %51, %struct.xpc_notify_mq_msg_uv** %5, align 8
  %52 = load i32, i32* %8, align 4
  %53 = load %struct.xpc_notify_mq_msg_uv*, %struct.xpc_notify_mq_msg_uv** %5, align 8
  %54 = getelementptr inbounds %struct.xpc_notify_mq_msg_uv, %struct.xpc_notify_mq_msg_uv* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  store i32 %52, i32* %55, align 4
  br label %56

56:                                               ; preds = %41
  %57 = load i32, i32* %8, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %8, align 4
  br label %37

59:                                               ; preds = %37
  %60 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %61 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %60, i32 0, i32 2
  %62 = load i64, i64* %6, align 8
  %63 = call i32 @spin_lock_irqsave(i32* %61, i64 %62)
  %64 = load i32, i32* %7, align 4
  %65 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %66 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp slt i32 %64, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %59
  %70 = load i32, i32* %7, align 4
  %71 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %72 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  br label %73

73:                                               ; preds = %69, %59
  %74 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %75 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %74, i32 0, i32 2
  %76 = load i64, i64* %6, align 8
  %77 = call i32 @spin_unlock_irqrestore(i32* %75, i64 %76)
  %78 = load i32, i32* @xpSuccess, align 4
  store i32 %78, i32* %2, align 4
  br label %84

79:                                               ; preds = %35
  %80 = load i32, i32* %7, align 4
  %81 = add nsw i32 %80, -1
  store i32 %81, i32* %7, align 4
  br label %16

82:                                               ; preds = %16
  %83 = load i32, i32* @xpNoMemory, align 4
  store i32 %83, i32* %2, align 4
  br label %84

84:                                               ; preds = %82, %73
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local %struct.xpc_notify_mq_msg_uv* @kzalloc(i64, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
