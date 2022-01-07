; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/google/gve/extr_gve_main.c_gve_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/google/gve/extr_gve_main.c_gve_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.gve_priv = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @gve_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gve_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.gve_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.gve_priv* @netdev_priv(%struct.net_device* %6)
  store %struct.gve_priv* %7, %struct.gve_priv** %4, align 8
  %8 = load %struct.gve_priv*, %struct.gve_priv** %4, align 8
  %9 = call i32 @gve_alloc_qpls(%struct.gve_priv* %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %5, align 4
  store i32 %13, i32* %2, align 4
  br label %78

14:                                               ; preds = %1
  %15 = load %struct.gve_priv*, %struct.gve_priv** %4, align 8
  %16 = call i32 @gve_alloc_rings(%struct.gve_priv* %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  br label %62

20:                                               ; preds = %14
  %21 = load %struct.net_device*, %struct.net_device** %3, align 8
  %22 = load %struct.gve_priv*, %struct.gve_priv** %4, align 8
  %23 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @netif_set_real_num_tx_queues(%struct.net_device* %21, i32 %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %20
  br label %59

30:                                               ; preds = %20
  %31 = load %struct.net_device*, %struct.net_device** %3, align 8
  %32 = load %struct.gve_priv*, %struct.gve_priv** %4, align 8
  %33 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @netif_set_real_num_rx_queues(%struct.net_device* %31, i32 %35)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %30
  br label %59

40:                                               ; preds = %30
  %41 = load %struct.gve_priv*, %struct.gve_priv** %4, align 8
  %42 = call i32 @gve_register_qpls(%struct.gve_priv* %41)
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %66

46:                                               ; preds = %40
  %47 = load %struct.gve_priv*, %struct.gve_priv** %4, align 8
  %48 = call i32 @gve_create_rings(%struct.gve_priv* %47)
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %5, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  br label %66

52:                                               ; preds = %46
  %53 = load %struct.gve_priv*, %struct.gve_priv** %4, align 8
  %54 = call i32 @gve_set_device_rings_ok(%struct.gve_priv* %53)
  %55 = load %struct.gve_priv*, %struct.gve_priv** %4, align 8
  %56 = call i32 @gve_turnup(%struct.gve_priv* %55)
  %57 = load %struct.net_device*, %struct.net_device** %3, align 8
  %58 = call i32 @netif_carrier_on(%struct.net_device* %57)
  store i32 0, i32* %2, align 4
  br label %78

59:                                               ; preds = %39, %29
  %60 = load %struct.gve_priv*, %struct.gve_priv** %4, align 8
  %61 = call i32 @gve_free_rings(%struct.gve_priv* %60)
  br label %62

62:                                               ; preds = %59, %19
  %63 = load %struct.gve_priv*, %struct.gve_priv** %4, align 8
  %64 = call i32 @gve_free_qpls(%struct.gve_priv* %63)
  %65 = load i32, i32* %5, align 4
  store i32 %65, i32* %2, align 4
  br label %78

66:                                               ; preds = %51, %45
  %67 = load %struct.gve_priv*, %struct.gve_priv** %4, align 8
  %68 = call i64 @gve_get_reset_in_progress(%struct.gve_priv* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %66
  %71 = load i32, i32* %5, align 4
  store i32 %71, i32* %2, align 4
  br label %78

72:                                               ; preds = %66
  %73 = load %struct.gve_priv*, %struct.gve_priv** %4, align 8
  %74 = call i32 @gve_reset_and_teardown(%struct.gve_priv* %73, i32 1)
  %75 = load %struct.gve_priv*, %struct.gve_priv** %4, align 8
  %76 = call i32 @gve_reset_recovery(%struct.gve_priv* %75, i32 0)
  %77 = load i32, i32* %5, align 4
  store i32 %77, i32* %2, align 4
  br label %78

78:                                               ; preds = %72, %70, %62, %52, %12
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local %struct.gve_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @gve_alloc_qpls(%struct.gve_priv*) #1

declare dso_local i32 @gve_alloc_rings(%struct.gve_priv*) #1

declare dso_local i32 @netif_set_real_num_tx_queues(%struct.net_device*, i32) #1

declare dso_local i32 @netif_set_real_num_rx_queues(%struct.net_device*, i32) #1

declare dso_local i32 @gve_register_qpls(%struct.gve_priv*) #1

declare dso_local i32 @gve_create_rings(%struct.gve_priv*) #1

declare dso_local i32 @gve_set_device_rings_ok(%struct.gve_priv*) #1

declare dso_local i32 @gve_turnup(%struct.gve_priv*) #1

declare dso_local i32 @netif_carrier_on(%struct.net_device*) #1

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
