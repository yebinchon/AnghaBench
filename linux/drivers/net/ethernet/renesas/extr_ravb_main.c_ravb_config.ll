; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/renesas/extr_ravb_main.c_ravb_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/renesas/extr_ravb_main.c_ravb_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }

@CCC = common dso_local global i32 0, align 4
@CCC_OPC = common dso_local global i32 0, align 4
@CCC_OPC_CONFIG = common dso_local global i32 0, align 4
@CSR = common dso_local global i32 0, align 4
@CSR_OPS = common dso_local global i32 0, align 4
@CSR_OPS_CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"failed to switch device to config mode\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @ravb_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ravb_config(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = load i32, i32* @CCC, align 4
  %6 = load i32, i32* @CCC_OPC, align 4
  %7 = load i32, i32* @CCC_OPC_CONFIG, align 4
  %8 = call i32 @ravb_modify(%struct.net_device* %4, i32 %5, i32 %6, i32 %7)
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = load i32, i32* @CSR, align 4
  %11 = load i32, i32* @CSR_OPS, align 4
  %12 = load i32, i32* @CSR_OPS_CONFIG, align 4
  %13 = call i32 @ravb_wait(%struct.net_device* %9, i32 %10, i32 %11, i32 %12)
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load %struct.net_device*, %struct.net_device** %2, align 8
  %18 = call i32 @netdev_err(%struct.net_device* %17, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %19

19:                                               ; preds = %16, %1
  %20 = load i32, i32* %3, align 4
  ret i32 %20
}

declare dso_local i32 @ravb_modify(%struct.net_device*, i32, i32, i32) #1

declare dso_local i32 @ravb_wait(%struct.net_device*, i32, i32, i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
