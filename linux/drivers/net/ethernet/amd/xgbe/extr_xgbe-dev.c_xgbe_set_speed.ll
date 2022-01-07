; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-dev.c_xgbe_set_speed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-dev.c_xgbe_set_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_prv_data = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@MAC_TCR = common dso_local global i32 0, align 4
@SS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xgbe_prv_data*, i32)* @xgbe_set_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgbe_set_speed(%struct.xgbe_prv_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xgbe_prv_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.xgbe_prv_data* %0, %struct.xgbe_prv_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  switch i32 %7, label %11 [
    i32 130, label %8
    i32 128, label %9
    i32 129, label %10
  ]

8:                                                ; preds = %2
  store i32 3, i32* %6, align 4
  br label %14

9:                                                ; preds = %2
  store i32 2, i32* %6, align 4
  br label %14

10:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %28

14:                                               ; preds = %10, %9, %8
  %15 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %16 = load i32, i32* @MAC_TCR, align 4
  %17 = load i32, i32* @SS, align 4
  %18 = call i32 @XGMAC_IOREAD_BITS(%struct.xgbe_prv_data* %15, i32 %16, i32 %17)
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %14
  %22 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %23 = load i32, i32* @MAC_TCR, align 4
  %24 = load i32, i32* @SS, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @XGMAC_IOWRITE_BITS(%struct.xgbe_prv_data* %22, i32 %23, i32 %24, i32 %25)
  br label %27

27:                                               ; preds = %21, %14
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %27, %11
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @XGMAC_IOREAD_BITS(%struct.xgbe_prv_data*, i32, i32) #1

declare dso_local i32 @XGMAC_IOWRITE_BITS(%struct.xgbe_prv_data*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
