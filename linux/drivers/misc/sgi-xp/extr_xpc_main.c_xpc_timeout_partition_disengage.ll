; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/sgi-xp/extr_xpc_main.c_xpc_timeout_partition_disengage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/sgi-xp/extr_xpc_main.c_xpc_timeout_partition_disengage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32)* }
%struct.xpc_partition = type { i64 }
%struct.timer_list = type { i32 }

@disengage_timer = common dso_local global i32 0, align 4
@xpc_arch_ops = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@part = common dso_local global %struct.xpc_partition* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @xpc_timeout_partition_disengage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xpc_timeout_partition_disengage(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.xpc_partition*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %4 = load %struct.xpc_partition*, %struct.xpc_partition** %3, align 8
  %5 = ptrtoint %struct.xpc_partition* %4 to i32
  %6 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %7 = load i32, i32* @disengage_timer, align 4
  %8 = call %struct.xpc_partition* @from_timer(i32 %5, %struct.timer_list* %6, i32 %7)
  store %struct.xpc_partition* %8, %struct.xpc_partition** %3, align 8
  %9 = load %struct.xpc_partition*, %struct.xpc_partition** %3, align 8
  %10 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = call i32 @time_is_after_jiffies(i64 %11)
  %13 = call i32 @DBUG_ON(i32 %12)
  %14 = load %struct.xpc_partition*, %struct.xpc_partition** %3, align 8
  %15 = call i32 @xpc_partition_disengaged(%struct.xpc_partition* %14)
  %16 = load %struct.xpc_partition*, %struct.xpc_partition** %3, align 8
  %17 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  %20 = zext i1 %19 to i32
  %21 = call i32 @DBUG_ON(i32 %20)
  %22 = load i32 (i32)*, i32 (i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xpc_arch_ops, i32 0, i32 0), align 8
  %23 = load %struct.xpc_partition*, %struct.xpc_partition** %3, align 8
  %24 = call i32 @XPC_PARTID(%struct.xpc_partition* %23)
  %25 = call i32 %22(i32 %24)
  %26 = call i32 @DBUG_ON(i32 %25)
  ret void
}

declare dso_local %struct.xpc_partition* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @DBUG_ON(i32) #1

declare dso_local i32 @time_is_after_jiffies(i64) #1

declare dso_local i32 @xpc_partition_disengaged(%struct.xpc_partition*) #1

declare dso_local i32 @XPC_PARTID(%struct.xpc_partition*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
