; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/b53/extr_b53_srab.c_b53_srab_port_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/b53/extr_b53_srab.c_b53_srab_port_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b53_srab_port_priv = type { i32, %struct.b53_device* }
%struct.b53_device = type { %struct.b53_srab_priv* }
%struct.b53_srab_priv = type { i64 }

@B53_SRAB_INTR = common dso_local global i64 0, align 8
@IRQ_WAKE_THREAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @b53_srab_port_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b53_srab_port_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.b53_srab_port_priv*, align 8
  %6 = alloca %struct.b53_device*, align 8
  %7 = alloca %struct.b53_srab_priv*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.b53_srab_port_priv*
  store %struct.b53_srab_port_priv* %9, %struct.b53_srab_port_priv** %5, align 8
  %10 = load %struct.b53_srab_port_priv*, %struct.b53_srab_port_priv** %5, align 8
  %11 = getelementptr inbounds %struct.b53_srab_port_priv, %struct.b53_srab_port_priv* %10, i32 0, i32 1
  %12 = load %struct.b53_device*, %struct.b53_device** %11, align 8
  store %struct.b53_device* %12, %struct.b53_device** %6, align 8
  %13 = load %struct.b53_device*, %struct.b53_device** %6, align 8
  %14 = getelementptr inbounds %struct.b53_device, %struct.b53_device* %13, i32 0, i32 0
  %15 = load %struct.b53_srab_priv*, %struct.b53_srab_priv** %14, align 8
  store %struct.b53_srab_priv* %15, %struct.b53_srab_priv** %7, align 8
  %16 = load %struct.b53_srab_port_priv*, %struct.b53_srab_port_priv** %5, align 8
  %17 = getelementptr inbounds %struct.b53_srab_port_priv, %struct.b53_srab_port_priv* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @BIT(i32 %18)
  %20 = load %struct.b53_srab_priv*, %struct.b53_srab_priv** %7, align 8
  %21 = getelementptr inbounds %struct.b53_srab_priv, %struct.b53_srab_priv* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @B53_SRAB_INTR, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @writel(i32 %19, i64 %24)
  %26 = load i32, i32* @IRQ_WAKE_THREAD, align 4
  ret i32 %26
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
