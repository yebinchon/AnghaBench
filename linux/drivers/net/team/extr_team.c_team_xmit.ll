; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/team/extr_team.c_team_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/team/extr_team.c_team_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }
%struct.team = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 (%struct.team.0*, %struct.sk_buff.1*)* }
%struct.team.0 = type opaque
%struct.sk_buff.1 = type opaque
%struct.team_pcpu_stats = type { i32, i32, i32 }

@NETDEV_TX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @team_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @team_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.team*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.team_pcpu_stats*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.team* @netdev_priv(%struct.net_device* %9)
  store %struct.team* %10, %struct.team** %5, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %12 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %7, align 4
  %14 = load %struct.team*, %struct.team** %5, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %16 = call i32 @team_queue_override_transmit(%struct.team* %14, %struct.sk_buff* %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %29, label %19

19:                                               ; preds = %2
  %20 = load %struct.team*, %struct.team** %5, align 8
  %21 = getelementptr inbounds %struct.team, %struct.team* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32 (%struct.team.0*, %struct.sk_buff.1*)*, i32 (%struct.team.0*, %struct.sk_buff.1*)** %22, align 8
  %24 = load %struct.team*, %struct.team** %5, align 8
  %25 = bitcast %struct.team* %24 to %struct.team.0*
  %26 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %27 = bitcast %struct.sk_buff* %26 to %struct.sk_buff.1*
  %28 = call i32 %23(%struct.team.0* %25, %struct.sk_buff.1* %27)
  store i32 %28, i32* %6, align 4
  br label %29

29:                                               ; preds = %19, %2
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %52

32:                                               ; preds = %29
  %33 = load %struct.team*, %struct.team** %5, align 8
  %34 = getelementptr inbounds %struct.team, %struct.team* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = call %struct.team_pcpu_stats* @this_cpu_ptr(%struct.TYPE_4__* %35)
  store %struct.team_pcpu_stats* %36, %struct.team_pcpu_stats** %8, align 8
  %37 = load %struct.team_pcpu_stats*, %struct.team_pcpu_stats** %8, align 8
  %38 = getelementptr inbounds %struct.team_pcpu_stats, %struct.team_pcpu_stats* %37, i32 0, i32 1
  %39 = call i32 @u64_stats_update_begin(i32* %38)
  %40 = load %struct.team_pcpu_stats*, %struct.team_pcpu_stats** %8, align 8
  %41 = getelementptr inbounds %struct.team_pcpu_stats, %struct.team_pcpu_stats* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %41, align 4
  %44 = load i32, i32* %7, align 4
  %45 = load %struct.team_pcpu_stats*, %struct.team_pcpu_stats** %8, align 8
  %46 = getelementptr inbounds %struct.team_pcpu_stats, %struct.team_pcpu_stats* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = add i32 %47, %44
  store i32 %48, i32* %46, align 4
  %49 = load %struct.team_pcpu_stats*, %struct.team_pcpu_stats** %8, align 8
  %50 = getelementptr inbounds %struct.team_pcpu_stats, %struct.team_pcpu_stats* %49, i32 0, i32 1
  %51 = call i32 @u64_stats_update_end(i32* %50)
  br label %59

52:                                               ; preds = %29
  %53 = load %struct.team*, %struct.team** %5, align 8
  %54 = getelementptr inbounds %struct.team, %struct.team* %53, i32 0, i32 0
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @this_cpu_inc(i32 %57)
  br label %59

59:                                               ; preds = %52, %32
  %60 = load i32, i32* @NETDEV_TX_OK, align 4
  ret i32 %60
}

declare dso_local %struct.team* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @team_queue_override_transmit(%struct.team*, %struct.sk_buff*) #1

declare dso_local %struct.team_pcpu_stats* @this_cpu_ptr(%struct.TYPE_4__*) #1

declare dso_local i32 @u64_stats_update_begin(i32*) #1

declare dso_local i32 @u64_stats_update_end(i32*) #1

declare dso_local i32 @this_cpu_inc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
