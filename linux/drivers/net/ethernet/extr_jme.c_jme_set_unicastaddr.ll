; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_jme.c_jme_set_unicastaddr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_jme.c_jme_set_unicastaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32* }
%struct.jme_adapter = type { i32 }

@JME_RXUMA_LO = common dso_local global i32 0, align 4
@JME_RXUMA_HI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @jme_set_unicastaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jme_set_unicastaddr(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.jme_adapter*, align 8
  %4 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.jme_adapter* @netdev_priv(%struct.net_device* %5)
  store %struct.jme_adapter* %6, %struct.jme_adapter** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = getelementptr inbounds %struct.net_device, %struct.net_device* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 3
  %11 = load i32, i32* %10, align 4
  %12 = and i32 %11, 255
  %13 = shl i32 %12, 24
  %14 = load %struct.net_device*, %struct.net_device** %2, align 8
  %15 = getelementptr inbounds %struct.net_device, %struct.net_device* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 2
  %18 = load i32, i32* %17, align 4
  %19 = and i32 %18, 255
  %20 = shl i32 %19, 16
  %21 = or i32 %13, %20
  %22 = load %struct.net_device*, %struct.net_device** %2, align 8
  %23 = getelementptr inbounds %struct.net_device, %struct.net_device* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, 255
  %28 = shl i32 %27, 8
  %29 = or i32 %21, %28
  %30 = load %struct.net_device*, %struct.net_device** %2, align 8
  %31 = getelementptr inbounds %struct.net_device, %struct.net_device* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, 255
  %36 = or i32 %29, %35
  store i32 %36, i32* %4, align 4
  %37 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %38 = load i32, i32* @JME_RXUMA_LO, align 4
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @jwrite32(%struct.jme_adapter* %37, i32 %38, i32 %39)
  %41 = load %struct.net_device*, %struct.net_device** %2, align 8
  %42 = getelementptr inbounds %struct.net_device, %struct.net_device* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 5
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, 255
  %47 = shl i32 %46, 8
  %48 = load %struct.net_device*, %struct.net_device** %2, align 8
  %49 = getelementptr inbounds %struct.net_device, %struct.net_device* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 4
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %52, 255
  %54 = or i32 %47, %53
  store i32 %54, i32* %4, align 4
  %55 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %56 = load i32, i32* @JME_RXUMA_HI, align 4
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @jwrite32(%struct.jme_adapter* %55, i32 %56, i32 %57)
  ret void
}

declare dso_local %struct.jme_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @jwrite32(%struct.jme_adapter*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
