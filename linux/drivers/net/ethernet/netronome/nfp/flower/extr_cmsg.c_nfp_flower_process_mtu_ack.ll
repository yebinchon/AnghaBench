; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_cmsg.c_nfp_flower_process_mtu_ack.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_cmsg.c_nfp_flower_process_mtu_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_app = type { %struct.nfp_flower_priv* }
%struct.nfp_flower_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i32, i32, i32 }
%struct.sk_buff = type { i32 }
%struct.nfp_flower_cmsg_portmod = type { i32, i32, i32 }

@NFP_FLOWER_CMSG_PORTMOD_MTU_CHANGE_ONLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_app*, %struct.sk_buff*)* @nfp_flower_process_mtu_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_flower_process_mtu_ack(%struct.nfp_app* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfp_app*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.nfp_flower_priv*, align 8
  %7 = alloca %struct.nfp_flower_cmsg_portmod*, align 8
  store %struct.nfp_app* %0, %struct.nfp_app** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %8 = load %struct.nfp_app*, %struct.nfp_app** %4, align 8
  %9 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %8, i32 0, i32 0
  %10 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %9, align 8
  store %struct.nfp_flower_priv* %10, %struct.nfp_flower_priv** %6, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %12 = call %struct.nfp_flower_cmsg_portmod* @nfp_flower_cmsg_get_data(%struct.sk_buff* %11)
  store %struct.nfp_flower_cmsg_portmod* %12, %struct.nfp_flower_cmsg_portmod** %7, align 8
  %13 = load %struct.nfp_flower_cmsg_portmod*, %struct.nfp_flower_cmsg_portmod** %7, align 8
  %14 = getelementptr inbounds %struct.nfp_flower_cmsg_portmod, %struct.nfp_flower_cmsg_portmod* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @NFP_FLOWER_CMSG_PORTMOD_MTU_CHANGE_ONLY, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %70

20:                                               ; preds = %2
  %21 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %6, align 8
  %22 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 3
  %24 = call i32 @spin_lock_bh(i32* %23)
  %25 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %6, align 8
  %26 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %50

30:                                               ; preds = %20
  %31 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %6, align 8
  %32 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.nfp_flower_cmsg_portmod*, %struct.nfp_flower_cmsg_portmod** %7, align 8
  %36 = getelementptr inbounds %struct.nfp_flower_cmsg_portmod, %struct.nfp_flower_cmsg_portmod* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @be32_to_cpu(i32 %37)
  %39 = icmp ne i64 %34, %38
  br i1 %39, label %50, label %40

40:                                               ; preds = %30
  %41 = load %struct.nfp_flower_cmsg_portmod*, %struct.nfp_flower_cmsg_portmod** %7, align 8
  %42 = getelementptr inbounds %struct.nfp_flower_cmsg_portmod, %struct.nfp_flower_cmsg_portmod* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @be16_to_cpu(i32 %43)
  %45 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %6, align 8
  %46 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %44, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %40, %30, %20
  %51 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %6, align 8
  %52 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 3
  %54 = call i32 @spin_unlock_bh(i32* %53)
  store i32 0, i32* %3, align 4
  br label %70

55:                                               ; preds = %40
  %56 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %6, align 8
  %57 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 2
  store i32 1, i32* %58, align 8
  %59 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %6, align 8
  %60 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  store i64 0, i64* %61, align 8
  %62 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %6, align 8
  %63 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 4
  %65 = call i32 @wake_up(i32* %64)
  %66 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %6, align 8
  %67 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 3
  %69 = call i32 @spin_unlock_bh(i32* %68)
  store i32 1, i32* %3, align 4
  br label %70

70:                                               ; preds = %55, %50, %19
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local %struct.nfp_flower_cmsg_portmod* @nfp_flower_cmsg_get_data(%struct.sk_buff*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i64 @be16_to_cpu(i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
