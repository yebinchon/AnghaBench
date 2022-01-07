; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_port_cfg_change.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_port_cfg_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ksz_hw = type { i32, i32, i64, i32, i64 }
%struct.ksz_port = type { i32 }
%struct.ksz_port_info = type { i32 }

@HALF_DUPLEX_SIGNAL_BUG = common dso_local global i32 0, align 4
@PAUSE_FLOW_CTRL = common dso_local global i32 0, align 4
@DMA_TX_FLOW_ENABLE = common dso_local global i32 0, align 4
@KS_DMA_TX_CTRL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ksz_hw*, %struct.ksz_port*, %struct.ksz_port_info*, i32)* @port_cfg_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @port_cfg_change(%struct.ksz_hw* %0, %struct.ksz_port* %1, %struct.ksz_port_info* %2, i32 %3) #0 {
  %5 = alloca %struct.ksz_hw*, align 8
  %6 = alloca %struct.ksz_port*, align 8
  %7 = alloca %struct.ksz_port_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ksz_hw* %0, %struct.ksz_hw** %5, align 8
  store %struct.ksz_port* %1, %struct.ksz_port** %6, align 8
  store %struct.ksz_port_info* %2, %struct.ksz_port_info** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.ksz_hw*, %struct.ksz_hw** %5, align 8
  %11 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @HALF_DUPLEX_SIGNAL_BUG, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %60

16:                                               ; preds = %4
  %17 = load %struct.ksz_hw*, %struct.ksz_hw** %5, align 8
  %18 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @PAUSE_FLOW_CTRL, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %60, label %23

23:                                               ; preds = %16
  %24 = load %struct.ksz_hw*, %struct.ksz_hw** %5, align 8
  %25 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %9, align 4
  %27 = load %struct.ksz_port_info*, %struct.ksz_port_info** %7, align 8
  %28 = getelementptr inbounds %struct.ksz_port_info, %struct.ksz_port_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 1, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %23
  %32 = load i32, i32* @DMA_TX_FLOW_ENABLE, align 4
  %33 = xor i32 %32, -1
  %34 = load %struct.ksz_hw*, %struct.ksz_hw** %5, align 8
  %35 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = and i32 %36, %33
  store i32 %37, i32* %35, align 8
  br label %38

38:                                               ; preds = %31, %23
  %39 = load %struct.ksz_hw*, %struct.ksz_hw** %5, align 8
  %40 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %39, i32 0, i32 4
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %59

43:                                               ; preds = %38
  %44 = load i32, i32* %9, align 4
  %45 = load %struct.ksz_hw*, %struct.ksz_hw** %5, align 8
  %46 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %44, %47
  br i1 %48, label %49, label %59

49:                                               ; preds = %43
  %50 = load %struct.ksz_hw*, %struct.ksz_hw** %5, align 8
  %51 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.ksz_hw*, %struct.ksz_hw** %5, align 8
  %54 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @KS_DMA_TX_CTRL, align 8
  %57 = add nsw i64 %55, %56
  %58 = call i32 @writel(i32 %52, i64 %57)
  br label %59

59:                                               ; preds = %49, %43, %38
  br label %60

60:                                               ; preds = %59, %16, %4
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
