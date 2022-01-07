; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_sfp.c_sfp_module_tx_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_sfp.c_sfp_module_tx_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfp = type { i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"tx disable %u -> %u\0A\00", align 1
@SFP_F_TX_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sfp*)* @sfp_module_tx_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sfp_module_tx_enable(%struct.sfp* %0) #0 {
  %2 = alloca %struct.sfp*, align 8
  store %struct.sfp* %0, %struct.sfp** %2, align 8
  %3 = load %struct.sfp*, %struct.sfp** %2, align 8
  %4 = getelementptr inbounds %struct.sfp, %struct.sfp* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.sfp*, %struct.sfp** %2, align 8
  %7 = getelementptr inbounds %struct.sfp, %struct.sfp* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @SFP_F_TX_DISABLE, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  %12 = zext i1 %11 to i64
  %13 = select i1 %11, i32 1, i32 0
  %14 = call i32 @dev_dbg(i32 %5, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %13, i32 0)
  %15 = load i32, i32* @SFP_F_TX_DISABLE, align 4
  %16 = xor i32 %15, -1
  %17 = load %struct.sfp*, %struct.sfp** %2, align 8
  %18 = getelementptr inbounds %struct.sfp, %struct.sfp* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, %16
  store i32 %20, i32* %18, align 4
  %21 = load %struct.sfp*, %struct.sfp** %2, align 8
  %22 = load %struct.sfp*, %struct.sfp** %2, align 8
  %23 = getelementptr inbounds %struct.sfp, %struct.sfp* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @sfp_set_state(%struct.sfp* %21, i32 %24)
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @sfp_set_state(%struct.sfp*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
