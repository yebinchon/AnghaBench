; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_frob_aux_power_5717.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_frob_aux_power_5717.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tg3 = type { i32 }

@TG3_APE_LOCK_GPIO = common dso_local global i32 0, align 4
@ENABLE_ASF = common dso_local global i32 0, align 4
@ENABLE_APE = common dso_local global i32 0, align 4
@TG3_GPIO_MSG_NEED_VAUX = common dso_local global i32 0, align 4
@TG3_GPIO_MSG_ALL_DRVR_PRES_MASK = common dso_local global i32 0, align 4
@TG3_GPIO_MSG_ALL_NEED_VAUX_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tg3*, i32)* @tg3_frob_aux_power_5717 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tg3_frob_aux_power_5717(%struct.tg3* %0, i32 %1) #0 {
  %3 = alloca %struct.tg3*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.tg3* %0, %struct.tg3** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load %struct.tg3*, %struct.tg3** %3, align 8
  %7 = load i32, i32* @TG3_APE_LOCK_GPIO, align 4
  %8 = call i64 @tg3_ape_lock(%struct.tg3* %6, i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %51

11:                                               ; preds = %2
  %12 = load %struct.tg3*, %struct.tg3** %3, align 8
  %13 = load i32, i32* @ENABLE_ASF, align 4
  %14 = call i64 @tg3_flag(%struct.tg3* %12, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %24, label %16

16:                                               ; preds = %11
  %17 = load %struct.tg3*, %struct.tg3** %3, align 8
  %18 = load i32, i32* @ENABLE_APE, align 4
  %19 = call i64 @tg3_flag(%struct.tg3* %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %16
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %21, %16, %11
  %25 = load i32, i32* @TG3_GPIO_MSG_NEED_VAUX, align 4
  store i32 %25, i32* %5, align 4
  br label %26

26:                                               ; preds = %24, %21
  %27 = load %struct.tg3*, %struct.tg3** %3, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @tg3_set_function_status(%struct.tg3* %27, i32 %28)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @TG3_GPIO_MSG_ALL_DRVR_PRES_MASK, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %26
  br label %47

35:                                               ; preds = %26
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @TG3_GPIO_MSG_ALL_NEED_VAUX_MASK, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load %struct.tg3*, %struct.tg3** %3, align 8
  %42 = call i32 @tg3_pwrsrc_switch_to_vaux(%struct.tg3* %41)
  br label %46

43:                                               ; preds = %35
  %44 = load %struct.tg3*, %struct.tg3** %3, align 8
  %45 = call i32 @tg3_pwrsrc_die_with_vmain(%struct.tg3* %44)
  br label %46

46:                                               ; preds = %43, %40
  br label %47

47:                                               ; preds = %46, %34
  %48 = load %struct.tg3*, %struct.tg3** %3, align 8
  %49 = load i32, i32* @TG3_APE_LOCK_GPIO, align 4
  %50 = call i32 @tg3_ape_unlock(%struct.tg3* %48, i32 %49)
  br label %51

51:                                               ; preds = %47, %10
  ret void
}

declare dso_local i64 @tg3_ape_lock(%struct.tg3*, i32) #1

declare dso_local i64 @tg3_flag(%struct.tg3*, i32) #1

declare dso_local i32 @tg3_set_function_status(%struct.tg3*, i32) #1

declare dso_local i32 @tg3_pwrsrc_switch_to_vaux(%struct.tg3*) #1

declare dso_local i32 @tg3_pwrsrc_die_with_vmain(%struct.tg3*) #1

declare dso_local i32 @tg3_ape_unlock(%struct.tg3*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
