; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_main.c_rocker_carrier_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_main.c_rocker_carrier_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rocker_port = type { i32, i32, %struct.rocker* }
%struct.rocker = type { i32 }

@PORT_PHYS_LINK_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rocker_port*)* @rocker_carrier_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rocker_carrier_init(%struct.rocker_port* %0) #0 {
  %2 = alloca %struct.rocker_port*, align 8
  %3 = alloca %struct.rocker*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.rocker_port* %0, %struct.rocker_port** %2, align 8
  %6 = load %struct.rocker_port*, %struct.rocker_port** %2, align 8
  %7 = getelementptr inbounds %struct.rocker_port, %struct.rocker_port* %6, i32 0, i32 2
  %8 = load %struct.rocker*, %struct.rocker** %7, align 8
  store %struct.rocker* %8, %struct.rocker** %3, align 8
  %9 = load %struct.rocker*, %struct.rocker** %3, align 8
  %10 = load i32, i32* @PORT_PHYS_LINK_STATUS, align 4
  %11 = call i32 @rocker_read64(%struct.rocker* %9, i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.rocker_port*, %struct.rocker_port** %2, align 8
  %14 = getelementptr inbounds %struct.rocker_port, %struct.rocker_port* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = shl i32 1, %15
  %17 = and i32 %12, %16
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %1
  %21 = load %struct.rocker_port*, %struct.rocker_port** %2, align 8
  %22 = getelementptr inbounds %struct.rocker_port, %struct.rocker_port* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @netif_carrier_on(i32 %23)
  br label %30

25:                                               ; preds = %1
  %26 = load %struct.rocker_port*, %struct.rocker_port** %2, align 8
  %27 = getelementptr inbounds %struct.rocker_port, %struct.rocker_port* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @netif_carrier_off(i32 %28)
  br label %30

30:                                               ; preds = %25, %20
  ret void
}

declare dso_local i32 @rocker_read64(%struct.rocker*, i32) #1

declare dso_local i32 @netif_carrier_on(i32) #1

declare dso_local i32 @netif_carrier_off(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
