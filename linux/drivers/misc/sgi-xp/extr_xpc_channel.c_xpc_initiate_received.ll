; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/sgi-xp/extr_xpc_channel.c_xpc_initiate_received.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/sgi-xp/extr_xpc_channel.c_xpc_initiate_received.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xpc_partition = type { i32, %struct.xpc_channel* }
%struct.xpc_channel = type { i32 }
%struct.TYPE_2__ = type { i32 (%struct.xpc_channel*, i8*)* }

@xpc_partitions = common dso_local global %struct.xpc_partition* null, align 8
@xp_max_npartitions = common dso_local global i16 0, align 2
@xpc_arch_ops = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xpc_initiate_received(i16 signext %0, i32 %1, i8* %2) #0 {
  %4 = alloca i16, align 2
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.xpc_partition*, align 8
  %8 = alloca %struct.xpc_channel*, align 8
  store i16 %0, i16* %4, align 2
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %9 = load %struct.xpc_partition*, %struct.xpc_partition** @xpc_partitions, align 8
  %10 = load i16, i16* %4, align 2
  %11 = sext i16 %10 to i64
  %12 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %9, i64 %11
  store %struct.xpc_partition* %12, %struct.xpc_partition** %7, align 8
  %13 = load i16, i16* %4, align 2
  %14 = sext i16 %13 to i32
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %3
  %17 = load i16, i16* %4, align 2
  %18 = sext i16 %17 to i32
  %19 = load i16, i16* @xp_max_npartitions, align 2
  %20 = sext i16 %19 to i32
  %21 = icmp sge i32 %18, %20
  br label %22

22:                                               ; preds = %16, %3
  %23 = phi i1 [ true, %3 ], [ %21, %16 ]
  %24 = zext i1 %23 to i32
  %25 = call i32 @DBUG_ON(i32 %24)
  %26 = load i32, i32* %5, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %22
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.xpc_partition*, %struct.xpc_partition** %7, align 8
  %31 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp sge i32 %29, %32
  br label %34

34:                                               ; preds = %28, %22
  %35 = phi i1 [ true, %22 ], [ %33, %28 ]
  %36 = zext i1 %35 to i32
  %37 = call i32 @DBUG_ON(i32 %36)
  %38 = load %struct.xpc_partition*, %struct.xpc_partition** %7, align 8
  %39 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %38, i32 0, i32 1
  %40 = load %struct.xpc_channel*, %struct.xpc_channel** %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %40, i64 %42
  store %struct.xpc_channel* %43, %struct.xpc_channel** %8, align 8
  %44 = load i32 (%struct.xpc_channel*, i8*)*, i32 (%struct.xpc_channel*, i8*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xpc_arch_ops, i32 0, i32 0), align 8
  %45 = load %struct.xpc_channel*, %struct.xpc_channel** %8, align 8
  %46 = load i8*, i8** %6, align 8
  %47 = call i32 %44(%struct.xpc_channel* %45, i8* %46)
  %48 = load %struct.xpc_channel*, %struct.xpc_channel** %8, align 8
  %49 = call i32 @xpc_msgqueue_deref(%struct.xpc_channel* %48)
  ret void
}

declare dso_local i32 @DBUG_ON(i32) #1

declare dso_local i32 @xpc_msgqueue_deref(%struct.xpc_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
