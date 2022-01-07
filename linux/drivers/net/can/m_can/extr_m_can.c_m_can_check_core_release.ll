; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/m_can/extr_m_can.c_m_can_check_core_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/m_can/extr_m_can.c_m_can_check_core_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.m_can_classdev = type { i32 }

@M_CAN_CREL = common dso_local global i32 0, align 4
@CREL_REL_MASK = common dso_local global i32 0, align 4
@CREL_REL_SHIFT = common dso_local global i32 0, align 4
@CREL_STEP_MASK = common dso_local global i32 0, align 4
@CREL_STEP_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.m_can_classdev*)* @m_can_check_core_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m_can_check_core_release(%struct.m_can_classdev* %0) #0 {
  %2 = alloca %struct.m_can_classdev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.m_can_classdev* %0, %struct.m_can_classdev** %2, align 8
  %7 = load %struct.m_can_classdev*, %struct.m_can_classdev** %2, align 8
  %8 = load i32, i32* @M_CAN_CREL, align 4
  %9 = call i32 @m_can_read(%struct.m_can_classdev* %7, i32 %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @CREL_REL_MASK, align 4
  %12 = and i32 %10, %11
  %13 = load i32, i32* @CREL_REL_SHIFT, align 4
  %14 = ashr i32 %12, %13
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @CREL_STEP_MASK, align 4
  %17 = and i32 %15, %16
  %18 = load i32, i32* @CREL_STEP_SHIFT, align 4
  %19 = ashr i32 %17, %18
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp eq i32 %20, 3
  br i1 %21, label %22, label %25

22:                                               ; preds = %1
  %23 = load i32, i32* %5, align 4
  %24 = add nsw i32 30, %23
  store i32 %24, i32* %6, align 4
  br label %26

25:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %26

26:                                               ; preds = %25, %22
  %27 = load i32, i32* %6, align 4
  ret i32 %27
}

declare dso_local i32 @m_can_read(%struct.m_can_classdev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
