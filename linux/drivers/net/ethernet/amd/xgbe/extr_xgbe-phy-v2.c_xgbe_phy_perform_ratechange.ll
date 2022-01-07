; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-phy-v2.c_xgbe_phy_perform_ratechange.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-phy-v2.c_xgbe_phy_perform_ratechange.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_prv_data = type { i32 }

@XP_DRIVER_INT_RO = common dso_local global i32 0, align 4
@STATUS = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"firmware mailbox not ready for command\0A\00", align 1
@XP_DRIVER_SCRATCH_0 = common dso_local global i32 0, align 4
@COMMAND = common dso_local global i32 0, align 4
@SUB_COMMAND = common dso_local global i32 0, align 4
@XP_DRIVER_SCRATCH_1 = common dso_local global i32 0, align 4
@XP_DRIVER_INT_REQ = common dso_local global i32 0, align 4
@REQUEST = common dso_local global i32 0, align 4
@XGBE_RATECHANGE_COUNT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"firmware mailbox command did not complete\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xgbe_prv_data*, i32, i32)* @xgbe_phy_perform_ratechange to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgbe_phy_perform_ratechange(%struct.xgbe_prv_data* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.xgbe_prv_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.xgbe_prv_data* %0, %struct.xgbe_prv_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %9 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %10 = load i32, i32* @XP_DRIVER_INT_RO, align 4
  %11 = load i32, i32* @STATUS, align 4
  %12 = call i64 @XP_IOREAD_BITS(%struct.xgbe_prv_data* %9, i32 %10, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %3
  %15 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %16 = load i32, i32* @link, align 4
  %17 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %18 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @netif_dbg(%struct.xgbe_prv_data* %15, i32 %16, i32 %19, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %14, %3
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @XP_DRIVER_SCRATCH_0, align 4
  %24 = load i32, i32* @COMMAND, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @XP_SET_BITS(i32 %22, i32 %23, i32 %24, i32 %25)
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @XP_DRIVER_SCRATCH_0, align 4
  %29 = load i32, i32* @SUB_COMMAND, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @XP_SET_BITS(i32 %27, i32 %28, i32 %29, i32 %30)
  %32 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %33 = load i32, i32* @XP_DRIVER_SCRATCH_0, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @XP_IOWRITE(%struct.xgbe_prv_data* %32, i32 %33, i32 %34)
  %36 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %37 = load i32, i32* @XP_DRIVER_SCRATCH_1, align 4
  %38 = call i32 @XP_IOWRITE(%struct.xgbe_prv_data* %36, i32 %37, i32 0)
  %39 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %40 = load i32, i32* @XP_DRIVER_INT_REQ, align 4
  %41 = load i32, i32* @REQUEST, align 4
  %42 = call i32 @XP_IOWRITE_BITS(%struct.xgbe_prv_data* %39, i32 %40, i32 %41, i32 1)
  %43 = load i32, i32* @XGBE_RATECHANGE_COUNT, align 4
  store i32 %43, i32* %8, align 4
  br label %44

44:                                               ; preds = %55, %21
  %45 = load i32, i32* %8, align 4
  %46 = add i32 %45, -1
  store i32 %46, i32* %8, align 4
  %47 = icmp ne i32 %45, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %44
  %49 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %50 = load i32, i32* @XP_DRIVER_INT_RO, align 4
  %51 = load i32, i32* @STATUS, align 4
  %52 = call i64 @XP_IOREAD_BITS(%struct.xgbe_prv_data* %49, i32 %50, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %48
  br label %64

55:                                               ; preds = %48
  %56 = call i32 @usleep_range(i32 1000, i32 2000)
  br label %44

57:                                               ; preds = %44
  %58 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %59 = load i32, i32* @link, align 4
  %60 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %61 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @netif_dbg(%struct.xgbe_prv_data* %58, i32 %59, i32 %62, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  br label %64

64:                                               ; preds = %57, %54
  ret void
}

declare dso_local i64 @XP_IOREAD_BITS(%struct.xgbe_prv_data*, i32, i32) #1

declare dso_local i32 @netif_dbg(%struct.xgbe_prv_data*, i32, i32, i8*) #1

declare dso_local i32 @XP_SET_BITS(i32, i32, i32, i32) #1

declare dso_local i32 @XP_IOWRITE(%struct.xgbe_prv_data*, i32, i32) #1

declare dso_local i32 @XP_IOWRITE_BITS(%struct.xgbe_prv_data*, i32, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
