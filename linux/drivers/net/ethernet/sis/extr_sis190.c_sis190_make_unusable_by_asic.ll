; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sis/extr_sis190.c_sis190_make_unusable_by_asic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sis/extr_sis190.c_sis190_make_unusable_by_asic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RxDesc = type { i32, i32, i32, i32 }

@RingEnd = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.RxDesc*)* @sis190_make_unusable_by_asic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sis190_make_unusable_by_asic(%struct.RxDesc* %0) #0 {
  %2 = alloca %struct.RxDesc*, align 8
  store %struct.RxDesc* %0, %struct.RxDesc** %2, align 8
  %3 = load %struct.RxDesc*, %struct.RxDesc** %2, align 8
  %4 = getelementptr inbounds %struct.RxDesc, %struct.RxDesc* %3, i32 0, i32 0
  store i32 0, i32* %4, align 4
  %5 = call i32 @cpu_to_le32(i32 -559038737)
  %6 = load %struct.RxDesc*, %struct.RxDesc** %2, align 8
  %7 = getelementptr inbounds %struct.RxDesc, %struct.RxDesc* %6, i32 0, i32 3
  store i32 %5, i32* %7, align 4
  %8 = load i32, i32* @RingEnd, align 4
  %9 = call i32 @cpu_to_le32(i32 %8)
  %10 = load %struct.RxDesc*, %struct.RxDesc** %2, align 8
  %11 = getelementptr inbounds %struct.RxDesc, %struct.RxDesc* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = and i32 %12, %9
  store i32 %13, i32* %11, align 4
  %14 = call i32 (...) @wmb()
  %15 = load %struct.RxDesc*, %struct.RxDesc** %2, align 8
  %16 = getelementptr inbounds %struct.RxDesc, %struct.RxDesc* %15, i32 0, i32 1
  store i32 0, i32* %16, align 4
  ret void
}

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
