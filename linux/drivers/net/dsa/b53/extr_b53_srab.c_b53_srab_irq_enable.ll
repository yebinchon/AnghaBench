; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/b53/extr_b53_srab.c_b53_srab_irq_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/b53/extr_b53_srab.c_b53_srab_irq_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b53_device = type { i32, %struct.b53_srab_priv* }
%struct.b53_srab_priv = type { %struct.b53_srab_port_priv* }
%struct.b53_srab_port_priv = type { i32, i32 }

@ENXIO = common dso_local global i32 0, align 4
@b53_srab_port_isr = common dso_local global i32 0, align 4
@b53_srab_port_thread = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.b53_device*, i32)* @b53_srab_irq_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b53_srab_irq_enable(%struct.b53_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.b53_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.b53_srab_priv*, align 8
  %7 = alloca %struct.b53_srab_port_priv*, align 8
  %8 = alloca i32, align 4
  store %struct.b53_device* %0, %struct.b53_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.b53_device*, %struct.b53_device** %4, align 8
  %10 = getelementptr inbounds %struct.b53_device, %struct.b53_device* %9, i32 0, i32 1
  %11 = load %struct.b53_srab_priv*, %struct.b53_srab_priv** %10, align 8
  store %struct.b53_srab_priv* %11, %struct.b53_srab_priv** %6, align 8
  %12 = load %struct.b53_srab_priv*, %struct.b53_srab_priv** %6, align 8
  %13 = getelementptr inbounds %struct.b53_srab_priv, %struct.b53_srab_priv* %12, i32 0, i32 0
  %14 = load %struct.b53_srab_port_priv*, %struct.b53_srab_port_priv** %13, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.b53_srab_port_priv, %struct.b53_srab_port_priv* %14, i64 %16
  store %struct.b53_srab_port_priv* %17, %struct.b53_srab_port_priv** %7, align 8
  store i32 0, i32* %8, align 4
  %18 = load %struct.b53_srab_port_priv*, %struct.b53_srab_port_priv** %7, align 8
  %19 = getelementptr inbounds %struct.b53_srab_port_priv, %struct.b53_srab_port_priv* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @ENXIO, align 4
  %22 = sub nsw i32 0, %21
  %23 = icmp eq i32 %20, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i32, i32* %8, align 4
  store i32 %25, i32* %3, align 4
  br label %45

26:                                               ; preds = %2
  %27 = load %struct.b53_srab_port_priv*, %struct.b53_srab_port_priv** %7, align 8
  %28 = getelementptr inbounds %struct.b53_srab_port_priv, %struct.b53_srab_port_priv* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @b53_srab_port_isr, align 4
  %31 = load i32, i32* @b53_srab_port_thread, align 4
  %32 = load %struct.b53_device*, %struct.b53_device** %4, align 8
  %33 = getelementptr inbounds %struct.b53_device, %struct.b53_device* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @dev_name(i32 %34)
  %36 = load %struct.b53_srab_port_priv*, %struct.b53_srab_port_priv** %7, align 8
  %37 = call i32 @request_threaded_irq(i32 %29, i32 %30, i32 %31, i32 0, i32 %35, %struct.b53_srab_port_priv* %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %26
  %41 = load %struct.b53_srab_port_priv*, %struct.b53_srab_port_priv** %7, align 8
  %42 = getelementptr inbounds %struct.b53_srab_port_priv, %struct.b53_srab_port_priv* %41, i32 0, i32 0
  store i32 1, i32* %42, align 4
  br label %43

43:                                               ; preds = %40, %26
  %44 = load i32, i32* %8, align 4
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %43, %24
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @request_threaded_irq(i32, i32, i32, i32, i32, %struct.b53_srab_port_priv*) #1

declare dso_local i32 @dev_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
