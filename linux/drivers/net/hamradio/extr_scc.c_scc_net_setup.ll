; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/hamradio/extr_scc.c_scc_net_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/hamradio/extr_scc.c_scc_net_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, i32, i64, i32, i64, i32, i32, i32*, i32* }

@scc_netdev_ops = common dso_local global i32 0, align 4
@ax25_header_ops = common dso_local global i32 0, align 4
@ax25_bcast = common dso_local global i32 0, align 4
@AX25_ADDR_LEN = common dso_local global i32 0, align 4
@ax25_defaddr = common dso_local global i32 0, align 4
@ARPHRD_AX25 = common dso_local global i32 0, align 4
@AX25_MAX_HEADER_LEN = common dso_local global i64 0, align 8
@AX25_BPQ_HEADER_LEN = common dso_local global i64 0, align 8
@AX25_DEF_PACLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @scc_net_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scc_net_setup(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %3 = load %struct.net_device*, %struct.net_device** %2, align 8
  %4 = getelementptr inbounds %struct.net_device, %struct.net_device* %3, i32 0, i32 0
  store i32 16, i32* %4, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = getelementptr inbounds %struct.net_device, %struct.net_device* %5, i32 0, i32 9
  store i32* @scc_netdev_ops, i32** %6, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = getelementptr inbounds %struct.net_device, %struct.net_device* %7, i32 0, i32 8
  store i32* @ax25_header_ops, i32** %8, align 8
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = getelementptr inbounds %struct.net_device, %struct.net_device* %9, i32 0, i32 7
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @AX25_ADDR_LEN, align 4
  %13 = call i32 @memcpy(i32 %11, i32* @ax25_bcast, i32 %12)
  %14 = load %struct.net_device*, %struct.net_device** %2, align 8
  %15 = getelementptr inbounds %struct.net_device, %struct.net_device* %14, i32 0, i32 6
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @AX25_ADDR_LEN, align 4
  %18 = call i32 @memcpy(i32 %16, i32* @ax25_defaddr, i32 %17)
  %19 = load %struct.net_device*, %struct.net_device** %2, align 8
  %20 = getelementptr inbounds %struct.net_device, %struct.net_device* %19, i32 0, i32 5
  store i64 0, i64* %20, align 8
  %21 = load i32, i32* @ARPHRD_AX25, align 4
  %22 = load %struct.net_device*, %struct.net_device** %2, align 8
  %23 = getelementptr inbounds %struct.net_device, %struct.net_device* %22, i32 0, i32 4
  store i32 %21, i32* %23, align 8
  %24 = load i64, i64* @AX25_MAX_HEADER_LEN, align 8
  %25 = load i64, i64* @AX25_BPQ_HEADER_LEN, align 8
  %26 = add nsw i64 %24, %25
  %27 = load %struct.net_device*, %struct.net_device** %2, align 8
  %28 = getelementptr inbounds %struct.net_device, %struct.net_device* %27, i32 0, i32 3
  store i64 %26, i64* %28, align 8
  %29 = load i32, i32* @AX25_DEF_PACLEN, align 4
  %30 = load %struct.net_device*, %struct.net_device** %2, align 8
  %31 = getelementptr inbounds %struct.net_device, %struct.net_device* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 8
  %32 = load i32, i32* @AX25_ADDR_LEN, align 4
  %33 = load %struct.net_device*, %struct.net_device** %2, align 8
  %34 = getelementptr inbounds %struct.net_device, %struct.net_device* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  ret void
}

declare dso_local i32 @memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
