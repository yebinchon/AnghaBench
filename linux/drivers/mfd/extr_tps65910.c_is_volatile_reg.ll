; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_tps65910.c_is_volatile_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_tps65910.c_is_volatile_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.tps65910 = type { i32 }

@TPS65910_VIO = common dso_local global i32 0, align 4
@TPS65910_VDAC = common dso_local global i32 0, align 4
@TPS65910 = common dso_local global i64 0, align 8
@TPS65911_VDDCTRL_OP = common dso_local global i32 0, align 4
@TPS65911_VDDCTRL_SR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32)* @is_volatile_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_volatile_reg(%struct.device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tps65910*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.device*, %struct.device** %4, align 8
  %8 = call %struct.tps65910* @dev_get_drvdata(%struct.device* %7)
  store %struct.tps65910* %8, %struct.tps65910** %6, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @TPS65910_VIO, align 4
  %11 = icmp uge i32 %9, %10
  br i1 %11, label %12, label %32

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @TPS65910_VDAC, align 4
  %15 = icmp ule i32 %13, %14
  br i1 %15, label %16, label %32

16:                                               ; preds = %12
  %17 = load %struct.tps65910*, %struct.tps65910** %6, align 8
  %18 = call i64 @tps65910_chip_id(%struct.tps65910* %17)
  %19 = load i64, i64* @TPS65910, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %31

21:                                               ; preds = %16
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @TPS65911_VDDCTRL_OP, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @TPS65911_VDDCTRL_SR, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %25, %21
  store i32 1, i32* %3, align 4
  br label %33

30:                                               ; preds = %25
  br label %31

31:                                               ; preds = %30, %16
  store i32 0, i32* %3, align 4
  br label %33

32:                                               ; preds = %12, %2
  store i32 1, i32* %3, align 4
  br label %33

33:                                               ; preds = %32, %31, %29
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local %struct.tps65910* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @tps65910_chip_id(%struct.tps65910*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
