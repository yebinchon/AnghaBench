; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/m_can/extr_m_can.c_m_can_clean.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/m_can/extr_m_can.c_m_can_clean.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.m_can_classdev = type { i32, i32*, i32 }

@M_CAN_TXFQS = common dso_local global i32 0, align 4
@TXFQS_TFQPI_MASK = common dso_local global i32 0, align 4
@TXFQS_TFQPI_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @m_can_clean to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @m_can_clean(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.m_can_classdev*, align 8
  %4 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.m_can_classdev* @netdev_priv(%struct.net_device* %5)
  store %struct.m_can_classdev* %6, %struct.m_can_classdev** %3, align 8
  %7 = load %struct.m_can_classdev*, %struct.m_can_classdev** %3, align 8
  %8 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %7, i32 0, i32 1
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %37

11:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  %12 = load %struct.net_device*, %struct.net_device** %2, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %14, align 4
  %17 = load %struct.m_can_classdev*, %struct.m_can_classdev** %3, align 8
  %18 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp sgt i32 %19, 30
  br i1 %20, label %21, label %29

21:                                               ; preds = %11
  %22 = load %struct.m_can_classdev*, %struct.m_can_classdev** %3, align 8
  %23 = load i32, i32* @M_CAN_TXFQS, align 4
  %24 = call i32 @m_can_read(%struct.m_can_classdev* %22, i32 %23)
  %25 = load i32, i32* @TXFQS_TFQPI_MASK, align 4
  %26 = and i32 %24, %25
  %27 = load i32, i32* @TXFQS_TFQPI_SHIFT, align 4
  %28 = ashr i32 %26, %27
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %21, %11
  %30 = load %struct.m_can_classdev*, %struct.m_can_classdev** %3, align 8
  %31 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @can_free_echo_skb(i32 %32, i32 %33)
  %35 = load %struct.m_can_classdev*, %struct.m_can_classdev** %3, align 8
  %36 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %35, i32 0, i32 1
  store i32* null, i32** %36, align 8
  br label %37

37:                                               ; preds = %29, %1
  ret void
}

declare dso_local %struct.m_can_classdev* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @m_can_read(%struct.m_can_classdev*, i32) #1

declare dso_local i32 @can_free_echo_skb(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
