; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/sgi-xp/extr_xpc_channel.c_xpc_initiate_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/sgi-xp/extr_xpc_channel.c_xpc_initiate_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xpc_partition = type { %struct.xpc_channel* }
%struct.xpc_channel = type { i32, i32 }

@XPC_MAX_NCHANNELS = common dso_local global i32 0, align 4
@xp_max_npartitions = common dso_local global i16 0, align 2
@xpc_partitions = common dso_local global %struct.xpc_partition* null, align 8
@XPC_C_DISCONNECTED = common dso_local global i32 0, align 4
@XPC_C_WDISCONNECT = common dso_local global i32 0, align 4
@xpUnregistering = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xpc_initiate_disconnect(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i16, align 2
  %5 = alloca %struct.xpc_partition*, align 8
  %6 = alloca %struct.xpc_channel*, align 8
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* %2, align 4
  %11 = load i32, i32* @XPC_MAX_NCHANNELS, align 4
  %12 = icmp sge i32 %10, %11
  br label %13

13:                                               ; preds = %9, %1
  %14 = phi i1 [ true, %1 ], [ %12, %9 ]
  %15 = zext i1 %14 to i32
  %16 = call i32 @DBUG_ON(i32 %15)
  store i16 0, i16* %4, align 2
  br label %17

17:                                               ; preds = %69, %13
  %18 = load i16, i16* %4, align 2
  %19 = sext i16 %18 to i32
  %20 = load i16, i16* @xp_max_npartitions, align 2
  %21 = sext i16 %20 to i32
  %22 = icmp slt i32 %19, %21
  br i1 %22, label %23, label %72

23:                                               ; preds = %17
  %24 = load %struct.xpc_partition*, %struct.xpc_partition** @xpc_partitions, align 8
  %25 = load i16, i16* %4, align 2
  %26 = sext i16 %25 to i64
  %27 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %24, i64 %26
  store %struct.xpc_partition* %27, %struct.xpc_partition** %5, align 8
  %28 = load %struct.xpc_partition*, %struct.xpc_partition** %5, align 8
  %29 = call i64 @xpc_part_ref(%struct.xpc_partition* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %68

31:                                               ; preds = %23
  %32 = load %struct.xpc_partition*, %struct.xpc_partition** %5, align 8
  %33 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %32, i32 0, i32 0
  %34 = load %struct.xpc_channel*, %struct.xpc_channel** %33, align 8
  %35 = load i32, i32* %2, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %34, i64 %36
  store %struct.xpc_channel* %37, %struct.xpc_channel** %6, align 8
  %38 = load %struct.xpc_channel*, %struct.xpc_channel** %6, align 8
  %39 = call i32 @xpc_msgqueue_ref(%struct.xpc_channel* %38)
  %40 = load %struct.xpc_channel*, %struct.xpc_channel** %6, align 8
  %41 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %40, i32 0, i32 1
  %42 = load i64, i64* %3, align 8
  %43 = call i32 @spin_lock_irqsave(i32* %41, i64 %42)
  %44 = load %struct.xpc_channel*, %struct.xpc_channel** %6, align 8
  %45 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @XPC_C_DISCONNECTED, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %59, label %50

50:                                               ; preds = %31
  %51 = load i32, i32* @XPC_C_WDISCONNECT, align 4
  %52 = load %struct.xpc_channel*, %struct.xpc_channel** %6, align 8
  %53 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 4
  %56 = load %struct.xpc_channel*, %struct.xpc_channel** %6, align 8
  %57 = load i32, i32* @xpUnregistering, align 4
  %58 = call i32 @XPC_DISCONNECT_CHANNEL(%struct.xpc_channel* %56, i32 %57, i64* %3)
  br label %59

59:                                               ; preds = %50, %31
  %60 = load %struct.xpc_channel*, %struct.xpc_channel** %6, align 8
  %61 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %60, i32 0, i32 1
  %62 = load i64, i64* %3, align 8
  %63 = call i32 @spin_unlock_irqrestore(i32* %61, i64 %62)
  %64 = load %struct.xpc_channel*, %struct.xpc_channel** %6, align 8
  %65 = call i32 @xpc_msgqueue_deref(%struct.xpc_channel* %64)
  %66 = load %struct.xpc_partition*, %struct.xpc_partition** %5, align 8
  %67 = call i32 @xpc_part_deref(%struct.xpc_partition* %66)
  br label %68

68:                                               ; preds = %59, %23
  br label %69

69:                                               ; preds = %68
  %70 = load i16, i16* %4, align 2
  %71 = add i16 %70, 1
  store i16 %71, i16* %4, align 2
  br label %17

72:                                               ; preds = %17
  %73 = load i32, i32* %2, align 4
  %74 = call i32 @xpc_disconnect_wait(i32 %73)
  ret void
}

declare dso_local i32 @DBUG_ON(i32) #1

declare dso_local i64 @xpc_part_ref(%struct.xpc_partition*) #1

declare dso_local i32 @xpc_msgqueue_ref(%struct.xpc_channel*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @XPC_DISCONNECT_CHANNEL(%struct.xpc_channel*, i32, i64*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @xpc_msgqueue_deref(%struct.xpc_channel*) #1

declare dso_local i32 @xpc_part_deref(%struct.xpc_partition*) #1

declare dso_local i32 @xpc_disconnect_wait(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
