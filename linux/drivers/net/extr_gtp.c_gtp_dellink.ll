; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_gtp.c_gtp_dellink.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_gtp.c_gtp_dellink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.list_head = type { i32 }
%struct.gtp_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.list_head*)* @gtp_dellink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gtp_dellink(%struct.net_device* %0, %struct.list_head* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.list_head*, align 8
  %5 = alloca %struct.gtp_dev*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.list_head* %1, %struct.list_head** %4, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.gtp_dev* @netdev_priv(%struct.net_device* %6)
  store %struct.gtp_dev* %7, %struct.gtp_dev** %5, align 8
  %8 = load %struct.gtp_dev*, %struct.gtp_dev** %5, align 8
  %9 = call i32 @gtp_hashtable_free(%struct.gtp_dev* %8)
  %10 = load %struct.gtp_dev*, %struct.gtp_dev** %5, align 8
  %11 = getelementptr inbounds %struct.gtp_dev, %struct.gtp_dev* %10, i32 0, i32 0
  %12 = call i32 @list_del_rcu(i32* %11)
  %13 = load %struct.net_device*, %struct.net_device** %3, align 8
  %14 = load %struct.list_head*, %struct.list_head** %4, align 8
  %15 = call i32 @unregister_netdevice_queue(%struct.net_device* %13, %struct.list_head* %14)
  ret void
}

declare dso_local %struct.gtp_dev* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @gtp_hashtable_free(%struct.gtp_dev*) #1

declare dso_local i32 @list_del_rcu(i32*) #1

declare dso_local i32 @unregister_netdevice_queue(%struct.net_device*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
