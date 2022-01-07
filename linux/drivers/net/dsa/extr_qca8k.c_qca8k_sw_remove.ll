; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_qca8k.c_qca8k_sw_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_qca8k.c_qca8k_sw_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdio_device = type { i32 }
%struct.qca8k_priv = type { i32 }

@QCA8K_NUM_PORTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mdio_device*)* @qca8k_sw_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qca8k_sw_remove(%struct.mdio_device* %0) #0 {
  %2 = alloca %struct.mdio_device*, align 8
  %3 = alloca %struct.qca8k_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.mdio_device* %0, %struct.mdio_device** %2, align 8
  %5 = load %struct.mdio_device*, %struct.mdio_device** %2, align 8
  %6 = getelementptr inbounds %struct.mdio_device, %struct.mdio_device* %5, i32 0, i32 0
  %7 = call %struct.qca8k_priv* @dev_get_drvdata(i32* %6)
  store %struct.qca8k_priv* %7, %struct.qca8k_priv** %3, align 8
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %16, %1
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @QCA8K_NUM_PORTS, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %19

12:                                               ; preds = %8
  %13 = load %struct.qca8k_priv*, %struct.qca8k_priv** %3, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @qca8k_port_set_status(%struct.qca8k_priv* %13, i32 %14, i32 0)
  br label %16

16:                                               ; preds = %12
  %17 = load i32, i32* %4, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %4, align 4
  br label %8

19:                                               ; preds = %8
  %20 = load %struct.qca8k_priv*, %struct.qca8k_priv** %3, align 8
  %21 = getelementptr inbounds %struct.qca8k_priv, %struct.qca8k_priv* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @dsa_unregister_switch(i32 %22)
  ret void
}

declare dso_local %struct.qca8k_priv* @dev_get_drvdata(i32*) #1

declare dso_local i32 @qca8k_port_set_status(%struct.qca8k_priv*, i32, i32) #1

declare dso_local i32 @dsa_unregister_switch(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
