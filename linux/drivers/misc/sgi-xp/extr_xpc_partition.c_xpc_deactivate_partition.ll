; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/sgi-xp/extr_xpc_partition.c_xpc_deactivate_partition.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/sgi-xp/extr_xpc_partition.c_xpc_deactivate_partition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 (%struct.xpc_partition*)*, i32 (%struct.xpc_partition*)* }
%struct.xpc_partition = type { i64, i64, %struct.TYPE_4__, i64, i32 }
%struct.TYPE_4__ = type { i64 }

@XPC_P_AS_INACTIVE = common dso_local global i64 0, align 8
@xpReactivating = common dso_local global i32 0, align 4
@xpc_arch_ops = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@XPC_P_AS_DEACTIVATING = common dso_local global i64 0, align 8
@xpUnloading = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@xpc_disengage_timelimit = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@xpc_part = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"bringing partition %d down, reason = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xpc_deactivate_partition(i32 %0, %struct.xpc_partition* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xpc_partition*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store %struct.xpc_partition* %1, %struct.xpc_partition** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.xpc_partition*, %struct.xpc_partition** %5, align 8
  %9 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %8, i32 0, i32 4
  %10 = load i64, i64* %7, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load %struct.xpc_partition*, %struct.xpc_partition** %5, align 8
  %13 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @XPC_P_AS_INACTIVE, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %34

17:                                               ; preds = %3
  %18 = load %struct.xpc_partition*, %struct.xpc_partition** %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @XPC_SET_REASON(%struct.xpc_partition* %18, i32 %19, i32 %20)
  %22 = load %struct.xpc_partition*, %struct.xpc_partition** %5, align 8
  %23 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %22, i32 0, i32 4
  %24 = load i64, i64* %7, align 8
  %25 = call i32 @spin_unlock_irqrestore(i32* %23, i64 %24)
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @xpReactivating, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %17
  %30 = load i32 (%struct.xpc_partition*)*, i32 (%struct.xpc_partition*)** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @xpc_arch_ops, i32 0, i32 1), align 8
  %31 = load %struct.xpc_partition*, %struct.xpc_partition** %5, align 8
  %32 = call i32 %30(%struct.xpc_partition* %31)
  br label %33

33:                                               ; preds = %29, %17
  br label %105

34:                                               ; preds = %3
  %35 = load %struct.xpc_partition*, %struct.xpc_partition** %5, align 8
  %36 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @XPC_P_AS_DEACTIVATING, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %65

40:                                               ; preds = %34
  %41 = load %struct.xpc_partition*, %struct.xpc_partition** %5, align 8
  %42 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @xpUnloading, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %40
  %47 = load i32, i32* %6, align 4
  %48 = zext i32 %47 to i64
  %49 = load i64, i64* @xpUnloading, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %55, label %51

51:                                               ; preds = %46, %40
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @xpReactivating, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %51, %46
  %56 = load %struct.xpc_partition*, %struct.xpc_partition** %5, align 8
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @XPC_SET_REASON(%struct.xpc_partition* %56, i32 %57, i32 %58)
  br label %60

60:                                               ; preds = %55, %51
  %61 = load %struct.xpc_partition*, %struct.xpc_partition** %5, align 8
  %62 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %61, i32 0, i32 4
  %63 = load i64, i64* %7, align 8
  %64 = call i32 @spin_unlock_irqrestore(i32* %62, i64 %63)
  br label %105

65:                                               ; preds = %34
  %66 = load i64, i64* @XPC_P_AS_DEACTIVATING, align 8
  %67 = load %struct.xpc_partition*, %struct.xpc_partition** %5, align 8
  %68 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %67, i32 0, i32 0
  store i64 %66, i64* %68, align 8
  %69 = load %struct.xpc_partition*, %struct.xpc_partition** %5, align 8
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* %4, align 4
  %72 = call i32 @XPC_SET_REASON(%struct.xpc_partition* %69, i32 %70, i32 %71)
  %73 = load %struct.xpc_partition*, %struct.xpc_partition** %5, align 8
  %74 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %73, i32 0, i32 4
  %75 = load i64, i64* %7, align 8
  %76 = call i32 @spin_unlock_irqrestore(i32* %74, i64 %75)
  %77 = load i32 (%struct.xpc_partition*)*, i32 (%struct.xpc_partition*)** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @xpc_arch_ops, i32 0, i32 0), align 8
  %78 = load %struct.xpc_partition*, %struct.xpc_partition** %5, align 8
  %79 = call i32 %77(%struct.xpc_partition* %78)
  %80 = load i64, i64* @jiffies, align 8
  %81 = load i32, i32* @xpc_disengage_timelimit, align 4
  %82 = load i32, i32* @HZ, align 4
  %83 = mul nsw i32 %81, %82
  %84 = sext i32 %83 to i64
  %85 = add nsw i64 %80, %84
  %86 = load %struct.xpc_partition*, %struct.xpc_partition** %5, align 8
  %87 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %86, i32 0, i32 3
  store i64 %85, i64* %87, align 8
  %88 = load %struct.xpc_partition*, %struct.xpc_partition** %5, align 8
  %89 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %88, i32 0, i32 3
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.xpc_partition*, %struct.xpc_partition** %5, align 8
  %92 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  store i64 %90, i64* %93, align 8
  %94 = load %struct.xpc_partition*, %struct.xpc_partition** %5, align 8
  %95 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %94, i32 0, i32 2
  %96 = call i32 @add_timer(%struct.TYPE_4__* %95)
  %97 = load i32, i32* @xpc_part, align 4
  %98 = load %struct.xpc_partition*, %struct.xpc_partition** %5, align 8
  %99 = call i32 @XPC_PARTID(%struct.xpc_partition* %98)
  %100 = load i32, i32* %6, align 4
  %101 = call i32 @dev_dbg(i32 %97, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %99, i32 %100)
  %102 = load %struct.xpc_partition*, %struct.xpc_partition** %5, align 8
  %103 = load i32, i32* %6, align 4
  %104 = call i32 @xpc_partition_going_down(%struct.xpc_partition* %102, i32 %103)
  br label %105

105:                                              ; preds = %65, %60, %33
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @XPC_SET_REASON(%struct.xpc_partition*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @add_timer(%struct.TYPE_4__*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @XPC_PARTID(%struct.xpc_partition*) #1

declare dso_local i32 @xpc_partition_going_down(%struct.xpc_partition*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
