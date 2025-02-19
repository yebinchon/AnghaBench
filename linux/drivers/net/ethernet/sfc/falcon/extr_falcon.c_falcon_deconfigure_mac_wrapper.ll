; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_falcon.c_falcon_deconfigure_mac_wrapper.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_falcon.c_falcon_deconfigure_mac_wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ef4_nic = type { i32 }

@EF4_REV_FALCON_B0 = common dso_local global i64 0, align 8
@FR_AZ_RX_CFG = common dso_local global i32 0, align 4
@FRF_BZ_RX_INGR_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ef4_nic*)* @falcon_deconfigure_mac_wrapper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @falcon_deconfigure_mac_wrapper(%struct.ef4_nic* %0) #0 {
  %2 = alloca %struct.ef4_nic*, align 8
  %3 = alloca i32, align 4
  store %struct.ef4_nic* %0, %struct.ef4_nic** %2, align 8
  %4 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %5 = call i64 @ef4_nic_rev(%struct.ef4_nic* %4)
  %6 = load i64, i64* @EF4_REV_FALCON_B0, align 8
  %7 = icmp slt i64 %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %21

9:                                                ; preds = %1
  %10 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %11 = load i32, i32* @FR_AZ_RX_CFG, align 4
  %12 = call i32 @ef4_reado(%struct.ef4_nic* %10, i32* %3, i32 %11)
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @FRF_BZ_RX_INGR_EN, align 4
  %15 = call i32 @EF4_SET_OWORD_FIELD(i32 %13, i32 %14, i32 0)
  %16 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %17 = load i32, i32* @FR_AZ_RX_CFG, align 4
  %18 = call i32 @ef4_writeo(%struct.ef4_nic* %16, i32* %3, i32 %17)
  %19 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %20 = call i32 @falcon_drain_tx_fifo(%struct.ef4_nic* %19)
  br label %21

21:                                               ; preds = %9, %8
  ret void
}

declare dso_local i64 @ef4_nic_rev(%struct.ef4_nic*) #1

declare dso_local i32 @ef4_reado(%struct.ef4_nic*, i32*, i32) #1

declare dso_local i32 @EF4_SET_OWORD_FIELD(i32, i32, i32) #1

declare dso_local i32 @ef4_writeo(%struct.ef4_nic*, i32*, i32) #1

declare dso_local i32 @falcon_drain_tx_fifo(%struct.ef4_nic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
