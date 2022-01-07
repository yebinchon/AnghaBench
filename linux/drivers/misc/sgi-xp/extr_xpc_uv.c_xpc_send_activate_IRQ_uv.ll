; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/sgi-xp/extr_xpc_uv.c_xpc_send_activate_IRQ_uv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/sgi-xp/extr_xpc_uv.c_xpc_send_activate_IRQ_uv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.xpc_partition = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.xpc_partition_uv }
%struct.xpc_partition_uv = type { i32, i32, %struct.gru_message_queue_desc*, i32, i32 }
%struct.gru_message_queue_desc = type { i32 }
%struct.xpc_activate_mq_msghdr_uv = type { i32, i32, i32, i32 }

@XPC_ACTIVATE_MSG_SIZE_UV = common dso_local global i64 0, align 8
@xp_partition_id = common dso_local global i32 0, align 4
@xpc_rsvd_page = common dso_local global %struct.TYPE_4__* null, align 8
@XPC_P_CACHED_ACTIVATE_GRU_MQ_DESC_UV = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@xpNoMemory = common dso_local global i32 0, align 4
@xpSuccess = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xpc_partition*, i8*, i64, i32)* @xpc_send_activate_IRQ_uv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xpc_send_activate_IRQ_uv(%struct.xpc_partition* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.xpc_partition*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.xpc_activate_mq_msghdr_uv*, align 8
  %10 = alloca %struct.xpc_partition_uv*, align 8
  %11 = alloca %struct.gru_message_queue_desc*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.xpc_partition* %0, %struct.xpc_partition** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to %struct.xpc_activate_mq_msghdr_uv*
  store %struct.xpc_activate_mq_msghdr_uv* %15, %struct.xpc_activate_mq_msghdr_uv** %9, align 8
  %16 = load %struct.xpc_partition*, %struct.xpc_partition** %5, align 8
  %17 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  store %struct.xpc_partition_uv* %18, %struct.xpc_partition_uv** %10, align 8
  %19 = load i64, i64* %7, align 8
  %20 = load i64, i64* @XPC_ACTIVATE_MSG_SIZE_UV, align 8
  %21 = icmp ugt i64 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @DBUG_ON(i32 %22)
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.xpc_activate_mq_msghdr_uv*, %struct.xpc_activate_mq_msghdr_uv** %9, align 8
  %26 = getelementptr inbounds %struct.xpc_activate_mq_msghdr_uv, %struct.xpc_activate_mq_msghdr_uv* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @xp_partition_id, align 4
  %28 = load %struct.xpc_activate_mq_msghdr_uv*, %struct.xpc_activate_mq_msghdr_uv** %9, align 8
  %29 = getelementptr inbounds %struct.xpc_activate_mq_msghdr_uv, %struct.xpc_activate_mq_msghdr_uv* %28, i32 0, i32 3
  store i32 %27, i32* %29, align 4
  %30 = load %struct.xpc_partition*, %struct.xpc_partition** %5, align 8
  %31 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.xpc_activate_mq_msghdr_uv*, %struct.xpc_activate_mq_msghdr_uv** %9, align 8
  %34 = getelementptr inbounds %struct.xpc_activate_mq_msghdr_uv, %struct.xpc_activate_mq_msghdr_uv* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 4
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** @xpc_rsvd_page, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.xpc_activate_mq_msghdr_uv*, %struct.xpc_activate_mq_msghdr_uv** %9, align 8
  %39 = getelementptr inbounds %struct.xpc_activate_mq_msghdr_uv, %struct.xpc_activate_mq_msghdr_uv* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load %struct.xpc_partition_uv*, %struct.xpc_partition_uv** %10, align 8
  %41 = getelementptr inbounds %struct.xpc_partition_uv, %struct.xpc_partition_uv* %40, i32 0, i32 1
  %42 = call i32 @mutex_lock(i32* %41)
  br label %43

43:                                               ; preds = %109, %4
  %44 = load %struct.xpc_partition_uv*, %struct.xpc_partition_uv** %10, align 8
  %45 = getelementptr inbounds %struct.xpc_partition_uv, %struct.xpc_partition_uv* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @XPC_P_CACHED_ACTIVATE_GRU_MQ_DESC_UV, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %91, label %50

50:                                               ; preds = %43
  %51 = load %struct.xpc_partition_uv*, %struct.xpc_partition_uv** %10, align 8
  %52 = getelementptr inbounds %struct.xpc_partition_uv, %struct.xpc_partition_uv* %51, i32 0, i32 2
  %53 = load %struct.gru_message_queue_desc*, %struct.gru_message_queue_desc** %52, align 8
  store %struct.gru_message_queue_desc* %53, %struct.gru_message_queue_desc** %11, align 8
  %54 = load %struct.gru_message_queue_desc*, %struct.gru_message_queue_desc** %11, align 8
  %55 = icmp eq %struct.gru_message_queue_desc* %54, null
  br i1 %55, label %56, label %67

56:                                               ; preds = %50
  %57 = load i32, i32* @GFP_ATOMIC, align 4
  %58 = call %struct.gru_message_queue_desc* @kmalloc(i32 4, i32 %57)
  store %struct.gru_message_queue_desc* %58, %struct.gru_message_queue_desc** %11, align 8
  %59 = load %struct.gru_message_queue_desc*, %struct.gru_message_queue_desc** %11, align 8
  %60 = icmp eq %struct.gru_message_queue_desc* %59, null
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = load i32, i32* @xpNoMemory, align 4
  store i32 %62, i32* %13, align 4
  br label %112

63:                                               ; preds = %56
  %64 = load %struct.gru_message_queue_desc*, %struct.gru_message_queue_desc** %11, align 8
  %65 = load %struct.xpc_partition_uv*, %struct.xpc_partition_uv** %10, align 8
  %66 = getelementptr inbounds %struct.xpc_partition_uv, %struct.xpc_partition_uv* %65, i32 0, i32 2
  store %struct.gru_message_queue_desc* %64, %struct.gru_message_queue_desc** %66, align 8
  br label %67

67:                                               ; preds = %63, %50
  %68 = load %struct.gru_message_queue_desc*, %struct.gru_message_queue_desc** %11, align 8
  %69 = load %struct.xpc_partition_uv*, %struct.xpc_partition_uv** %10, align 8
  %70 = getelementptr inbounds %struct.xpc_partition_uv, %struct.xpc_partition_uv* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @xpc_cache_remote_gru_mq_desc_uv(%struct.gru_message_queue_desc* %68, i32 %71)
  store i32 %72, i32* %13, align 4
  %73 = load i32, i32* %13, align 4
  %74 = load i32, i32* @xpSuccess, align 4
  %75 = icmp ne i32 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %67
  br label %112

77:                                               ; preds = %67
  %78 = load %struct.xpc_partition_uv*, %struct.xpc_partition_uv** %10, align 8
  %79 = getelementptr inbounds %struct.xpc_partition_uv, %struct.xpc_partition_uv* %78, i32 0, i32 3
  %80 = load i64, i64* %12, align 8
  %81 = call i32 @spin_lock_irqsave(i32* %79, i64 %80)
  %82 = load i32, i32* @XPC_P_CACHED_ACTIVATE_GRU_MQ_DESC_UV, align 4
  %83 = load %struct.xpc_partition_uv*, %struct.xpc_partition_uv** %10, align 8
  %84 = getelementptr inbounds %struct.xpc_partition_uv, %struct.xpc_partition_uv* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = or i32 %85, %82
  store i32 %86, i32* %84, align 8
  %87 = load %struct.xpc_partition_uv*, %struct.xpc_partition_uv** %10, align 8
  %88 = getelementptr inbounds %struct.xpc_partition_uv, %struct.xpc_partition_uv* %87, i32 0, i32 3
  %89 = load i64, i64* %12, align 8
  %90 = call i32 @spin_unlock_irqrestore(i32* %88, i64 %89)
  br label %91

91:                                               ; preds = %77, %43
  %92 = load %struct.xpc_partition_uv*, %struct.xpc_partition_uv** %10, align 8
  %93 = getelementptr inbounds %struct.xpc_partition_uv, %struct.xpc_partition_uv* %92, i32 0, i32 2
  %94 = load %struct.gru_message_queue_desc*, %struct.gru_message_queue_desc** %93, align 8
  %95 = load i8*, i8** %6, align 8
  %96 = load i64, i64* %7, align 8
  %97 = call i32 @xpc_send_gru_msg(%struct.gru_message_queue_desc* %94, i8* %95, i64 %96)
  store i32 %97, i32* %13, align 4
  %98 = load i32, i32* %13, align 4
  %99 = load i32, i32* @xpSuccess, align 4
  %100 = icmp ne i32 %98, %99
  br i1 %100, label %101, label %111

101:                                              ; preds = %91
  %102 = call i32 (...) @smp_rmb()
  %103 = load %struct.xpc_partition_uv*, %struct.xpc_partition_uv** %10, align 8
  %104 = getelementptr inbounds %struct.xpc_partition_uv, %struct.xpc_partition_uv* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @XPC_P_CACHED_ACTIVATE_GRU_MQ_DESC_UV, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %110, label %109

109:                                              ; preds = %101
  br label %43

110:                                              ; preds = %101
  br label %111

111:                                              ; preds = %110, %91
  br label %112

112:                                              ; preds = %111, %76, %61
  %113 = load %struct.xpc_partition_uv*, %struct.xpc_partition_uv** %10, align 8
  %114 = getelementptr inbounds %struct.xpc_partition_uv, %struct.xpc_partition_uv* %113, i32 0, i32 1
  %115 = call i32 @mutex_unlock(i32* %114)
  %116 = load i32, i32* %13, align 4
  ret i32 %116
}

declare dso_local i32 @DBUG_ON(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.gru_message_queue_desc* @kmalloc(i32, i32) #1

declare dso_local i32 @xpc_cache_remote_gru_mq_desc_uv(%struct.gru_message_queue_desc*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @xpc_send_gru_msg(%struct.gru_message_queue_desc*, i8*, i64) #1

declare dso_local i32 @smp_rmb(...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
