; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_main.c_hns_dsaf_rocee_bp_en.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_main.c_hns_dsaf_rocee_bp_en.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsaf_device = type { i32 }

@DSAF_XGE_CTRL_SIG_CFG_0_REG = common dso_local global i32 0, align 4
@DSAF_FC_XGE_TX_PAUSE_S = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dsaf_device*)* @hns_dsaf_rocee_bp_en to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hns_dsaf_rocee_bp_en(%struct.dsaf_device* %0) #0 {
  %2 = alloca %struct.dsaf_device*, align 8
  store %struct.dsaf_device* %0, %struct.dsaf_device** %2, align 8
  %3 = load %struct.dsaf_device*, %struct.dsaf_device** %2, align 8
  %4 = getelementptr inbounds %struct.dsaf_device, %struct.dsaf_device* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = call i64 @AE_IS_VER1(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load %struct.dsaf_device*, %struct.dsaf_device** %2, align 8
  %10 = load i32, i32* @DSAF_XGE_CTRL_SIG_CFG_0_REG, align 4
  %11 = load i32, i32* @DSAF_FC_XGE_TX_PAUSE_S, align 4
  %12 = call i32 @dsaf_set_dev_bit(%struct.dsaf_device* %9, i32 %10, i32 %11, i32 1)
  br label %13

13:                                               ; preds = %8, %1
  ret void
}

declare dso_local i64 @AE_IS_VER1(i32) #1

declare dso_local i32 @dsaf_set_dev_bit(%struct.dsaf_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
