; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_override_clk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_override_clk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tg3 = type { i32 }

@TG3_CPMU_CLCK_ORIDE_ENABLE = common dso_local global i32 0, align 4
@TG3_CPMU_MAC_ORIDE_ENABLE = common dso_local global i32 0, align 4
@TG3_CPMU_CLCK_ORIDE = common dso_local global i32 0, align 4
@CPMU_CLCK_ORIDE_MAC_ORIDE_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tg3*)* @tg3_override_clk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tg3_override_clk(%struct.tg3* %0) #0 {
  %2 = alloca %struct.tg3*, align 8
  %3 = alloca i32, align 4
  store %struct.tg3* %0, %struct.tg3** %2, align 8
  %4 = load %struct.tg3*, %struct.tg3** %2, align 8
  %5 = call i32 @tg3_asic_rev(%struct.tg3* %4)
  switch i32 %5, label %18 [
    i32 130, label %6
    i32 129, label %14
    i32 128, label %14
  ]

6:                                                ; preds = %1
  %7 = load i32, i32* @TG3_CPMU_CLCK_ORIDE_ENABLE, align 4
  %8 = call i32 @tr32(i32 %7)
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* @TG3_CPMU_CLCK_ORIDE_ENABLE, align 4
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @TG3_CPMU_MAC_ORIDE_ENABLE, align 4
  %12 = or i32 %10, %11
  %13 = call i32 @tw32(i32 %9, i32 %12)
  br label %19

14:                                               ; preds = %1, %1
  %15 = load i32, i32* @TG3_CPMU_CLCK_ORIDE, align 4
  %16 = load i32, i32* @CPMU_CLCK_ORIDE_MAC_ORIDE_EN, align 4
  %17 = call i32 @tw32(i32 %15, i32 %16)
  br label %19

18:                                               ; preds = %1
  br label %19

19:                                               ; preds = %18, %14, %6
  ret void
}

declare dso_local i32 @tg3_asic_rev(%struct.tg3*) #1

declare dso_local i32 @tr32(i32) #1

declare dso_local i32 @tw32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
