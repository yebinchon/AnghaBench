; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/m_can/extr_m_can.c_m_can_clk_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/m_can/extr_m_can.c_m_can_clk_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.m_can_classdev = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.m_can_classdev*)* @m_can_clk_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m_can_clk_start(%struct.m_can_classdev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.m_can_classdev*, align 8
  %4 = alloca i32, align 4
  store %struct.m_can_classdev* %0, %struct.m_can_classdev** %3, align 8
  %5 = load %struct.m_can_classdev*, %struct.m_can_classdev** %3, align 8
  %6 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %24

10:                                               ; preds = %1
  %11 = load %struct.m_can_classdev*, %struct.m_can_classdev** %3, align 8
  %12 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @pm_runtime_get_sync(i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %10
  %18 = load %struct.m_can_classdev*, %struct.m_can_classdev** %3, align 8
  %19 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @pm_runtime_put_noidle(i32 %20)
  %22 = load i32, i32* %4, align 4
  store i32 %22, i32* %2, align 4
  br label %24

23:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %24

24:                                               ; preds = %23, %17, %9
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @pm_runtime_put_noidle(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
