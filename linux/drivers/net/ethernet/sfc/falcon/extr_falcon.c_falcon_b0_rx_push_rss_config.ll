; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_falcon.c_falcon_b0_rx_push_rss_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_falcon.c_falcon_b0_rx_push_rss_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ef4_nic = type { i32*, i32* }

@FR_BZ_RX_RSS_TKEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ef4_nic*, i32, i32*)* @falcon_b0_rx_push_rss_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @falcon_b0_rx_push_rss_config(%struct.ef4_nic* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.ef4_nic*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.ef4_nic* %0, %struct.ef4_nic** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.ef4_nic*, %struct.ef4_nic** %4, align 8
  %10 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  %12 = call i32 @memcpy(i32* %7, i32* %11, i32 4)
  %13 = load %struct.ef4_nic*, %struct.ef4_nic** %4, align 8
  %14 = load i32, i32* @FR_BZ_RX_RSS_TKEY, align 4
  %15 = call i32 @ef4_writeo(%struct.ef4_nic* %13, i32* %7, i32 %14)
  %16 = load %struct.ef4_nic*, %struct.ef4_nic** %4, align 8
  %17 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = call i32 @memcpy(i32* %18, i32* %19, i32 8)
  %21 = load %struct.ef4_nic*, %struct.ef4_nic** %4, align 8
  %22 = call i32 @ef4_farch_rx_push_indir_table(%struct.ef4_nic* %21)
  ret i32 0
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @ef4_writeo(%struct.ef4_nic*, i32*, i32) #1

declare dso_local i32 @ef4_farch_rx_push_indir_table(%struct.ef4_nic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
