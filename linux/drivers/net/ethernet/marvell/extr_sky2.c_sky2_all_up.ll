; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_sky2.c_sky2_all_up.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_sky2.c_sky2_all_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sky2_hw = type { i32, i32, i32, %struct.net_device** }
%struct.net_device = type { i32 }
%struct.sky2_port = type { i32 }

@Y2_IS_BASE = common dso_local global i32 0, align 4
@portirq_msk = common dso_local global i32* null, align 8
@SKY2_HW_IRQ_SETUP = common dso_local global i32 0, align 4
@B0_IMSK = common dso_local global i32 0, align 4
@B0_Y2_SP_LISR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sky2_hw*)* @sky2_all_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sky2_all_up(%struct.sky2_hw* %0) #0 {
  %2 = alloca %struct.sky2_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.sky2_port*, align 8
  store %struct.sky2_hw* %0, %struct.sky2_hw** %2, align 8
  %7 = load i32, i32* @Y2_IS_BASE, align 4
  store i32 %7, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %42, %1
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %11 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %45

14:                                               ; preds = %8
  %15 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %16 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %15, i32 0, i32 3
  %17 = load %struct.net_device**, %struct.net_device*** %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.net_device*, %struct.net_device** %17, i64 %19
  %21 = load %struct.net_device*, %struct.net_device** %20, align 8
  store %struct.net_device* %21, %struct.net_device** %5, align 8
  %22 = load %struct.net_device*, %struct.net_device** %5, align 8
  %23 = call %struct.sky2_port* @netdev_priv(%struct.net_device* %22)
  store %struct.sky2_port* %23, %struct.sky2_port** %6, align 8
  %24 = load %struct.net_device*, %struct.net_device** %5, align 8
  %25 = call i32 @netif_running(%struct.net_device* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %14
  br label %42

28:                                               ; preds = %14
  %29 = load %struct.sky2_port*, %struct.sky2_port** %6, align 8
  %30 = call i32 @sky2_hw_up(%struct.sky2_port* %29)
  %31 = load %struct.net_device*, %struct.net_device** %5, align 8
  %32 = call i32 @sky2_set_multicast(%struct.net_device* %31)
  %33 = load i32*, i32** @portirq_msk, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %3, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %3, align 4
  %40 = load %struct.net_device*, %struct.net_device** %5, align 8
  %41 = call i32 @netif_wake_queue(%struct.net_device* %40)
  br label %42

42:                                               ; preds = %28, %27
  %43 = load i32, i32* %4, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %4, align 4
  br label %8

45:                                               ; preds = %8
  %46 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %47 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @SKY2_HW_IRQ_SETUP, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %66

52:                                               ; preds = %45
  %53 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %54 = load i32, i32* @B0_IMSK, align 4
  %55 = load i32, i32* %3, align 4
  %56 = call i32 @sky2_write32(%struct.sky2_hw* %53, i32 %54, i32 %55)
  %57 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %58 = load i32, i32* @B0_IMSK, align 4
  %59 = call i32 @sky2_read32(%struct.sky2_hw* %57, i32 %58)
  %60 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %61 = load i32, i32* @B0_Y2_SP_LISR, align 4
  %62 = call i32 @sky2_read32(%struct.sky2_hw* %60, i32 %61)
  %63 = load %struct.sky2_hw*, %struct.sky2_hw** %2, align 8
  %64 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %63, i32 0, i32 2
  %65 = call i32 @napi_enable(i32* %64)
  br label %66

66:                                               ; preds = %52, %45
  ret void
}

declare dso_local %struct.sky2_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @sky2_hw_up(%struct.sky2_port*) #1

declare dso_local i32 @sky2_set_multicast(%struct.net_device*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

declare dso_local i32 @sky2_write32(%struct.sky2_hw*, i32, i32) #1

declare dso_local i32 @sky2_read32(%struct.sky2_hw*, i32) #1

declare dso_local i32 @napi_enable(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
