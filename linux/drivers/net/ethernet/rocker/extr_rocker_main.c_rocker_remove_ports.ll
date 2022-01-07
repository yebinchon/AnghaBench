; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_main.c_rocker_remove_ports.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_main.c_rocker_remove_ports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rocker = type { i32, %struct.rocker_port** }
%struct.rocker_port = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rocker*)* @rocker_remove_ports to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rocker_remove_ports(%struct.rocker* %0) #0 {
  %2 = alloca %struct.rocker*, align 8
  %3 = alloca %struct.rocker_port*, align 8
  %4 = alloca i32, align 4
  store %struct.rocker* %0, %struct.rocker** %2, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %35, %1
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.rocker*, %struct.rocker** %2, align 8
  %8 = getelementptr inbounds %struct.rocker, %struct.rocker* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp slt i32 %6, %9
  br i1 %10, label %11, label %38

11:                                               ; preds = %5
  %12 = load %struct.rocker*, %struct.rocker** %2, align 8
  %13 = getelementptr inbounds %struct.rocker, %struct.rocker* %12, i32 0, i32 1
  %14 = load %struct.rocker_port**, %struct.rocker_port*** %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.rocker_port*, %struct.rocker_port** %14, i64 %16
  %18 = load %struct.rocker_port*, %struct.rocker_port** %17, align 8
  store %struct.rocker_port* %18, %struct.rocker_port** %3, align 8
  %19 = load %struct.rocker_port*, %struct.rocker_port** %3, align 8
  %20 = icmp ne %struct.rocker_port* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %11
  br label %35

22:                                               ; preds = %11
  %23 = load %struct.rocker_port*, %struct.rocker_port** %3, align 8
  %24 = call i32 @rocker_world_port_fini(%struct.rocker_port* %23)
  %25 = load %struct.rocker_port*, %struct.rocker_port** %3, align 8
  %26 = getelementptr inbounds %struct.rocker_port, %struct.rocker_port* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @unregister_netdev(i32 %27)
  %29 = load %struct.rocker_port*, %struct.rocker_port** %3, align 8
  %30 = call i32 @rocker_world_port_post_fini(%struct.rocker_port* %29)
  %31 = load %struct.rocker_port*, %struct.rocker_port** %3, align 8
  %32 = getelementptr inbounds %struct.rocker_port, %struct.rocker_port* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @free_netdev(i32 %33)
  br label %35

35:                                               ; preds = %22, %21
  %36 = load i32, i32* %4, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %4, align 4
  br label %5

38:                                               ; preds = %5
  %39 = load %struct.rocker*, %struct.rocker** %2, align 8
  %40 = call i32 @rocker_world_fini(%struct.rocker* %39)
  %41 = load %struct.rocker*, %struct.rocker** %2, align 8
  %42 = getelementptr inbounds %struct.rocker, %struct.rocker* %41, i32 0, i32 1
  %43 = load %struct.rocker_port**, %struct.rocker_port*** %42, align 8
  %44 = call i32 @kfree(%struct.rocker_port** %43)
  ret void
}

declare dso_local i32 @rocker_world_port_fini(%struct.rocker_port*) #1

declare dso_local i32 @unregister_netdev(i32) #1

declare dso_local i32 @rocker_world_port_post_fini(%struct.rocker_port*) #1

declare dso_local i32 @free_netdev(i32) #1

declare dso_local i32 @rocker_world_fini(%struct.rocker*) #1

declare dso_local i32 @kfree(%struct.rocker_port**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
