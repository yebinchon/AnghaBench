; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/extr_at91_can.c_at91_irq_err.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/extr_at91_can.c_at91_irq_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.at91_priv = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.can_frame = type { i64 }

@AT91_SR = common dso_local global i32 0, align 4
@AT91_IRQ_BOFF = common dso_local global i32 0, align 4
@CAN_STATE_BUS_OFF = common dso_local global i32 0, align 4
@AT91_IRQ_ERRP = common dso_local global i32 0, align 4
@CAN_STATE_ERROR_PASSIVE = common dso_local global i32 0, align 4
@AT91_IRQ_WARN = common dso_local global i32 0, align 4
@CAN_STATE_ERROR_WARNING = common dso_local global i32 0, align 4
@AT91_IRQ_ERRA = common dso_local global i32 0, align 4
@CAN_STATE_ERROR_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"BUG! hardware in undefined state\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @at91_irq_err to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @at91_irq_err(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.at91_priv*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.can_frame*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = call %struct.at91_priv* @netdev_priv(%struct.net_device* %9)
  store %struct.at91_priv* %10, %struct.at91_priv** %3, align 8
  %11 = load %struct.at91_priv*, %struct.at91_priv** %3, align 8
  %12 = call i64 @at91_is_sam9263(%struct.at91_priv* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %56

14:                                               ; preds = %1
  %15 = load %struct.at91_priv*, %struct.at91_priv** %3, align 8
  %16 = load i32, i32* @AT91_SR, align 4
  %17 = call i32 @at91_read(%struct.at91_priv* %15, i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @AT91_IRQ_BOFF, align 4
  %20 = and i32 %18, %19
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %14
  %24 = load i32, i32* @CAN_STATE_BUS_OFF, align 4
  store i32 %24, i32* %6, align 4
  br label %55

25:                                               ; preds = %14
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @AT91_IRQ_ERRP, align 4
  %28 = and i32 %26, %27
  %29 = call i64 @unlikely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = load i32, i32* @CAN_STATE_ERROR_PASSIVE, align 4
  store i32 %32, i32* %6, align 4
  br label %54

33:                                               ; preds = %25
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @AT91_IRQ_WARN, align 4
  %36 = and i32 %34, %35
  %37 = call i64 @unlikely(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = load i32, i32* @CAN_STATE_ERROR_WARNING, align 4
  store i32 %40, i32* %6, align 4
  br label %53

41:                                               ; preds = %33
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @AT91_IRQ_ERRA, align 4
  %44 = and i32 %42, %43
  %45 = call i64 @likely(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = load i32, i32* @CAN_STATE_ERROR_ACTIVE, align 4
  store i32 %48, i32* %6, align 4
  br label %52

49:                                               ; preds = %41
  %50 = load %struct.net_device*, %struct.net_device** %2, align 8
  %51 = call i32 @netdev_err(%struct.net_device* %50, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %110

52:                                               ; preds = %47
  br label %53

53:                                               ; preds = %52, %39
  br label %54

54:                                               ; preds = %53, %31
  br label %55

55:                                               ; preds = %54, %23
  br label %63

56:                                               ; preds = %1
  %57 = load %struct.net_device*, %struct.net_device** %2, align 8
  %58 = call i32 @at91_get_state_by_bec(%struct.net_device* %57, i32* %6)
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  br label %110

62:                                               ; preds = %56
  br label %63

63:                                               ; preds = %62, %55
  %64 = load i32, i32* %6, align 4
  %65 = load %struct.at91_priv*, %struct.at91_priv** %3, align 8
  %66 = getelementptr inbounds %struct.at91_priv, %struct.at91_priv* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = icmp eq i32 %64, %68
  %70 = zext i1 %69 to i32
  %71 = call i64 @likely(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %63
  br label %110

74:                                               ; preds = %63
  %75 = load %struct.net_device*, %struct.net_device** %2, align 8
  %76 = call %struct.sk_buff* @alloc_can_err_skb(%struct.net_device* %75, %struct.can_frame** %5)
  store %struct.sk_buff* %76, %struct.sk_buff** %4, align 8
  %77 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %78 = icmp ne %struct.sk_buff* %77, null
  %79 = xor i1 %78, true
  %80 = zext i1 %79 to i32
  %81 = call i64 @unlikely(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %74
  br label %110

84:                                               ; preds = %74
  %85 = load %struct.net_device*, %struct.net_device** %2, align 8
  %86 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %87 = load i32, i32* %6, align 4
  %88 = call i32 @at91_irq_err_state(%struct.net_device* %85, %struct.can_frame* %86, i32 %87)
  %89 = load %struct.net_device*, %struct.net_device** %2, align 8
  %90 = getelementptr inbounds %struct.net_device, %struct.net_device* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %91, align 4
  %94 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %95 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.net_device*, %struct.net_device** %2, align 8
  %98 = getelementptr inbounds %struct.net_device, %struct.net_device* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = sext i32 %100 to i64
  %102 = add nsw i64 %101, %96
  %103 = trunc i64 %102 to i32
  store i32 %103, i32* %99, align 4
  %104 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %105 = call i32 @netif_rx(%struct.sk_buff* %104)
  %106 = load i32, i32* %6, align 4
  %107 = load %struct.at91_priv*, %struct.at91_priv** %3, align 8
  %108 = getelementptr inbounds %struct.at91_priv, %struct.at91_priv* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  store i32 %106, i32* %109, align 4
  br label %110

110:                                              ; preds = %84, %83, %73, %61, %49
  ret void
}

declare dso_local %struct.at91_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @at91_is_sam9263(%struct.at91_priv*) #1

declare dso_local i32 @at91_read(%struct.at91_priv*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @at91_get_state_by_bec(%struct.net_device*, i32*) #1

declare dso_local %struct.sk_buff* @alloc_can_err_skb(%struct.net_device*, %struct.can_frame**) #1

declare dso_local i32 @at91_irq_err_state(%struct.net_device*, %struct.can_frame*, i32) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
