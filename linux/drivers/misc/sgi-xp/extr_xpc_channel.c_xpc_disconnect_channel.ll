; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/sgi-xp/extr_xpc_channel.c_xpc_disconnect_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/sgi-xp/extr_xpc_channel.c_xpc_disconnect_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.xpc_channel*, i64*)* }
%struct.xpc_channel = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@XPC_C_CONNECTED = common dso_local global i32 0, align 4
@XPC_C_DISCONNECTING = common dso_local global i32 0, align 4
@XPC_C_DISCONNECTED = common dso_local global i32 0, align 4
@XPC_C_CONNECTING = common dso_local global i32 0, align 4
@xpc_chan = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"reason=%d, line=%d, partid=%d, channel=%d\0A\00", align 1
@XPC_C_CLOSEREQUEST = common dso_local global i32 0, align 4
@XPC_C_OPENREQUEST = common dso_local global i32 0, align 4
@XPC_C_OPENREPLY = common dso_local global i32 0, align 4
@XPC_C_ROPENREQUEST = common dso_local global i32 0, align 4
@XPC_C_ROPENREPLY = common dso_local global i32 0, align 4
@xpc_arch_ops = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@XPC_C_WASCONNECTED = common dso_local global i32 0, align 4
@XPC_C_CONNECTEDCALLOUT_MADE = common dso_local global i32 0, align 4
@XPC_C_DISCONNECTINGCALLOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xpc_disconnect_channel(i32 %0, %struct.xpc_channel* %1, i32 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.xpc_channel*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.xpc_channel* %1, %struct.xpc_channel** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64* %3, i64** %8, align 8
  %10 = load %struct.xpc_channel*, %struct.xpc_channel** %6, align 8
  %11 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @XPC_C_CONNECTED, align 4
  %14 = and i32 %12, %13
  store i32 %14, i32* %9, align 4
  %15 = load %struct.xpc_channel*, %struct.xpc_channel** %6, align 8
  %16 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %15, i32 0, i32 1
  %17 = call i32 @lockdep_assert_held(i32* %16)
  %18 = load %struct.xpc_channel*, %struct.xpc_channel** %6, align 8
  %19 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @XPC_C_DISCONNECTING, align 4
  %22 = load i32, i32* @XPC_C_DISCONNECTED, align 4
  %23 = or i32 %21, %22
  %24 = and i32 %20, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %4
  br label %135

27:                                               ; preds = %4
  %28 = load %struct.xpc_channel*, %struct.xpc_channel** %6, align 8
  %29 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @XPC_C_CONNECTING, align 4
  %32 = load i32, i32* @XPC_C_CONNECTED, align 4
  %33 = or i32 %31, %32
  %34 = and i32 %30, %33
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = call i32 @DBUG_ON(i32 %37)
  %39 = load i32, i32* @xpc_chan, align 4
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %5, align 4
  %42 = load %struct.xpc_channel*, %struct.xpc_channel** %6, align 8
  %43 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %42, i32 0, i32 7
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.xpc_channel*, %struct.xpc_channel** %6, align 8
  %46 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %45, i32 0, i32 6
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @dev_dbg(i32 %39, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %41, i32 %44, i32 %47)
  %49 = load %struct.xpc_channel*, %struct.xpc_channel** %6, align 8
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @XPC_SET_REASON(%struct.xpc_channel* %49, i32 %50, i32 %51)
  %53 = load i32, i32* @XPC_C_CLOSEREQUEST, align 4
  %54 = load i32, i32* @XPC_C_DISCONNECTING, align 4
  %55 = or i32 %53, %54
  %56 = load %struct.xpc_channel*, %struct.xpc_channel** %6, align 8
  %57 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 4
  %60 = load i32, i32* @XPC_C_OPENREQUEST, align 4
  %61 = load i32, i32* @XPC_C_OPENREPLY, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @XPC_C_ROPENREQUEST, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @XPC_C_ROPENREPLY, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @XPC_C_CONNECTING, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @XPC_C_CONNECTED, align 4
  %70 = or i32 %68, %69
  %71 = xor i32 %70, -1
  %72 = load %struct.xpc_channel*, %struct.xpc_channel** %6, align 8
  %73 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = and i32 %74, %71
  store i32 %75, i32* %73, align 4
  %76 = load i32 (%struct.xpc_channel*, i64*)*, i32 (%struct.xpc_channel*, i64*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xpc_arch_ops, i32 0, i32 0), align 8
  %77 = load %struct.xpc_channel*, %struct.xpc_channel** %6, align 8
  %78 = load i64*, i64** %8, align 8
  %79 = call i32 %76(%struct.xpc_channel* %77, i64* %78)
  %80 = load i32, i32* %9, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %27
  %83 = load i32, i32* @XPC_C_WASCONNECTED, align 4
  %84 = load %struct.xpc_channel*, %struct.xpc_channel** %6, align 8
  %85 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = or i32 %86, %83
  store i32 %87, i32* %85, align 4
  br label %88

88:                                               ; preds = %82, %27
  %89 = load %struct.xpc_channel*, %struct.xpc_channel** %6, align 8
  %90 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %89, i32 0, i32 1
  %91 = load i64*, i64** %8, align 8
  %92 = load i64, i64* %91, align 8
  %93 = call i32 @spin_unlock_irqrestore(i32* %90, i64 %92)
  %94 = load %struct.xpc_channel*, %struct.xpc_channel** %6, align 8
  %95 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %94, i32 0, i32 5
  %96 = call i64 @atomic_read(i32* %95)
  %97 = icmp sgt i64 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %88
  %99 = load %struct.xpc_channel*, %struct.xpc_channel** %6, align 8
  %100 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %99, i32 0, i32 4
  %101 = call i32 @wake_up_all(i32* %100)
  br label %120

102:                                              ; preds = %88
  %103 = load %struct.xpc_channel*, %struct.xpc_channel** %6, align 8
  %104 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @XPC_C_CONNECTEDCALLOUT_MADE, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %119

109:                                              ; preds = %102
  %110 = load %struct.xpc_channel*, %struct.xpc_channel** %6, align 8
  %111 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @XPC_C_DISCONNECTINGCALLOUT, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %119, label %116

116:                                              ; preds = %109
  %117 = load %struct.xpc_channel*, %struct.xpc_channel** %6, align 8
  %118 = call i32 @xpc_create_kthreads(%struct.xpc_channel* %117, i32 1, i32 1)
  br label %119

119:                                              ; preds = %116, %109, %102
  br label %120

120:                                              ; preds = %119, %98
  %121 = load %struct.xpc_channel*, %struct.xpc_channel** %6, align 8
  %122 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %121, i32 0, i32 3
  %123 = call i64 @atomic_read(i32* %122)
  %124 = icmp sgt i64 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %120
  %126 = load %struct.xpc_channel*, %struct.xpc_channel** %6, align 8
  %127 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %126, i32 0, i32 2
  %128 = call i32 @wake_up(i32* %127)
  br label %129

129:                                              ; preds = %125, %120
  %130 = load %struct.xpc_channel*, %struct.xpc_channel** %6, align 8
  %131 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %130, i32 0, i32 1
  %132 = load i64*, i64** %8, align 8
  %133 = load i64, i64* %132, align 8
  %134 = call i32 @spin_lock_irqsave(i32* %131, i64 %133)
  br label %135

135:                                              ; preds = %129, %26
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @DBUG_ON(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @XPC_SET_REASON(%struct.xpc_channel*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @wake_up_all(i32*) #1

declare dso_local i32 @xpc_create_kthreads(%struct.xpc_channel*, i32, i32) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
