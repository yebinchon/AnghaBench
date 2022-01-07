; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_main.c_rocker_world_fib4_del.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_main.c_rocker_world_fib4_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rocker = type { %struct.rocker_world_ops* }
%struct.rocker_world_ops = type { i32 (%struct.rocker.0*, %struct.fib_entry_notifier_info*)* }
%struct.rocker.0 = type opaque
%struct.fib_entry_notifier_info = type opaque
%struct.fib_entry_notifier_info.1 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rocker*, %struct.fib_entry_notifier_info.1*)* @rocker_world_fib4_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rocker_world_fib4_del(%struct.rocker* %0, %struct.fib_entry_notifier_info.1* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rocker*, align 8
  %5 = alloca %struct.fib_entry_notifier_info.1*, align 8
  %6 = alloca %struct.rocker_world_ops*, align 8
  store %struct.rocker* %0, %struct.rocker** %4, align 8
  store %struct.fib_entry_notifier_info.1* %1, %struct.fib_entry_notifier_info.1** %5, align 8
  %7 = load %struct.rocker*, %struct.rocker** %4, align 8
  %8 = getelementptr inbounds %struct.rocker, %struct.rocker* %7, i32 0, i32 0
  %9 = load %struct.rocker_world_ops*, %struct.rocker_world_ops** %8, align 8
  store %struct.rocker_world_ops* %9, %struct.rocker_world_ops** %6, align 8
  %10 = load %struct.rocker_world_ops*, %struct.rocker_world_ops** %6, align 8
  %11 = getelementptr inbounds %struct.rocker_world_ops, %struct.rocker_world_ops* %10, i32 0, i32 0
  %12 = load i32 (%struct.rocker.0*, %struct.fib_entry_notifier_info*)*, i32 (%struct.rocker.0*, %struct.fib_entry_notifier_info*)** %11, align 8
  %13 = icmp ne i32 (%struct.rocker.0*, %struct.fib_entry_notifier_info*)* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %24

15:                                               ; preds = %2
  %16 = load %struct.rocker_world_ops*, %struct.rocker_world_ops** %6, align 8
  %17 = getelementptr inbounds %struct.rocker_world_ops, %struct.rocker_world_ops* %16, i32 0, i32 0
  %18 = load i32 (%struct.rocker.0*, %struct.fib_entry_notifier_info*)*, i32 (%struct.rocker.0*, %struct.fib_entry_notifier_info*)** %17, align 8
  %19 = load %struct.rocker*, %struct.rocker** %4, align 8
  %20 = bitcast %struct.rocker* %19 to %struct.rocker.0*
  %21 = load %struct.fib_entry_notifier_info.1*, %struct.fib_entry_notifier_info.1** %5, align 8
  %22 = bitcast %struct.fib_entry_notifier_info.1* %21 to %struct.fib_entry_notifier_info*
  %23 = call i32 %18(%struct.rocker.0* %20, %struct.fib_entry_notifier_info* %22)
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %15, %14
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
