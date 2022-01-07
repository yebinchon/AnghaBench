; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-dev.c_xgbe_set_tstamp_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-dev.c_xgbe_set_tstamp_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_prv_data = type { i32 }

@MAC_STSUR = common dso_local global i32 0, align 4
@MAC_STNUR = common dso_local global i32 0, align 4
@MAC_TSCR = common dso_local global i32 0, align 4
@TSINIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"timed out initializing timestamp\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xgbe_prv_data*, i32, i32)* @xgbe_set_tstamp_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgbe_set_tstamp_time(%struct.xgbe_prv_data* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.xgbe_prv_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.xgbe_prv_data* %0, %struct.xgbe_prv_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 10000, i32* %7, align 4
  %8 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %9 = load i32, i32* @MAC_STSUR, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @XGMAC_IOWRITE(%struct.xgbe_prv_data* %8, i32 %9, i32 %10)
  %12 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %13 = load i32, i32* @MAC_STNUR, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @XGMAC_IOWRITE(%struct.xgbe_prv_data* %12, i32 %13, i32 %14)
  %16 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %17 = load i32, i32* @MAC_TSCR, align 4
  %18 = load i32, i32* @TSINIT, align 4
  %19 = call i32 @XGMAC_IOWRITE_BITS(%struct.xgbe_prv_data* %16, i32 %17, i32 %18, i32 1)
  br label %20

20:                                               ; preds = %32, %3
  %21 = load i32, i32* %7, align 4
  %22 = add i32 %21, -1
  store i32 %22, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %20
  %25 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %26 = load i32, i32* @MAC_TSCR, align 4
  %27 = load i32, i32* @TSINIT, align 4
  %28 = call i64 @XGMAC_IOREAD_BITS(%struct.xgbe_prv_data* %25, i32 %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br label %30

30:                                               ; preds = %24, %20
  %31 = phi i1 [ false, %20 ], [ %29, %24 ]
  br i1 %31, label %32, label %34

32:                                               ; preds = %30
  %33 = call i32 @udelay(i32 5)
  br label %20

34:                                               ; preds = %30
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %34
  %38 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %39 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @netdev_err(i32 %40, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %42

42:                                               ; preds = %37, %34
  ret void
}

declare dso_local i32 @XGMAC_IOWRITE(%struct.xgbe_prv_data*, i32, i32) #1

declare dso_local i32 @XGMAC_IOWRITE_BITS(%struct.xgbe_prv_data*, i32, i32, i32) #1

declare dso_local i64 @XGMAC_IOREAD_BITS(%struct.xgbe_prv_data*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
