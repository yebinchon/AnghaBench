; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_thread_read_relaxed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_thread_read_relaxed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvpp2 = type { i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.mvpp2*, i32, i64)* @mvpp2_thread_read_relaxed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mvpp2_thread_read_relaxed(%struct.mvpp2* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.mvpp2*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.mvpp2* %0, %struct.mvpp2** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %7 = load %struct.mvpp2*, %struct.mvpp2** %4, align 8
  %8 = getelementptr inbounds %struct.mvpp2, %struct.mvpp2* %7, i32 0, i32 0
  %9 = load i64*, i64** %8, align 8
  %10 = load i32, i32* %5, align 4
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds i64, i64* %9, i64 %11
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* %6, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i64 @readl_relaxed(i64 %15)
  ret i64 %16
}

declare dso_local i64 @readl_relaxed(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
