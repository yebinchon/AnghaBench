; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_main.c_rocker_port_dev_check_under.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_main.c_rocker_port_dev_check_under.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.rocker = type { i32 }
%struct.rocker_port = type { %struct.rocker* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.rocker*)* @rocker_port_dev_check_under to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rocker_port_dev_check_under(%struct.net_device* %0, %struct.rocker* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.rocker*, align 8
  %6 = alloca %struct.rocker_port*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.rocker* %1, %struct.rocker** %5, align 8
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = call i32 @rocker_port_dev_check(%struct.net_device* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %21

11:                                               ; preds = %2
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = call %struct.rocker_port* @netdev_priv(%struct.net_device* %12)
  store %struct.rocker_port* %13, %struct.rocker_port** %6, align 8
  %14 = load %struct.rocker_port*, %struct.rocker_port** %6, align 8
  %15 = getelementptr inbounds %struct.rocker_port, %struct.rocker_port* %14, i32 0, i32 0
  %16 = load %struct.rocker*, %struct.rocker** %15, align 8
  %17 = load %struct.rocker*, %struct.rocker** %5, align 8
  %18 = icmp ne %struct.rocker* %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %21

20:                                               ; preds = %11
  store i32 1, i32* %3, align 4
  br label %21

21:                                               ; preds = %20, %19, %10
  %22 = load i32, i32* %3, align 4
  ret i32 %22
}

declare dso_local i32 @rocker_port_dev_check(%struct.net_device*) #1

declare dso_local %struct.rocker_port* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
