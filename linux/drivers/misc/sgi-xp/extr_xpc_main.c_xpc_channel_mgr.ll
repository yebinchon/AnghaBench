; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/sgi-xp/extr_xpc_main.c_xpc_channel_mgr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/sgi-xp/extr_xpc_main.c_xpc_channel_mgr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xpc_partition = type { i64, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }

@XPC_P_AS_DEACTIVATING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xpc_partition*)* @xpc_channel_mgr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xpc_channel_mgr(%struct.xpc_partition* %0) #0 {
  %2 = alloca %struct.xpc_partition*, align 8
  store %struct.xpc_partition* %0, %struct.xpc_partition** %2, align 8
  br label %3

3:                                                ; preds = %57, %1
  %4 = load %struct.xpc_partition*, %struct.xpc_partition** %2, align 8
  %5 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @XPC_P_AS_DEACTIVATING, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %19, label %9

9:                                                ; preds = %3
  %10 = load %struct.xpc_partition*, %struct.xpc_partition** %2, align 8
  %11 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %10, i32 0, i32 2
  %12 = call i64 @atomic_read(i32* %11)
  %13 = icmp sgt i64 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %9
  %15 = load %struct.xpc_partition*, %struct.xpc_partition** %2, align 8
  %16 = call i64 @xpc_partition_disengaged(%struct.xpc_partition* %15)
  %17 = icmp ne i64 %16, 0
  %18 = xor i1 %17, true
  br label %19

19:                                               ; preds = %14, %9, %3
  %20 = phi i1 [ true, %9 ], [ true, %3 ], [ %18, %14 ]
  br i1 %20, label %21, label %64

21:                                               ; preds = %19
  %22 = load %struct.xpc_partition*, %struct.xpc_partition** %2, align 8
  %23 = call i32 @xpc_process_sent_chctl_flags(%struct.xpc_partition* %22)
  %24 = load %struct.xpc_partition*, %struct.xpc_partition** %2, align 8
  %25 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %24, i32 0, i32 1
  %26 = call i32 @atomic_dec(i32* %25)
  %27 = load %struct.xpc_partition*, %struct.xpc_partition** %2, align 8
  %28 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.xpc_partition*, %struct.xpc_partition** %2, align 8
  %31 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %30, i32 0, i32 1
  %32 = call i64 @atomic_read(i32* %31)
  %33 = icmp sgt i64 %32, 0
  br i1 %33, label %57, label %34

34:                                               ; preds = %21
  %35 = load %struct.xpc_partition*, %struct.xpc_partition** %2, align 8
  %36 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %57, label %40

40:                                               ; preds = %34
  %41 = load %struct.xpc_partition*, %struct.xpc_partition** %2, align 8
  %42 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @XPC_P_AS_DEACTIVATING, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %55

46:                                               ; preds = %40
  %47 = load %struct.xpc_partition*, %struct.xpc_partition** %2, align 8
  %48 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %47, i32 0, i32 2
  %49 = call i64 @atomic_read(i32* %48)
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %46
  %52 = load %struct.xpc_partition*, %struct.xpc_partition** %2, align 8
  %53 = call i64 @xpc_partition_disengaged(%struct.xpc_partition* %52)
  %54 = icmp ne i64 %53, 0
  br label %55

55:                                               ; preds = %51, %46, %40
  %56 = phi i1 [ false, %46 ], [ false, %40 ], [ %54, %51 ]
  br label %57

57:                                               ; preds = %55, %34, %21
  %58 = phi i1 [ true, %34 ], [ true, %21 ], [ %56, %55 ]
  %59 = zext i1 %58 to i32
  %60 = call i32 @wait_event_interruptible(i32 %29, i32 %59)
  %61 = load %struct.xpc_partition*, %struct.xpc_partition** %2, align 8
  %62 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %61, i32 0, i32 1
  %63 = call i32 @atomic_set(i32* %62, i32 1)
  br label %3

64:                                               ; preds = %19
  ret void
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i64 @xpc_partition_disengaged(%struct.xpc_partition*) #1

declare dso_local i32 @xpc_process_sent_chctl_flags(%struct.xpc_partition*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
