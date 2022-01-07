; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_main.c_rocker_world_port_pre_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_main.c_rocker_world_port_pre_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rocker_port = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.rocker_world_ops* }
%struct.rocker_world_ops = type { i32 (%struct.rocker_port.0*)*, i32 }
%struct.rocker_port.0 = type opaque

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rocker_port*)* @rocker_world_port_pre_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rocker_world_port_pre_init(%struct.rocker_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rocker_port*, align 8
  %4 = alloca %struct.rocker_world_ops*, align 8
  %5 = alloca i32, align 4
  store %struct.rocker_port* %0, %struct.rocker_port** %3, align 8
  %6 = load %struct.rocker_port*, %struct.rocker_port** %3, align 8
  %7 = getelementptr inbounds %struct.rocker_port, %struct.rocker_port* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.rocker_world_ops*, %struct.rocker_world_ops** %9, align 8
  store %struct.rocker_world_ops* %10, %struct.rocker_world_ops** %4, align 8
  %11 = load %struct.rocker_world_ops*, %struct.rocker_world_ops** %4, align 8
  %12 = getelementptr inbounds %struct.rocker_world_ops, %struct.rocker_world_ops* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call i32 @kzalloc(i32 %13, i32 %14)
  %16 = load %struct.rocker_port*, %struct.rocker_port** %3, align 8
  %17 = getelementptr inbounds %struct.rocker_port, %struct.rocker_port* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load %struct.rocker_port*, %struct.rocker_port** %3, align 8
  %19 = getelementptr inbounds %struct.rocker_port, %struct.rocker_port* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %1
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %46

25:                                               ; preds = %1
  %26 = load %struct.rocker_world_ops*, %struct.rocker_world_ops** %4, align 8
  %27 = getelementptr inbounds %struct.rocker_world_ops, %struct.rocker_world_ops* %26, i32 0, i32 0
  %28 = load i32 (%struct.rocker_port.0*)*, i32 (%struct.rocker_port.0*)** %27, align 8
  %29 = icmp ne i32 (%struct.rocker_port.0*)* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %46

31:                                               ; preds = %25
  %32 = load %struct.rocker_world_ops*, %struct.rocker_world_ops** %4, align 8
  %33 = getelementptr inbounds %struct.rocker_world_ops, %struct.rocker_world_ops* %32, i32 0, i32 0
  %34 = load i32 (%struct.rocker_port.0*)*, i32 (%struct.rocker_port.0*)** %33, align 8
  %35 = load %struct.rocker_port*, %struct.rocker_port** %3, align 8
  %36 = bitcast %struct.rocker_port* %35 to %struct.rocker_port.0*
  %37 = call i32 %34(%struct.rocker_port.0* %36)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %31
  %41 = load %struct.rocker_port*, %struct.rocker_port** %3, align 8
  %42 = getelementptr inbounds %struct.rocker_port, %struct.rocker_port* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @kfree(i32 %43)
  br label %45

45:                                               ; preds = %40, %31
  store i32 0, i32* %2, align 4
  br label %46

46:                                               ; preds = %45, %30, %22
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
