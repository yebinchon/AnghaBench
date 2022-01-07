; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/sgi-xp/extr_xpc_uv.c_xpc_handle_notify_IRQ_uv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/sgi-xp/extr_xpc_uv.c_xpc_handle_notify_IRQ_uv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.xpc_partition = type { i32 }
%struct.xpc_notify_mq_msg_uv = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i16 }

@xpc_notify_mq_uv = common dso_local global %struct.TYPE_4__* null, align 8
@XP_MAX_NPARTITIONS_UV = common dso_local global i16 0, align 2
@xpc_part = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"xpc_handle_notify_IRQ_uv() received invalid partid=0x%x in message\0A\00", align 1
@xpc_partitions = common dso_local global %struct.xpc_partition* null, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @xpc_handle_notify_IRQ_uv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xpc_handle_notify_IRQ_uv(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.xpc_notify_mq_msg_uv*, align 8
  %6 = alloca i16, align 2
  %7 = alloca %struct.xpc_partition*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  br label %8

8:                                                ; preds = %47, %2
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** @xpc_notify_mq_uv, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.xpc_notify_mq_msg_uv* @gru_get_next_message(i32 %11)
  store %struct.xpc_notify_mq_msg_uv* %12, %struct.xpc_notify_mq_msg_uv** %5, align 8
  %13 = icmp ne %struct.xpc_notify_mq_msg_uv* %12, null
  br i1 %13, label %14, label %53

14:                                               ; preds = %8
  %15 = load %struct.xpc_notify_mq_msg_uv*, %struct.xpc_notify_mq_msg_uv** %5, align 8
  %16 = getelementptr inbounds %struct.xpc_notify_mq_msg_uv, %struct.xpc_notify_mq_msg_uv* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i16, i16* %17, align 2
  store i16 %18, i16* %6, align 2
  %19 = load i16, i16* %6, align 2
  %20 = sext i16 %19 to i32
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %14
  %23 = load i16, i16* %6, align 2
  %24 = sext i16 %23 to i32
  %25 = load i16, i16* @XP_MAX_NPARTITIONS_UV, align 2
  %26 = sext i16 %25 to i32
  %27 = icmp sge i32 %24, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %22, %14
  %29 = load i32, i32* @xpc_part, align 4
  %30 = load i16, i16* %6, align 2
  %31 = call i32 @dev_err(i32 %29, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i16 signext %30)
  br label %47

32:                                               ; preds = %22
  %33 = load %struct.xpc_partition*, %struct.xpc_partition** @xpc_partitions, align 8
  %34 = load i16, i16* %6, align 2
  %35 = sext i16 %34 to i64
  %36 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %33, i64 %35
  store %struct.xpc_partition* %36, %struct.xpc_partition** %7, align 8
  %37 = load %struct.xpc_partition*, %struct.xpc_partition** %7, align 8
  %38 = call i64 @xpc_part_ref(%struct.xpc_partition* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %32
  %41 = load %struct.xpc_partition*, %struct.xpc_partition** %7, align 8
  %42 = load %struct.xpc_notify_mq_msg_uv*, %struct.xpc_notify_mq_msg_uv** %5, align 8
  %43 = call i32 @xpc_handle_notify_mq_msg_uv(%struct.xpc_partition* %41, %struct.xpc_notify_mq_msg_uv* %42)
  %44 = load %struct.xpc_partition*, %struct.xpc_partition** %7, align 8
  %45 = call i32 @xpc_part_deref(%struct.xpc_partition* %44)
  br label %46

46:                                               ; preds = %40, %32
  br label %47

47:                                               ; preds = %46, %28
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** @xpc_notify_mq_uv, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.xpc_notify_mq_msg_uv*, %struct.xpc_notify_mq_msg_uv** %5, align 8
  %52 = call i32 @gru_free_message(i32 %50, %struct.xpc_notify_mq_msg_uv* %51)
  br label %8

53:                                               ; preds = %8
  %54 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %54
}

declare dso_local %struct.xpc_notify_mq_msg_uv* @gru_get_next_message(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i16 signext) #1

declare dso_local i64 @xpc_part_ref(%struct.xpc_partition*) #1

declare dso_local i32 @xpc_handle_notify_mq_msg_uv(%struct.xpc_partition*, %struct.xpc_notify_mq_msg_uv*) #1

declare dso_local i32 @xpc_part_deref(%struct.xpc_partition*) #1

declare dso_local i32 @gru_free_message(i32, %struct.xpc_notify_mq_msg_uv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
