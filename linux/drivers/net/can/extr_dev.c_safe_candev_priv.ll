; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/extr_dev.c_safe_candev_priv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/extr_dev.c_safe_candev_priv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.can_priv = type { i32 }
%struct.net_device = type { i64, i32* }

@ARPHRD_CAN = common dso_local global i64 0, align 8
@can_link_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.can_priv* @safe_candev_priv(%struct.net_device* %0) #0 {
  %2 = alloca %struct.can_priv*, align 8
  %3 = alloca %struct.net_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %4 = load %struct.net_device*, %struct.net_device** %3, align 8
  %5 = getelementptr inbounds %struct.net_device, %struct.net_device* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @ARPHRD_CAN, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %14, label %9

9:                                                ; preds = %1
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = getelementptr inbounds %struct.net_device, %struct.net_device* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* %12, @can_link_ops
  br i1 %13, label %14, label %15

14:                                               ; preds = %9, %1
  store %struct.can_priv* null, %struct.can_priv** %2, align 8
  br label %18

15:                                               ; preds = %9
  %16 = load %struct.net_device*, %struct.net_device** %3, align 8
  %17 = call %struct.can_priv* @netdev_priv(%struct.net_device* %16)
  store %struct.can_priv* %17, %struct.can_priv** %2, align 8
  br label %18

18:                                               ; preds = %15, %14
  %19 = load %struct.can_priv*, %struct.can_priv** %2, align 8
  ret %struct.can_priv* %19
}

declare dso_local %struct.can_priv* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
