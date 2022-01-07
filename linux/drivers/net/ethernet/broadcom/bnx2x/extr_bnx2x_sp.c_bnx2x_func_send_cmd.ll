; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_sp.c_bnx2x_func_send_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_sp.c_bnx2x_func_send_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_func_state_params = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"Unknown command: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*, %struct.bnx2x_func_state_params*)* @bnx2x_func_send_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_func_send_cmd(%struct.bnx2x* %0, %struct.bnx2x_func_state_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bnx2x*, align 8
  %5 = alloca %struct.bnx2x_func_state_params*, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %4, align 8
  store %struct.bnx2x_func_state_params* %1, %struct.bnx2x_func_state_params** %5, align 8
  %6 = load %struct.bnx2x_func_state_params*, %struct.bnx2x_func_state_params** %5, align 8
  %7 = getelementptr inbounds %struct.bnx2x_func_state_params, %struct.bnx2x_func_state_params* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %49 [
    i32 135, label %9
    i32 132, label %13
    i32 131, label %17
    i32 134, label %21
    i32 137, label %25
    i32 136, label %29
    i32 128, label %33
    i32 129, label %37
    i32 130, label %41
    i32 133, label %45
  ]

9:                                                ; preds = %2
  %10 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %11 = load %struct.bnx2x_func_state_params*, %struct.bnx2x_func_state_params** %5, align 8
  %12 = call i32 @bnx2x_func_hw_init(%struct.bnx2x* %10, %struct.bnx2x_func_state_params* %11)
  store i32 %12, i32* %3, align 4
  br label %56

13:                                               ; preds = %2
  %14 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %15 = load %struct.bnx2x_func_state_params*, %struct.bnx2x_func_state_params** %5, align 8
  %16 = call i32 @bnx2x_func_send_start(%struct.bnx2x* %14, %struct.bnx2x_func_state_params* %15)
  store i32 %16, i32* %3, align 4
  br label %56

17:                                               ; preds = %2
  %18 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %19 = load %struct.bnx2x_func_state_params*, %struct.bnx2x_func_state_params** %5, align 8
  %20 = call i32 @bnx2x_func_send_stop(%struct.bnx2x* %18, %struct.bnx2x_func_state_params* %19)
  store i32 %20, i32* %3, align 4
  br label %56

21:                                               ; preds = %2
  %22 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %23 = load %struct.bnx2x_func_state_params*, %struct.bnx2x_func_state_params** %5, align 8
  %24 = call i32 @bnx2x_func_hw_reset(%struct.bnx2x* %22, %struct.bnx2x_func_state_params* %23)
  store i32 %24, i32* %3, align 4
  br label %56

25:                                               ; preds = %2
  %26 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %27 = load %struct.bnx2x_func_state_params*, %struct.bnx2x_func_state_params** %5, align 8
  %28 = call i32 @bnx2x_func_send_afex_update(%struct.bnx2x* %26, %struct.bnx2x_func_state_params* %27)
  store i32 %28, i32* %3, align 4
  br label %56

29:                                               ; preds = %2
  %30 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %31 = load %struct.bnx2x_func_state_params*, %struct.bnx2x_func_state_params** %5, align 8
  %32 = call i32 @bnx2x_func_send_afex_viflists(%struct.bnx2x* %30, %struct.bnx2x_func_state_params* %31)
  store i32 %32, i32* %3, align 4
  br label %56

33:                                               ; preds = %2
  %34 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %35 = load %struct.bnx2x_func_state_params*, %struct.bnx2x_func_state_params** %5, align 8
  %36 = call i32 @bnx2x_func_send_tx_stop(%struct.bnx2x* %34, %struct.bnx2x_func_state_params* %35)
  store i32 %36, i32* %3, align 4
  br label %56

37:                                               ; preds = %2
  %38 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %39 = load %struct.bnx2x_func_state_params*, %struct.bnx2x_func_state_params** %5, align 8
  %40 = call i32 @bnx2x_func_send_tx_start(%struct.bnx2x* %38, %struct.bnx2x_func_state_params* %39)
  store i32 %40, i32* %3, align 4
  br label %56

41:                                               ; preds = %2
  %42 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %43 = load %struct.bnx2x_func_state_params*, %struct.bnx2x_func_state_params** %5, align 8
  %44 = call i32 @bnx2x_func_send_switch_update(%struct.bnx2x* %42, %struct.bnx2x_func_state_params* %43)
  store i32 %44, i32* %3, align 4
  br label %56

45:                                               ; preds = %2
  %46 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %47 = load %struct.bnx2x_func_state_params*, %struct.bnx2x_func_state_params** %5, align 8
  %48 = call i32 @bnx2x_func_send_set_timesync(%struct.bnx2x* %46, %struct.bnx2x_func_state_params* %47)
  store i32 %48, i32* %3, align 4
  br label %56

49:                                               ; preds = %2
  %50 = load %struct.bnx2x_func_state_params*, %struct.bnx2x_func_state_params** %5, align 8
  %51 = getelementptr inbounds %struct.bnx2x_func_state_params, %struct.bnx2x_func_state_params* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %49, %45, %41, %37, %33, %29, %25, %21, %17, %13, %9
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @bnx2x_func_hw_init(%struct.bnx2x*, %struct.bnx2x_func_state_params*) #1

declare dso_local i32 @bnx2x_func_send_start(%struct.bnx2x*, %struct.bnx2x_func_state_params*) #1

declare dso_local i32 @bnx2x_func_send_stop(%struct.bnx2x*, %struct.bnx2x_func_state_params*) #1

declare dso_local i32 @bnx2x_func_hw_reset(%struct.bnx2x*, %struct.bnx2x_func_state_params*) #1

declare dso_local i32 @bnx2x_func_send_afex_update(%struct.bnx2x*, %struct.bnx2x_func_state_params*) #1

declare dso_local i32 @bnx2x_func_send_afex_viflists(%struct.bnx2x*, %struct.bnx2x_func_state_params*) #1

declare dso_local i32 @bnx2x_func_send_tx_stop(%struct.bnx2x*, %struct.bnx2x_func_state_params*) #1

declare dso_local i32 @bnx2x_func_send_tx_start(%struct.bnx2x*, %struct.bnx2x_func_state_params*) #1

declare dso_local i32 @bnx2x_func_send_switch_update(%struct.bnx2x*, %struct.bnx2x_func_state_params*) #1

declare dso_local i32 @bnx2x_func_send_set_timesync(%struct.bnx2x*, %struct.bnx2x_func_state_params*) #1

declare dso_local i32 @BNX2X_ERR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
