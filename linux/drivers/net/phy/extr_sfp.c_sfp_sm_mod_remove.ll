; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_sfp.c_sfp_sm_mod_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_sfp.c_sfp_sm_mod_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfp = type { i32, i32, i64, i32 }

@.str = private unnamed_addr constant [16 x i8] c"module removed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sfp*)* @sfp_sm_mod_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sfp_sm_mod_remove(%struct.sfp* %0) #0 {
  %2 = alloca %struct.sfp*, align 8
  store %struct.sfp* %0, %struct.sfp** %2, align 8
  %3 = load %struct.sfp*, %struct.sfp** %2, align 8
  %4 = getelementptr inbounds %struct.sfp, %struct.sfp* %3, i32 0, i32 3
  %5 = load i32, i32* %4, align 8
  %6 = call i32 @sfp_module_remove(i32 %5)
  %7 = load %struct.sfp*, %struct.sfp** %2, align 8
  %8 = call i32 @sfp_hwmon_remove(%struct.sfp* %7)
  %9 = load %struct.sfp*, %struct.sfp** %2, align 8
  %10 = getelementptr inbounds %struct.sfp, %struct.sfp* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load %struct.sfp*, %struct.sfp** %2, align 8
  %15 = call i32 @sfp_sm_phy_detach(%struct.sfp* %14)
  br label %16

16:                                               ; preds = %13, %1
  %17 = load %struct.sfp*, %struct.sfp** %2, align 8
  %18 = call i32 @sfp_module_tx_disable(%struct.sfp* %17)
  %19 = load %struct.sfp*, %struct.sfp** %2, align 8
  %20 = getelementptr inbounds %struct.sfp, %struct.sfp* %19, i32 0, i32 1
  %21 = call i32 @memset(i32* %20, i32 0, i32 4)
  %22 = load %struct.sfp*, %struct.sfp** %2, align 8
  %23 = getelementptr inbounds %struct.sfp, %struct.sfp* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @dev_info(i32 %24, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @sfp_module_remove(i32) #1

declare dso_local i32 @sfp_hwmon_remove(%struct.sfp*) #1

declare dso_local i32 @sfp_sm_phy_detach(%struct.sfp*) #1

declare dso_local i32 @sfp_module_tx_disable(%struct.sfp*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @dev_info(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
