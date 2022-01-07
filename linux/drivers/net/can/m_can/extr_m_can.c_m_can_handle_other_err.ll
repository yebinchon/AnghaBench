; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/m_can/extr_m_can.c_m_can_handle_other_err.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/m_can/extr_m_can.c_m_can_handle_other_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }

@IR_WDI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Message RAM Watchdog event due to missing READY\0A\00", align 1
@IR_ELO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Error Logging Overflow\0A\00", align 1
@IR_BEU = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"Bit Error Uncorrected\0A\00", align 1
@IR_BEC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"Bit Error Corrected\0A\00", align 1
@IR_TOO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"Timeout reached\0A\00", align 1
@IR_MRAF = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [37 x i8] c"Message RAM access failure occurred\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32)* @m_can_handle_other_err to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @m_can_handle_other_err(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @IR_WDI, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = call i32 @netdev_err(%struct.net_device* %10, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  br label %12

12:                                               ; preds = %9, %2
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @IR_ELO, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = load %struct.net_device*, %struct.net_device** %3, align 8
  %19 = call i32 @netdev_err(%struct.net_device* %18, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %20

20:                                               ; preds = %17, %12
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @IR_BEU, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load %struct.net_device*, %struct.net_device** %3, align 8
  %27 = call i32 @netdev_err(%struct.net_device* %26, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %28

28:                                               ; preds = %25, %20
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @IR_BEC, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load %struct.net_device*, %struct.net_device** %3, align 8
  %35 = call i32 @netdev_err(%struct.net_device* %34, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %36

36:                                               ; preds = %33, %28
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @IR_TOO, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load %struct.net_device*, %struct.net_device** %3, align 8
  %43 = call i32 @netdev_err(%struct.net_device* %42, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  br label %44

44:                                               ; preds = %41, %36
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @IR_MRAF, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load %struct.net_device*, %struct.net_device** %3, align 8
  %51 = call i32 @netdev_err(%struct.net_device* %50, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0))
  br label %52

52:                                               ; preds = %49, %44
  ret void
}

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
