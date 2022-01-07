; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/sgi-xp/extr_xpc_channel.c_xpc_partition_going_down.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/sgi-xp/extr_xpc_channel.c_xpc_partition_going_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xpc_partition = type { i32, %struct.xpc_channel* }
%struct.xpc_channel = type { i32 }

@xpc_chan = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"deactivating partition %d, reason=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xpc_partition_going_down(%struct.xpc_partition* %0, i32 %1) #0 {
  %3 = alloca %struct.xpc_partition*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.xpc_channel*, align 8
  store %struct.xpc_partition* %0, %struct.xpc_partition** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* @xpc_chan, align 4
  %9 = load %struct.xpc_partition*, %struct.xpc_partition** %3, align 8
  %10 = call i32 @XPC_PARTID(%struct.xpc_partition* %9)
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @dev_dbg(i32 %8, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %11)
  %13 = load %struct.xpc_partition*, %struct.xpc_partition** %3, align 8
  %14 = call i32 @xpc_part_ref(%struct.xpc_partition* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  br label %54

17:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %18

18:                                               ; preds = %46, %17
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.xpc_partition*, %struct.xpc_partition** %3, align 8
  %21 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %49

24:                                               ; preds = %18
  %25 = load %struct.xpc_partition*, %struct.xpc_partition** %3, align 8
  %26 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %25, i32 0, i32 1
  %27 = load %struct.xpc_channel*, %struct.xpc_channel** %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %27, i64 %29
  store %struct.xpc_channel* %30, %struct.xpc_channel** %7, align 8
  %31 = load %struct.xpc_channel*, %struct.xpc_channel** %7, align 8
  %32 = call i32 @xpc_msgqueue_ref(%struct.xpc_channel* %31)
  %33 = load %struct.xpc_channel*, %struct.xpc_channel** %7, align 8
  %34 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %33, i32 0, i32 0
  %35 = load i64, i64* %5, align 8
  %36 = call i32 @spin_lock_irqsave(i32* %34, i64 %35)
  %37 = load %struct.xpc_channel*, %struct.xpc_channel** %7, align 8
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @XPC_DISCONNECT_CHANNEL(%struct.xpc_channel* %37, i32 %38, i64* %5)
  %40 = load %struct.xpc_channel*, %struct.xpc_channel** %7, align 8
  %41 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %40, i32 0, i32 0
  %42 = load i64, i64* %5, align 8
  %43 = call i32 @spin_unlock_irqrestore(i32* %41, i64 %42)
  %44 = load %struct.xpc_channel*, %struct.xpc_channel** %7, align 8
  %45 = call i32 @xpc_msgqueue_deref(%struct.xpc_channel* %44)
  br label %46

46:                                               ; preds = %24
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %6, align 4
  br label %18

49:                                               ; preds = %18
  %50 = load %struct.xpc_partition*, %struct.xpc_partition** %3, align 8
  %51 = call i32 @xpc_wakeup_channel_mgr(%struct.xpc_partition* %50)
  %52 = load %struct.xpc_partition*, %struct.xpc_partition** %3, align 8
  %53 = call i32 @xpc_part_deref(%struct.xpc_partition* %52)
  br label %54

54:                                               ; preds = %49, %16
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @XPC_PARTID(%struct.xpc_partition*) #1

declare dso_local i32 @xpc_part_ref(%struct.xpc_partition*) #1

declare dso_local i32 @xpc_msgqueue_ref(%struct.xpc_channel*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @XPC_DISCONNECT_CHANNEL(%struct.xpc_channel*, i32, i64*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @xpc_msgqueue_deref(%struct.xpc_channel*) #1

declare dso_local i32 @xpc_wakeup_channel_mgr(%struct.xpc_partition*) #1

declare dso_local i32 @xpc_part_deref(%struct.xpc_partition*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
