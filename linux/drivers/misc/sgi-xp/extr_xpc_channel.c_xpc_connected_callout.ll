; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/sgi-xp/extr_xpc_channel.c_xpc_connected_callout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/sgi-xp/extr_xpc_channel.c_xpc_connected_callout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xpc_channel = type { i32, i32, i32, i64, i32 (i32, i32, i32, i8*, i32)* }

@xpc_chan = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"ch->func() called, reason=xpConnected, partid=%d, channel=%d\0A\00", align 1
@xpConnected = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [64 x i8] c"ch->func() returned, reason=xpConnected, partid=%d, channel=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xpc_connected_callout(%struct.xpc_channel* %0) #0 {
  %2 = alloca %struct.xpc_channel*, align 8
  store %struct.xpc_channel* %0, %struct.xpc_channel** %2, align 8
  %3 = load %struct.xpc_channel*, %struct.xpc_channel** %2, align 8
  %4 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %3, i32 0, i32 4
  %5 = load i32 (i32, i32, i32, i8*, i32)*, i32 (i32, i32, i32, i8*, i32)** %4, align 8
  %6 = icmp ne i32 (i32, i32, i32, i8*, i32)* %5, null
  br i1 %6, label %7, label %42

7:                                                ; preds = %1
  %8 = load i32, i32* @xpc_chan, align 4
  %9 = load %struct.xpc_channel*, %struct.xpc_channel** %2, align 8
  %10 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.xpc_channel*, %struct.xpc_channel** %2, align 8
  %13 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @dev_dbg(i32 %8, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %14)
  %16 = load %struct.xpc_channel*, %struct.xpc_channel** %2, align 8
  %17 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %16, i32 0, i32 4
  %18 = load i32 (i32, i32, i32, i8*, i32)*, i32 (i32, i32, i32, i8*, i32)** %17, align 8
  %19 = load i32, i32* @xpConnected, align 4
  %20 = load %struct.xpc_channel*, %struct.xpc_channel** %2, align 8
  %21 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.xpc_channel*, %struct.xpc_channel** %2, align 8
  %24 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.xpc_channel*, %struct.xpc_channel** %2, align 8
  %27 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to i8*
  %30 = load %struct.xpc_channel*, %struct.xpc_channel** %2, align 8
  %31 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i32 %18(i32 %19, i32 %22, i32 %25, i8* %29, i32 %32)
  %34 = load i32, i32* @xpc_chan, align 4
  %35 = load %struct.xpc_channel*, %struct.xpc_channel** %2, align 8
  %36 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.xpc_channel*, %struct.xpc_channel** %2, align 8
  %39 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @dev_dbg(i32 %34, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i32 %37, i32 %40)
  br label %42

42:                                               ; preds = %7, %1
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
