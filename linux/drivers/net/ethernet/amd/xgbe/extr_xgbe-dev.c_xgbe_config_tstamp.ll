; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-dev.c_xgbe_config_tstamp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-dev.c_xgbe_config_tstamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_prv_data = type { i32, i32, i32 }

@MAC_TSCR = common dso_local global i32 0, align 4
@TSCTRLSSR = common dso_local global i32 0, align 4
@TSCFUPDT = common dso_local global i32 0, align 4
@TXTSSTSM = common dso_local global i32 0, align 4
@TSENA = common dso_local global i32 0, align 4
@MAC_SSIR = common dso_local global i32 0, align 4
@SSINC = common dso_local global i32 0, align 4
@XGBE_TSTAMP_SSINC = common dso_local global i32 0, align 4
@SNSINC = common dso_local global i32 0, align 4
@XGBE_TSTAMP_SNSINC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xgbe_prv_data*, i32)* @xgbe_config_tstamp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgbe_config_tstamp(%struct.xgbe_prv_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xgbe_prv_data*, align 8
  %5 = alloca i32, align 4
  store %struct.xgbe_prv_data* %0, %struct.xgbe_prv_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @MAC_TSCR, align 4
  %8 = load i32, i32* @TSCTRLSSR, align 4
  %9 = call i32 @XGMAC_SET_BITS(i32 %6, i32 %7, i32 %8, i32 1)
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @MAC_TSCR, align 4
  %12 = load i32, i32* @TSCFUPDT, align 4
  %13 = call i32 @XGMAC_SET_BITS(i32 %10, i32 %11, i32 %12, i32 1)
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @MAC_TSCR, align 4
  %16 = load i32, i32* @TXTSSTSM, align 4
  %17 = call i32 @XGMAC_SET_BITS(i32 %14, i32 %15, i32 %16, i32 1)
  %18 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %19 = load i32, i32* @MAC_TSCR, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @XGMAC_IOWRITE(%struct.xgbe_prv_data* %18, i32 %19, i32 %20)
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @MAC_TSCR, align 4
  %24 = load i32, i32* @TSENA, align 4
  %25 = call i32 @XGMAC_GET_BITS(i32 %22, i32 %23, i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %53

28:                                               ; preds = %2
  %29 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %30 = load i32, i32* @MAC_SSIR, align 4
  %31 = load i32, i32* @SSINC, align 4
  %32 = load i32, i32* @XGBE_TSTAMP_SSINC, align 4
  %33 = call i32 @XGMAC_IOWRITE_BITS(%struct.xgbe_prv_data* %29, i32 %30, i32 %31, i32 %32)
  %34 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %35 = load i32, i32* @MAC_SSIR, align 4
  %36 = load i32, i32* @SNSINC, align 4
  %37 = load i32, i32* @XGBE_TSTAMP_SNSINC, align 4
  %38 = call i32 @XGMAC_IOWRITE_BITS(%struct.xgbe_prv_data* %34, i32 %35, i32 %36, i32 %37)
  %39 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %40 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %41 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @xgbe_update_tstamp_addend(%struct.xgbe_prv_data* %39, i32 %42)
  %44 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %45 = call i32 @xgbe_set_tstamp_time(%struct.xgbe_prv_data* %44, i32 0, i32 0)
  %46 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %47 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %46, i32 0, i32 1
  %48 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %49 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %48, i32 0, i32 0
  %50 = call i32 (...) @ktime_get_real()
  %51 = call i32 @ktime_to_ns(i32 %50)
  %52 = call i32 @timecounter_init(i32* %47, i32* %49, i32 %51)
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %28, %27
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @XGMAC_SET_BITS(i32, i32, i32, i32) #1

declare dso_local i32 @XGMAC_IOWRITE(%struct.xgbe_prv_data*, i32, i32) #1

declare dso_local i32 @XGMAC_GET_BITS(i32, i32, i32) #1

declare dso_local i32 @XGMAC_IOWRITE_BITS(%struct.xgbe_prv_data*, i32, i32, i32) #1

declare dso_local i32 @xgbe_update_tstamp_addend(%struct.xgbe_prv_data*, i32) #1

declare dso_local i32 @xgbe_set_tstamp_time(%struct.xgbe_prv_data*, i32, i32) #1

declare dso_local i32 @timecounter_init(i32*, i32*, i32) #1

declare dso_local i32 @ktime_to_ns(i32) #1

declare dso_local i32 @ktime_get_real(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
