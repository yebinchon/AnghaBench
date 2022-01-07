; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_qca8k.c_qca8k_port_bridge_join.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_qca8k.c_qca8k_port_bridge_join.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_switch = type { i64 }
%struct.net_device = type { i32 }
%struct.qca8k_priv = type { i32 }
%struct.TYPE_2__ = type { %struct.net_device* }

@QCA8K_CPU_PORT = common dso_local global i32 0, align 4
@QCA8K_NUM_PORTS = common dso_local global i32 0, align 4
@QCA8K_PORT_LOOKUP_MEMBER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dsa_switch*, i32, %struct.net_device*)* @qca8k_port_bridge_join to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qca8k_port_bridge_join(%struct.dsa_switch* %0, i32 %1, %struct.net_device* %2) #0 {
  %4 = alloca %struct.dsa_switch*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.qca8k_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dsa_switch* %0, %struct.dsa_switch** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.net_device* %2, %struct.net_device** %6, align 8
  %10 = load %struct.dsa_switch*, %struct.dsa_switch** %4, align 8
  %11 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.qca8k_priv*
  store %struct.qca8k_priv* %13, %struct.qca8k_priv** %7, align 8
  %14 = load i32, i32* @QCA8K_CPU_PORT, align 4
  %15 = call i32 @BIT(i32 %14)
  store i32 %15, i32* %8, align 4
  store i32 1, i32* %9, align 4
  br label %16

16:                                               ; preds = %45, %3
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* @QCA8K_NUM_PORTS, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %48

20:                                               ; preds = %16
  %21 = load %struct.dsa_switch*, %struct.dsa_switch** %4, align 8
  %22 = load i32, i32* %9, align 4
  %23 = call %struct.TYPE_2__* @dsa_to_port(%struct.dsa_switch* %21, i32 %22)
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load %struct.net_device*, %struct.net_device** %24, align 8
  %26 = load %struct.net_device*, %struct.net_device** %6, align 8
  %27 = icmp ne %struct.net_device* %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  br label %45

29:                                               ; preds = %20
  %30 = load %struct.qca8k_priv*, %struct.qca8k_priv** %7, align 8
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @QCA8K_PORT_LOOKUP_CTRL(i32 %31)
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @BIT(i32 %33)
  %35 = call i32 @qca8k_reg_set(%struct.qca8k_priv* %30, i32 %32, i32 %34)
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %29
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @BIT(i32 %40)
  %42 = load i32, i32* %8, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %8, align 4
  br label %44

44:                                               ; preds = %39, %29
  br label %45

45:                                               ; preds = %44, %28
  %46 = load i32, i32* %9, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %9, align 4
  br label %16

48:                                               ; preds = %16
  %49 = load %struct.qca8k_priv*, %struct.qca8k_priv** %7, align 8
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @QCA8K_PORT_LOOKUP_CTRL(i32 %50)
  %52 = load i32, i32* @QCA8K_PORT_LOOKUP_MEMBER, align 4
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @qca8k_rmw(%struct.qca8k_priv* %49, i32 %51, i32 %52, i32 %53)
  ret i32 0
}

declare dso_local i32 @BIT(i32) #1

declare dso_local %struct.TYPE_2__* @dsa_to_port(%struct.dsa_switch*, i32) #1

declare dso_local i32 @qca8k_reg_set(%struct.qca8k_priv*, i32, i32) #1

declare dso_local i32 @QCA8K_PORT_LOOKUP_CTRL(i32) #1

declare dso_local i32 @qca8k_rmw(%struct.qca8k_priv*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
