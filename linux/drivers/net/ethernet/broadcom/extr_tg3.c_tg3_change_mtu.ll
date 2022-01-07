; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_change_mtu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_change_mtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.tg3 = type { i32 }

@RESET_KIND_SHUTDOWN = common dso_local global i32 0, align 4
@ASIC_REV_57766 = common dso_local global i64 0, align 8
@ASIC_REV_5717 = common dso_local global i64 0, align 8
@ASIC_REV_5719 = common dso_local global i64 0, align 8
@ASIC_REV_5720 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @tg3_change_mtu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tg3_change_mtu(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tg3*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.tg3* @netdev_priv(%struct.net_device* %9)
  store %struct.tg3* %10, %struct.tg3** %6, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call i32 @netif_running(%struct.net_device* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %2
  %15 = load %struct.net_device*, %struct.net_device** %4, align 8
  %16 = load %struct.tg3*, %struct.tg3** %6, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @tg3_set_mtu(%struct.net_device* %15, %struct.tg3* %16, i32 %17)
  store i32 0, i32* %3, align 4
  br label %72

19:                                               ; preds = %2
  %20 = load %struct.tg3*, %struct.tg3** %6, align 8
  %21 = call i32 @tg3_phy_stop(%struct.tg3* %20)
  %22 = load %struct.tg3*, %struct.tg3** %6, align 8
  %23 = call i32 @tg3_netif_stop(%struct.tg3* %22)
  %24 = load %struct.net_device*, %struct.net_device** %4, align 8
  %25 = load %struct.tg3*, %struct.tg3** %6, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @tg3_set_mtu(%struct.net_device* %24, %struct.tg3* %25, i32 %26)
  %28 = load %struct.tg3*, %struct.tg3** %6, align 8
  %29 = call i32 @tg3_full_lock(%struct.tg3* %28, i32 1)
  %30 = load %struct.tg3*, %struct.tg3** %6, align 8
  %31 = load i32, i32* @RESET_KIND_SHUTDOWN, align 4
  %32 = call i32 @tg3_halt(%struct.tg3* %30, i32 %31, i32 1)
  %33 = load %struct.tg3*, %struct.tg3** %6, align 8
  %34 = call i64 @tg3_asic_rev(%struct.tg3* %33)
  %35 = load i64, i64* @ASIC_REV_57766, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %52, label %37

37:                                               ; preds = %19
  %38 = load %struct.tg3*, %struct.tg3** %6, align 8
  %39 = call i64 @tg3_asic_rev(%struct.tg3* %38)
  %40 = load i64, i64* @ASIC_REV_5717, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %52, label %42

42:                                               ; preds = %37
  %43 = load %struct.tg3*, %struct.tg3** %6, align 8
  %44 = call i64 @tg3_asic_rev(%struct.tg3* %43)
  %45 = load i64, i64* @ASIC_REV_5719, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %52, label %47

47:                                               ; preds = %42
  %48 = load %struct.tg3*, %struct.tg3** %6, align 8
  %49 = call i64 @tg3_asic_rev(%struct.tg3* %48)
  %50 = load i64, i64* @ASIC_REV_5720, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %47, %42, %37, %19
  store i32 1, i32* %8, align 4
  br label %53

53:                                               ; preds = %52, %47
  %54 = load %struct.tg3*, %struct.tg3** %6, align 8
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @tg3_restart_hw(%struct.tg3* %54, i32 %55)
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %53
  %60 = load %struct.tg3*, %struct.tg3** %6, align 8
  %61 = call i32 @tg3_netif_start(%struct.tg3* %60)
  br label %62

62:                                               ; preds = %59, %53
  %63 = load %struct.tg3*, %struct.tg3** %6, align 8
  %64 = call i32 @tg3_full_unlock(%struct.tg3* %63)
  %65 = load i32, i32* %7, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %62
  %68 = load %struct.tg3*, %struct.tg3** %6, align 8
  %69 = call i32 @tg3_phy_start(%struct.tg3* %68)
  br label %70

70:                                               ; preds = %67, %62
  %71 = load i32, i32* %7, align 4
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %70, %14
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local %struct.tg3* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @tg3_set_mtu(%struct.net_device*, %struct.tg3*, i32) #1

declare dso_local i32 @tg3_phy_stop(%struct.tg3*) #1

declare dso_local i32 @tg3_netif_stop(%struct.tg3*) #1

declare dso_local i32 @tg3_full_lock(%struct.tg3*, i32) #1

declare dso_local i32 @tg3_halt(%struct.tg3*, i32, i32) #1

declare dso_local i64 @tg3_asic_rev(%struct.tg3*) #1

declare dso_local i32 @tg3_restart_hw(%struct.tg3*, i32) #1

declare dso_local i32 @tg3_netif_start(%struct.tg3*) #1

declare dso_local i32 @tg3_full_unlock(%struct.tg3*) #1

declare dso_local i32 @tg3_phy_start(%struct.tg3*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
