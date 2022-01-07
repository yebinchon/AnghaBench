; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_get_stats64.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_get_stats64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.rtnl_link_stats64 = type { i32 }
%struct.tg3 = type { i32, %struct.rtnl_link_stats64, i32 }

@INIT_COMPLETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.rtnl_link_stats64*)* @tg3_get_stats64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tg3_get_stats64(%struct.net_device* %0, %struct.rtnl_link_stats64* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.rtnl_link_stats64*, align 8
  %5 = alloca %struct.tg3*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.rtnl_link_stats64* %1, %struct.rtnl_link_stats64** %4, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.tg3* @netdev_priv(%struct.net_device* %6)
  store %struct.tg3* %7, %struct.tg3** %5, align 8
  %8 = load %struct.tg3*, %struct.tg3** %5, align 8
  %9 = getelementptr inbounds %struct.tg3, %struct.tg3* %8, i32 0, i32 0
  %10 = call i32 @spin_lock_bh(i32* %9)
  %11 = load %struct.tg3*, %struct.tg3** %5, align 8
  %12 = getelementptr inbounds %struct.tg3, %struct.tg3* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load %struct.tg3*, %struct.tg3** %5, align 8
  %17 = load i32, i32* @INIT_COMPLETE, align 4
  %18 = call i32 @tg3_flag(%struct.tg3* %16, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %29, label %20

20:                                               ; preds = %15, %2
  %21 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %22 = load %struct.tg3*, %struct.tg3** %5, align 8
  %23 = getelementptr inbounds %struct.tg3, %struct.tg3* %22, i32 0, i32 1
  %24 = bitcast %struct.rtnl_link_stats64* %21 to i8*
  %25 = bitcast %struct.rtnl_link_stats64* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %24, i8* align 4 %25, i64 4, i1 false)
  %26 = load %struct.tg3*, %struct.tg3** %5, align 8
  %27 = getelementptr inbounds %struct.tg3, %struct.tg3* %26, i32 0, i32 0
  %28 = call i32 @spin_unlock_bh(i32* %27)
  br label %36

29:                                               ; preds = %15
  %30 = load %struct.tg3*, %struct.tg3** %5, align 8
  %31 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %32 = call i32 @tg3_get_nstats(%struct.tg3* %30, %struct.rtnl_link_stats64* %31)
  %33 = load %struct.tg3*, %struct.tg3** %5, align 8
  %34 = getelementptr inbounds %struct.tg3, %struct.tg3* %33, i32 0, i32 0
  %35 = call i32 @spin_unlock_bh(i32* %34)
  br label %36

36:                                               ; preds = %29, %20
  ret void
}

declare dso_local %struct.tg3* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @tg3_flag(%struct.tg3*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @tg3_get_nstats(%struct.tg3*, %struct.rtnl_link_stats64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
