; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_b44.c_b44_clear_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_b44.c_b44_clear_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b44 = type { i32 }

@B44_MIB_CTRL = common dso_local global i32 0, align 4
@MIB_CTRL_CLR_ON_READ = common dso_local global i32 0, align 4
@B44_TX_GOOD_O = common dso_local global i64 0, align 8
@B44_TX_PAUSE = common dso_local global i64 0, align 8
@B44_RX_GOOD_O = common dso_local global i64 0, align 8
@B44_RX_NPAUSE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b44*)* @b44_clear_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b44_clear_stats(%struct.b44* %0) #0 {
  %2 = alloca %struct.b44*, align 8
  %3 = alloca i64, align 8
  store %struct.b44* %0, %struct.b44** %2, align 8
  %4 = load %struct.b44*, %struct.b44** %2, align 8
  %5 = load i32, i32* @B44_MIB_CTRL, align 4
  %6 = load i32, i32* @MIB_CTRL_CLR_ON_READ, align 4
  %7 = call i32 @bw32(%struct.b44* %4, i32 %5, i32 %6)
  %8 = load i64, i64* @B44_TX_GOOD_O, align 8
  store i64 %8, i64* %3, align 8
  br label %9

9:                                                ; preds = %17, %1
  %10 = load i64, i64* %3, align 8
  %11 = load i64, i64* @B44_TX_PAUSE, align 8
  %12 = icmp ule i64 %10, %11
  br i1 %12, label %13, label %20

13:                                               ; preds = %9
  %14 = load %struct.b44*, %struct.b44** %2, align 8
  %15 = load i64, i64* %3, align 8
  %16 = call i32 @br32(%struct.b44* %14, i64 %15)
  br label %17

17:                                               ; preds = %13
  %18 = load i64, i64* %3, align 8
  %19 = add i64 %18, 4
  store i64 %19, i64* %3, align 8
  br label %9

20:                                               ; preds = %9
  %21 = load i64, i64* @B44_RX_GOOD_O, align 8
  store i64 %21, i64* %3, align 8
  br label %22

22:                                               ; preds = %30, %20
  %23 = load i64, i64* %3, align 8
  %24 = load i64, i64* @B44_RX_NPAUSE, align 8
  %25 = icmp ule i64 %23, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %22
  %27 = load %struct.b44*, %struct.b44** %2, align 8
  %28 = load i64, i64* %3, align 8
  %29 = call i32 @br32(%struct.b44* %27, i64 %28)
  br label %30

30:                                               ; preds = %26
  %31 = load i64, i64* %3, align 8
  %32 = add i64 %31, 4
  store i64 %32, i64* %3, align 8
  br label %22

33:                                               ; preds = %22
  ret void
}

declare dso_local i32 @bw32(%struct.b44*, i32, i32) #1

declare dso_local i32 @br32(%struct.b44*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
