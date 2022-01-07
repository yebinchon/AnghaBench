; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/extr_dev.c_register_candev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/extr_dev.c_register_candev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32* }
%struct.can_priv = type { i32, i32, i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@can_link_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @register_candev(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.can_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %5 = load %struct.net_device*, %struct.net_device** %3, align 8
  %6 = call %struct.can_priv* @netdev_priv(%struct.net_device* %5)
  store %struct.can_priv* %6, %struct.can_priv** %4, align 8
  %7 = load %struct.can_priv*, %struct.can_priv** %4, align 8
  %8 = getelementptr inbounds %struct.can_priv, %struct.can_priv* %7, i32 0, i32 5
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = load %struct.can_priv*, %struct.can_priv** %4, align 8
  %14 = getelementptr inbounds %struct.can_priv, %struct.can_priv* %13, i32 0, i32 6
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = icmp ne i32 %12, %18
  br i1 %19, label %34, label %20

20:                                               ; preds = %1
  %21 = load %struct.can_priv*, %struct.can_priv** %4, align 8
  %22 = getelementptr inbounds %struct.can_priv, %struct.can_priv* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = load %struct.can_priv*, %struct.can_priv** %4, align 8
  %28 = getelementptr inbounds %struct.can_priv, %struct.can_priv* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = icmp ne i32 %26, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %20, %1
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %78

37:                                               ; preds = %20
  %38 = load %struct.can_priv*, %struct.can_priv** %4, align 8
  %39 = getelementptr inbounds %struct.can_priv, %struct.can_priv* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = load %struct.can_priv*, %struct.can_priv** %4, align 8
  %45 = getelementptr inbounds %struct.can_priv, %struct.can_priv* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  %49 = zext i1 %48 to i32
  %50 = icmp ne i32 %43, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %37
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %2, align 4
  br label %78

54:                                               ; preds = %37
  %55 = load %struct.can_priv*, %struct.can_priv** %4, align 8
  %56 = getelementptr inbounds %struct.can_priv, %struct.can_priv* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  %59 = xor i1 %58, true
  %60 = zext i1 %59 to i32
  %61 = load %struct.can_priv*, %struct.can_priv** %4, align 8
  %62 = getelementptr inbounds %struct.can_priv, %struct.can_priv* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  %65 = xor i1 %64, true
  %66 = zext i1 %65 to i32
  %67 = icmp ne i32 %60, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %54
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %2, align 4
  br label %78

71:                                               ; preds = %54
  %72 = load %struct.net_device*, %struct.net_device** %3, align 8
  %73 = getelementptr inbounds %struct.net_device, %struct.net_device* %72, i32 0, i32 0
  store i32* @can_link_ops, i32** %73, align 8
  %74 = load %struct.net_device*, %struct.net_device** %3, align 8
  %75 = call i32 @netif_carrier_off(%struct.net_device* %74)
  %76 = load %struct.net_device*, %struct.net_device** %3, align 8
  %77 = call i32 @register_netdev(%struct.net_device* %76)
  store i32 %77, i32* %2, align 4
  br label %78

78:                                               ; preds = %71, %68, %51, %34
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local %struct.can_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @register_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
