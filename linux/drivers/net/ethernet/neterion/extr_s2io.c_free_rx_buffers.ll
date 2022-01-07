; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/extr_s2io.c_free_rx_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/extr_s2io.c_free_rx_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s2io_nic = type { %struct.mac_info, %struct.config_param, %struct.net_device* }
%struct.mac_info = type { %struct.ring_info* }
%struct.ring_info = type { i64, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_3__ = type { i64, i64 }
%struct.config_param = type { i32 }
%struct.net_device = type { i32 }

@rx_ring_sz = common dso_local global i32* null, align 8
@INIT_DBG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"%s: Freed 0x%x Rx Buffers on ring%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s2io_nic*)* @free_rx_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_rx_buffers(%struct.s2io_nic* %0) #0 {
  %2 = alloca %struct.s2io_nic*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.config_param*, align 8
  %8 = alloca %struct.mac_info*, align 8
  %9 = alloca %struct.ring_info*, align 8
  store %struct.s2io_nic* %0, %struct.s2io_nic** %2, align 8
  %10 = load %struct.s2io_nic*, %struct.s2io_nic** %2, align 8
  %11 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %10, i32 0, i32 2
  %12 = load %struct.net_device*, %struct.net_device** %11, align 8
  store %struct.net_device* %12, %struct.net_device** %3, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %13 = load %struct.s2io_nic*, %struct.s2io_nic** %2, align 8
  %14 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %13, i32 0, i32 1
  store %struct.config_param* %14, %struct.config_param** %7, align 8
  %15 = load %struct.s2io_nic*, %struct.s2io_nic** %2, align 8
  %16 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %15, i32 0, i32 0
  store %struct.mac_info* %16, %struct.mac_info** %8, align 8
  store i32 0, i32* %4, align 4
  br label %17

17:                                               ; preds = %68, %1
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.config_param*, %struct.config_param** %7, align 8
  %20 = getelementptr inbounds %struct.config_param, %struct.config_param* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %71

23:                                               ; preds = %17
  %24 = load %struct.mac_info*, %struct.mac_info** %8, align 8
  %25 = getelementptr inbounds %struct.mac_info, %struct.mac_info* %24, i32 0, i32 0
  %26 = load %struct.ring_info*, %struct.ring_info** %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %26, i64 %28
  store %struct.ring_info* %29, %struct.ring_info** %9, align 8
  store i32 0, i32* %5, align 4
  br label %30

30:                                               ; preds = %43, %23
  %31 = load i32, i32* %5, align 4
  %32 = load i32*, i32** @rx_ring_sz, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = icmp slt i32 %31, %36
  br i1 %37, label %38, label %46

38:                                               ; preds = %30
  %39 = load %struct.s2io_nic*, %struct.s2io_nic** %2, align 8
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @free_rxd_blk(%struct.s2io_nic* %39, i32 %40, i32 %41)
  br label %43

43:                                               ; preds = %38
  %44 = load i32, i32* %5, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %5, align 4
  br label %30

46:                                               ; preds = %30
  %47 = load %struct.ring_info*, %struct.ring_info** %9, align 8
  %48 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  store i64 0, i64* %49, align 8
  %50 = load %struct.ring_info*, %struct.ring_info** %9, align 8
  %51 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  store i64 0, i64* %52, align 8
  %53 = load %struct.ring_info*, %struct.ring_info** %9, align 8
  %54 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  store i64 0, i64* %55, align 8
  %56 = load %struct.ring_info*, %struct.ring_info** %9, align 8
  %57 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  store i64 0, i64* %58, align 8
  %59 = load %struct.ring_info*, %struct.ring_info** %9, align 8
  %60 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %59, i32 0, i32 0
  store i64 0, i64* %60, align 8
  %61 = load i32, i32* @INIT_DBG, align 4
  %62 = load %struct.net_device*, %struct.net_device** %3, align 8
  %63 = getelementptr inbounds %struct.net_device, %struct.net_device* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* %4, align 4
  %67 = call i32 @DBG_PRINT(i32 %61, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %64, i32 %65, i32 %66)
  br label %68

68:                                               ; preds = %46
  %69 = load i32, i32* %4, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %4, align 4
  br label %17

71:                                               ; preds = %17
  ret void
}

declare dso_local i32 @free_rxd_blk(%struct.s2io_nic*, i32, i32) #1

declare dso_local i32 @DBG_PRINT(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
