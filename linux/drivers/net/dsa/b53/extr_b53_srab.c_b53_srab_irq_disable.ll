; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/b53/extr_b53_srab.c_b53_srab_irq_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/b53/extr_b53_srab.c_b53_srab_irq_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b53_device = type { %struct.b53_srab_priv* }
%struct.b53_srab_priv = type { %struct.b53_srab_port_priv* }
%struct.b53_srab_port_priv = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b53_device*, i32)* @b53_srab_irq_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b53_srab_irq_disable(%struct.b53_device* %0, i32 %1) #0 {
  %3 = alloca %struct.b53_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.b53_srab_priv*, align 8
  %6 = alloca %struct.b53_srab_port_priv*, align 8
  store %struct.b53_device* %0, %struct.b53_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.b53_device*, %struct.b53_device** %3, align 8
  %8 = getelementptr inbounds %struct.b53_device, %struct.b53_device* %7, i32 0, i32 0
  %9 = load %struct.b53_srab_priv*, %struct.b53_srab_priv** %8, align 8
  store %struct.b53_srab_priv* %9, %struct.b53_srab_priv** %5, align 8
  %10 = load %struct.b53_srab_priv*, %struct.b53_srab_priv** %5, align 8
  %11 = getelementptr inbounds %struct.b53_srab_priv, %struct.b53_srab_priv* %10, i32 0, i32 0
  %12 = load %struct.b53_srab_port_priv*, %struct.b53_srab_port_priv** %11, align 8
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.b53_srab_port_priv, %struct.b53_srab_port_priv* %12, i64 %14
  store %struct.b53_srab_port_priv* %15, %struct.b53_srab_port_priv** %6, align 8
  %16 = load %struct.b53_srab_port_priv*, %struct.b53_srab_port_priv** %6, align 8
  %17 = getelementptr inbounds %struct.b53_srab_port_priv, %struct.b53_srab_port_priv* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %2
  %21 = load %struct.b53_srab_port_priv*, %struct.b53_srab_port_priv** %6, align 8
  %22 = getelementptr inbounds %struct.b53_srab_port_priv, %struct.b53_srab_port_priv* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.b53_srab_port_priv*, %struct.b53_srab_port_priv** %6, align 8
  %25 = call i32 @free_irq(i32 %23, %struct.b53_srab_port_priv* %24)
  %26 = load %struct.b53_srab_port_priv*, %struct.b53_srab_port_priv** %6, align 8
  %27 = getelementptr inbounds %struct.b53_srab_port_priv, %struct.b53_srab_port_priv* %26, i32 0, i32 0
  store i32 0, i32* %27, align 4
  br label %28

28:                                               ; preds = %20, %2
  ret void
}

declare dso_local i32 @free_irq(i32, %struct.b53_srab_port_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
