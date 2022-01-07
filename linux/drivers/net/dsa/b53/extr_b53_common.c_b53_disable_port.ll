; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/b53/extr_b53_common.c_b53_disable_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/b53/extr_b53_common.c_b53_disable_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_switch = type { %struct.b53_device* }
%struct.b53_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.b53_device*, i32)* }

@B53_CTRL_PAGE = common dso_local global i32 0, align 4
@PORT_CTRL_RX_DISABLE = common dso_local global i32 0, align 4
@PORT_CTRL_TX_DISABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @b53_disable_port(%struct.dsa_switch* %0, i32 %1) #0 {
  %3 = alloca %struct.dsa_switch*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.b53_device*, align 8
  %6 = alloca i32, align 4
  store %struct.dsa_switch* %0, %struct.dsa_switch** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.dsa_switch*, %struct.dsa_switch** %3, align 8
  %8 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %7, i32 0, i32 0
  %9 = load %struct.b53_device*, %struct.b53_device** %8, align 8
  store %struct.b53_device* %9, %struct.b53_device** %5, align 8
  %10 = load %struct.b53_device*, %struct.b53_device** %5, align 8
  %11 = load i32, i32* @B53_CTRL_PAGE, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @B53_PORT_CTRL(i32 %12)
  %14 = call i32 @b53_read8(%struct.b53_device* %10, i32 %11, i32 %13, i32* %6)
  %15 = load i32, i32* @PORT_CTRL_RX_DISABLE, align 4
  %16 = load i32, i32* @PORT_CTRL_TX_DISABLE, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* %6, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %6, align 4
  %20 = load %struct.b53_device*, %struct.b53_device** %5, align 8
  %21 = load i32, i32* @B53_CTRL_PAGE, align 4
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @B53_PORT_CTRL(i32 %22)
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @b53_write8(%struct.b53_device* %20, i32 %21, i32 %23, i32 %24)
  %26 = load %struct.b53_device*, %struct.b53_device** %5, align 8
  %27 = getelementptr inbounds %struct.b53_device, %struct.b53_device* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32 (%struct.b53_device*, i32)*, i32 (%struct.b53_device*, i32)** %29, align 8
  %31 = icmp ne i32 (%struct.b53_device*, i32)* %30, null
  br i1 %31, label %32, label %41

32:                                               ; preds = %2
  %33 = load %struct.b53_device*, %struct.b53_device** %5, align 8
  %34 = getelementptr inbounds %struct.b53_device, %struct.b53_device* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32 (%struct.b53_device*, i32)*, i32 (%struct.b53_device*, i32)** %36, align 8
  %38 = load %struct.b53_device*, %struct.b53_device** %5, align 8
  %39 = load i32, i32* %4, align 4
  %40 = call i32 %37(%struct.b53_device* %38, i32 %39)
  br label %41

41:                                               ; preds = %32, %2
  ret void
}

declare dso_local i32 @b53_read8(%struct.b53_device*, i32, i32, i32*) #1

declare dso_local i32 @B53_PORT_CTRL(i32) #1

declare dso_local i32 @b53_write8(%struct.b53_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
