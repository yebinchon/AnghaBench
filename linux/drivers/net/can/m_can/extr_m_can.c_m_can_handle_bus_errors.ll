; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/m_can/extr_m_can.c_m_can_handle_bus_errors.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/m_can/extr_m_can.c_m_can_handle_bus_errors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.m_can_classdev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@IR_RF0L = common dso_local global i32 0, align 4
@CAN_CTRLMODE_BERR_REPORTING = common dso_local global i32 0, align 4
@LEC_UNUSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32, i32)* @m_can_handle_bus_errors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m_can_handle_bus_errors(%struct.net_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.m_can_classdev*, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.m_can_classdev* @netdev_priv(%struct.net_device* %9)
  store %struct.m_can_classdev* %10, %struct.m_can_classdev** %7, align 8
  store i32 0, i32* %8, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @IR_RF0L, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %3
  %16 = load %struct.net_device*, %struct.net_device** %4, align 8
  %17 = call i64 @m_can_handle_lost_msg(%struct.net_device* %16)
  %18 = load i32, i32* %8, align 4
  %19 = sext i32 %18 to i64
  %20 = add nsw i64 %19, %17
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %8, align 4
  br label %22

22:                                               ; preds = %15, %3
  %23 = load %struct.m_can_classdev*, %struct.m_can_classdev** %7, align 8
  %24 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @CAN_CTRLMODE_BERR_REPORTING, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %44

30:                                               ; preds = %22
  %31 = load i32, i32* %6, align 4
  %32 = call i64 @is_lec_err(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %30
  %35 = load %struct.net_device*, %struct.net_device** %4, align 8
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @LEC_UNUSED, align 4
  %38 = and i32 %36, %37
  %39 = call i64 @m_can_handle_lec_err(%struct.net_device* %35, i32 %38)
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = add nsw i64 %41, %39
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %8, align 4
  br label %44

44:                                               ; preds = %34, %30, %22
  %45 = load %struct.net_device*, %struct.net_device** %4, align 8
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @m_can_handle_other_err(%struct.net_device* %45, i32 %46)
  %48 = load i32, i32* %8, align 4
  ret i32 %48
}

declare dso_local %struct.m_can_classdev* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @m_can_handle_lost_msg(%struct.net_device*) #1

declare dso_local i64 @is_lec_err(i32) #1

declare dso_local i64 @m_can_handle_lec_err(%struct.net_device*, i32) #1

declare dso_local i32 @m_can_handle_other_err(%struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
