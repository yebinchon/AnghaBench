; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_ifb.c_ifb_dev_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_ifb.c_ifb_dev_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ifb_dev_private = type { %struct.ifb_q_private* }
%struct.ifb_q_private = type { i32, i32, i32, i32, i32, i32, %struct.net_device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ifb_ri_tasklet = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @ifb_dev_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ifb_dev_init(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ifb_dev_private*, align 8
  %5 = alloca %struct.ifb_q_private*, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.ifb_dev_private* @netdev_priv(%struct.net_device* %7)
  store %struct.ifb_dev_private* %8, %struct.ifb_dev_private** %4, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = getelementptr inbounds %struct.net_device, %struct.net_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.ifb_q_private* @kcalloc(i32 %11, i32 32, i32 %12)
  store %struct.ifb_q_private* %13, %struct.ifb_q_private** %5, align 8
  %14 = load %struct.ifb_q_private*, %struct.ifb_q_private** %5, align 8
  %15 = icmp ne %struct.ifb_q_private* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %64

19:                                               ; preds = %1
  %20 = load %struct.ifb_q_private*, %struct.ifb_q_private** %5, align 8
  %21 = load %struct.ifb_dev_private*, %struct.ifb_dev_private** %4, align 8
  %22 = getelementptr inbounds %struct.ifb_dev_private, %struct.ifb_dev_private* %21, i32 0, i32 0
  store %struct.ifb_q_private* %20, %struct.ifb_q_private** %22, align 8
  store i32 0, i32* %6, align 4
  br label %23

23:                                               ; preds = %58, %19
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.net_device*, %struct.net_device** %3, align 8
  %26 = getelementptr inbounds %struct.net_device, %struct.net_device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %63

29:                                               ; preds = %23
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.ifb_q_private*, %struct.ifb_q_private** %5, align 8
  %32 = getelementptr inbounds %struct.ifb_q_private, %struct.ifb_q_private* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load %struct.net_device*, %struct.net_device** %3, align 8
  %34 = load %struct.ifb_q_private*, %struct.ifb_q_private** %5, align 8
  %35 = getelementptr inbounds %struct.ifb_q_private, %struct.ifb_q_private* %34, i32 0, i32 6
  store %struct.net_device* %33, %struct.net_device** %35, align 8
  %36 = load %struct.ifb_q_private*, %struct.ifb_q_private** %5, align 8
  %37 = getelementptr inbounds %struct.ifb_q_private, %struct.ifb_q_private* %36, i32 0, i32 5
  %38 = call i32 @__skb_queue_head_init(i32* %37)
  %39 = load %struct.ifb_q_private*, %struct.ifb_q_private** %5, align 8
  %40 = getelementptr inbounds %struct.ifb_q_private, %struct.ifb_q_private* %39, i32 0, i32 4
  %41 = call i32 @__skb_queue_head_init(i32* %40)
  %42 = load %struct.ifb_q_private*, %struct.ifb_q_private** %5, align 8
  %43 = getelementptr inbounds %struct.ifb_q_private, %struct.ifb_q_private* %42, i32 0, i32 3
  %44 = call i32 @u64_stats_init(i32* %43)
  %45 = load %struct.ifb_q_private*, %struct.ifb_q_private** %5, align 8
  %46 = getelementptr inbounds %struct.ifb_q_private, %struct.ifb_q_private* %45, i32 0, i32 2
  %47 = call i32 @u64_stats_init(i32* %46)
  %48 = load %struct.ifb_q_private*, %struct.ifb_q_private** %5, align 8
  %49 = getelementptr inbounds %struct.ifb_q_private, %struct.ifb_q_private* %48, i32 0, i32 1
  %50 = load i32, i32* @ifb_ri_tasklet, align 4
  %51 = load %struct.ifb_q_private*, %struct.ifb_q_private** %5, align 8
  %52 = ptrtoint %struct.ifb_q_private* %51 to i64
  %53 = call i32 @tasklet_init(i32* %49, i32 %50, i64 %52)
  %54 = load %struct.net_device*, %struct.net_device** %3, align 8
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @netdev_get_tx_queue(%struct.net_device* %54, i32 %55)
  %57 = call i32 @netif_tx_start_queue(i32 %56)
  br label %58

58:                                               ; preds = %29
  %59 = load i32, i32* %6, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %6, align 4
  %61 = load %struct.ifb_q_private*, %struct.ifb_q_private** %5, align 8
  %62 = getelementptr inbounds %struct.ifb_q_private, %struct.ifb_q_private* %61, i32 1
  store %struct.ifb_q_private* %62, %struct.ifb_q_private** %5, align 8
  br label %23

63:                                               ; preds = %23
  store i32 0, i32* %2, align 4
  br label %64

64:                                               ; preds = %63, %16
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local %struct.ifb_dev_private* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.ifb_q_private* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @__skb_queue_head_init(i32*) #1

declare dso_local i32 @u64_stats_init(i32*) #1

declare dso_local i32 @tasklet_init(i32*, i32, i64) #1

declare dso_local i32 @netif_tx_start_queue(i32) #1

declare dso_local i32 @netdev_get_tx_queue(%struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
