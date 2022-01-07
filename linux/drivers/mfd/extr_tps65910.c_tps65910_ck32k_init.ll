; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_tps65910.c_tps65910_ck32k_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_tps65910.c_tps65910_ck32k_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tps65910 = type { i32 }
%struct.tps65910_board = type { i32 }

@TPS65910_DEVCTRL = common dso_local global i32 0, align 4
@DEVCTRL_CK32K_CTRL_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"clear ck32k_ctrl failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tps65910*, %struct.tps65910_board*)* @tps65910_ck32k_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tps65910_ck32k_init(%struct.tps65910* %0, %struct.tps65910_board* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tps65910*, align 8
  %5 = alloca %struct.tps65910_board*, align 8
  %6 = alloca i32, align 4
  store %struct.tps65910* %0, %struct.tps65910** %4, align 8
  store %struct.tps65910_board* %1, %struct.tps65910_board** %5, align 8
  %7 = load %struct.tps65910_board*, %struct.tps65910_board** %5, align 8
  %8 = getelementptr inbounds %struct.tps65910_board, %struct.tps65910_board* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %27

12:                                               ; preds = %2
  %13 = load %struct.tps65910*, %struct.tps65910** %4, align 8
  %14 = load i32, i32* @TPS65910_DEVCTRL, align 4
  %15 = load i32, i32* @DEVCTRL_CK32K_CTRL_MASK, align 4
  %16 = call i32 @tps65910_reg_clear_bits(%struct.tps65910* %13, i32 %14, i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %12
  %20 = load %struct.tps65910*, %struct.tps65910** %4, align 8
  %21 = getelementptr inbounds %struct.tps65910, %struct.tps65910* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @dev_err(i32 %22, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* %3, align 4
  br label %27

26:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %27

27:                                               ; preds = %26, %19, %11
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i32 @tps65910_reg_clear_bits(%struct.tps65910*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
