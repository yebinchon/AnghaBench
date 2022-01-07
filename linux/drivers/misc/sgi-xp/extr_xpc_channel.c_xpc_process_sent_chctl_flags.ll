; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/sgi-xp/extr_xpc_channel.c_xpc_process_sent_chctl_flags.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/sgi-xp/extr_xpc_channel.c_xpc_process_sent_chctl_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.xpc_partition*, i32)*, i32 (%struct.xpc_partition*)* }
%struct.xpc_partition = type { i32, i64, %struct.xpc_channel* }
%struct.xpc_channel = type { i32, i32 }
%union.xpc_channel_ctl_flags = type { i32* }

@xpc_arch_ops = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@XPC_OPENCLOSE_CHCTL_FLAGS = common dso_local global i32 0, align 4
@XPC_C_DISCONNECTING = common dso_local global i32 0, align 4
@XPC_P_AS_DEACTIVATING = common dso_local global i64 0, align 8
@XPC_C_CONNECTED = common dso_local global i32 0, align 4
@XPC_C_OPENREQUEST = common dso_local global i32 0, align 4
@XPC_C_SETUP = common dso_local global i32 0, align 4
@XPC_MSG_CHCTL_FLAGS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xpc_process_sent_chctl_flags(%struct.xpc_partition* %0) #0 {
  %2 = alloca %struct.xpc_partition*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %union.xpc_channel_ctl_flags, align 8
  %5 = alloca %struct.xpc_channel*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.xpc_partition* %0, %struct.xpc_partition** %2, align 8
  %8 = load i32 (%struct.xpc_partition*)*, i32 (%struct.xpc_partition*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xpc_arch_ops, i32 0, i32 1), align 8
  %9 = load %struct.xpc_partition*, %struct.xpc_partition** %2, align 8
  %10 = call i32 %8(%struct.xpc_partition* %9)
  %11 = bitcast %union.xpc_channel_ctl_flags* %4 to i32*
  store i32 %10, i32* %11, align 8
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %104, %1
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.xpc_partition*, %struct.xpc_partition** %2, align 8
  %15 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %107

18:                                               ; preds = %12
  %19 = load %struct.xpc_partition*, %struct.xpc_partition** %2, align 8
  %20 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %19, i32 0, i32 2
  %21 = load %struct.xpc_channel*, %struct.xpc_channel** %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %21, i64 %23
  store %struct.xpc_channel* %24, %struct.xpc_channel** %5, align 8
  %25 = bitcast %union.xpc_channel_ctl_flags* %4 to i32**
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @XPC_OPENCLOSE_CHCTL_FLAGS, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %18
  %35 = load %struct.xpc_partition*, %struct.xpc_partition** %2, align 8
  %36 = load i32, i32* %6, align 4
  %37 = bitcast %union.xpc_channel_ctl_flags* %4 to i32**
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @xpc_process_openclose_chctl_flags(%struct.xpc_partition* %35, i32 %36, i32 %42)
  br label %44

44:                                               ; preds = %34, %18
  %45 = load %struct.xpc_channel*, %struct.xpc_channel** %5, align 8
  %46 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @XPC_C_DISCONNECTING, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %63

52:                                               ; preds = %44
  %53 = load %struct.xpc_channel*, %struct.xpc_channel** %5, align 8
  %54 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %53, i32 0, i32 1
  %55 = load i64, i64* %3, align 8
  %56 = call i32 @spin_lock_irqsave(i32* %54, i64 %55)
  %57 = load %struct.xpc_channel*, %struct.xpc_channel** %5, align 8
  %58 = call i32 @xpc_process_disconnect(%struct.xpc_channel* %57, i64* %3)
  %59 = load %struct.xpc_channel*, %struct.xpc_channel** %5, align 8
  %60 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %59, i32 0, i32 1
  %61 = load i64, i64* %3, align 8
  %62 = call i32 @spin_unlock_irqrestore(i32* %60, i64 %61)
  br label %104

63:                                               ; preds = %44
  %64 = load %struct.xpc_partition*, %struct.xpc_partition** %2, align 8
  %65 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @XPC_P_AS_DEACTIVATING, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %63
  br label %104

70:                                               ; preds = %63
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* @XPC_C_CONNECTED, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %88, label %75

75:                                               ; preds = %70
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* @XPC_C_OPENREQUEST, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %87, label %80

80:                                               ; preds = %75
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* @XPC_C_SETUP, align 4
  %83 = and i32 %81, %82
  %84 = call i32 @DBUG_ON(i32 %83)
  %85 = load %struct.xpc_channel*, %struct.xpc_channel** %5, align 8
  %86 = call i32 @xpc_connect_channel(%struct.xpc_channel* %85)
  br label %87

87:                                               ; preds = %80, %75
  br label %104

88:                                               ; preds = %70
  %89 = bitcast %union.xpc_channel_ctl_flags* %4 to i32**
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %6, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @XPC_MSG_CHCTL_FLAGS, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %88
  %99 = load i32 (%struct.xpc_partition*, i32)*, i32 (%struct.xpc_partition*, i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xpc_arch_ops, i32 0, i32 0), align 8
  %100 = load %struct.xpc_partition*, %struct.xpc_partition** %2, align 8
  %101 = load i32, i32* %6, align 4
  %102 = call i32 %99(%struct.xpc_partition* %100, i32 %101)
  br label %103

103:                                              ; preds = %98, %88
  br label %104

104:                                              ; preds = %103, %87, %69, %52
  %105 = load i32, i32* %6, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %6, align 4
  br label %12

107:                                              ; preds = %12
  ret void
}

declare dso_local i32 @xpc_process_openclose_chctl_flags(%struct.xpc_partition*, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @xpc_process_disconnect(%struct.xpc_channel*, i64*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @DBUG_ON(i32) #1

declare dso_local i32 @xpc_connect_channel(%struct.xpc_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
