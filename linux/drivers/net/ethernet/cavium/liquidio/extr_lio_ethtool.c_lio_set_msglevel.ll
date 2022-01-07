; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_ethtool.c_lio_set_msglevel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_ethtool.c_lio_set_msglevel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.lio = type { i32 }

@NETIF_MSG_HW = common dso_local global i32 0, align 4
@OCTNET_CMD_VERBOSE_ENABLE = common dso_local global i32 0, align 4
@OCTNET_CMD_VERBOSE_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32)* @lio_set_msglevel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lio_set_msglevel(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.lio*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.lio* @GET_LIO(%struct.net_device* %6)
  store %struct.lio* %7, %struct.lio** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.lio*, %struct.lio** %5, align 8
  %10 = getelementptr inbounds %struct.lio, %struct.lio* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = xor i32 %8, %11
  %13 = load i32, i32* @NETIF_MSG_HW, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %30

16:                                               ; preds = %2
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @NETIF_MSG_HW, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = load %struct.net_device*, %struct.net_device** %3, align 8
  %23 = load i32, i32* @OCTNET_CMD_VERBOSE_ENABLE, align 4
  %24 = call i32 @liquidio_set_feature(%struct.net_device* %22, i32 %23, i32 0)
  br label %29

25:                                               ; preds = %16
  %26 = load %struct.net_device*, %struct.net_device** %3, align 8
  %27 = load i32, i32* @OCTNET_CMD_VERBOSE_DISABLE, align 4
  %28 = call i32 @liquidio_set_feature(%struct.net_device* %26, i32 %27, i32 0)
  br label %29

29:                                               ; preds = %25, %21
  br label %30

30:                                               ; preds = %29, %2
  %31 = load i32, i32* %4, align 4
  %32 = load %struct.lio*, %struct.lio** %5, align 8
  %33 = getelementptr inbounds %struct.lio, %struct.lio* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  ret void
}

declare dso_local %struct.lio* @GET_LIO(%struct.net_device*) #1

declare dso_local i32 @liquidio_set_feature(%struct.net_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
