; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-mdio.c_xgbe_change_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-mdio.c_xgbe_change_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_prv_data = type { i32 }

@link = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"invalid operation mode requested (%u)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xgbe_prv_data*, i32)* @xgbe_change_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgbe_change_mode(%struct.xgbe_prv_data* %0, i32 %1) #0 {
  %3 = alloca %struct.xgbe_prv_data*, align 8
  %4 = alloca i32, align 4
  store %struct.xgbe_prv_data* %0, %struct.xgbe_prv_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %28 [
    i32 134, label %6
    i32 133, label %9
    i32 135, label %12
    i32 131, label %15
    i32 130, label %18
    i32 128, label %21
    i32 132, label %24
    i32 129, label %27
  ]

6:                                                ; preds = %2
  %7 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %8 = call i32 @xgbe_kx_1000_mode(%struct.xgbe_prv_data* %7)
  br label %36

9:                                                ; preds = %2
  %10 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %11 = call i32 @xgbe_kx_2500_mode(%struct.xgbe_prv_data* %10)
  br label %36

12:                                               ; preds = %2
  %13 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %14 = call i32 @xgbe_kr_mode(%struct.xgbe_prv_data* %13)
  br label %36

15:                                               ; preds = %2
  %16 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %17 = call i32 @xgbe_sgmii_100_mode(%struct.xgbe_prv_data* %16)
  br label %36

18:                                               ; preds = %2
  %19 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %20 = call i32 @xgbe_sgmii_1000_mode(%struct.xgbe_prv_data* %19)
  br label %36

21:                                               ; preds = %2
  %22 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %23 = call i32 @xgbe_x_mode(%struct.xgbe_prv_data* %22)
  br label %36

24:                                               ; preds = %2
  %25 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %26 = call i32 @xgbe_sfi_mode(%struct.xgbe_prv_data* %25)
  br label %36

27:                                               ; preds = %2
  br label %36

28:                                               ; preds = %2
  %29 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %30 = load i32, i32* @link, align 4
  %31 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %32 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @netif_dbg(%struct.xgbe_prv_data* %29, i32 %30, i32 %33, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %34)
  br label %36

36:                                               ; preds = %28, %27, %24, %21, %18, %15, %12, %9, %6
  ret void
}

declare dso_local i32 @xgbe_kx_1000_mode(%struct.xgbe_prv_data*) #1

declare dso_local i32 @xgbe_kx_2500_mode(%struct.xgbe_prv_data*) #1

declare dso_local i32 @xgbe_kr_mode(%struct.xgbe_prv_data*) #1

declare dso_local i32 @xgbe_sgmii_100_mode(%struct.xgbe_prv_data*) #1

declare dso_local i32 @xgbe_sgmii_1000_mode(%struct.xgbe_prv_data*) #1

declare dso_local i32 @xgbe_x_mode(%struct.xgbe_prv_data*) #1

declare dso_local i32 @xgbe_sfi_mode(%struct.xgbe_prv_data*) #1

declare dso_local i32 @netif_dbg(%struct.xgbe_prv_data*, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
