; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/sgi-xp/extr_xpc_uv.c_xpc_teardown_partitions_uv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/sgi-xp/extr_xpc_uv.c_xpc_teardown_partitions_uv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.xpc_partition_uv }
%struct.xpc_partition_uv = type { i32, i32*, i32, i32 }

@XP_MAX_NPARTITIONS_UV = common dso_local global i16 0, align 2
@xpc_partitions = common dso_local global %struct.TYPE_4__* null, align 8
@XPC_P_CACHED_ACTIVATE_GRU_MQ_DESC_UV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @xpc_teardown_partitions_uv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xpc_teardown_partitions_uv() #0 {
  %1 = alloca i16, align 2
  %2 = alloca %struct.xpc_partition_uv*, align 8
  %3 = alloca i64, align 8
  store i16 0, i16* %1, align 2
  br label %4

4:                                                ; preds = %49, %0
  %5 = load i16, i16* %1, align 2
  %6 = sext i16 %5 to i32
  %7 = load i16, i16* @XP_MAX_NPARTITIONS_UV, align 2
  %8 = sext i16 %7 to i32
  %9 = icmp slt i32 %6, %8
  br i1 %9, label %10, label %52

10:                                               ; preds = %4
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** @xpc_partitions, align 8
  %12 = load i16, i16* %1, align 2
  %13 = sext i16 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  store %struct.xpc_partition_uv* %16, %struct.xpc_partition_uv** %2, align 8
  %17 = load %struct.xpc_partition_uv*, %struct.xpc_partition_uv** %2, align 8
  %18 = getelementptr inbounds %struct.xpc_partition_uv, %struct.xpc_partition_uv* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %48

21:                                               ; preds = %10
  %22 = load %struct.xpc_partition_uv*, %struct.xpc_partition_uv** %2, align 8
  %23 = getelementptr inbounds %struct.xpc_partition_uv, %struct.xpc_partition_uv* %22, i32 0, i32 0
  %24 = call i32 @mutex_lock(i32* %23)
  %25 = load %struct.xpc_partition_uv*, %struct.xpc_partition_uv** %2, align 8
  %26 = getelementptr inbounds %struct.xpc_partition_uv, %struct.xpc_partition_uv* %25, i32 0, i32 2
  %27 = load i64, i64* %3, align 8
  %28 = call i32 @spin_lock_irqsave(i32* %26, i64 %27)
  %29 = load i32, i32* @XPC_P_CACHED_ACTIVATE_GRU_MQ_DESC_UV, align 4
  %30 = xor i32 %29, -1
  %31 = load %struct.xpc_partition_uv*, %struct.xpc_partition_uv** %2, align 8
  %32 = getelementptr inbounds %struct.xpc_partition_uv, %struct.xpc_partition_uv* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, %30
  store i32 %34, i32* %32, align 4
  %35 = load %struct.xpc_partition_uv*, %struct.xpc_partition_uv** %2, align 8
  %36 = getelementptr inbounds %struct.xpc_partition_uv, %struct.xpc_partition_uv* %35, i32 0, i32 2
  %37 = load i64, i64* %3, align 8
  %38 = call i32 @spin_unlock_irqrestore(i32* %36, i64 %37)
  %39 = load %struct.xpc_partition_uv*, %struct.xpc_partition_uv** %2, align 8
  %40 = getelementptr inbounds %struct.xpc_partition_uv, %struct.xpc_partition_uv* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = call i32 @kfree(i32* %41)
  %43 = load %struct.xpc_partition_uv*, %struct.xpc_partition_uv** %2, align 8
  %44 = getelementptr inbounds %struct.xpc_partition_uv, %struct.xpc_partition_uv* %43, i32 0, i32 1
  store i32* null, i32** %44, align 8
  %45 = load %struct.xpc_partition_uv*, %struct.xpc_partition_uv** %2, align 8
  %46 = getelementptr inbounds %struct.xpc_partition_uv, %struct.xpc_partition_uv* %45, i32 0, i32 0
  %47 = call i32 @mutex_unlock(i32* %46)
  br label %48

48:                                               ; preds = %21, %10
  br label %49

49:                                               ; preds = %48
  %50 = load i16, i16* %1, align 2
  %51 = add i16 %50, 1
  store i16 %51, i16* %1, align 2
  br label %4

52:                                               ; preds = %4
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
