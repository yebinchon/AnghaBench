; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/sgi-xp/extr_xpc_channel.c_xpc_allocate_msg_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/sgi-xp/extr_xpc_channel.c_xpc_allocate_msg_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xpc_channel = type { i32, i64, i32, i32 }

@wait = common dso_local global i32 0, align 4
@XPC_C_DISCONNECTING = common dso_local global i32 0, align 4
@xpInterrupted = common dso_local global i64 0, align 8
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@xpTimeout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xpc_allocate_msg_wait(%struct.xpc_channel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xpc_channel*, align 8
  %4 = alloca i32, align 4
  store %struct.xpc_channel* %0, %struct.xpc_channel** %3, align 8
  %5 = load i32, i32* @wait, align 4
  %6 = call i32 @DEFINE_WAIT(i32 %5)
  %7 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %8 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @XPC_C_DISCONNECTING, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %25

13:                                               ; preds = %1
  %14 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %15 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @xpInterrupted, align 8
  %18 = icmp eq i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @DBUG_ON(i32 %19)
  %21 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %22 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %2, align 4
  br label %69

25:                                               ; preds = %1
  %26 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %27 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %26, i32 0, i32 2
  %28 = call i32 @atomic_inc(i32* %27)
  %29 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %30 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %29, i32 0, i32 3
  %31 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %32 = call i32 @prepare_to_wait(i32* %30, i32* @wait, i32 %31)
  %33 = call i32 @schedule_timeout(i32 1)
  store i32 %33, i32* %4, align 4
  %34 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %35 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %34, i32 0, i32 3
  %36 = call i32 @finish_wait(i32* %35, i32* @wait)
  %37 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %38 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %37, i32 0, i32 2
  %39 = call i32 @atomic_dec(i32* %38)
  %40 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %41 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @XPC_C_DISCONNECTING, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %58

46:                                               ; preds = %25
  %47 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %48 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %4, align 4
  %51 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %52 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @xpInterrupted, align 8
  %55 = icmp eq i64 %53, %54
  %56 = zext i1 %55 to i32
  %57 = call i32 @DBUG_ON(i32 %56)
  br label %67

58:                                               ; preds = %25
  %59 = load i32, i32* %4, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %58
  %62 = load i32, i32* @xpTimeout, align 4
  store i32 %62, i32* %4, align 4
  br label %66

63:                                               ; preds = %58
  %64 = load i64, i64* @xpInterrupted, align 8
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %4, align 4
  br label %66

66:                                               ; preds = %63, %61
  br label %67

67:                                               ; preds = %66, %46
  %68 = load i32, i32* %4, align 4
  store i32 %68, i32* %2, align 4
  br label %69

69:                                               ; preds = %67, %13
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i32 @DEFINE_WAIT(i32) #1

declare dso_local i32 @DBUG_ON(i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @prepare_to_wait(i32*, i32*, i32) #1

declare dso_local i32 @schedule_timeout(i32) #1

declare dso_local i32 @finish_wait(i32*, i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
