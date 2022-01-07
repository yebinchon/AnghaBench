; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_mxl5007t.c_mxl5007t_tuner_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_mxl5007t.c_mxl5007t_tuner_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxl5007t_state = type { i32 }
%struct.reg_pair_t = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mxl5007t_state*, i32)* @mxl5007t_tuner_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxl5007t_tuner_init(%struct.mxl5007t_state* %0, i32 %1) #0 {
  %3 = alloca %struct.mxl5007t_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.reg_pair_t*, align 8
  %6 = alloca i32, align 4
  store %struct.mxl5007t_state* %0, %struct.mxl5007t_state** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.mxl5007t_state*, %struct.mxl5007t_state** %3, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call %struct.reg_pair_t* @mxl5007t_calc_init_regs(%struct.mxl5007t_state* %7, i32 %8)
  store %struct.reg_pair_t* %9, %struct.reg_pair_t** %5, align 8
  %10 = load %struct.mxl5007t_state*, %struct.mxl5007t_state** %3, align 8
  %11 = load %struct.reg_pair_t*, %struct.reg_pair_t** %5, align 8
  %12 = call i32 @mxl5007t_write_regs(%struct.mxl5007t_state* %10, %struct.reg_pair_t* %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i64 @mxl_fail(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %19

17:                                               ; preds = %2
  %18 = call i32 @mdelay(i32 1)
  br label %19

19:                                               ; preds = %17, %16
  %20 = load i32, i32* %6, align 4
  ret i32 %20
}

declare dso_local %struct.reg_pair_t* @mxl5007t_calc_init_regs(%struct.mxl5007t_state*, i32) #1

declare dso_local i32 @mxl5007t_write_regs(%struct.mxl5007t_state*, %struct.reg_pair_t*) #1

declare dso_local i64 @mxl_fail(i32) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
