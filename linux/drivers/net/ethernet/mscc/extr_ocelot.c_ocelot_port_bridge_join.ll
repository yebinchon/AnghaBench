; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mscc/extr_ocelot.c_ocelot_port_bridge_join.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mscc/extr_ocelot.c_ocelot_port_bridge_join.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocelot_port = type { i32, %struct.ocelot* }
%struct.ocelot = type { i32, %struct.net_device* }
%struct.net_device = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocelot_port*, %struct.net_device*)* @ocelot_port_bridge_join to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocelot_port_bridge_join(%struct.ocelot_port* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ocelot_port*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ocelot*, align 8
  store %struct.ocelot_port* %0, %struct.ocelot_port** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %7 = load %struct.ocelot_port*, %struct.ocelot_port** %4, align 8
  %8 = getelementptr inbounds %struct.ocelot_port, %struct.ocelot_port* %7, i32 0, i32 1
  %9 = load %struct.ocelot*, %struct.ocelot** %8, align 8
  store %struct.ocelot* %9, %struct.ocelot** %6, align 8
  %10 = load %struct.ocelot*, %struct.ocelot** %6, align 8
  %11 = getelementptr inbounds %struct.ocelot, %struct.ocelot* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %2
  %15 = load %struct.net_device*, %struct.net_device** %5, align 8
  %16 = load %struct.ocelot*, %struct.ocelot** %6, align 8
  %17 = getelementptr inbounds %struct.ocelot, %struct.ocelot* %16, i32 0, i32 1
  store %struct.net_device* %15, %struct.net_device** %17, align 8
  br label %28

18:                                               ; preds = %2
  %19 = load %struct.ocelot*, %struct.ocelot** %6, align 8
  %20 = getelementptr inbounds %struct.ocelot, %struct.ocelot* %19, i32 0, i32 1
  %21 = load %struct.net_device*, %struct.net_device** %20, align 8
  %22 = load %struct.net_device*, %struct.net_device** %5, align 8
  %23 = icmp ne %struct.net_device* %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load i32, i32* @ENODEV, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %37

27:                                               ; preds = %18
  br label %28

28:                                               ; preds = %27, %14
  %29 = load %struct.ocelot_port*, %struct.ocelot_port** %4, align 8
  %30 = getelementptr inbounds %struct.ocelot_port, %struct.ocelot_port* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @BIT(i32 %31)
  %33 = load %struct.ocelot*, %struct.ocelot** %6, align 8
  %34 = getelementptr inbounds %struct.ocelot, %struct.ocelot* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 8
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %28, %24
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
