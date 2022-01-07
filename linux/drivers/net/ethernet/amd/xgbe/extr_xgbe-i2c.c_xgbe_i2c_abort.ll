; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-i2c.c_xgbe_i2c_abort.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-i2c.c_xgbe_i2c_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_prv_data = type { i32 }

@XGBE_ABORT_COUNT = common dso_local global i32 0, align 4
@IC_ENABLE = common dso_local global i32 0, align 4
@EN = common dso_local global i32 0, align 4
@ABORT = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xgbe_prv_data*)* @xgbe_i2c_abort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgbe_i2c_abort(%struct.xgbe_prv_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xgbe_prv_data*, align 8
  %4 = alloca i32, align 4
  store %struct.xgbe_prv_data* %0, %struct.xgbe_prv_data** %3, align 8
  %5 = load i32, i32* @XGBE_ABORT_COUNT, align 4
  store i32 %5, i32* %4, align 4
  %6 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %7 = load i32, i32* @IC_ENABLE, align 4
  %8 = load i32, i32* @EN, align 4
  %9 = call i32 @XI2C_IOWRITE_BITS(%struct.xgbe_prv_data* %6, i32 %7, i32 %8, i32 1)
  %10 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %11 = load i32, i32* @IC_ENABLE, align 4
  %12 = load i32, i32* @ABORT, align 4
  %13 = call i32 @XI2C_IOWRITE_BITS(%struct.xgbe_prv_data* %10, i32 %11, i32 %12, i32 1)
  br label %14

14:                                               ; preds = %25, %1
  %15 = load i32, i32* %4, align 4
  %16 = add i32 %15, -1
  store i32 %16, i32* %4, align 4
  %17 = icmp ne i32 %15, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %14
  %19 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %20 = load i32, i32* @IC_ENABLE, align 4
  %21 = load i32, i32* @ABORT, align 4
  %22 = call i32 @XI2C_IOREAD_BITS(%struct.xgbe_prv_data* %19, i32 %20, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  br label %30

25:                                               ; preds = %18
  %26 = call i32 @usleep_range(i32 500, i32 600)
  br label %14

27:                                               ; preds = %14
  %28 = load i32, i32* @EBUSY, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %30

30:                                               ; preds = %27, %24
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i32 @XI2C_IOWRITE_BITS(%struct.xgbe_prv_data*, i32, i32, i32) #1

declare dso_local i32 @XI2C_IOREAD_BITS(%struct.xgbe_prv_data*, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
