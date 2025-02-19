; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/wiznet/extr_w5100.c_w5100_hw_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/wiznet/extr_w5100.c_w5100_hw_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.w5100_priv = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }

@S0_MR_MACRAW = common dso_local global i32 0, align 4
@W5500 = common dso_local global i64 0, align 8
@W5500_S0_MR_MF = common dso_local global i32 0, align 4
@S0_MR_MF = common dso_local global i32 0, align 4
@S0_CR_OPEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.w5100_priv*)* @w5100_hw_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @w5100_hw_start(%struct.w5100_priv* %0) #0 {
  %2 = alloca %struct.w5100_priv*, align 8
  %3 = alloca i32, align 4
  store %struct.w5100_priv* %0, %struct.w5100_priv** %2, align 8
  %4 = load i32, i32* @S0_MR_MACRAW, align 4
  store i32 %4, i32* %3, align 4
  %5 = load %struct.w5100_priv*, %struct.w5100_priv** %2, align 8
  %6 = getelementptr inbounds %struct.w5100_priv, %struct.w5100_priv* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %26, label %9

9:                                                ; preds = %1
  %10 = load %struct.w5100_priv*, %struct.w5100_priv** %2, align 8
  %11 = getelementptr inbounds %struct.w5100_priv, %struct.w5100_priv* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @W5500, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %9
  %18 = load i32, i32* @W5500_S0_MR_MF, align 4
  %19 = load i32, i32* %3, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %3, align 4
  br label %25

21:                                               ; preds = %9
  %22 = load i32, i32* @S0_MR_MF, align 4
  %23 = load i32, i32* %3, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %21, %17
  br label %26

26:                                               ; preds = %25, %1
  %27 = load %struct.w5100_priv*, %struct.w5100_priv** %2, align 8
  %28 = load %struct.w5100_priv*, %struct.w5100_priv** %2, align 8
  %29 = call i32 @W5100_S0_MR(%struct.w5100_priv* %28)
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @w5100_write(%struct.w5100_priv* %27, i32 %29, i32 %30)
  %32 = load %struct.w5100_priv*, %struct.w5100_priv** %2, align 8
  %33 = load i32, i32* @S0_CR_OPEN, align 4
  %34 = call i32 @w5100_command(%struct.w5100_priv* %32, i32 %33)
  %35 = load %struct.w5100_priv*, %struct.w5100_priv** %2, align 8
  %36 = call i32 @w5100_enable_intr(%struct.w5100_priv* %35)
  ret void
}

declare dso_local i32 @w5100_write(%struct.w5100_priv*, i32, i32) #1

declare dso_local i32 @W5100_S0_MR(%struct.w5100_priv*) #1

declare dso_local i32 @w5100_command(%struct.w5100_priv*, i32) #1

declare dso_local i32 @w5100_enable_intr(%struct.w5100_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
