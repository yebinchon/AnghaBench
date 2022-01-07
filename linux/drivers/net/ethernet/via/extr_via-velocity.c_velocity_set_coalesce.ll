; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/via/extr_via-velocity.c_velocity_set_coalesce.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/via/extr_via-velocity.c_velocity_set_coalesce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_coalesce = type { i32, i32, i32, i32 }
%struct.velocity_info = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_coalesce*)* @velocity_set_coalesce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @velocity_set_coalesce(%struct.net_device* %0, %struct.ethtool_coalesce* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_coalesce*, align 8
  %6 = alloca %struct.velocity_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_coalesce* %1, %struct.ethtool_coalesce** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.velocity_info* @netdev_priv(%struct.net_device* %9)
  store %struct.velocity_info* %10, %struct.velocity_info** %6, align 8
  store i32 4032, i32* %7, align 4
  %11 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %12 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp sgt i32 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %102

19:                                               ; preds = %2
  %20 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %21 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp sgt i32 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %102

28:                                               ; preds = %19
  %29 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %30 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = icmp sgt i32 %31, 255
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %102

36:                                               ; preds = %28
  %37 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %38 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = icmp sgt i32 %39, 255
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %102

44:                                               ; preds = %36
  %45 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %46 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.velocity_info*, %struct.velocity_info** %6, align 8
  %49 = getelementptr inbounds %struct.velocity_info, %struct.velocity_info* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  store i32 %47, i32* %50, align 4
  %51 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %52 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.velocity_info*, %struct.velocity_info** %6, align 8
  %55 = getelementptr inbounds %struct.velocity_info, %struct.velocity_info* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  store i32 %53, i32* %56, align 4
  %57 = load %struct.velocity_info*, %struct.velocity_info** %6, align 8
  %58 = getelementptr inbounds %struct.velocity_info, %struct.velocity_info* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 3
  %60 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %61 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @set_pending_timer_val(i32* %59, i32 %62)
  %64 = load %struct.velocity_info*, %struct.velocity_info** %6, align 8
  %65 = getelementptr inbounds %struct.velocity_info, %struct.velocity_info* %64, i32 0, i32 3
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 2
  %67 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %68 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @set_pending_timer_val(i32* %66, i32 %69)
  %71 = load %struct.velocity_info*, %struct.velocity_info** %6, align 8
  %72 = getelementptr inbounds %struct.velocity_info, %struct.velocity_info* %71, i32 0, i32 0
  %73 = load i64, i64* %8, align 8
  %74 = call i32 @spin_lock_irqsave(i32* %72, i64 %73)
  %75 = load %struct.velocity_info*, %struct.velocity_info** %6, align 8
  %76 = getelementptr inbounds %struct.velocity_info, %struct.velocity_info* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @mac_disable_int(i32 %77)
  %79 = load %struct.velocity_info*, %struct.velocity_info** %6, align 8
  %80 = call i32 @setup_adaptive_interrupts(%struct.velocity_info* %79)
  %81 = load %struct.velocity_info*, %struct.velocity_info** %6, align 8
  %82 = call i32 @setup_queue_timers(%struct.velocity_info* %81)
  %83 = load %struct.velocity_info*, %struct.velocity_info** %6, align 8
  %84 = getelementptr inbounds %struct.velocity_info, %struct.velocity_info* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.velocity_info*, %struct.velocity_info** %6, align 8
  %87 = getelementptr inbounds %struct.velocity_info, %struct.velocity_info* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @mac_write_int_mask(i32 %85, i32 %88)
  %90 = load %struct.velocity_info*, %struct.velocity_info** %6, align 8
  %91 = getelementptr inbounds %struct.velocity_info, %struct.velocity_info* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @mac_clear_isr(i32 %92)
  %94 = load %struct.velocity_info*, %struct.velocity_info** %6, align 8
  %95 = getelementptr inbounds %struct.velocity_info, %struct.velocity_info* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @mac_enable_int(i32 %96)
  %98 = load %struct.velocity_info*, %struct.velocity_info** %6, align 8
  %99 = getelementptr inbounds %struct.velocity_info, %struct.velocity_info* %98, i32 0, i32 0
  %100 = load i64, i64* %8, align 8
  %101 = call i32 @spin_unlock_irqrestore(i32* %99, i64 %100)
  store i32 0, i32* %3, align 4
  br label %102

102:                                              ; preds = %44, %41, %33, %25, %16
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local %struct.velocity_info* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @set_pending_timer_val(i32*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @mac_disable_int(i32) #1

declare dso_local i32 @setup_adaptive_interrupts(%struct.velocity_info*) #1

declare dso_local i32 @setup_queue_timers(%struct.velocity_info*) #1

declare dso_local i32 @mac_write_int_mask(i32, i32) #1

declare dso_local i32 @mac_clear_isr(i32) #1

declare dso_local i32 @mac_enable_int(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
