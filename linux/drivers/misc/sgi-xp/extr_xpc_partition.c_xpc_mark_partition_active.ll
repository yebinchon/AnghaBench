; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/sgi-xp/extr_xpc_partition.c_xpc_mark_partition_active.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/sgi-xp/extr_xpc_partition.c_xpc_mark_partition_active.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xpc_partition = type { i64, i64, i32 }

@xpc_part = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"setting partition %d to ACTIVE\0A\00", align 1
@XPC_P_AS_ACTIVATING = common dso_local global i64 0, align 8
@XPC_P_AS_ACTIVE = common dso_local global i64 0, align 8
@xpSuccess = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xpc_mark_partition_active(%struct.xpc_partition* %0) #0 {
  %2 = alloca %struct.xpc_partition*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.xpc_partition* %0, %struct.xpc_partition** %2, align 8
  %5 = load i32, i32* @xpc_part, align 4
  %6 = load %struct.xpc_partition*, %struct.xpc_partition** %2, align 8
  %7 = call i32 @XPC_PARTID(%struct.xpc_partition* %6)
  %8 = call i32 @dev_dbg(i32 %5, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = load %struct.xpc_partition*, %struct.xpc_partition** %2, align 8
  %10 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %9, i32 0, i32 2
  %11 = load i64, i64* %3, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.xpc_partition*, %struct.xpc_partition** %2, align 8
  %14 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @XPC_P_AS_ACTIVATING, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %1
  %19 = load i64, i64* @XPC_P_AS_ACTIVE, align 8
  %20 = load %struct.xpc_partition*, %struct.xpc_partition** %2, align 8
  %21 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %20, i32 0, i32 0
  store i64 %19, i64* %21, align 8
  %22 = load i64, i64* @xpSuccess, align 8
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %4, align 4
  br label %36

24:                                               ; preds = %1
  %25 = load %struct.xpc_partition*, %struct.xpc_partition** %2, align 8
  %26 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @xpSuccess, align 8
  %29 = icmp eq i64 %27, %28
  %30 = zext i1 %29 to i32
  %31 = call i32 @DBUG_ON(i32 %30)
  %32 = load %struct.xpc_partition*, %struct.xpc_partition** %2, align 8
  %33 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %24, %18
  %37 = load %struct.xpc_partition*, %struct.xpc_partition** %2, align 8
  %38 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %37, i32 0, i32 2
  %39 = load i64, i64* %3, align 8
  %40 = call i32 @spin_unlock_irqrestore(i32* %38, i64 %39)
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @XPC_PARTID(%struct.xpc_partition*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @DBUG_ON(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
