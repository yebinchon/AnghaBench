; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_ifb.c_ifb_dev_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_ifb.c_ifb_dev_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ifb_dev_private = type { %struct.ifb_q_private* }
%struct.ifb_q_private = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @ifb_dev_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ifb_dev_free(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.ifb_dev_private*, align 8
  %4 = alloca %struct.ifb_q_private*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.ifb_dev_private* @netdev_priv(%struct.net_device* %6)
  store %struct.ifb_dev_private* %7, %struct.ifb_dev_private** %3, align 8
  %8 = load %struct.ifb_dev_private*, %struct.ifb_dev_private** %3, align 8
  %9 = getelementptr inbounds %struct.ifb_dev_private, %struct.ifb_dev_private* %8, i32 0, i32 0
  %10 = load %struct.ifb_q_private*, %struct.ifb_q_private** %9, align 8
  store %struct.ifb_q_private* %10, %struct.ifb_q_private** %4, align 8
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %27, %1
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.net_device*, %struct.net_device** %2, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %32

17:                                               ; preds = %11
  %18 = load %struct.ifb_q_private*, %struct.ifb_q_private** %4, align 8
  %19 = getelementptr inbounds %struct.ifb_q_private, %struct.ifb_q_private* %18, i32 0, i32 2
  %20 = call i32 @tasklet_kill(i32* %19)
  %21 = load %struct.ifb_q_private*, %struct.ifb_q_private** %4, align 8
  %22 = getelementptr inbounds %struct.ifb_q_private, %struct.ifb_q_private* %21, i32 0, i32 1
  %23 = call i32 @__skb_queue_purge(i32* %22)
  %24 = load %struct.ifb_q_private*, %struct.ifb_q_private** %4, align 8
  %25 = getelementptr inbounds %struct.ifb_q_private, %struct.ifb_q_private* %24, i32 0, i32 0
  %26 = call i32 @__skb_queue_purge(i32* %25)
  br label %27

27:                                               ; preds = %17
  %28 = load i32, i32* %5, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %5, align 4
  %30 = load %struct.ifb_q_private*, %struct.ifb_q_private** %4, align 8
  %31 = getelementptr inbounds %struct.ifb_q_private, %struct.ifb_q_private* %30, i32 1
  store %struct.ifb_q_private* %31, %struct.ifb_q_private** %4, align 8
  br label %11

32:                                               ; preds = %11
  %33 = load %struct.ifb_dev_private*, %struct.ifb_dev_private** %3, align 8
  %34 = getelementptr inbounds %struct.ifb_dev_private, %struct.ifb_dev_private* %33, i32 0, i32 0
  %35 = load %struct.ifb_q_private*, %struct.ifb_q_private** %34, align 8
  %36 = call i32 @kfree(%struct.ifb_q_private* %35)
  ret void
}

declare dso_local %struct.ifb_dev_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @tasklet_kill(i32*) #1

declare dso_local i32 @__skb_queue_purge(i32*) #1

declare dso_local i32 @kfree(%struct.ifb_q_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
