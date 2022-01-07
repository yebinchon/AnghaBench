; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/sgi-xp/extr_xpc_channel.c_xpc_deliver_payload.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/sgi-xp/extr_xpc_channel.c_xpc_deliver_payload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* (%struct.xpc_channel*)* }
%struct.xpc_channel = type { i32, i32, i32, i32, i32 (i32, i32, i32, i8*, i32)* }

@xpc_arch_ops = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@xpc_chan = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"ch->func() called, payload=0x%p partid=%d channel=%d\0A\00", align 1
@xpMsgReceived = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"ch->func() returned, payload=0x%p partid=%d channel=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xpc_deliver_payload(%struct.xpc_channel* %0) #0 {
  %2 = alloca %struct.xpc_channel*, align 8
  %3 = alloca i8*, align 8
  store %struct.xpc_channel* %0, %struct.xpc_channel** %2, align 8
  %4 = load i8* (%struct.xpc_channel*)*, i8* (%struct.xpc_channel*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xpc_arch_ops, i32 0, i32 0), align 8
  %5 = load %struct.xpc_channel*, %struct.xpc_channel** %2, align 8
  %6 = call i8* %4(%struct.xpc_channel* %5)
  store i8* %6, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %57

9:                                                ; preds = %1
  %10 = load %struct.xpc_channel*, %struct.xpc_channel** %2, align 8
  %11 = call i32 @xpc_msgqueue_ref(%struct.xpc_channel* %10)
  %12 = load %struct.xpc_channel*, %struct.xpc_channel** %2, align 8
  %13 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %12, i32 0, i32 0
  %14 = call i32 @atomic_inc(i32* %13)
  %15 = load %struct.xpc_channel*, %struct.xpc_channel** %2, align 8
  %16 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %15, i32 0, i32 4
  %17 = load i32 (i32, i32, i32, i8*, i32)*, i32 (i32, i32, i32, i8*, i32)** %16, align 8
  %18 = icmp ne i32 (i32, i32, i32, i8*, i32)* %17, null
  br i1 %18, label %19, label %53

19:                                               ; preds = %9
  %20 = load i32, i32* @xpc_chan, align 4
  %21 = load i8*, i8** %3, align 8
  %22 = load %struct.xpc_channel*, %struct.xpc_channel** %2, align 8
  %23 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.xpc_channel*, %struct.xpc_channel** %2, align 8
  %26 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @dev_dbg(i32 %20, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i8* %21, i32 %24, i32 %27)
  %29 = load %struct.xpc_channel*, %struct.xpc_channel** %2, align 8
  %30 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %29, i32 0, i32 4
  %31 = load i32 (i32, i32, i32, i8*, i32)*, i32 (i32, i32, i32, i8*, i32)** %30, align 8
  %32 = load i32, i32* @xpMsgReceived, align 4
  %33 = load %struct.xpc_channel*, %struct.xpc_channel** %2, align 8
  %34 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.xpc_channel*, %struct.xpc_channel** %2, align 8
  %37 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i8*, i8** %3, align 8
  %40 = load %struct.xpc_channel*, %struct.xpc_channel** %2, align 8
  %41 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = call i32 %31(i32 %32, i32 %35, i32 %38, i8* %39, i32 %42)
  %44 = load i32, i32* @xpc_chan, align 4
  %45 = load i8*, i8** %3, align 8
  %46 = load %struct.xpc_channel*, %struct.xpc_channel** %2, align 8
  %47 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.xpc_channel*, %struct.xpc_channel** %2, align 8
  %50 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @dev_dbg(i32 %44, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i8* %45, i32 %48, i32 %51)
  br label %53

53:                                               ; preds = %19, %9
  %54 = load %struct.xpc_channel*, %struct.xpc_channel** %2, align 8
  %55 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %54, i32 0, i32 0
  %56 = call i32 @atomic_dec(i32* %55)
  br label %57

57:                                               ; preds = %53, %1
  ret void
}

declare dso_local i32 @xpc_msgqueue_ref(%struct.xpc_channel*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i8*, i32, i32) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
