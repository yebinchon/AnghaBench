; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_qca8k.c_qca8k_port_set_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_qca8k.c_qca8k_port_set_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qca8k_priv = type { i32 }

@QCA8K_PORT_STATUS_TXMAC = common dso_local global i32 0, align 4
@QCA8K_PORT_STATUS_RXMAC = common dso_local global i32 0, align 4
@QCA8K_PORT_STATUS_LINK_AUTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qca8k_priv*, i32, i32)* @qca8k_port_set_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qca8k_port_set_status(%struct.qca8k_priv* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.qca8k_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.qca8k_priv* %0, %struct.qca8k_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* @QCA8K_PORT_STATUS_TXMAC, align 4
  %9 = load i32, i32* @QCA8K_PORT_STATUS_RXMAC, align 4
  %10 = or i32 %8, %9
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %3
  %14 = load i32, i32* %5, align 4
  %15 = icmp slt i32 %14, 6
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  %17 = load i32, i32* @QCA8K_PORT_STATUS_LINK_AUTO, align 4
  %18 = load i32, i32* %7, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %7, align 4
  br label %20

20:                                               ; preds = %16, %13, %3
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %20
  %24 = load %struct.qca8k_priv*, %struct.qca8k_priv** %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @QCA8K_REG_PORT_STATUS(i32 %25)
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @qca8k_reg_set(%struct.qca8k_priv* %24, i32 %26, i32 %27)
  br label %35

29:                                               ; preds = %20
  %30 = load %struct.qca8k_priv*, %struct.qca8k_priv** %4, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @QCA8K_REG_PORT_STATUS(i32 %31)
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @qca8k_reg_clear(%struct.qca8k_priv* %30, i32 %32, i32 %33)
  br label %35

35:                                               ; preds = %29, %23
  ret void
}

declare dso_local i32 @qca8k_reg_set(%struct.qca8k_priv*, i32, i32) #1

declare dso_local i32 @QCA8K_REG_PORT_STATUS(i32) #1

declare dso_local i32 @qca8k_reg_clear(%struct.qca8k_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
