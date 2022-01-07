; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/wiznet/extr_w5300.c_w5300_hw_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/wiznet/extr_w5300.c_w5300_hw_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.w5300_priv = type { i64 }

@W5300_S0_MR = common dso_local global i32 0, align 4
@S0_MR_MACRAW = common dso_local global i32 0, align 4
@S0_MR_MACRAW_MF = common dso_local global i32 0, align 4
@S0_CR_OPEN = common dso_local global i32 0, align 4
@W5300_S0_IMR = common dso_local global i32 0, align 4
@S0_IR_RECV = common dso_local global i32 0, align 4
@S0_IR_SENDOK = common dso_local global i32 0, align 4
@W5300_IMR = common dso_local global i32 0, align 4
@IR_S0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.w5300_priv*)* @w5300_hw_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @w5300_hw_start(%struct.w5300_priv* %0) #0 {
  %2 = alloca %struct.w5300_priv*, align 8
  store %struct.w5300_priv* %0, %struct.w5300_priv** %2, align 8
  %3 = load %struct.w5300_priv*, %struct.w5300_priv** %2, align 8
  %4 = load i32, i32* @W5300_S0_MR, align 4
  %5 = load %struct.w5300_priv*, %struct.w5300_priv** %2, align 8
  %6 = getelementptr inbounds %struct.w5300_priv, %struct.w5300_priv* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* @S0_MR_MACRAW, align 4
  br label %13

11:                                               ; preds = %1
  %12 = load i32, i32* @S0_MR_MACRAW_MF, align 4
  br label %13

13:                                               ; preds = %11, %9
  %14 = phi i32 [ %10, %9 ], [ %12, %11 ]
  %15 = call i32 @w5300_write(%struct.w5300_priv* %3, i32 %4, i32 %14)
  %16 = load %struct.w5300_priv*, %struct.w5300_priv** %2, align 8
  %17 = load i32, i32* @S0_CR_OPEN, align 4
  %18 = call i32 @w5300_command(%struct.w5300_priv* %16, i32 %17)
  %19 = load %struct.w5300_priv*, %struct.w5300_priv** %2, align 8
  %20 = load i32, i32* @W5300_S0_IMR, align 4
  %21 = load i32, i32* @S0_IR_RECV, align 4
  %22 = load i32, i32* @S0_IR_SENDOK, align 4
  %23 = or i32 %21, %22
  %24 = call i32 @w5300_write(%struct.w5300_priv* %19, i32 %20, i32 %23)
  %25 = load %struct.w5300_priv*, %struct.w5300_priv** %2, align 8
  %26 = load i32, i32* @W5300_IMR, align 4
  %27 = load i32, i32* @IR_S0, align 4
  %28 = call i32 @w5300_write(%struct.w5300_priv* %25, i32 %26, i32 %27)
  ret void
}

declare dso_local i32 @w5300_write(%struct.w5300_priv*, i32, i32) #1

declare dso_local i32 @w5300_command(%struct.w5300_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
