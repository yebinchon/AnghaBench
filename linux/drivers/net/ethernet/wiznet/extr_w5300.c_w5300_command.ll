; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/wiznet/extr_w5300.c_w5300_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/wiznet/extr_w5300.c_w5300_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.w5300_priv = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@W5300_S0_CR = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.w5300_priv*, i32)* @w5300_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @w5300_command(%struct.w5300_priv* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.w5300_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.w5300_priv* %0, %struct.w5300_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i64, i64* @jiffies, align 8
  %8 = call i64 @msecs_to_jiffies(i32 100)
  %9 = add i64 %7, %8
  store i64 %9, i64* %6, align 8
  %10 = load %struct.w5300_priv*, %struct.w5300_priv** %4, align 8
  %11 = load i32, i32* @W5300_S0_CR, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @w5300_write(%struct.w5300_priv* %10, i32 %11, i32 %12)
  br label %14

14:                                               ; preds = %27, %2
  %15 = load %struct.w5300_priv*, %struct.w5300_priv** %4, align 8
  %16 = load i32, i32* @W5300_S0_CR, align 4
  %17 = call i64 @w5300_read(%struct.w5300_priv* %15, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %14
  %20 = load i64, i64* @jiffies, align 8
  %21 = load i64, i64* %6, align 8
  %22 = call i64 @time_after(i64 %20, i64 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load i32, i32* @EIO, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %30

27:                                               ; preds = %19
  %28 = call i32 (...) @cpu_relax()
  br label %14

29:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %30

30:                                               ; preds = %29, %24
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @w5300_write(%struct.w5300_priv*, i32, i32) #1

declare dso_local i64 @w5300_read(%struct.w5300_priv*, i32) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @cpu_relax(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
