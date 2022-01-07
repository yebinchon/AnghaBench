; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/sgi-xp/extr_xpc_channel.c_xpc_process_connect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/sgi-xp/extr_xpc_channel.c_xpc_process_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.xpc_channel*)*, i32 (%struct.xpc_channel*, i64*)*, i32 (%struct.xpc_channel*, i64*)* }
%struct.xpc_channel = type { i32, i32, i32, i32 }

@XPC_C_OPENREQUEST = common dso_local global i32 0, align 4
@XPC_C_ROPENREQUEST = common dso_local global i32 0, align 4
@XPC_C_CONNECTING = common dso_local global i32 0, align 4
@XPC_C_SETUP = common dso_local global i32 0, align 4
@xpc_arch_ops = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@xpSuccess = common dso_local global i32 0, align 4
@XPC_C_DISCONNECTING = common dso_local global i32 0, align 4
@XPC_C_OPENREPLY = common dso_local global i32 0, align 4
@XPC_C_ROPENREPLY = common dso_local global i32 0, align 4
@XPC_C_OPENCOMPLETE = common dso_local global i32 0, align 4
@XPC_C_CONNECTED = common dso_local global i32 0, align 4
@XPC_C_ROPENCOMPLETE = common dso_local global i32 0, align 4
@xpc_chan = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"channel %d to partition %d connected\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xpc_channel*, i64*)* @xpc_process_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xpc_process_connect(%struct.xpc_channel* %0, i64* %1) #0 {
  %3 = alloca %struct.xpc_channel*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  store %struct.xpc_channel* %0, %struct.xpc_channel** %3, align 8
  store i64* %1, i64** %4, align 8
  %6 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %7 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %6, i32 0, i32 3
  %8 = call i32 @lockdep_assert_held(i32* %7)
  %9 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %10 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @XPC_C_OPENREQUEST, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %2
  %16 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %17 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @XPC_C_ROPENREQUEST, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %15, %2
  br label %142

23:                                               ; preds = %15
  %24 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %25 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @XPC_C_CONNECTING, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = call i32 @DBUG_ON(i32 %31)
  %33 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %34 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @XPC_C_SETUP, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %76, label %39

39:                                               ; preds = %23
  %40 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %41 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %40, i32 0, i32 3
  %42 = load i64*, i64** %4, align 8
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @spin_unlock_irqrestore(i32* %41, i64 %43)
  %45 = load i32 (%struct.xpc_channel*)*, i32 (%struct.xpc_channel*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xpc_arch_ops, i32 0, i32 0), align 8
  %46 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %47 = call i32 %45(%struct.xpc_channel* %46)
  store i32 %47, i32* %5, align 4
  %48 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %49 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %48, i32 0, i32 3
  %50 = load i64*, i64** %4, align 8
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @spin_lock_irqsave(i32* %49, i64 %51)
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @xpSuccess, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %39
  %57 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %58 = load i32, i32* %5, align 4
  %59 = load i64*, i64** %4, align 8
  %60 = call i32 @XPC_DISCONNECT_CHANNEL(%struct.xpc_channel* %57, i32 %58, i64* %59)
  br label %67

61:                                               ; preds = %39
  %62 = load i32, i32* @XPC_C_SETUP, align 4
  %63 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %64 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %65, %62
  store i32 %66, i32* %64, align 4
  br label %67

67:                                               ; preds = %61, %56
  %68 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %69 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @XPC_C_DISCONNECTING, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %67
  br label %142

75:                                               ; preds = %67
  br label %76

76:                                               ; preds = %75, %23
  %77 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %78 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @XPC_C_OPENREPLY, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %93, label %83

83:                                               ; preds = %76
  %84 = load i32, i32* @XPC_C_OPENREPLY, align 4
  %85 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %86 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = or i32 %87, %84
  store i32 %88, i32* %86, align 4
  %89 = load i32 (%struct.xpc_channel*, i64*)*, i32 (%struct.xpc_channel*, i64*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xpc_arch_ops, i32 0, i32 2), align 8
  %90 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %91 = load i64*, i64** %4, align 8
  %92 = call i32 %89(%struct.xpc_channel* %90, i64* %91)
  br label %93

93:                                               ; preds = %83, %76
  %94 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %95 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @XPC_C_ROPENREPLY, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %101, label %100

100:                                              ; preds = %93
  br label %142

101:                                              ; preds = %93
  %102 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %103 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @XPC_C_OPENCOMPLETE, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %120, label %108

108:                                              ; preds = %101
  %109 = load i32, i32* @XPC_C_OPENCOMPLETE, align 4
  %110 = load i32, i32* @XPC_C_CONNECTED, align 4
  %111 = or i32 %109, %110
  %112 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %113 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = or i32 %114, %111
  store i32 %115, i32* %113, align 4
  %116 = load i32 (%struct.xpc_channel*, i64*)*, i32 (%struct.xpc_channel*, i64*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xpc_arch_ops, i32 0, i32 1), align 8
  %117 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %118 = load i64*, i64** %4, align 8
  %119 = call i32 %116(%struct.xpc_channel* %117, i64* %118)
  br label %120

120:                                              ; preds = %108, %101
  %121 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %122 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @XPC_C_ROPENCOMPLETE, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %128, label %127

127:                                              ; preds = %120
  br label %142

128:                                              ; preds = %120
  %129 = load i32, i32* @xpc_chan, align 4
  %130 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %131 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %134 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @dev_info(i32 %129, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %132, i32 %135)
  %137 = load i32, i32* @XPC_C_CONNECTED, align 4
  %138 = load i32, i32* @XPC_C_SETUP, align 4
  %139 = or i32 %137, %138
  %140 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %141 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %140, i32 0, i32 0
  store i32 %139, i32* %141, align 4
  br label %142

142:                                              ; preds = %128, %127, %100, %74, %22
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @DBUG_ON(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @XPC_DISCONNECT_CHANNEL(%struct.xpc_channel*, i32, i64*) #1

declare dso_local i32 @dev_info(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
