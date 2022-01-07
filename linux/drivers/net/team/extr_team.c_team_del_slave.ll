; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/team/extr_team.c_team_del_slave.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/team/extr_team.c_team_del_slave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.team = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.net_device*)* @team_del_slave to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @team_del_slave(%struct.net_device* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.team*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.team* @netdev_priv(%struct.net_device* %8)
  store %struct.team* %9, %struct.team** %6, align 8
  %10 = load %struct.team*, %struct.team** %6, align 8
  %11 = getelementptr inbounds %struct.team, %struct.team* %10, i32 0, i32 1
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.team*, %struct.team** %6, align 8
  %14 = load %struct.net_device*, %struct.net_device** %5, align 8
  %15 = call i32 @team_port_del(%struct.team* %13, %struct.net_device* %14)
  store i32 %15, i32* %7, align 4
  %16 = load %struct.team*, %struct.team** %6, align 8
  %17 = getelementptr inbounds %struct.team, %struct.team* %16, i32 0, i32 1
  %18 = call i32 @mutex_unlock(i32* %17)
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* %7, align 4
  store i32 %22, i32* %3, align 4
  br label %43

23:                                               ; preds = %2
  %24 = load %struct.net_device*, %struct.net_device** %5, align 8
  %25 = call i64 @netif_is_team_master(%struct.net_device* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %23
  %28 = load %struct.team*, %struct.team** %6, align 8
  %29 = getelementptr inbounds %struct.team, %struct.team* %28, i32 0, i32 0
  %30 = call i32 @lockdep_unregister_key(i32* %29)
  %31 = load %struct.team*, %struct.team** %6, align 8
  %32 = getelementptr inbounds %struct.team, %struct.team* %31, i32 0, i32 0
  %33 = call i32 @lockdep_register_key(i32* %32)
  %34 = load %struct.team*, %struct.team** %6, align 8
  %35 = getelementptr inbounds %struct.team, %struct.team* %34, i32 0, i32 1
  %36 = load %struct.team*, %struct.team** %6, align 8
  %37 = getelementptr inbounds %struct.team, %struct.team* %36, i32 0, i32 0
  %38 = call i32 @lockdep_set_class(i32* %35, i32* %37)
  br label %39

39:                                               ; preds = %27, %23
  %40 = load %struct.net_device*, %struct.net_device** %4, align 8
  %41 = call i32 @netdev_change_features(%struct.net_device* %40)
  %42 = load i32, i32* %7, align 4
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %39, %21
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local %struct.team* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @team_port_del(%struct.team*, %struct.net_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @netif_is_team_master(%struct.net_device*) #1

declare dso_local i32 @lockdep_unregister_key(i32*) #1

declare dso_local i32 @lockdep_register_key(i32*) #1

declare dso_local i32 @lockdep_set_class(i32*, i32*) #1

declare dso_local i32 @netdev_change_features(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
