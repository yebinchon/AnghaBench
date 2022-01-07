; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bnad.c_bnad_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bnad.c_bnad_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.bnad = type { i32, i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.bna_pause_config = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @bnad_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnad_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bnad*, align 8
  %6 = alloca %struct.bna_pause_config, align 8
  %7 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.bnad* @netdev_priv(%struct.net_device* %8)
  store %struct.bnad* %9, %struct.bnad** %5, align 8
  %10 = load %struct.bnad*, %struct.bnad** %5, align 8
  %11 = getelementptr inbounds %struct.bnad, %struct.bnad* %10, i32 0, i32 0
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.bnad*, %struct.bnad** %5, align 8
  %14 = call i32 @bnad_setup_tx(%struct.bnad* %13, i32 0)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %78

18:                                               ; preds = %1
  %19 = load %struct.bnad*, %struct.bnad** %5, align 8
  %20 = call i32 @bnad_setup_rx(%struct.bnad* %19, i32 0)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %75

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.bna_pause_config, %struct.bna_pause_config* %6, i32 0, i32 1
  store i64 0, i64* %25, align 8
  %26 = getelementptr inbounds %struct.bna_pause_config, %struct.bna_pause_config* %6, i32 0, i32 0
  store i64 0, i64* %26, align 8
  %27 = load %struct.bnad*, %struct.bnad** %5, align 8
  %28 = getelementptr inbounds %struct.bnad, %struct.bnad* %27, i32 0, i32 1
  %29 = load i64, i64* %7, align 8
  %30 = call i32 @spin_lock_irqsave(i32* %28, i64 %29)
  %31 = load %struct.bnad*, %struct.bnad** %5, align 8
  %32 = getelementptr inbounds %struct.bnad, %struct.bnad* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load %struct.bnad*, %struct.bnad** %5, align 8
  %35 = getelementptr inbounds %struct.bnad, %struct.bnad* %34, i32 0, i32 3
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @BNAD_FRAME_SIZE(i32 %38)
  %40 = call i32 @bna_enet_mtu_set(i32* %33, i32 %39, i32* null)
  %41 = load %struct.bnad*, %struct.bnad** %5, align 8
  %42 = getelementptr inbounds %struct.bnad, %struct.bnad* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = call i32 @bna_enet_pause_config(i32* %43, %struct.bna_pause_config* %6)
  %45 = load %struct.bnad*, %struct.bnad** %5, align 8
  %46 = getelementptr inbounds %struct.bnad, %struct.bnad* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = call i32 @bna_enet_enable(i32* %47)
  %49 = load %struct.bnad*, %struct.bnad** %5, align 8
  %50 = getelementptr inbounds %struct.bnad, %struct.bnad* %49, i32 0, i32 1
  %51 = load i64, i64* %7, align 8
  %52 = call i32 @spin_unlock_irqrestore(i32* %50, i64 %51)
  %53 = load %struct.bnad*, %struct.bnad** %5, align 8
  %54 = call i32 @bnad_enable_default_bcast(%struct.bnad* %53)
  %55 = load %struct.bnad*, %struct.bnad** %5, align 8
  %56 = call i32 @bnad_restore_vlans(%struct.bnad* %55, i32 0)
  %57 = load %struct.bnad*, %struct.bnad** %5, align 8
  %58 = getelementptr inbounds %struct.bnad, %struct.bnad* %57, i32 0, i32 1
  %59 = load i64, i64* %7, align 8
  %60 = call i32 @spin_lock_irqsave(i32* %58, i64 %59)
  %61 = load %struct.bnad*, %struct.bnad** %5, align 8
  %62 = load %struct.net_device*, %struct.net_device** %3, align 8
  %63 = getelementptr inbounds %struct.net_device, %struct.net_device* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @bnad_mac_addr_set_locked(%struct.bnad* %61, i32 %64)
  %66 = load %struct.bnad*, %struct.bnad** %5, align 8
  %67 = getelementptr inbounds %struct.bnad, %struct.bnad* %66, i32 0, i32 1
  %68 = load i64, i64* %7, align 8
  %69 = call i32 @spin_unlock_irqrestore(i32* %67, i64 %68)
  %70 = load %struct.bnad*, %struct.bnad** %5, align 8
  %71 = call i32 @bnad_stats_timer_start(%struct.bnad* %70)
  %72 = load %struct.bnad*, %struct.bnad** %5, align 8
  %73 = getelementptr inbounds %struct.bnad, %struct.bnad* %72, i32 0, i32 0
  %74 = call i32 @mutex_unlock(i32* %73)
  store i32 0, i32* %2, align 4
  br label %83

75:                                               ; preds = %23
  %76 = load %struct.bnad*, %struct.bnad** %5, align 8
  %77 = call i32 @bnad_destroy_tx(%struct.bnad* %76, i32 0)
  br label %78

78:                                               ; preds = %75, %17
  %79 = load %struct.bnad*, %struct.bnad** %5, align 8
  %80 = getelementptr inbounds %struct.bnad, %struct.bnad* %79, i32 0, i32 0
  %81 = call i32 @mutex_unlock(i32* %80)
  %82 = load i32, i32* %4, align 4
  store i32 %82, i32* %2, align 4
  br label %83

83:                                               ; preds = %78, %24
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local %struct.bnad* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @bnad_setup_tx(%struct.bnad*, i32) #1

declare dso_local i32 @bnad_setup_rx(%struct.bnad*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @bna_enet_mtu_set(i32*, i32, i32*) #1

declare dso_local i32 @BNAD_FRAME_SIZE(i32) #1

declare dso_local i32 @bna_enet_pause_config(i32*, %struct.bna_pause_config*) #1

declare dso_local i32 @bna_enet_enable(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @bnad_enable_default_bcast(%struct.bnad*) #1

declare dso_local i32 @bnad_restore_vlans(%struct.bnad*, i32) #1

declare dso_local i32 @bnad_mac_addr_set_locked(%struct.bnad*, i32) #1

declare dso_local i32 @bnad_stats_timer_start(%struct.bnad*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @bnad_destroy_tx(%struct.bnad*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
