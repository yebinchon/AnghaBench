; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_init.c_set_ac2_ep_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_init.c_set_ac2_ep_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath6kl = type { i32*, i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath6kl*, i64, i32)* @set_ac2_ep_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_ac2_ep_map(%struct.ath6kl* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.ath6kl*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.ath6kl* %0, %struct.ath6kl** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.ath6kl*, %struct.ath6kl** %4, align 8
  %9 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = load i64, i64* %5, align 8
  %12 = getelementptr inbounds i32, i32* %10, i64 %11
  store i32 %7, i32* %12, align 4
  %13 = load i64, i64* %5, align 8
  %14 = load %struct.ath6kl*, %struct.ath6kl** %4, align 8
  %15 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %14, i32 0, i32 1
  %16 = load i64*, i64** %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds i64, i64* %16, i64 %18
  store i64 %13, i64* %19, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
