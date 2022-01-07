; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_sw_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_sw_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ksz_hw = type { i32, i64 }

@SWITCH_PORT_NUM = common dso_local global i32 0, align 4
@HOST_MASK = common dso_local global i32 0, align 4
@STP_STATE_DISABLED = common dso_local global i32 0, align 4
@PORT_MASK = common dso_local global i32 0, align 4
@STP_STATE_FORWARDING = common dso_local global i32 0, align 4
@STP_STATE_SIMPLE = common dso_local global i32 0, align 4
@KS8842_START = common dso_local global i32 0, align 4
@KS884X_CHIP_ID_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ksz_hw*, i32)* @sw_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sw_enable(%struct.ksz_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ksz_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ksz_hw* %0, %struct.ksz_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %37, %2
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @SWITCH_PORT_NUM, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %40

10:                                               ; preds = %6
  %11 = load %struct.ksz_hw*, %struct.ksz_hw** %3, align 8
  %12 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp sgt i32 %13, 1
  br i1 %14, label %15, label %27

15:                                               ; preds = %10
  %16 = load %struct.ksz_hw*, %struct.ksz_hw** %3, align 8
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @HOST_MASK, align 4
  %19 = load i32, i32* %5, align 4
  %20 = shl i32 1, %19
  %21 = or i32 %18, %20
  %22 = call i32 @sw_cfg_port_base_vlan(%struct.ksz_hw* %16, i32 %17, i32 %21)
  %23 = load %struct.ksz_hw*, %struct.ksz_hw** %3, align 8
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @STP_STATE_DISABLED, align 4
  %26 = call i32 @port_set_stp_state(%struct.ksz_hw* %23, i32 %24, i32 %25)
  br label %36

27:                                               ; preds = %10
  %28 = load %struct.ksz_hw*, %struct.ksz_hw** %3, align 8
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @PORT_MASK, align 4
  %31 = call i32 @sw_cfg_port_base_vlan(%struct.ksz_hw* %28, i32 %29, i32 %30)
  %32 = load %struct.ksz_hw*, %struct.ksz_hw** %3, align 8
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @STP_STATE_FORWARDING, align 4
  %35 = call i32 @port_set_stp_state(%struct.ksz_hw* %32, i32 %33, i32 %34)
  br label %36

36:                                               ; preds = %27, %15
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %5, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %5, align 4
  br label %6

40:                                               ; preds = %6
  %41 = load %struct.ksz_hw*, %struct.ksz_hw** %3, align 8
  %42 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp sgt i32 %43, 1
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = load %struct.ksz_hw*, %struct.ksz_hw** %3, align 8
  %47 = load i32, i32* @SWITCH_PORT_NUM, align 4
  %48 = load i32, i32* @STP_STATE_SIMPLE, align 4
  %49 = call i32 @port_set_stp_state(%struct.ksz_hw* %46, i32 %47, i32 %48)
  br label %55

50:                                               ; preds = %40
  %51 = load %struct.ksz_hw*, %struct.ksz_hw** %3, align 8
  %52 = load i32, i32* @SWITCH_PORT_NUM, align 4
  %53 = load i32, i32* @STP_STATE_FORWARDING, align 4
  %54 = call i32 @port_set_stp_state(%struct.ksz_hw* %51, i32 %52, i32 %53)
  br label %55

55:                                               ; preds = %50, %45
  %56 = load i32, i32* %4, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %55
  %59 = load i32, i32* @KS8842_START, align 4
  store i32 %59, i32* %4, align 4
  br label %60

60:                                               ; preds = %58, %55
  %61 = load i32, i32* %4, align 4
  %62 = load %struct.ksz_hw*, %struct.ksz_hw** %3, align 8
  %63 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @KS884X_CHIP_ID_OFFSET, align 8
  %66 = add nsw i64 %64, %65
  %67 = call i32 @writew(i32 %61, i64 %66)
  ret void
}

declare dso_local i32 @sw_cfg_port_base_vlan(%struct.ksz_hw*, i32, i32) #1

declare dso_local i32 @port_set_stp_state(%struct.ksz_hw*, i32, i32) #1

declare dso_local i32 @writew(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
