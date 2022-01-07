; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_cs5535-mfgpt.c_cs5535_mfgpt_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_cs5535-mfgpt.c_cs5535_mfgpt_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cs5535_mfgpt_timer = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @cs5535_mfgpt_read(%struct.cs5535_mfgpt_timer* %0, i64 %1) #0 {
  %3 = alloca %struct.cs5535_mfgpt_timer*, align 8
  %4 = alloca i64, align 8
  store %struct.cs5535_mfgpt_timer* %0, %struct.cs5535_mfgpt_timer** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.cs5535_mfgpt_timer*, %struct.cs5535_mfgpt_timer** %3, align 8
  %6 = getelementptr inbounds %struct.cs5535_mfgpt_timer, %struct.cs5535_mfgpt_timer* %5, i32 0, i32 1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* %4, align 8
  %11 = add nsw i64 %9, %10
  %12 = load %struct.cs5535_mfgpt_timer*, %struct.cs5535_mfgpt_timer** %3, align 8
  %13 = getelementptr inbounds %struct.cs5535_mfgpt_timer, %struct.cs5535_mfgpt_timer* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = mul nsw i32 %14, 8
  %16 = sext i32 %15 to i64
  %17 = add nsw i64 %11, %16
  %18 = call i64 @inw(i64 %17)
  ret i64 %18
}

declare dso_local i64 @inw(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
