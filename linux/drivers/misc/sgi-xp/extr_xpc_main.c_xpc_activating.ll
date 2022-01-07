; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/sgi-xp/extr_xpc_main.c_xpc_activating.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/sgi-xp/extr_xpc_main.c_xpc_activating.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xpc_partition = type { i64, i64, i32, i64 }
%struct.TYPE_2__ = type { i64 (%struct.xpc_partition*)*, i32 (%struct.xpc_partition*)*, i32 (i16)*, i32 (i16)* }

@xpc_partitions = common dso_local global %struct.xpc_partition* null, align 8
@xp_max_npartitions = common dso_local global i16 0, align 2
@XPC_P_AS_DEACTIVATING = common dso_local global i64 0, align 8
@XPC_P_AS_INACTIVE = common dso_local global i64 0, align 8
@XPC_P_AS_ACTIVATION_REQ = common dso_local global i64 0, align 8
@XPC_P_AS_ACTIVATING = common dso_local global i64 0, align 8
@xpc_part = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"activating partition %d\0A\00", align 1
@xpc_arch_ops = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@xpSuccess = common dso_local global i64 0, align 8
@xpReactivating = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @xpc_activating to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xpc_activating(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i16, align 2
  %5 = alloca %struct.xpc_partition*, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = ptrtoint i8* %7 to i16
  store i16 %8, i16* %4, align 2
  %9 = load %struct.xpc_partition*, %struct.xpc_partition** @xpc_partitions, align 8
  %10 = load i16, i16* %4, align 2
  %11 = sext i16 %10 to i64
  %12 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %9, i64 %11
  store %struct.xpc_partition* %12, %struct.xpc_partition** %5, align 8
  %13 = load i16, i16* %4, align 2
  %14 = sext i16 %13 to i32
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %1
  %17 = load i16, i16* %4, align 2
  %18 = sext i16 %17 to i32
  %19 = load i16, i16* @xp_max_npartitions, align 2
  %20 = sext i16 %19 to i32
  %21 = icmp sge i32 %18, %20
  br label %22

22:                                               ; preds = %16, %1
  %23 = phi i1 [ true, %1 ], [ %21, %16 ]
  %24 = zext i1 %23 to i32
  %25 = call i32 @DBUG_ON(i32 %24)
  %26 = load %struct.xpc_partition*, %struct.xpc_partition** %5, align 8
  %27 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %26, i32 0, i32 2
  %28 = load i64, i64* %6, align 8
  %29 = call i32 @spin_lock_irqsave(i32* %27, i64 %28)
  %30 = load %struct.xpc_partition*, %struct.xpc_partition** %5, align 8
  %31 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @XPC_P_AS_DEACTIVATING, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %45

35:                                               ; preds = %22
  %36 = load i64, i64* @XPC_P_AS_INACTIVE, align 8
  %37 = load %struct.xpc_partition*, %struct.xpc_partition** %5, align 8
  %38 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  %39 = load %struct.xpc_partition*, %struct.xpc_partition** %5, align 8
  %40 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %39, i32 0, i32 2
  %41 = load i64, i64* %6, align 8
  %42 = call i32 @spin_unlock_irqrestore(i32* %40, i64 %41)
  %43 = load %struct.xpc_partition*, %struct.xpc_partition** %5, align 8
  %44 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %43, i32 0, i32 3
  store i64 0, i64* %44, align 8
  store i32 0, i32* %2, align 4
  br label %106

45:                                               ; preds = %22
  %46 = load %struct.xpc_partition*, %struct.xpc_partition** %5, align 8
  %47 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @XPC_P_AS_ACTIVATION_REQ, align 8
  %50 = icmp ne i64 %48, %49
  %51 = zext i1 %50 to i32
  %52 = call i32 @DBUG_ON(i32 %51)
  %53 = load i64, i64* @XPC_P_AS_ACTIVATING, align 8
  %54 = load %struct.xpc_partition*, %struct.xpc_partition** %5, align 8
  %55 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %54, i32 0, i32 0
  store i64 %53, i64* %55, align 8
  %56 = load %struct.xpc_partition*, %struct.xpc_partition** %5, align 8
  %57 = call i32 @XPC_SET_REASON(%struct.xpc_partition* %56, i32 0, i32 0)
  %58 = load %struct.xpc_partition*, %struct.xpc_partition** %5, align 8
  %59 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %58, i32 0, i32 2
  %60 = load i64, i64* %6, align 8
  %61 = call i32 @spin_unlock_irqrestore(i32* %59, i64 %60)
  %62 = load i32, i32* @xpc_part, align 4
  %63 = load i16, i16* %4, align 2
  %64 = call i32 @dev_dbg(i32 %62, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i16 signext %63)
  %65 = load i32 (i16)*, i32 (i16)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xpc_arch_ops, i32 0, i32 3), align 8
  %66 = load i16, i16* %4, align 2
  %67 = call i32 %65(i16 signext %66)
  %68 = load %struct.xpc_partition*, %struct.xpc_partition** %5, align 8
  %69 = call i64 @xpc_setup_ch_structures(%struct.xpc_partition* %68)
  %70 = load i64, i64* @xpSuccess, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %90

