; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_main.c_rocker_world_fini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_main.c_rocker_world_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rocker = type { i32, %struct.rocker_world_ops* }
%struct.rocker_world_ops = type { i32 (%struct.rocker.0*)* }
%struct.rocker.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rocker*)* @rocker_world_fini to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rocker_world_fini(%struct.rocker* %0) #0 {
  %2 = alloca %struct.rocker*, align 8
  %3 = alloca %struct.rocker_world_ops*, align 8
  store %struct.rocker* %0, %struct.rocker** %2, align 8
  %4 = load %struct.rocker*, %struct.rocker** %2, align 8
  %5 = getelementptr inbounds %struct.rocker, %struct.rocker* %4, i32 0, i32 1
  %6 = load %struct.rocker_world_ops*, %struct.rocker_world_ops** %5, align 8
  store %struct.rocker_world_ops* %6, %struct.rocker_world_ops** %3, align 8
  %7 = load %struct.rocker_world_ops*, %struct.rocker_world_ops** %3, align 8
  %8 = icmp ne %struct.rocker_world_ops* %7, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load %struct.rocker_world_ops*, %struct.rocker_world_ops** %3, align 8
  %11 = getelementptr inbounds %struct.rocker_world_ops, %struct.rocker_world_ops* %10, i32 0, i32 0
  %12 = load i32 (%struct.rocker.0*)*, i32 (%struct.rocker.0*)** %11, align 8
  %13 = icmp ne i32 (%struct.rocker.0*)* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %9, %1
  br label %26

15:                                               ; preds = %9
  %16 = load %struct.rocker_world_ops*, %struct.rocker_world_ops** %3, align 8
  %17 = getelementptr inbounds %struct.rocker_world_ops, %struct.rocker_world_ops* %16, i32 0, i32 0
  %18 = load i32 (%struct.rocker.0*)*, i32 (%struct.rocker.0*)** %17, align 8
  %19 = load %struct.rocker*, %struct.rocker** %2, align 8
  %20 = bitcast %struct.rocker* %19 to %struct.rocker.0*
  %21 = call i32 %18(%struct.rocker.0* %20)
  %22 = load %struct.rocker*, %struct.rocker** %2, align 8
  %23 = getelementptr inbounds %struct.rocker, %struct.rocker* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @kfree(i32 %24)
  br label %26

26:                                               ; preds = %15, %14
  ret void
}

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
