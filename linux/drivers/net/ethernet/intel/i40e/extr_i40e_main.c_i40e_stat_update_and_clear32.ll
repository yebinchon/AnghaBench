; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_stat_update_and_clear32.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_stat_update_and_clear32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i40e_hw*, i64, i32*)* @i40e_stat_update_and_clear32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40e_stat_update_and_clear32(%struct.i40e_hw* %0, i64 %1, i32* %2) #0 {
  %4 = alloca %struct.i40e_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  store %struct.i40e_hw* %0, %struct.i40e_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %9 = load i64, i64* %5, align 8
  %10 = call i64 @rd32(%struct.i40e_hw* %8, i64 %9)
  store i64 %10, i64* %7, align 8
  %11 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %12 = load i64, i64* %5, align 8
  %13 = call i32 @wr32(%struct.i40e_hw* %11, i64 %12, i32 1)
  %14 = load i64, i64* %7, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = load i32, i32* %15, align 4
  %17 = sext i32 %16 to i64
  %18 = add nsw i64 %17, %14
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %15, align 4
  ret void
}

declare dso_local i64 @rd32(%struct.i40e_hw*, i64) #1

declare dso_local i32 @wr32(%struct.i40e_hw*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
