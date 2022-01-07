; ModuleID = '/home/carl/AnghaBench/linux/drivers/memstick/core/extr_ms_block.c_h_msb_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/memstick/core/extr_ms_block.c_h_msb_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.memstick_dev = type { %struct.memstick_request }
%struct.memstick_request = type { i32, i64 }
%struct.msb_data = type { i32 }

@MS_CMD_RESET = common dso_local global i32 0, align 4
@MS_TPC_SET_CMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.memstick_dev*, %struct.memstick_request**)* @h_msb_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @h_msb_reset(%struct.memstick_dev* %0, %struct.memstick_request** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.memstick_dev*, align 8
  %5 = alloca %struct.memstick_request**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.msb_data*, align 8
  %8 = alloca %struct.memstick_request*, align 8
  store %struct.memstick_dev* %0, %struct.memstick_dev** %4, align 8
  store %struct.memstick_request** %1, %struct.memstick_request*** %5, align 8
  %9 = load i32, i32* @MS_CMD_RESET, align 4
  store i32 %9, i32* %6, align 4
  %10 = load %struct.memstick_dev*, %struct.memstick_dev** %4, align 8
  %11 = call %struct.msb_data* @memstick_get_drvdata(%struct.memstick_dev* %10)
  store %struct.msb_data* %11, %struct.msb_data** %7, align 8
  %12 = load %struct.memstick_dev*, %struct.memstick_dev** %4, align 8
  %13 = getelementptr inbounds %struct.memstick_dev, %struct.memstick_dev* %12, i32 0, i32 0
  %14 = load %struct.memstick_request**, %struct.memstick_request*** %5, align 8
  store %struct.memstick_request* %13, %struct.memstick_request** %14, align 8
  store %struct.memstick_request* %13, %struct.memstick_request** %8, align 8
  %15 = load %struct.memstick_request*, %struct.memstick_request** %8, align 8
  %16 = getelementptr inbounds %struct.memstick_request, %struct.memstick_request* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %2
  %20 = load %struct.msb_data*, %struct.msb_data** %7, align 8
  %21 = load %struct.memstick_request*, %struct.memstick_request** %8, align 8
  %22 = getelementptr inbounds %struct.memstick_request, %struct.memstick_request* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @msb_exit_state_machine(%struct.msb_data* %20, i64 %23)
  store i32 %24, i32* %3, align 4
  br label %42

25:                                               ; preds = %2
  %26 = load %struct.msb_data*, %struct.msb_data** %7, align 8
  %27 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  switch i32 %28, label %40 [
    i32 128, label %29
    i32 129, label %37
  ]

29:                                               ; preds = %25
  %30 = load %struct.memstick_request*, %struct.memstick_request** %8, align 8
  %31 = load i32, i32* @MS_TPC_SET_CMD, align 4
  %32 = call i32 @memstick_init_req(%struct.memstick_request* %30, i32 %31, i32* %6, i32 1)
  %33 = load %struct.memstick_request*, %struct.memstick_request** %8, align 8
  %34 = getelementptr inbounds %struct.memstick_request, %struct.memstick_request* %33, i32 0, i32 0
  store i32 0, i32* %34, align 8
  %35 = load %struct.msb_data*, %struct.msb_data** %7, align 8
  %36 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %35, i32 0, i32 0
  store i32 129, i32* %36, align 4
  store i32 0, i32* %3, align 4
  br label %42

37:                                               ; preds = %25
  %38 = load %struct.msb_data*, %struct.msb_data** %7, align 8
  %39 = call i32 @msb_exit_state_machine(%struct.msb_data* %38, i64 0)
  store i32 %39, i32* %3, align 4
  br label %42

40:                                               ; preds = %25
  %41 = call i32 (...) @BUG()
  br label %42

42:                                               ; preds = %40, %37, %29, %19
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local %struct.msb_data* @memstick_get_drvdata(%struct.memstick_dev*) #1

declare dso_local i32 @msb_exit_state_machine(%struct.msb_data*, i64) #1

declare dso_local i32 @memstick_init_req(%struct.memstick_request*, i32, i32*, i32) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
