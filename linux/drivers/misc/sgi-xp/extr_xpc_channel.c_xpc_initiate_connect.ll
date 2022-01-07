; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/sgi-xp/extr_xpc_channel.c_xpc_initiate_connect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/sgi-xp/extr_xpc_channel.c_xpc_initiate_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xpc_partition = type { i32 }

@XPC_MAX_NCHANNELS = common dso_local global i32 0, align 4
@xp_max_npartitions = common dso_local global i16 0, align 2
@xpc_partitions = common dso_local global %struct.xpc_partition* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xpc_initiate_connect(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i16, align 2
  %4 = alloca %struct.xpc_partition*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* %2, align 4
  %9 = load i32, i32* @XPC_MAX_NCHANNELS, align 4
  %10 = icmp sge i32 %8, %9
  br label %11

11:                                               ; preds = %7, %1
  %12 = phi i1 [ true, %1 ], [ %10, %7 ]
  %13 = zext i1 %12 to i32
  %14 = call i32 @DBUG_ON(i32 %13)
  store i16 0, i16* %3, align 2
  br label %15

15:                                               ; preds = %35, %11
  %16 = load i16, i16* %3, align 2
  %17 = sext i16 %16 to i32
  %18 = load i16, i16* @xp_max_npartitions, align 2
  %19 = sext i16 %18 to i32
  %20 = icmp slt i32 %17, %19
  br i1 %20, label %21, label %38

21:                                               ; preds = %15
  %22 = load %struct.xpc_partition*, %struct.xpc_partition** @xpc_partitions, align 8
  %23 = load i16, i16* %3, align 2
  %24 = sext i16 %23 to i64
  %25 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %22, i64 %24
  store %struct.xpc_partition* %25, %struct.xpc_partition** %4, align 8
  %26 = load %struct.xpc_partition*, %struct.xpc_partition** %4, align 8
  %27 = call i64 @xpc_part_ref(%struct.xpc_partition* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %21
  %30 = load %struct.xpc_partition*, %struct.xpc_partition** %4, align 8
  %31 = call i32 @xpc_wakeup_channel_mgr(%struct.xpc_partition* %30)
  %32 = load %struct.xpc_partition*, %struct.xpc_partition** %4, align 8
  %33 = call i32 @xpc_part_deref(%struct.xpc_partition* %32)
  br label %34

34:                                               ; preds = %29, %21
  br label %35

35:                                               ; preds = %34
  %36 = load i16, i16* %3, align 2
  %37 = add i16 %36, 1
  store i16 %37, i16* %3, align 2
  br label %15

38:                                               ; preds = %15
  ret void
}

declare dso_local i32 @DBUG_ON(i32) #1

declare dso_local i64 @xpc_part_ref(%struct.xpc_partition*) #1

declare dso_local i32 @xpc_wakeup_channel_mgr(%struct.xpc_partition*) #1

declare dso_local i32 @xpc_part_deref(%struct.xpc_partition*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
