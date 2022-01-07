; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ppp/extr_pppoe.c_get_item_by_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ppp/extr_pppoe.c_get_item_by_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pppox_sock = type { i32 }
%struct.net = type { i32 }
%struct.sockaddr_pppox = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.net_device = type { i32 }
%struct.pppoe_net = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pppox_sock* (%struct.net*, %struct.sockaddr_pppox*)* @get_item_by_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pppox_sock* @get_item_by_addr(%struct.net* %0, %struct.sockaddr_pppox* %1) #0 {
  %3 = alloca %struct.net*, align 8
  %4 = alloca %struct.sockaddr_pppox*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.pppoe_net*, align 8
  %7 = alloca %struct.pppox_sock*, align 8
  %8 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %3, align 8
  store %struct.sockaddr_pppox* %1, %struct.sockaddr_pppox** %4, align 8
  store %struct.pppox_sock* null, %struct.pppox_sock** %7, align 8
  %9 = call i32 (...) @rcu_read_lock()
  %10 = load %struct.net*, %struct.net** %3, align 8
  %11 = load %struct.sockaddr_pppox*, %struct.sockaddr_pppox** %4, align 8
  %12 = getelementptr inbounds %struct.sockaddr_pppox, %struct.sockaddr_pppox* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.net_device* @dev_get_by_name_rcu(%struct.net* %10, i32 %15)
  store %struct.net_device* %16, %struct.net_device** %5, align 8
  %17 = load %struct.net_device*, %struct.net_device** %5, align 8
  %18 = icmp ne %struct.net_device* %17, null
  br i1 %18, label %19, label %38

19:                                               ; preds = %2
  %20 = load %struct.net_device*, %struct.net_device** %5, align 8
  %21 = getelementptr inbounds %struct.net_device, %struct.net_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %8, align 4
  %23 = load %struct.net*, %struct.net** %3, align 8
  %24 = call %struct.pppoe_net* @pppoe_pernet(%struct.net* %23)
  store %struct.pppoe_net* %24, %struct.pppoe_net** %6, align 8
  %25 = load %struct.pppoe_net*, %struct.pppoe_net** %6, align 8
  %26 = load %struct.sockaddr_pppox*, %struct.sockaddr_pppox** %4, align 8
  %27 = getelementptr inbounds %struct.sockaddr_pppox, %struct.sockaddr_pppox* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.sockaddr_pppox*, %struct.sockaddr_pppox** %4, align 8
  %32 = getelementptr inbounds %struct.sockaddr_pppox, %struct.sockaddr_pppox* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %8, align 4
  %37 = call %struct.pppox_sock* @get_item(%struct.pppoe_net* %25, i32 %30, i32 %35, i32 %36)
  store %struct.pppox_sock* %37, %struct.pppox_sock** %7, align 8
  br label %38

38:                                               ; preds = %19, %2
  %39 = call i32 (...) @rcu_read_unlock()
  %40 = load %struct.pppox_sock*, %struct.pppox_sock** %7, align 8
  ret %struct.pppox_sock* %40
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.net_device* @dev_get_by_name_rcu(%struct.net*, i32) #1

declare dso_local %struct.pppoe_net* @pppoe_pernet(%struct.net*) #1

declare dso_local %struct.pppox_sock* @get_item(%struct.pppoe_net*, i32, i32, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
