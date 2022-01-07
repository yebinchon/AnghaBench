; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_hw_cfg_huge_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_hw_cfg_huge_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dev_info = type { i32 }
%struct.ksz_hw = type { i32, i32, i32, i64, i64 }

@KS8842_SWITCH_CTRL_2_OFFSET = common dso_local global i64 0, align 8
@RX_HUGE_FRAME = common dso_local global i32 0, align 4
@SWITCH_HUGE_PACKET = common dso_local global i32 0, align 4
@DMA_RX_ERROR = common dso_local global i32 0, align 4
@dev_rcv_special = common dso_local global i32 0, align 4
@port_rcv_packets = common dso_local global i32 0, align 4
@dev_rcv_packets = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dev_info*, %struct.ksz_hw*)* @hw_cfg_huge_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hw_cfg_huge_frame(%struct.dev_info* %0, %struct.ksz_hw* %1) #0 {
  %3 = alloca %struct.dev_info*, align 8
  %4 = alloca %struct.ksz_hw*, align 8
  %5 = alloca i32, align 4
  store %struct.dev_info* %0, %struct.dev_info** %3, align 8
  store %struct.ksz_hw* %1, %struct.ksz_hw** %4, align 8
  %6 = load %struct.ksz_hw*, %struct.ksz_hw** %4, align 8
  %7 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %6, i32 0, i32 4
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %40

10:                                               ; preds = %2
  %11 = load %struct.ksz_hw*, %struct.ksz_hw** %4, align 8
  %12 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @KS8842_SWITCH_CTRL_2_OFFSET, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @readw(i64 %15)
  store i32 %16, i32* %5, align 4
  %17 = load %struct.ksz_hw*, %struct.ksz_hw** %4, align 8
  %18 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @RX_HUGE_FRAME, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %10
  %24 = load i32, i32* @SWITCH_HUGE_PACKET, align 4
  %25 = load i32, i32* %5, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %5, align 4
  br label %32

27:                                               ; preds = %10
  %28 = load i32, i32* @SWITCH_HUGE_PACKET, align 4
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %5, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %5, align 4
  br label %32

32:                                               ; preds = %27, %23
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.ksz_hw*, %struct.ksz_hw** %4, align 8
  %35 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @KS8842_SWITCH_CTRL_2_OFFSET, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @writew(i32 %33, i64 %38)
  br label %40

40:                                               ; preds = %32, %2
  %41 = load %struct.ksz_hw*, %struct.ksz_hw** %4, align 8
  %42 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @RX_HUGE_FRAME, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %40
  %48 = load i32, i32* @DMA_RX_ERROR, align 4
  %49 = load %struct.ksz_hw*, %struct.ksz_hw** %4, align 8
  %50 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = or i32 %51, %48
  store i32 %52, i32* %50, align 8
  %53 = load i32, i32* @dev_rcv_special, align 4
  %54 = load %struct.dev_info*, %struct.dev_info** %3, align 8
  %55 = getelementptr inbounds %struct.dev_info, %struct.dev_info* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  br label %76

56:                                               ; preds = %40
  %57 = load i32, i32* @DMA_RX_ERROR, align 4
  %58 = xor i32 %57, -1
  %59 = load %struct.ksz_hw*, %struct.ksz_hw** %4, align 8
  %60 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = and i32 %61, %58
  store i32 %62, i32* %60, align 8
  %63 = load %struct.ksz_hw*, %struct.ksz_hw** %4, align 8
  %64 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = icmp sgt i32 %65, 1
  br i1 %66, label %67, label %71

67:                                               ; preds = %56
  %68 = load i32, i32* @port_rcv_packets, align 4
  %69 = load %struct.dev_info*, %struct.dev_info** %3, align 8
  %70 = getelementptr inbounds %struct.dev_info, %struct.dev_info* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 4
  br label %75

71:                                               ; preds = %56
  %72 = load i32, i32* @dev_rcv_packets, align 4
  %73 = load %struct.dev_info*, %struct.dev_info** %3, align 8
  %74 = getelementptr inbounds %struct.dev_info, %struct.dev_info* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 4
  br label %75

75:                                               ; preds = %71, %67
  br label %76

76:                                               ; preds = %75, %47
  ret void
}

declare dso_local i32 @readw(i64) #1

declare dso_local i32 @writew(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
