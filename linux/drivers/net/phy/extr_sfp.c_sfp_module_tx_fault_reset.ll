; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_sfp.c_sfp_module_tx_fault_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_sfp.c_sfp_module_tx_fault_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfp = type { i32 }

@SFP_F_TX_DISABLE = common dso_local global i32 0, align 4
@T_RESET_US = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sfp*)* @sfp_module_tx_fault_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sfp_module_tx_fault_reset(%struct.sfp* %0) #0 {
  %2 = alloca %struct.sfp*, align 8
  %3 = alloca i32, align 4
  store %struct.sfp* %0, %struct.sfp** %2, align 8
  %4 = load %struct.sfp*, %struct.sfp** %2, align 8
  %5 = getelementptr inbounds %struct.sfp, %struct.sfp* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @SFP_F_TX_DISABLE, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %23

12:                                               ; preds = %1
  %13 = load %struct.sfp*, %struct.sfp** %2, align 8
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @SFP_F_TX_DISABLE, align 4
  %16 = or i32 %14, %15
  %17 = call i32 @sfp_set_state(%struct.sfp* %13, i32 %16)
  %18 = load i32, i32* @T_RESET_US, align 4
  %19 = call i32 @udelay(i32 %18)
  %20 = load %struct.sfp*, %struct.sfp** %2, align 8
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @sfp_set_state(%struct.sfp* %20, i32 %21)
  br label %23

23:                                               ; preds = %12, %11
  ret void
}

declare dso_local i32 @sfp_set_state(%struct.sfp*, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
