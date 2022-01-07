; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_udp_tunnel_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_udp_tunnel_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.udp_tunnel_info = type { i64, i32, i32 }
%struct.bnxt = type { i32, i32, i32, i32, i32 }

@AF_INET6 = common dso_local global i64 0, align 8
@AF_INET = common dso_local global i64 0, align 8
@BNXT_VXLAN_ADD_PORT_SP_EVENT = common dso_local global i32 0, align 4
@BNXT_GENEVE_ADD_PORT_SP_EVENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.udp_tunnel_info*)* @bnxt_udp_tunnel_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnxt_udp_tunnel_add(%struct.net_device* %0, %struct.udp_tunnel_info* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.udp_tunnel_info*, align 8
  %5 = alloca %struct.bnxt*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.udp_tunnel_info* %1, %struct.udp_tunnel_info** %4, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.bnxt* @netdev_priv(%struct.net_device* %6)
  store %struct.bnxt* %7, %struct.bnxt** %5, align 8
  %8 = load %struct.udp_tunnel_info*, %struct.udp_tunnel_info** %4, align 8
  %9 = getelementptr inbounds %struct.udp_tunnel_info, %struct.udp_tunnel_info* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @AF_INET6, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %20

13:                                               ; preds = %2
  %14 = load %struct.udp_tunnel_info*, %struct.udp_tunnel_info** %4, align 8
  %15 = getelementptr inbounds %struct.udp_tunnel_info, %struct.udp_tunnel_info* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @AF_INET, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  br label %103

20:                                               ; preds = %13, %2
  %21 = load %struct.net_device*, %struct.net_device** %3, align 8
  %22 = call i32 @netif_running(%struct.net_device* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  br label %103

25:                                               ; preds = %20
  %26 = load %struct.udp_tunnel_info*, %struct.udp_tunnel_info** %4, align 8
  %27 = getelementptr inbounds %struct.udp_tunnel_info, %struct.udp_tunnel_info* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  switch i32 %28, label %99 [
    i32 128, label %29
    i32 129, label %65
  ]

29:                                               ; preds = %25
  %30 = load %struct.bnxt*, %struct.bnxt** %5, align 8
  %31 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %29
  %35 = load %struct.bnxt*, %struct.bnxt** %5, align 8
  %36 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.udp_tunnel_info*, %struct.udp_tunnel_info** %4, align 8
  %39 = getelementptr inbounds %struct.udp_tunnel_info, %struct.udp_tunnel_info* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %37, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  br label %103

43:                                               ; preds = %34, %29
  %44 = load %struct.bnxt*, %struct.bnxt** %5, align 8
  %45 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 4
  %48 = load %struct.bnxt*, %struct.bnxt** %5, align 8
  %49 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp eq i32 %50, 1
  br i1 %51, label %52, label %64

52:                                               ; preds = %43
  %53 = load %struct.udp_tunnel_info*, %struct.udp_tunnel_info** %4, align 8
  %54 = getelementptr inbounds %struct.udp_tunnel_info, %struct.udp_tunnel_info* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.bnxt*, %struct.bnxt** %5, align 8
  %57 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %56, i32 0, i32 4
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* @BNXT_VXLAN_ADD_PORT_SP_EVENT, align 4
  %59 = load %struct.bnxt*, %struct.bnxt** %5, align 8
  %60 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %59, i32 0, i32 2
  %61 = call i32 @set_bit(i32 %58, i32* %60)
  %62 = load %struct.bnxt*, %struct.bnxt** %5, align 8
  %63 = call i32 @bnxt_queue_sp_work(%struct.bnxt* %62)
  br label %64

64:                                               ; preds = %52, %43
  br label %100

65:                                               ; preds = %25
  %66 = load %struct.bnxt*, %struct.bnxt** %5, align 8
  %67 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %79

70:                                               ; preds = %65
  %71 = load %struct.bnxt*, %struct.bnxt** %5, align 8
  %72 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.udp_tunnel_info*, %struct.udp_tunnel_info** %4, align 8
  %75 = getelementptr inbounds %struct.udp_tunnel_info, %struct.udp_tunnel_info* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %73, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %70
  br label %103

79:                                               ; preds = %70, %65
  %80 = load %struct.bnxt*, %struct.bnxt** %5, align 8
  %81 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %81, align 4
  %84 = load %struct.bnxt*, %struct.bnxt** %5, align 8
  %85 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = icmp eq i32 %86, 1
  br i1 %87, label %88, label %98

88:                                               ; preds = %79
  %89 = load %struct.udp_tunnel_info*, %struct.udp_tunnel_info** %4, align 8
  %90 = getelementptr inbounds %struct.udp_tunnel_info, %struct.udp_tunnel_info* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.bnxt*, %struct.bnxt** %5, align 8
  %93 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %92, i32 0, i32 3
  store i32 %91, i32* %93, align 4
  %94 = load i32, i32* @BNXT_GENEVE_ADD_PORT_SP_EVENT, align 4
  %95 = load %struct.bnxt*, %struct.bnxt** %5, align 8
  %96 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %95, i32 0, i32 2
  %97 = call i32 @set_bit(i32 %94, i32* %96)
  br label %98

98:                                               ; preds = %88, %79
  br label %100

99:                                               ; preds = %25
  br label %103

100:                                              ; preds = %98, %64
  %101 = load %struct.bnxt*, %struct.bnxt** %5, align 8
  %102 = call i32 @bnxt_queue_sp_work(%struct.bnxt* %101)
  br label %103

103:                                              ; preds = %100, %99, %78, %42, %24, %19
  ret void
}

declare dso_local %struct.bnxt* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @bnxt_queue_sp_work(%struct.bnxt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
