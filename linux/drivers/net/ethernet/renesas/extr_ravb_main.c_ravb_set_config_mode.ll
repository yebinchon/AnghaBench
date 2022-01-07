; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/renesas/extr_ravb_main.c_ravb_set_config_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/renesas/extr_ravb_main.c_ravb_set_config_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ravb_private = type { i64 }

@RCAR_GEN2 = common dso_local global i64 0, align 8
@CCC = common dso_local global i32 0, align 4
@CCC_OPC = common dso_local global i32 0, align 4
@CCC_OPC_CONFIG = common dso_local global i32 0, align 4
@CCC_CSEL = common dso_local global i32 0, align 4
@CCC_CSEL_HPB = common dso_local global i32 0, align 4
@CCC_GAC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @ravb_set_config_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ravb_set_config_mode(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.ravb_private*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.ravb_private* @netdev_priv(%struct.net_device* %4)
  store %struct.ravb_private* %5, %struct.ravb_private** %3, align 8
  %6 = load %struct.ravb_private*, %struct.ravb_private** %3, align 8
  %7 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @RCAR_GEN2, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %22

11:                                               ; preds = %1
  %12 = load %struct.net_device*, %struct.net_device** %2, align 8
  %13 = load i32, i32* @CCC, align 4
  %14 = load i32, i32* @CCC_OPC, align 4
  %15 = load i32, i32* @CCC_OPC_CONFIG, align 4
  %16 = call i32 @ravb_modify(%struct.net_device* %12, i32 %13, i32 %14, i32 %15)
  %17 = load %struct.net_device*, %struct.net_device** %2, align 8
  %18 = load i32, i32* @CCC, align 4
  %19 = load i32, i32* @CCC_CSEL, align 4
  %20 = load i32, i32* @CCC_CSEL_HPB, align 4
  %21 = call i32 @ravb_modify(%struct.net_device* %17, i32 %18, i32 %19, i32 %20)
  br label %32

22:                                               ; preds = %1
  %23 = load %struct.net_device*, %struct.net_device** %2, align 8
  %24 = load i32, i32* @CCC, align 4
  %25 = load i32, i32* @CCC_OPC, align 4
  %26 = load i32, i32* @CCC_OPC_CONFIG, align 4
  %27 = load i32, i32* @CCC_GAC, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @CCC_CSEL_HPB, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @ravb_modify(%struct.net_device* %23, i32 %24, i32 %25, i32 %30)
  br label %32

32:                                               ; preds = %22, %11
  ret void
}

declare dso_local %struct.ravb_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ravb_modify(%struct.net_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
