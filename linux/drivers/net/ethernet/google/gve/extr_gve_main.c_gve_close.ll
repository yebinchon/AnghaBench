; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/google/gve/extr_gve_main.c_gve_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/google/gve/extr_gve_main.c_gve_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.gve_priv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @gve_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gve_close(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.gve_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.gve_priv* @netdev_priv(%struct.net_device* %6)
  store %struct.gve_priv* %7, %struct.gve_priv** %4, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call i32 @netif_carrier_off(%struct.net_device* %8)
  %10 = load %struct.gve_priv*, %struct.gve_priv** %4, align 8
  %11 = call i64 @gve_get_device_rings_ok(%struct.gve_priv* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %30

13:                                               ; preds = %1
  %14 = load %struct.gve_priv*, %struct.gve_priv** %4, align 8
  %15 = call i32 @gve_turndown(%struct.gve_priv* %14)
  %16 = load %struct.gve_priv*, %struct.gve_priv** %4, align 8
  %17 = call i32 @gve_destroy_rings(%struct.gve_priv* %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  br label %35

21:                                               ; preds = %13
  %22 = load %struct.gve_priv*, %struct.gve_priv** %4, align 8
  %23 = call i32 @gve_unregister_qpls(%struct.gve_priv* %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  br label %35

27:                                               ; preds = %21
  %28 = load %struct.gve_priv*, %struct.gve_priv** %4, align 8
  %29 = call i32 @gve_clear_device_rings_ok(%struct.gve_priv* %28)
  br label %30

30:                                               ; preds = %27, %1
  %31 = load %struct.gve_priv*, %struct.gve_priv** %4, align 8
  %32 = call i32 @gve_free_rings(%struct.gve_priv* %31)
  %33 = load %struct.gve_priv*, %struct.gve_priv** %4, align 8
  %34 = call i32 @gve_free_qpls(%struct.gve_priv* %33)
  store i32 0, i32* %2, align 4
  br label %46

35:                                               ; preds = %26, %20
  %36 = load %struct.gve_priv*, %struct.gve_priv** %4, align 8
  %37 = call i64 @gve_get_reset_in_progress(%struct.gve_priv* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = load i32, i32* %5, align 4
  store i32 %40, i32* %2, align 4
  br label %46

41:                                               ; preds = %35
  %42 = load %struct.gve_priv*, %struct.gve_priv** %4, align 8
  %43 = call i32 @gve_reset_and_teardown(%struct.gve_priv* %42, i32 1)
  %44 = load %struct.gve_priv*, %struct.gve_priv** %4, align 8
  %45 = call i32 @gve_reset_recovery(%struct.gve_priv* %44, i32 0)
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %41, %39, %30
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local %struct.gve_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i64 @gve_get_device_rings_ok(%struct.gve_priv*) #1

declare dso_local i32 @gve_turndown(%struct.gve_priv*) #1

declare dso_local i32 @gve_destroy_rings(%struct.gve_priv*) #1

declare dso_local i32 @gve_unregister_qpls(%struct.gve_priv*) #1

declare dso_local i32 @gve_clear_device_rings_ok(%struct.gve_priv*) #1

declare dso_local i32 @gve_free_rings(%struct.gve_priv*) #1

declare dso_local i32 @gve_free_qpls(%struct.gve_priv*) #1

declare dso_local i64 @gve_get_reset_in_progress(%struct.gve_priv*) #1

declare dso_local i32 @gve_reset_and_teardown(%struct.gve_priv*, i32) #1

declare dso_local i32 @gve_reset_recovery(%struct.gve_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
