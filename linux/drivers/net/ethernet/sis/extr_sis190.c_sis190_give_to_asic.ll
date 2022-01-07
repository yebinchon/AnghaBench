; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sis/extr_sis190.c_sis190_give_to_asic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sis/extr_sis190.c_sis190_give_to_asic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RxDesc = type { i32, i8*, i8* }

@RingEnd = common dso_local global i32 0, align 4
@RX_BUF_MASK = common dso_local global i32 0, align 4
@OWNbit = common dso_local global i32 0, align 4
@INTbit = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.RxDesc*, i32)* @sis190_give_to_asic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sis190_give_to_asic(%struct.RxDesc* %0, i32 %1) #0 {
  %3 = alloca %struct.RxDesc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.RxDesc* %0, %struct.RxDesc** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.RxDesc*, %struct.RxDesc** %3, align 8
  %7 = getelementptr inbounds %struct.RxDesc, %struct.RxDesc* %6, i32 0, i32 2
  %8 = load i8*, i8** %7, align 8
  %9 = call i32 @le32_to_cpu(i8* %8)
  %10 = load i32, i32* @RingEnd, align 4
  %11 = and i32 %9, %10
  store i32 %11, i32* %5, align 4
  %12 = load %struct.RxDesc*, %struct.RxDesc** %3, align 8
  %13 = getelementptr inbounds %struct.RxDesc, %struct.RxDesc* %12, i32 0, i32 0
  store i32 0, i32* %13, align 8
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @RX_BUF_MASK, align 4
  %16 = and i32 %14, %15
  %17 = load i32, i32* %5, align 4
  %18 = or i32 %16, %17
  %19 = call i8* @cpu_to_le32(i32 %18)
  %20 = load %struct.RxDesc*, %struct.RxDesc** %3, align 8
  %21 = getelementptr inbounds %struct.RxDesc, %struct.RxDesc* %20, i32 0, i32 2
  store i8* %19, i8** %21, align 8
  %22 = call i32 (...) @wmb()
  %23 = load i32, i32* @OWNbit, align 4
  %24 = load i32, i32* @INTbit, align 4
  %25 = or i32 %23, %24
  %26 = call i8* @cpu_to_le32(i32 %25)
  %27 = load %struct.RxDesc*, %struct.RxDesc** %3, align 8
  %28 = getelementptr inbounds %struct.RxDesc, %struct.RxDesc* %27, i32 0, i32 1
  store i8* %26, i8** %28, align 8
  ret void
}

declare dso_local i32 @le32_to_cpu(i8*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