72:                                               ; preds = %45
  %73 = load %struct.xpc_partition*, %struct.xpc_partition** %5, align 8
  %74 = call i32 @xpc_part_ref(%struct.xpc_partition* %73)
  %75 = load i64 (%struct.xpc_partition*)*, i64 (%struct.xpc_partition*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xpc_arch_ops, i32 0, i32 0), align 8
  %76 = load %struct.xpc_partition*, %struct.xpc_partition** %5, align 8
  %77 = call i64 %75(%struct.xpc_partition* %76)
  %78 = load i64, i64* @xpSuccess, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %85

80:                                               ; preds = %72
  %81 = load %struct.xpc_partition*, %struct.xpc_partition** %5, align 8
  %82 = call i32 @xpc_mark_partition_active(%struct.xpc_partition* %81)
  %83 = load %struct.xpc_partition*, %struct.xpc_partition** %5, align 8
  %84 = call i32 @xpc_channel_mgr(%struct.xpc_partition* %83)
  br label %85

85:                                               ; preds = %80, %72
  %86 = load %struct.xpc_partition*, %struct.xpc_partition** %5, align 8
  %87 = call i32 @xpc_part_deref(%struct.xpc_partition* %86)
  %88 = load %struct.xpc_partition*, %struct.xpc_partition** %5, align 8
  %89 = call i32 @xpc_teardown_ch_structures(%struct.xpc_partition* %88)
  br label %90

90:                                               ; preds = %85, %45
  %91 = load i32 (i16)*, i32 (i16)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xpc_arch_ops, i32 0, i32 2), align 8
  %92 = load i16, i16* %4, align 2
  %93 = call i32 %91(i16 signext %92)
  %94 = load %struct.xpc_partition*, %struct.xpc_partition** %5, align 8
  %95 = call i32 @xpc_mark_partition_inactive(%struct.xpc_partition* %94)
  %96 = load %struct.xpc_partition*, %struct.xpc_partition** %5, align 8
  %97 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @xpReactivating, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %105

101:                                              ; preds = %90
  %102 = load i32 (%struct.xpc_partition*)*, i32 (%struct.xpc_partition*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xpc_arch_ops, i32 0, i32 1), align 8
  %103 = load %struct.xpc_partition*, %struct.xpc_partition** %5, align 8
  %104 = call i32 %102(%struct.xpc_partition* %103)
  br label %105

105:                                              ; preds = %101, %90
  store i32 0, i32* %2, align 4
  br label %106

106:                                              ; preds = %105, %35
  %107 = load i32, i32* %2, align 4
  ret i32 %107
}

declare dso_local i32 @DBUG_ON(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @XPC_SET_REASON(%struct.xpc_partition*, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i16 signext) #1

declare dso_local i64 @xpc_setup_ch_structures(%struct.xpc_partition*) #1

declare dso_local i32 @xpc_part_ref(%struct.xpc_partition*) #1

declare dso_local i32 @xpc_mark_partition_active(%struct.xpc_partition*) #1

declare dso_local i32 @xpc_channel_mgr(%struct.xpc_partition*) #1

declare dso_local i32 @xpc_part_deref(%struct.xpc_partition*) #1

declare dso_local i32 @xpc_teardown_ch_structures(%struct.xpc_partition*) #1

declare dso_local i32 @xpc_mark_partition_inactive(%struct.xpc_partition*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
