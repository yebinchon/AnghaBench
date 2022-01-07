; ModuleID = '/home/carl/AnghaBench/linux/drivers/memstick/core/extr_ms_block.c_msb_switch_to_parallel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/memstick/core/extr_ms_block.c_msb_switch_to_parallel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msb_data = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@h_msb_parallel_switch = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Switch to parallel failed\00", align 1
@MEMSTICK_SYS_PAM = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@MEMSTICK_CAP_AUTO_GET_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msb_data*)* @msb_switch_to_parallel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msb_switch_to_parallel(%struct.msb_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.msb_data*, align 8
  %4 = alloca i32, align 4
  store %struct.msb_data* %0, %struct.msb_data** %3, align 8
  %5 = load %struct.msb_data*, %struct.msb_data** %3, align 8
  %6 = load i32, i32* @h_msb_parallel_switch, align 4
  %7 = call i32 @msb_run_state_machine(%struct.msb_data* %5, i32 %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %24

10:                                               ; preds = %1
  %11 = call i32 @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* @MEMSTICK_SYS_PAM, align 4
  %13 = xor i32 %12, -1
  %14 = load %struct.msb_data*, %struct.msb_data** %3, align 8
  %15 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = and i32 %18, %13
  store i32 %19, i32* %17, align 4
  %20 = load %struct.msb_data*, %struct.msb_data** %3, align 8
  %21 = call i32 @msb_reset(%struct.msb_data* %20, i32 1)
  %22 = load i32, i32* @EFAULT, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %30

24:                                               ; preds = %1
  %25 = load i32, i32* @MEMSTICK_CAP_AUTO_GET_INT, align 4
  %26 = load %struct.msb_data*, %struct.msb_data** %3, align 8
  %27 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, %25
  store i32 %29, i32* %27, align 4
  store i32 0, i32* %2, align 4
  br label %30

30:                                               ; preds = %24, %10
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i32 @msb_run_state_machine(%struct.msb_data*, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @msb_reset(%struct.msb_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
