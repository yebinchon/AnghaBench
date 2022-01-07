; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/extr_iwl-io.c_iwl_poll_prph_bit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/extr_iwl-io.c_iwl_poll_prph_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { i32 }

@IWL_POLL_INTERVAL = common dso_local global i64 0, align 8
@ETIMEDOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwl_poll_prph_bit(%struct.iwl_trans* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iwl_trans*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.iwl_trans* %0, %struct.iwl_trans** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %13

13:                                               ; preds = %33, %5
  %14 = load %struct.iwl_trans*, %struct.iwl_trans** %7, align 8
  %15 = load i32, i32* %8, align 4
  %16 = call i32 @iwl_read_prph(%struct.iwl_trans* %14, i32 %15)
  %17 = load i32, i32* %10, align 4
  %18 = and i32 %16, %17
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* %10, align 4
  %21 = and i32 %19, %20
  %22 = icmp eq i32 %18, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %13
  %24 = load i32, i32* %12, align 4
  store i32 %24, i32* %6, align 4
  br label %40

25:                                               ; preds = %13
  %26 = load i64, i64* @IWL_POLL_INTERVAL, align 8
  %27 = call i32 @udelay(i64 %26)
  %28 = load i64, i64* @IWL_POLL_INTERVAL, align 8
  %29 = load i32, i32* %12, align 4
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %30, %28
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %12, align 4
  br label %33

33:                                               ; preds = %25
  %34 = load i32, i32* %12, align 4
  %35 = load i32, i32* %11, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %13, label %37

37:                                               ; preds = %33
  %38 = load i32, i32* @ETIMEDOUT, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %6, align 4
  br label %40

40:                                               ; preds = %37, %23
  %41 = load i32, i32* %6, align 4
  ret i32 %41
}

declare dso_local i32 @iwl_read_prph(%struct.iwl_trans*, i32) #1

declare dso_local i32 @udelay(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
