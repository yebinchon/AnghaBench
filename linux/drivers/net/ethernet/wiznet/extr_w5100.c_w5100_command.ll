; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/wiznet/extr_w5100.c_w5100_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/wiznet/extr_w5100.c_w5100_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.w5100_priv = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.w5100_priv*, i32)* @w5100_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @w5100_command(%struct.w5100_priv* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.w5100_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.w5100_priv* %0, %struct.w5100_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.w5100_priv*, %struct.w5100_priv** %4, align 8
  %8 = load %struct.w5100_priv*, %struct.w5100_priv** %4, align 8
  %9 = call i32 @W5100_S0_CR(%struct.w5100_priv* %8)
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @w5100_write(%struct.w5100_priv* %7, i32 %9, i32 %10)
  %12 = load i64, i64* @jiffies, align 8
  %13 = call i64 @msecs_to_jiffies(i32 100)
  %14 = add i64 %12, %13
  store i64 %14, i64* %6, align 8
  br label %15

15:                                               ; preds = %29, %2
  %16 = load %struct.w5100_priv*, %struct.w5100_priv** %4, align 8
  %17 = load %struct.w5100_priv*, %struct.w5100_priv** %4, align 8
  %18 = call i32 @W5100_S0_CR(%struct.w5100_priv* %17)
  %19 = call i64 @w5100_read(%struct.w5100_priv* %16, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %15
  %22 = load i64, i64* @jiffies, align 8
  %23 = load i64, i64* %6, align 8
  %24 = call i64 @time_after(i64 %22, i64 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i32, i32* @EIO, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %32

29:                                               ; preds = %21
  %30 = call i32 (...) @cpu_relax()
  br label %15

31:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %31, %26
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @w5100_write(%struct.w5100_priv*, i32, i32) #1

declare dso_local i32 @W5100_S0_CR(%struct.w5100_priv*) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i64 @w5100_read(%struct.w5100_priv*, i32) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @cpu_relax(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
