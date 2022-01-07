; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/plip/extr_plip.c_plip_rewrite_address.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/plip/extr_plip.c_plip_rewrite_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32* }
%struct.ethhdr = type { i64, i64 }
%struct.in_device = type { i32 }
%struct.in_ifaddr = type { i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethhdr*)* @plip_rewrite_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @plip_rewrite_address(%struct.net_device* %0, %struct.ethhdr* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethhdr*, align 8
  %5 = alloca %struct.in_device*, align 8
  %6 = alloca %struct.in_ifaddr*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethhdr* %1, %struct.ethhdr** %4, align 8
  %7 = call i32 (...) @rcu_read_lock()
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.in_device* @__in_dev_get_rcu(%struct.net_device* %8)
  store %struct.in_device* %9, %struct.in_device** %5, align 8
  %10 = load %struct.in_device*, %struct.in_device** %5, align 8
  %11 = icmp ne %struct.in_device* %10, null
  br i1 %11, label %12, label %40

12:                                               ; preds = %2
  %13 = load %struct.in_device*, %struct.in_device** %5, align 8
  %14 = getelementptr inbounds %struct.in_device, %struct.in_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.in_ifaddr* @rcu_dereference(i32 %15)
  store %struct.in_ifaddr* %16, %struct.in_ifaddr** %6, align 8
  %17 = load %struct.in_ifaddr*, %struct.in_ifaddr** %6, align 8
  %18 = icmp ne %struct.in_ifaddr* %17, null
  br i1 %18, label %19, label %39

19:                                               ; preds = %12
  %20 = load %struct.ethhdr*, %struct.ethhdr** %4, align 8
  %21 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.net_device*, %struct.net_device** %3, align 8
  %24 = getelementptr inbounds %struct.net_device, %struct.net_device* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* @ETH_ALEN, align 4
  %27 = call i32 @memcpy(i64 %22, i32* %25, i32 %26)
  %28 = load %struct.ethhdr*, %struct.ethhdr** %4, align 8
  %29 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @memset(i64 %30, i32 252, i32 2)
  %32 = load %struct.ethhdr*, %struct.ethhdr** %4, align 8
  %33 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %34, 2
  %36 = load %struct.in_ifaddr*, %struct.in_ifaddr** %6, align 8
  %37 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %36, i32 0, i32 0
  %38 = call i32 @memcpy(i64 %35, i32* %37, i32 4)
  br label %39

39:                                               ; preds = %19, %12
  br label %40

40:                                               ; preds = %39, %2
  %41 = call i32 (...) @rcu_read_unlock()
  ret void
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.in_device* @__in_dev_get_rcu(%struct.net_device*) #1

declare dso_local %struct.in_ifaddr* @rcu_dereference(i32) #1

declare dso_local i32 @memcpy(i64, i32*, i32) #1

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
