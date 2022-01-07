; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_fan_failure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_fan_failure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.bnx2x = type { i32 }

@dev_info = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@PORT_HW_CFG_XGXS_EXT_PHY_TYPE_MASK = common dso_local global i32 0, align 4
@PORT_HW_CFG_XGXS_EXT_PHY_TYPE_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [149 x i8] c"Fan Failure on Network Controller has caused the driver to shutdown the card to prevent permanent damage.\0APlease contact OEM Support for assistance\0A\00", align 1
@BNX2X_SP_RTNL_FAN_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*)* @bnx2x_fan_failure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_fan_failure(%struct.bnx2x* %0) #0 {
  %2 = alloca %struct.bnx2x*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %2, align 8
  %5 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %6 = call i32 @BP_PORT(%struct.bnx2x* %5)
  store i32 %6, i32* %3, align 4
  %7 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dev_info, i32 0, i32 0), align 8
  %9 = load i32, i32* %3, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i64 %10
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @SHMEM_RD(%struct.bnx2x* %7, i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* @PORT_HW_CFG_XGXS_EXT_PHY_TYPE_MASK, align 4
  %16 = xor i32 %15, -1
  %17 = load i32, i32* %4, align 4
  %18 = and i32 %17, %16
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* @PORT_HW_CFG_XGXS_EXT_PHY_TYPE_FAILURE, align 4
  %20 = load i32, i32* %4, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %4, align 4
  %22 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dev_info, i32 0, i32 0), align 8
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @SHMEM_WR(%struct.bnx2x* %22, i32 %28, i32 %29)
  %31 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %32 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @netdev_err(i32 %33, i8* getelementptr inbounds ([149 x i8], [149 x i8]* @.str, i64 0, i64 0))
  %35 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %36 = load i32, i32* @BNX2X_SP_RTNL_FAN_FAILURE, align 4
  %37 = call i32 @bnx2x_schedule_sp_rtnl(%struct.bnx2x* %35, i32 %36, i32 0)
  ret void
}

declare dso_local i32 @BP_PORT(%struct.bnx2x*) #1

declare dso_local i32 @SHMEM_RD(%struct.bnx2x*, i32) #1

declare dso_local i32 @SHMEM_WR(%struct.bnx2x*, i32, i32) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

declare dso_local i32 @bnx2x_schedule_sp_rtnl(%struct.bnx2x*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
