; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/sgi-xp/extr_xpc_main.c_xpc_setup_partitions.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/sgi-xp/extr_xpc_main.c_xpc_setup_partitions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xpc_partition = type { i32, i32, i32, i32, i32, i32, i64 }
%struct.TYPE_2__ = type { i32 (...)* }

@xp_max_npartitions = common dso_local global i16 0, align 2
@GFP_KERNEL = common dso_local global i32 0, align 4
@xpc_partitions = common dso_local global %struct.xpc_partition* null, align 8
@xpc_part = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"can't get memory for partition structure\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@XPC_P_AS_INACTIVE = common dso_local global i32 0, align 4
@xpc_timeout_partition_disengage = common dso_local global i32 0, align 4
@XPC_P_SS_UNSET = common dso_local global i32 0, align 4
@xpc_arch_ops = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @xpc_setup_partitions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xpc_setup_partitions() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i16, align 2
  %3 = alloca %struct.xpc_partition*, align 8
  %4 = load i16, i16* @xp_max_npartitions, align 2
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.xpc_partition* @kcalloc(i16 signext %4, i32 32, i32 %5)
  store %struct.xpc_partition* %6, %struct.xpc_partition** @xpc_partitions, align 8
  %7 = load %struct.xpc_partition*, %struct.xpc_partition** @xpc_partitions, align 8
  %8 = icmp eq %struct.xpc_partition* %7, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %0
  %10 = load i32, i32* @xpc_part, align 4
  %11 = call i32 @dev_err(i32 %10, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %1, align 4
  br label %63

14:                                               ; preds = %0
  store i16 0, i16* %2, align 2
  br label %15

15:                                               ; preds = %57, %14
  %16 = load i16, i16* %2, align 2
  %17 = sext i16 %16 to i32
  %18 = load i16, i16* @xp_max_npartitions, align 2
  %19 = sext i16 %18 to i32
  %20 = icmp slt i32 %17, %19
  br i1 %20, label %21, label %60

21:                                               ; preds = %15
  %22 = load %struct.xpc_partition*, %struct.xpc_partition** @xpc_partitions, align 8
  %23 = load i16, i16* %2, align 2
  %24 = sext i16 %23 to i64
  %25 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %22, i64 %24
  store %struct.xpc_partition* %25, %struct.xpc_partition** %3, align 8
  %26 = load %struct.xpc_partition*, %struct.xpc_partition** %3, align 8
  %27 = ptrtoint %struct.xpc_partition* %26 to i64
  %28 = load %struct.xpc_partition*, %struct.xpc_partition** %3, align 8
  %29 = ptrtoint %struct.xpc_partition* %28 to i64
  %30 = call i64 @L1_CACHE_ALIGN(i64 %29)
  %31 = icmp ne i64 %27, %30
  %32 = zext i1 %31 to i32
  %33 = call i32 @DBUG_ON(i32 %32)
  %34 = load %struct.xpc_partition*, %struct.xpc_partition** %3, align 8
  %35 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %34, i32 0, i32 6
  store i64 0, i64* %35, align 8
  %36 = load %struct.xpc_partition*, %struct.xpc_partition** %3, align 8
  %37 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %36, i32 0, i32 5
  %38 = call i32 @spin_lock_init(i32* %37)
  %39 = load i32, i32* @XPC_P_AS_INACTIVE, align 4
  %40 = load %struct.xpc_partition*, %struct.xpc_partition** %3, align 8
  %41 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %40, i32 0, i32 4
  store i32 %39, i32* %41, align 8
  %42 = load %struct.xpc_partition*, %struct.xpc_partition** %3, align 8
  %43 = call i32 @XPC_SET_REASON(%struct.xpc_partition* %42, i32 0, i32 0)
  %44 = load %struct.xpc_partition*, %struct.xpc_partition** %3, align 8
  %45 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %44, i32 0, i32 3
  %46 = load i32, i32* @xpc_timeout_partition_disengage, align 4
  %47 = call i32 @timer_setup(i32* %45, i32 %46, i32 0)
  %48 = load i32, i32* @XPC_P_SS_UNSET, align 4
  %49 = load %struct.xpc_partition*, %struct.xpc_partition** %3, align 8
  %50 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 8
  %51 = load %struct.xpc_partition*, %struct.xpc_partition** %3, align 8
  %52 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %51, i32 0, i32 1
  %53 = call i32 @init_waitqueue_head(i32* %52)
  %54 = load %struct.xpc_partition*, %struct.xpc_partition** %3, align 8
  %55 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %54, i32 0, i32 0
  %56 = call i32 @atomic_set(i32* %55, i32 0)
  br label %57

57:                                               ; preds = %21
  %58 = load i16, i16* %2, align 2
  %59 = add i16 %58, 1
  store i16 %59, i16* %2, align 2
  br label %15

60:                                               ; preds = %15
  %61 = load i32 (...)*, i32 (...)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xpc_arch_ops, i32 0, i32 0), align 8
  %62 = call i32 (...) %61()
  store i32 %62, i32* %1, align 4
  br label %63

63:                                               ; preds = %60, %9
  %64 = load i32, i32* %1, align 4
  ret i32 %64
}

declare dso_local %struct.xpc_partition* @kcalloc(i16 signext, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @DBUG_ON(i32) #1

declare dso_local i64 @L1_CACHE_ALIGN(i64) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @XPC_SET_REASON(%struct.xpc_partition*, i32, i32) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
