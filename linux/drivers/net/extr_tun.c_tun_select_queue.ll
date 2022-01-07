; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_tun.c_tun_select_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_tun.c_tun_select_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }
%struct.tun_struct = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.sk_buff*, %struct.net_device*)* @tun_select_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tun_select_queue(%struct.net_device* %0, %struct.sk_buff* %1, %struct.net_device* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.tun_struct*, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store %struct.net_device* %2, %struct.net_device** %6, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.tun_struct* @netdev_priv(%struct.net_device* %9)
  store %struct.tun_struct* %10, %struct.tun_struct** %7, align 8
  %11 = call i32 (...) @rcu_read_lock()
  %12 = load %struct.tun_struct*, %struct.tun_struct** %7, align 8
  %13 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @rcu_dereference(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load %struct.tun_struct*, %struct.tun_struct** %7, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %20 = call i32 @tun_ebpf_select_queue(%struct.tun_struct* %18, %struct.sk_buff* %19)
  store i32 %20, i32* %8, align 4
  br label %25

21:                                               ; preds = %3
  %22 = load %struct.tun_struct*, %struct.tun_struct** %7, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %24 = call i32 @tun_automq_select_queue(%struct.tun_struct* %22, %struct.sk_buff* %23)
  store i32 %24, i32* %8, align 4
  br label %25

25:                                               ; preds = %21, %17
  %26 = call i32 (...) @rcu_read_unlock()
  %27 = load i32, i32* %8, align 4
  ret i32 %27
}

declare dso_local %struct.tun_struct* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i64 @rcu_dereference(i32) #1

declare dso_local i32 @tun_ebpf_select_queue(%struct.tun_struct*, %struct.sk_buff*) #1

declare dso_local i32 @tun_automq_select_queue(%struct.tun_struct*, %struct.sk_buff*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
