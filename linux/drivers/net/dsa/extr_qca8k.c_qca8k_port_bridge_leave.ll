; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_qca8k.c_qca8k_port_bridge_leave.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_qca8k.c_qca8k_port_bridge_leave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_switch = type { i64 }
%struct.net_device = type { i32 }
%struct.qca8k_priv = type { i32 }
%struct.TYPE_2__ = type { %struct.net_device* }

@QCA8K_NUM_PORTS = common dso_local global i32 0, align 4
@QCA8K_PORT_LOOKUP_MEMBER = common dso_local global i32 0, align 4
@QCA8K_CPU_PORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dsa_switch*, i32, %struct.net_device*)* @qca8k_port_bridge_leave to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qca8k_port_bridge_leave(%struct.dsa_switch* %0, i32 %1, %struct.net_device* %2) #0 {
  %4 = alloca %struct.dsa_switch*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.qca8k_priv*, align 8
  %8 = alloca i32, align 4
  store %struct.dsa_switch* %0, %struct.dsa_switch** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.net_device* %2, %struct.net_device** %6, align 8
  %9 = load %struct.dsa_switch*, %struct.dsa_switch** %4, align 8
  %10 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.qca8k_priv*
  store %struct.qca8k_priv* %12, %struct.qca8k_priv** %7, align 8
  store i32 1, i32* %8, align 4
  br label %13

13:                                               ; preds = %33, %3
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @QCA8K_NUM_PORTS, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %36

17:                                               ; preds = %13
  %18 = load %struct.dsa_switch*, %struct.dsa_switch** %4, align 8
  %19 = load i32, i32* %8, align 4
  %20 = call %struct.TYPE_2__* @dsa_to_port(%struct.dsa_switch* %18, i32 %19)
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load %struct.net_device*, %struct.net_device** %21, align 8
  %23 = load %struct.net_device*, %struct.net_device** %6, align 8
  %24 = icmp ne %struct.net_device* %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  br label %33

26:                                               ; preds = %17
  %27 = load %struct.qca8k_priv*, %struct.qca8k_priv** %7, align 8
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @QCA8K_PORT_LOOKUP_CTRL(i32 %28)
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @BIT(i32 %30)
  %32 = call i32 @qca8k_reg_clear(%struct.qca8k_priv* %27, i32 %29, i32 %31)
  br label %33

33:                                               ; preds = %26, %25
  %34 = load i32, i32* %8, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %8, align 4
  br label %13

36:                                               ; preds = %13
  %37 = load %struct.qca8k_priv*, %struct.qca8k_priv** %7, align 8
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @QCA8K_PORT_LOOKUP_CTRL(i32 %38)
  %40 = load i32, i32* @QCA8K_PORT_LOOKUP_MEMBER, align 4
  %41 = load i32, i32* @QCA8K_CPU_PORT, align 4
  %42 = call i32 @BIT(i32 %41)
  %43 = call i32 @qca8k_rmw(%struct.qca8k_priv* %37, i32 %39, i32 %40, i32 %42)
  ret void
}

declare dso_local %struct.TYPE_2__* @dsa_to_port(%struct.dsa_switch*, i32) #1

declare dso_local i32 @qca8k_reg_clear(%struct.qca8k_priv*, i32, i32) #1

declare dso_local i32 @QCA8K_PORT_LOOKUP_CTRL(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @qca8k_rmw(%struct.qca8k_priv*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
