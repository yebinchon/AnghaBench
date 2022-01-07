; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/b53/extr_b53_common.c_b53_enable_cpu_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/b53/extr_b53_common.c_b53_enable_cpu_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b53_device = type { i32 }

@B53_CPU_PORT_25 = common dso_local global i32 0, align 4
@B53_CPU_PORT = common dso_local global i32 0, align 4
@PORT_CTRL_RX_BCST_EN = common dso_local global i32 0, align 4
@PORT_CTRL_RX_MCST_EN = common dso_local global i32 0, align 4
@PORT_CTRL_RX_UCST_EN = common dso_local global i32 0, align 4
@B53_CTRL_PAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b53_device*, i32)* @b53_enable_cpu_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b53_enable_cpu_port(%struct.b53_device* %0, i32 %1) #0 {
  %3 = alloca %struct.b53_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.b53_device* %0, %struct.b53_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.b53_device*, %struct.b53_device** %3, align 8
  %7 = call i64 @is5325(%struct.b53_device* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = load %struct.b53_device*, %struct.b53_device** %3, align 8
  %11 = call i64 @is5365(%struct.b53_device* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %9, %2
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @B53_CPU_PORT_25, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = load i32, i32* @B53_CPU_PORT, align 4
  store i32 %18, i32* %4, align 4
  br label %19

19:                                               ; preds = %17, %13, %9
  %20 = load i32, i32* @PORT_CTRL_RX_BCST_EN, align 4
  %21 = load i32, i32* @PORT_CTRL_RX_MCST_EN, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @PORT_CTRL_RX_UCST_EN, align 4
  %24 = or i32 %22, %23
  store i32 %24, i32* %5, align 4
  %25 = load %struct.b53_device*, %struct.b53_device** %3, align 8
  %26 = load i32, i32* @B53_CTRL_PAGE, align 4
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @B53_PORT_CTRL(i32 %27)
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @b53_write8(%struct.b53_device* %25, i32 %26, i32 %28, i32 %29)
  %31 = load %struct.b53_device*, %struct.b53_device** %3, align 8
  %32 = getelementptr inbounds %struct.b53_device, %struct.b53_device* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @b53_brcm_hdr_setup(i32 %33, i32 %34)
  ret void
}

declare dso_local i64 @is5325(%struct.b53_device*) #1

declare dso_local i64 @is5365(%struct.b53_device*) #1

declare dso_local i32 @b53_write8(%struct.b53_device*, i32, i32, i32) #1

declare dso_local i32 @B53_PORT_CTRL(i32) #1

declare dso_local i32 @b53_brcm_hdr_setup(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
