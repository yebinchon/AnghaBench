; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_mxl5007t.c_mxl5007t_tuner_rf_tune.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_mxl5007t.c_mxl5007t_tuner_rf_tune.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxl5007t_state = type { i32 }
%struct.reg_pair_t = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mxl5007t_state*, i32, i32)* @mxl5007t_tuner_rf_tune to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxl5007t_tuner_rf_tune(%struct.mxl5007t_state* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mxl5007t_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.reg_pair_t*, align 8
  %8 = alloca i32, align 4
  store %struct.mxl5007t_state* %0, %struct.mxl5007t_state** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.mxl5007t_state*, %struct.mxl5007t_state** %4, align 8
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* %6, align 4
  %12 = call %struct.reg_pair_t* @mxl5007t_calc_rf_tune_regs(%struct.mxl5007t_state* %9, i32 %10, i32 %11)
  store %struct.reg_pair_t* %12, %struct.reg_pair_t** %7, align 8
  %13 = load %struct.mxl5007t_state*, %struct.mxl5007t_state** %4, align 8
  %14 = load %struct.reg_pair_t*, %struct.reg_pair_t** %7, align 8
  %15 = call i32 @mxl5007t_write_regs(%struct.mxl5007t_state* %13, %struct.reg_pair_t* %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = call i64 @mxl_fail(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  br label %22

20:                                               ; preds = %3
  %21 = call i32 @msleep(i32 3)
  br label %22

22:                                               ; preds = %20, %19
  %23 = load i32, i32* %8, align 4
  ret i32 %23
}

declare dso_local %struct.reg_pair_t* @mxl5007t_calc_rf_tune_regs(%struct.mxl5007t_state*, i32, i32) #1

declare dso_local i32 @mxl5007t_write_regs(%struct.mxl5007t_state*, %struct.reg_pair_t*) #1

declare dso_local i64 @mxl_fail(i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
