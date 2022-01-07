; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_vxlan.c___vxlan_sock_release_prep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_vxlan.c___vxlan_sock_release_prep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vxlan_sock = type { i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.vxlan_net = type { i32 }

@vxlan_net_id = common dso_local global i32 0, align 4
@VXLAN_F_GPE = common dso_local global i32 0, align 4
@UDP_TUNNEL_TYPE_VXLAN_GPE = common dso_local global i32 0, align 4
@UDP_TUNNEL_TYPE_VXLAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vxlan_sock*)* @__vxlan_sock_release_prep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__vxlan_sock_release_prep(%struct.vxlan_sock* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vxlan_sock*, align 8
  %4 = alloca %struct.vxlan_net*, align 8
  store %struct.vxlan_sock* %0, %struct.vxlan_sock** %3, align 8
  %5 = load %struct.vxlan_sock*, %struct.vxlan_sock** %3, align 8
  %6 = icmp ne %struct.vxlan_sock* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %48

8:                                                ; preds = %1
  %9 = load %struct.vxlan_sock*, %struct.vxlan_sock** %3, align 8
  %10 = getelementptr inbounds %struct.vxlan_sock, %struct.vxlan_sock* %9, i32 0, i32 3
  %11 = call i32 @refcount_dec_and_test(i32* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %8
  store i32 0, i32* %2, align 4
  br label %48

14:                                               ; preds = %8
  %15 = load %struct.vxlan_sock*, %struct.vxlan_sock** %3, align 8
  %16 = getelementptr inbounds %struct.vxlan_sock, %struct.vxlan_sock* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @sock_net(i32 %19)
  %21 = load i32, i32* @vxlan_net_id, align 4
  %22 = call %struct.vxlan_net* @net_generic(i32 %20, i32 %21)
  store %struct.vxlan_net* %22, %struct.vxlan_net** %4, align 8
  %23 = load %struct.vxlan_net*, %struct.vxlan_net** %4, align 8
  %24 = getelementptr inbounds %struct.vxlan_net, %struct.vxlan_net* %23, i32 0, i32 0
  %25 = call i32 @spin_lock(i32* %24)
  %26 = load %struct.vxlan_sock*, %struct.vxlan_sock** %3, align 8
  %27 = getelementptr inbounds %struct.vxlan_sock, %struct.vxlan_sock* %26, i32 0, i32 2
  %28 = call i32 @hlist_del_rcu(i32* %27)
  %29 = load %struct.vxlan_sock*, %struct.vxlan_sock** %3, align 8
  %30 = getelementptr inbounds %struct.vxlan_sock, %struct.vxlan_sock* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = load %struct.vxlan_sock*, %struct.vxlan_sock** %3, align 8
  %33 = getelementptr inbounds %struct.vxlan_sock, %struct.vxlan_sock* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @VXLAN_F_GPE, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %14
  %39 = load i32, i32* @UDP_TUNNEL_TYPE_VXLAN_GPE, align 4
  br label %42

40:                                               ; preds = %14
  %41 = load i32, i32* @UDP_TUNNEL_TYPE_VXLAN, align 4
  br label %42

42:                                               ; preds = %40, %38
  %43 = phi i32 [ %39, %38 ], [ %41, %40 ]
  %44 = call i32 @udp_tunnel_notify_del_rx_port(%struct.TYPE_2__* %31, i32 %43)
  %45 = load %struct.vxlan_net*, %struct.vxlan_net** %4, align 8
  %46 = getelementptr inbounds %struct.vxlan_net, %struct.vxlan_net* %45, i32 0, i32 0
  %47 = call i32 @spin_unlock(i32* %46)
  store i32 1, i32* %2, align 4
  br label %48

48:                                               ; preds = %42, %13, %7
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @refcount_dec_and_test(i32*) #1

declare dso_local %struct.vxlan_net* @net_generic(i32, i32) #1

declare dso_local i32 @sock_net(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @hlist_del_rcu(i32*) #1

declare dso_local i32 @udp_tunnel_notify_del_rx_port(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
