; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/wiznet/extr_w5100.c_w5100_hw_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/wiznet/extr_w5100.c_w5100_hw_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.w5100_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@W5100_RTR = common dso_local global i32 0, align 4
@W5500_RTR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@RTR_DEFAULT = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.w5100_priv*)* @w5100_hw_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @w5100_hw_reset(%struct.w5100_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.w5100_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.w5100_priv* %0, %struct.w5100_priv** %3, align 8
  %5 = load %struct.w5100_priv*, %struct.w5100_priv** %3, align 8
  %6 = call i32 @w5100_reset(%struct.w5100_priv* %5)
  %7 = load %struct.w5100_priv*, %struct.w5100_priv** %3, align 8
  %8 = call i32 @w5100_disable_intr(%struct.w5100_priv* %7)
  %9 = load %struct.w5100_priv*, %struct.w5100_priv** %3, align 8
  %10 = call i32 @w5100_write_macaddr(%struct.w5100_priv* %9)
  %11 = load %struct.w5100_priv*, %struct.w5100_priv** %3, align 8
  %12 = getelementptr inbounds %struct.w5100_priv, %struct.w5100_priv* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %28 [
    i32 130, label %16
    i32 129, label %20
    i32 128, label %24
  ]

16:                                               ; preds = %1
  %17 = load %struct.w5100_priv*, %struct.w5100_priv** %3, align 8
  %18 = call i32 @w5100_memory_configure(%struct.w5100_priv* %17)
  %19 = load i32, i32* @W5100_RTR, align 4
  store i32 %19, i32* %4, align 4
  br label %31

20:                                               ; preds = %1
  %21 = load %struct.w5100_priv*, %struct.w5100_priv** %3, align 8
  %22 = call i32 @w5200_memory_configure(%struct.w5100_priv* %21)
  %23 = load i32, i32* @W5100_RTR, align 4
  store i32 %23, i32* %4, align 4
  br label %31

24:                                               ; preds = %1
  %25 = load %struct.w5100_priv*, %struct.w5100_priv** %3, align 8
  %26 = call i32 @w5500_memory_configure(%struct.w5100_priv* %25)
  %27 = load i32, i32* @W5500_RTR, align 4
  store i32 %27, i32* %4, align 4
  br label %31

28:                                               ; preds = %1
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %41

31:                                               ; preds = %24, %20, %16
  %32 = load %struct.w5100_priv*, %struct.w5100_priv** %3, align 8
  %33 = load i32, i32* %4, align 4
  %34 = call i64 @w5100_read16(%struct.w5100_priv* %32, i32 %33)
  %35 = load i64, i64* @RTR_DEFAULT, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load i32, i32* @ENODEV, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %41

40:                                               ; preds = %31
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %40, %37, %28
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @w5100_reset(%struct.w5100_priv*) #1

declare dso_local i32 @w5100_disable_intr(%struct.w5100_priv*) #1

declare dso_local i32 @w5100_write_macaddr(%struct.w5100_priv*) #1

declare dso_local i32 @w5100_memory_configure(%struct.w5100_priv*) #1

declare dso_local i32 @w5200_memory_configure(%struct.w5100_priv*) #1

declare dso_local i32 @w5500_memory_configure(%struct.w5100_priv*) #1

declare dso_local i64 @w5100_read16(%struct.w5100_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
