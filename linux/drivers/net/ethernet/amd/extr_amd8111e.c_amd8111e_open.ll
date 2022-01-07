; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_amd8111e.c_amd8111e_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_amd8111e.c_amd8111e_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64, i32 }
%struct.amd8111e_priv = type { i32, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@amd8111e_interrupt = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@OPTION_DYN_IPG_ENABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Dynamic IPG Enabled\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @amd8111e_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amd8111e_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.amd8111e_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %5 = load %struct.net_device*, %struct.net_device** %3, align 8
  %6 = call %struct.amd8111e_priv* @netdev_priv(%struct.net_device* %5)
  store %struct.amd8111e_priv* %6, %struct.amd8111e_priv** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = getelementptr inbounds %struct.net_device, %struct.net_device* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %23, label %11

11:                                               ; preds = %1
  %12 = load %struct.net_device*, %struct.net_device** %3, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i32, i32* @amd8111e_interrupt, align 4
  %16 = load i32, i32* @IRQF_SHARED, align 4
  %17 = load %struct.net_device*, %struct.net_device** %3, align 8
  %18 = getelementptr inbounds %struct.net_device, %struct.net_device* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.net_device*, %struct.net_device** %3, align 8
  %21 = call i64 @request_irq(i64 %14, i32 %15, i32 %16, i32 %19, %struct.net_device* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %11, %1
  %24 = load i32, i32* @EAGAIN, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %80

26:                                               ; preds = %11
  %27 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %4, align 8
  %28 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %27, i32 0, i32 4
  %29 = call i32 @napi_enable(i32* %28)
  %30 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %4, align 8
  %31 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %30, i32 0, i32 2
  %32 = call i32 @spin_lock_irq(i32* %31)
  %33 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %4, align 8
  %34 = call i32 @amd8111e_init_hw_default(%struct.amd8111e_priv* %33)
  %35 = load %struct.net_device*, %struct.net_device** %3, align 8
  %36 = call i64 @amd8111e_restart(%struct.net_device* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %58

38:                                               ; preds = %26
  %39 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %4, align 8
  %40 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %39, i32 0, i32 2
  %41 = call i32 @spin_unlock_irq(i32* %40)
  %42 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %4, align 8
  %43 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %42, i32 0, i32 4
  %44 = call i32 @napi_disable(i32* %43)
  %45 = load %struct.net_device*, %struct.net_device** %3, align 8
  %46 = getelementptr inbounds %struct.net_device, %struct.net_device* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %38
  %50 = load %struct.net_device*, %struct.net_device** %3, align 8
  %51 = getelementptr inbounds %struct.net_device, %struct.net_device* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.net_device*, %struct.net_device** %3, align 8
  %54 = call i32 @free_irq(i64 %52, %struct.net_device* %53)
  br label %55

55:                                               ; preds = %49, %38
  %56 = load i32, i32* @ENOMEM, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %2, align 4
  br label %80

58:                                               ; preds = %26
  %59 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %4, align 8
  %60 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @OPTION_DYN_IPG_ENABLE, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %58
  %66 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %4, align 8
  %67 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = call i32 @add_timer(i32* %68)
  %70 = load %struct.net_device*, %struct.net_device** %3, align 8
  %71 = call i32 @netdev_info(%struct.net_device* %70, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %72

72:                                               ; preds = %65, %58
  %73 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %4, align 8
  %74 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %73, i32 0, i32 1
  store i32 1, i32* %74, align 4
  %75 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %4, align 8
  %76 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %75, i32 0, i32 2
  %77 = call i32 @spin_unlock_irq(i32* %76)
  %78 = load %struct.net_device*, %struct.net_device** %3, align 8
  %79 = call i32 @netif_start_queue(%struct.net_device* %78)
  store i32 0, i32* %2, align 4
  br label %80

80:                                               ; preds = %72, %55, %23
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local %struct.amd8111e_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @request_irq(i64, i32, i32, i32, %struct.net_device*) #1

declare dso_local i32 @napi_enable(i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @amd8111e_init_hw_default(%struct.amd8111e_priv*) #1

declare dso_local i64 @amd8111e_restart(%struct.net_device*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @napi_disable(i32*) #1

declare dso_local i32 @free_irq(i64, %struct.net_device*) #1

declare dso_local i32 @add_timer(i32*) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
