; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_netcp_ethss.c_gbe_port_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_netcp_ethss.c_gbe_port_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gbe_slave = type { i32 }

@SOFT_RESET = common dso_local global i64 0, align 8
@emac_regs = common dso_local global i32 0, align 4
@soft_reset = common dso_local global i32 0, align 4
@DEVICE_EMACSL_RESET_POLL_COUNT = common dso_local global i64 0, align 8
@SOFT_RESET_MASK = common dso_local global i64 0, align 8
@GMACSL_RET_WARN_RESET_INCOMPLETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gbe_slave*)* @gbe_port_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gbe_port_reset(%struct.gbe_slave* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gbe_slave*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.gbe_slave* %0, %struct.gbe_slave** %3, align 8
  %6 = load i64, i64* @SOFT_RESET, align 8
  %7 = load %struct.gbe_slave*, %struct.gbe_slave** %3, align 8
  %8 = load i32, i32* @emac_regs, align 4
  %9 = load i32, i32* @soft_reset, align 4
  %10 = call i32 @GBE_REG_ADDR(%struct.gbe_slave* %7, i32 %8, i32 %9)
  %11 = call i32 @writel(i64 %6, i32 %10)
  store i64 0, i64* %4, align 8
  br label %12

12:                                               ; preds = %29, %1
  %13 = load i64, i64* %4, align 8
  %14 = load i64, i64* @DEVICE_EMACSL_RESET_POLL_COUNT, align 8
  %15 = icmp slt i64 %13, %14
  br i1 %15, label %16, label %32

16:                                               ; preds = %12
  %17 = load %struct.gbe_slave*, %struct.gbe_slave** %3, align 8
  %18 = load i32, i32* @emac_regs, align 4
  %19 = load i32, i32* @soft_reset, align 4
  %20 = call i32 @GBE_REG_ADDR(%struct.gbe_slave* %17, i32 %18, i32 %19)
  %21 = call i64 @readl(i32 %20)
  store i64 %21, i64* %5, align 8
  %22 = load i64, i64* %5, align 8
  %23 = load i64, i64* @SOFT_RESET_MASK, align 8
  %24 = and i64 %22, %23
  %25 = load i64, i64* @SOFT_RESET, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %34

28:                                               ; preds = %16
  br label %29

29:                                               ; preds = %28
  %30 = load i64, i64* %4, align 8
  %31 = add nsw i64 %30, 1
  store i64 %31, i64* %4, align 8
  br label %12

32:                                               ; preds = %12
  %33 = load i32, i32* @GMACSL_RET_WARN_RESET_INCOMPLETE, align 4
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %32, %27
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @writel(i64, i32) #1

declare dso_local i32 @GBE_REG_ADDR(%struct.gbe_slave*, i32, i32) #1

declare dso_local i64 @readl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
