; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igc/extr_igc_main.c_igc_setup_tctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igc/extr_igc_main.c_igc_setup_tctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igc_adapter = type { %struct.igc_hw }
%struct.igc_hw = type { i32 }

@IGC_TCTL = common dso_local global i32 0, align 4
@IGC_TCTL_CT = common dso_local global i32 0, align 4
@IGC_TCTL_PSP = common dso_local global i32 0, align 4
@IGC_TCTL_RTLC = common dso_local global i32 0, align 4
@IGC_COLLISION_THRESHOLD = common dso_local global i32 0, align 4
@IGC_CT_SHIFT = common dso_local global i32 0, align 4
@IGC_TCTL_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.igc_adapter*)* @igc_setup_tctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @igc_setup_tctl(%struct.igc_adapter* %0) #0 {
  %2 = alloca %struct.igc_adapter*, align 8
  %3 = alloca %struct.igc_hw*, align 8
  %4 = alloca i32, align 4
  store %struct.igc_adapter* %0, %struct.igc_adapter** %2, align 8
  %5 = load %struct.igc_adapter*, %struct.igc_adapter** %2, align 8
  %6 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %5, i32 0, i32 0
  store %struct.igc_hw* %6, %struct.igc_hw** %3, align 8
  %7 = call i32 @IGC_TXDCTL(i32 0)
  %8 = call i32 @wr32(i32 %7, i32 0)
  %9 = load i32, i32* @IGC_TCTL, align 4
  %10 = call i32 @rd32(i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* @IGC_TCTL_CT, align 4
  %12 = xor i32 %11, -1
  %13 = load i32, i32* %4, align 4
  %14 = and i32 %13, %12
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* @IGC_TCTL_PSP, align 4
  %16 = load i32, i32* @IGC_TCTL_RTLC, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @IGC_COLLISION_THRESHOLD, align 4
  %19 = load i32, i32* @IGC_CT_SHIFT, align 4
  %20 = shl i32 %18, %19
  %21 = or i32 %17, %20
  %22 = load i32, i32* %4, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* @IGC_TCTL_EN, align 4
  %25 = load i32, i32* %4, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* @IGC_TCTL, align 4
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @wr32(i32 %27, i32 %28)
  ret void
}

declare dso_local i32 @wr32(i32, i32) #1

declare dso_local i32 @IGC_TXDCTL(i32) #1

declare dso_local i32 @rd32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
