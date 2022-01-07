; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_cmsg.c_nfp_flower_cmsg_portreify_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_cmsg.c_nfp_flower_cmsg_portreify_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_app = type { %struct.nfp_flower_priv* }
%struct.nfp_flower_priv = type { i32, i32 }
%struct.sk_buff = type { i32 }
%struct.nfp_flower_cmsg_portreify = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"ctrl msg for unknown port 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfp_app*, %struct.sk_buff*)* @nfp_flower_cmsg_portreify_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfp_flower_cmsg_portreify_rx(%struct.nfp_app* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.nfp_app*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.nfp_flower_priv*, align 8
  %6 = alloca %struct.nfp_flower_cmsg_portreify*, align 8
  %7 = alloca i32, align 4
  store %struct.nfp_app* %0, %struct.nfp_app** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %8 = load %struct.nfp_app*, %struct.nfp_app** %3, align 8
  %9 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %8, i32 0, i32 0
  %10 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %9, align 8
  store %struct.nfp_flower_priv* %10, %struct.nfp_flower_priv** %5, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %12 = call %struct.nfp_flower_cmsg_portreify* @nfp_flower_cmsg_get_data(%struct.sk_buff* %11)
  store %struct.nfp_flower_cmsg_portreify* %12, %struct.nfp_flower_cmsg_portreify** %6, align 8
  %13 = call i32 (...) @rcu_read_lock()
  %14 = load %struct.nfp_app*, %struct.nfp_app** %3, align 8
  %15 = load %struct.nfp_flower_cmsg_portreify*, %struct.nfp_flower_cmsg_portreify** %6, align 8
  %16 = getelementptr inbounds %struct.nfp_flower_cmsg_portreify, %struct.nfp_flower_cmsg_portreify* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @be32_to_cpu(i32 %17)
  %19 = call i32 @nfp_app_dev_get(%struct.nfp_app* %14, i32 %18, i32* null)
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %7, align 4
  %24 = call i32 (...) @rcu_read_unlock()
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %2
  %28 = load %struct.nfp_app*, %struct.nfp_app** %3, align 8
  %29 = load %struct.nfp_flower_cmsg_portreify*, %struct.nfp_flower_cmsg_portreify** %6, align 8
  %30 = getelementptr inbounds %struct.nfp_flower_cmsg_portreify, %struct.nfp_flower_cmsg_portreify* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @be32_to_cpu(i32 %31)
  %33 = call i32 @nfp_flower_cmsg_warn(%struct.nfp_app* %28, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %32)
  br label %41

34:                                               ; preds = %2
  %35 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %5, align 8
  %36 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %35, i32 0, i32 1
  %37 = call i32 @atomic_inc(i32* %36)
  %38 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %5, align 8
  %39 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %38, i32 0, i32 0
  %40 = call i32 @wake_up(i32* %39)
  br label %41

41:                                               ; preds = %34, %27
  ret void
}

declare dso_local %struct.nfp_flower_cmsg_portreify* @nfp_flower_cmsg_get_data(%struct.sk_buff*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @nfp_app_dev_get(%struct.nfp_app*, i32, i32*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @nfp_flower_cmsg_warn(%struct.nfp_app*, i8*, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
