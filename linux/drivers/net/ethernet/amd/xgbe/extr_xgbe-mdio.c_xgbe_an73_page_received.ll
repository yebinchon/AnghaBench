; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-mdio.c_xgbe_an73_page_received.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-mdio.c_xgbe_an73_page_received.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_prv_data = type { i64, i32, i32, i32 }

@jiffies = common dso_local global i8* null, align 8
@XGBE_AN_MS_TIMEOUT = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"CL73 AN timed out, resetting state\0A\00", align 1
@XGBE_AN_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xgbe_prv_data*)* @xgbe_an73_page_received to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgbe_an73_page_received(%struct.xgbe_prv_data* %0) #0 {
  %2 = alloca %struct.xgbe_prv_data*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.xgbe_prv_data* %0, %struct.xgbe_prv_data** %2, align 8
  %6 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %7 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %1
  %11 = load i8*, i8** @jiffies, align 8
  %12 = ptrtoint i8* %11 to i64
  %13 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %14 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %13, i32 0, i32 0
  store i64 %12, i64* %14, align 8
  br label %42

15:                                               ; preds = %1
  %16 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %17 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i32, i32* @XGBE_AN_MS_TIMEOUT, align 4
  %20 = call i64 @msecs_to_jiffies(i32 %19)
  %21 = add i64 %18, %20
  store i64 %21, i64* %4, align 8
  %22 = load i8*, i8** @jiffies, align 8
  %23 = load i64, i64* %4, align 8
  %24 = call i64 @time_after(i8* %22, i64 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %41

26:                                               ; preds = %15
  %27 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %28 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %27, i32 0, i32 1
  store i32 129, i32* %28, align 8
  %29 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %30 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %29, i32 0, i32 2
  store i32 129, i32* %30, align 4
  %31 = load i8*, i8** @jiffies, align 8
  %32 = ptrtoint i8* %31 to i64
  %33 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %34 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  %35 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %36 = load i32, i32* @link, align 4
  %37 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %38 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @netif_dbg(%struct.xgbe_prv_data* %35, i32 %36, i32 %39, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %41

41:                                               ; preds = %26, %15
  br label %42

42:                                               ; preds = %41, %10
  %43 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %44 = call i64 @xgbe_in_kr_mode(%struct.xgbe_prv_data* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %48 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %47, i32 0, i32 1
  br label %52

49:                                               ; preds = %42
  %50 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %51 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %50, i32 0, i32 2
  br label %52

52:                                               ; preds = %49, %46
  %53 = phi i32* [ %48, %46 ], [ %51, %49 ]
  store i32* %53, i32** %3, align 8
  %54 = load i32*, i32** %3, align 8
  %55 = load i32, i32* %54, align 4
  switch i32 %55, label %64 [
    i32 129, label %56
    i32 128, label %60
  ]

56:                                               ; preds = %52
  %57 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %58 = load i32*, i32** %3, align 8
  %59 = call i32 @xgbe_an73_rx_bpa(%struct.xgbe_prv_data* %57, i32* %58)
  store i32 %59, i32* %5, align 4
  br label %66

60:                                               ; preds = %52
  %61 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %62 = load i32*, i32** %3, align 8
  %63 = call i32 @xgbe_an73_rx_xnp(%struct.xgbe_prv_data* %61, i32* %62)
  store i32 %63, i32* %5, align 4
  br label %66

64:                                               ; preds = %52
  %65 = load i32, i32* @XGBE_AN_ERROR, align 4
  store i32 %65, i32* %5, align 4
  br label %66

66:                                               ; preds = %64, %60, %56
  %67 = load i32, i32* %5, align 4
  ret i32 %67
}

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i64 @time_after(i8*, i64) #1

declare dso_local i32 @netif_dbg(%struct.xgbe_prv_data*, i32, i32, i8*) #1

declare dso_local i64 @xgbe_in_kr_mode(%struct.xgbe_prv_data*) #1

declare dso_local i32 @xgbe_an73_rx_bpa(%struct.xgbe_prv_data*, i32*) #1

declare dso_local i32 @xgbe_an73_rx_xnp(%struct.xgbe_prv_data*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
