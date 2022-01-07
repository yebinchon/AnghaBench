; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/hamradio/extr_yam.c_yam_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/hamradio/extr_yam.c_yam_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, i32, i32, i32, i32, i32*, i32*, i64, i64 }
%struct.yam_port = type { i32, i32, i32, i64, i64, %struct.net_device*, i32, i32, i32, i32, i32, i64, i32 }

@YAM_MAGIC = common dso_local global i32 0, align 4
@DEFAULT_BITRATE = common dso_local global i32 0, align 4
@DEFAULT_HOLDD = common dso_local global i32 0, align 4
@DEFAULT_TXD = common dso_local global i32 0, align 4
@DEFAULT_TXTAIL = common dso_local global i32 0, align 4
@DEFAULT_SLOT = common dso_local global i32 0, align 4
@DEFAULT_PERS = common dso_local global i32 0, align 4
@yam_netdev_ops = common dso_local global i32 0, align 4
@ax25_header_ops = common dso_local global i32 0, align 4
@ARPHRD_AX25 = common dso_local global i32 0, align 4
@AX25_MAX_HEADER_LEN = common dso_local global i32 0, align 4
@AX25_MTU = common dso_local global i32 0, align 4
@AX25_ADDR_LEN = common dso_local global i32 0, align 4
@ax25_bcast = common dso_local global i32 0, align 4
@ax25_defaddr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @yam_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @yam_setup(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.yam_port*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.yam_port* @netdev_priv(%struct.net_device* %4)
  store %struct.yam_port* %5, %struct.yam_port** %3, align 8
  %6 = load i32, i32* @YAM_MAGIC, align 4
  %7 = load %struct.yam_port*, %struct.yam_port** %3, align 8
  %8 = getelementptr inbounds %struct.yam_port, %struct.yam_port* %7, i32 0, i32 12
  store i32 %6, i32* %8, align 8
  %9 = load i32, i32* @DEFAULT_BITRATE, align 4
  %10 = load %struct.yam_port*, %struct.yam_port** %3, align 8
  %11 = getelementptr inbounds %struct.yam_port, %struct.yam_port* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 8
  %12 = load i32, i32* @DEFAULT_BITRATE, align 4
  %13 = mul nsw i32 %12, 2
  %14 = load %struct.yam_port*, %struct.yam_port** %3, align 8
  %15 = getelementptr inbounds %struct.yam_port, %struct.yam_port* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 4
  %16 = load %struct.yam_port*, %struct.yam_port** %3, align 8
  %17 = getelementptr inbounds %struct.yam_port, %struct.yam_port* %16, i32 0, i32 4
  store i64 0, i64* %17, align 8
  %18 = load %struct.yam_port*, %struct.yam_port** %3, align 8
  %19 = getelementptr inbounds %struct.yam_port, %struct.yam_port* %18, i32 0, i32 3
  store i64 0, i64* %19, align 8
  %20 = load %struct.yam_port*, %struct.yam_port** %3, align 8
  %21 = getelementptr inbounds %struct.yam_port, %struct.yam_port* %20, i32 0, i32 11
  store i64 0, i64* %21, align 8
  %22 = load i32, i32* @DEFAULT_HOLDD, align 4
  %23 = load %struct.yam_port*, %struct.yam_port** %3, align 8
  %24 = getelementptr inbounds %struct.yam_port, %struct.yam_port* %23, i32 0, i32 10
  store i32 %22, i32* %24, align 8
  %25 = load i32, i32* @DEFAULT_TXD, align 4
  %26 = load %struct.yam_port*, %struct.yam_port** %3, align 8
  %27 = getelementptr inbounds %struct.yam_port, %struct.yam_port* %26, i32 0, i32 9
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* @DEFAULT_TXTAIL, align 4
  %29 = load %struct.yam_port*, %struct.yam_port** %3, align 8
  %30 = getelementptr inbounds %struct.yam_port, %struct.yam_port* %29, i32 0, i32 8
  store i32 %28, i32* %30, align 8
  %31 = load i32, i32* @DEFAULT_SLOT, align 4
  %32 = load %struct.yam_port*, %struct.yam_port** %3, align 8
  %33 = getelementptr inbounds %struct.yam_port, %struct.yam_port* %32, i32 0, i32 7
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* @DEFAULT_PERS, align 4
  %35 = load %struct.yam_port*, %struct.yam_port** %3, align 8
  %36 = getelementptr inbounds %struct.yam_port, %struct.yam_port* %35, i32 0, i32 6
  store i32 %34, i32* %36, align 8
  %37 = load %struct.net_device*, %struct.net_device** %2, align 8
  %38 = load %struct.yam_port*, %struct.yam_port** %3, align 8
  %39 = getelementptr inbounds %struct.yam_port, %struct.yam_port* %38, i32 0, i32 5
  store %struct.net_device* %37, %struct.net_device** %39, align 8
  %40 = load %struct.yam_port*, %struct.yam_port** %3, align 8
  %41 = getelementptr inbounds %struct.yam_port, %struct.yam_port* %40, i32 0, i32 4
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.net_device*, %struct.net_device** %2, align 8
  %44 = getelementptr inbounds %struct.net_device, %struct.net_device* %43, i32 0, i32 9
  store i64 %42, i64* %44, align 8
  %45 = load %struct.yam_port*, %struct.yam_port** %3, align 8
  %46 = getelementptr inbounds %struct.yam_port, %struct.yam_port* %45, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.net_device*, %struct.net_device** %2, align 8
  %49 = getelementptr inbounds %struct.net_device, %struct.net_device* %48, i32 0, i32 8
  store i64 %47, i64* %49, align 8
  %50 = load %struct.yam_port*, %struct.yam_port** %3, align 8
  %51 = getelementptr inbounds %struct.yam_port, %struct.yam_port* %50, i32 0, i32 2
  %52 = call i32 @skb_queue_head_init(i32* %51)
  %53 = load %struct.net_device*, %struct.net_device** %2, align 8
  %54 = getelementptr inbounds %struct.net_device, %struct.net_device* %53, i32 0, i32 7
  store i32* @yam_netdev_ops, i32** %54, align 8
  %55 = load %struct.net_device*, %struct.net_device** %2, align 8
  %56 = getelementptr inbounds %struct.net_device, %struct.net_device* %55, i32 0, i32 6
  store i32* @ax25_header_ops, i32** %56, align 8
  %57 = load i32, i32* @ARPHRD_AX25, align 4
  %58 = load %struct.net_device*, %struct.net_device** %2, align 8
  %59 = getelementptr inbounds %struct.net_device, %struct.net_device* %58, i32 0, i32 5
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* @AX25_MAX_HEADER_LEN, align 4
  %61 = load %struct.net_device*, %struct.net_device** %2, align 8
  %62 = getelementptr inbounds %struct.net_device, %struct.net_device* %61, i32 0, i32 4
  store i32 %60, i32* %62, align 8
  %63 = load i32, i32* @AX25_MTU, align 4
  %64 = load %struct.net_device*, %struct.net_device** %2, align 8
  %65 = getelementptr inbounds %struct.net_device, %struct.net_device* %64, i32 0, i32 3
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* @AX25_ADDR_LEN, align 4
  %67 = load %struct.net_device*, %struct.net_device** %2, align 8
  %68 = getelementptr inbounds %struct.net_device, %struct.net_device* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 8
  %69 = load %struct.net_device*, %struct.net_device** %2, align 8
  %70 = getelementptr inbounds %struct.net_device, %struct.net_device* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @AX25_ADDR_LEN, align 4
  %73 = call i32 @memcpy(i32 %71, i32* @ax25_bcast, i32 %72)
  %74 = load %struct.net_device*, %struct.net_device** %2, align 8
  %75 = getelementptr inbounds %struct.net_device, %struct.net_device* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @AX25_ADDR_LEN, align 4
  %78 = call i32 @memcpy(i32 %76, i32* @ax25_defaddr, i32 %77)
  ret void
}

declare dso_local %struct.yam_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
