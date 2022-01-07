; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/ifi_canfd/extr_ifi_canfd.c_ifi_canfd_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/ifi_canfd/extr_ifi_canfd.c_ifi_canfd_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.napi_struct = type { %struct.net_device* }
%struct.net_device = type { i32 }
%struct.ifi_canfd_priv = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }

@IFI_CANFD_RXSTCMD = common dso_local global i64 0, align 8
@IFI_CANFD_RXSTCMD_OVERFLOW = common dso_local global i32 0, align 4
@CAN_CTRLMODE_BERR_REPORTING = common dso_local global i32 0, align 4
@IFI_CANFD_RXSTCMD_EMPTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.napi_struct*, i32)* @ifi_canfd_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ifi_canfd_poll(%struct.napi_struct* %0, i32 %1) #0 {
  %3 = alloca %struct.napi_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ifi_canfd_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.napi_struct* %0, %struct.napi_struct** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.napi_struct*, %struct.napi_struct** %3, align 8
  %10 = getelementptr inbounds %struct.napi_struct, %struct.napi_struct* %9, i32 0, i32 0
  %11 = load %struct.net_device*, %struct.net_device** %10, align 8
  store %struct.net_device* %11, %struct.net_device** %5, align 8
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = call %struct.ifi_canfd_priv* @netdev_priv(%struct.net_device* %12)
  store %struct.ifi_canfd_priv* %13, %struct.ifi_canfd_priv** %6, align 8
  %14 = load %struct.ifi_canfd_priv*, %struct.ifi_canfd_priv** %6, align 8
  %15 = getelementptr inbounds %struct.ifi_canfd_priv, %struct.ifi_canfd_priv* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @IFI_CANFD_RXSTCMD, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @readl(i64 %18)
  store i32 %19, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %20 = load %struct.net_device*, %struct.net_device** %5, align 8
  %21 = call i64 @ifi_canfd_handle_state_errors(%struct.net_device* %20)
  %22 = load i32, i32* %8, align 4
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %23, %21
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @IFI_CANFD_RXSTCMD_OVERFLOW, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %2
  %31 = load %struct.net_device*, %struct.net_device** %5, align 8
  %32 = call i64 @ifi_canfd_handle_lost_msg(%struct.net_device* %31)
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %34, %32
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %8, align 4
  br label %37

37:                                               ; preds = %30, %2
  %38 = load %struct.ifi_canfd_priv*, %struct.ifi_canfd_priv** %6, align 8
  %39 = getelementptr inbounds %struct.ifi_canfd_priv, %struct.ifi_canfd_priv* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @CAN_CTRLMODE_BERR_REPORTING, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %37
  %46 = load %struct.net_device*, %struct.net_device** %5, align 8
  %47 = call i64 @ifi_canfd_handle_lec_err(%struct.net_device* %46)
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = add nsw i64 %49, %47
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %8, align 4
  br label %52

52:                                               ; preds = %45, %37
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* @IFI_CANFD_RXSTCMD_EMPTY, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %67, label %57

57:                                               ; preds = %52
  %58 = load %struct.net_device*, %struct.net_device** %5, align 8
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* %8, align 4
  %61 = sub nsw i32 %59, %60
  %62 = call i64 @ifi_canfd_do_rx_poll(%struct.net_device* %58, i32 %61)
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = add nsw i64 %64, %62
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %8, align 4
  br label %67

67:                                               ; preds = %57, %52
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* %4, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %77

71:                                               ; preds = %67
  %72 = load %struct.napi_struct*, %struct.napi_struct** %3, align 8
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @napi_complete_done(%struct.napi_struct* %72, i32 %73)
  %75 = load %struct.net_device*, %struct.net_device** %5, align 8
  %76 = call i32 @ifi_canfd_irq_enable(%struct.net_device* %75, i32 1)
  br label %77

77:                                               ; preds = %71, %67
  %78 = load i32, i32* %8, align 4
  ret i32 %78
}

declare dso_local %struct.ifi_canfd_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i64 @ifi_canfd_handle_state_errors(%struct.net_device*) #1

declare dso_local i64 @ifi_canfd_handle_lost_msg(%struct.net_device*) #1

declare dso_local i64 @ifi_canfd_handle_lec_err(%struct.net_device*) #1

declare dso_local i64 @ifi_canfd_do_rx_poll(%struct.net_device*, i32) #1

declare dso_local i32 @napi_complete_done(%struct.napi_struct*, i32) #1

declare dso_local i32 @ifi_canfd_irq_enable(%struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
