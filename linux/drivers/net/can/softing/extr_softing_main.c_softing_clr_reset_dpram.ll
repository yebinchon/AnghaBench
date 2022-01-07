; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/softing/extr_softing_main.c_softing_clr_reset_dpram.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/softing/extr_softing_main.c_softing_clr_reset_dpram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.softing = type { i32, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@DPRAM_V2_RESET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.softing*)* @softing_clr_reset_dpram to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @softing_clr_reset_dpram(%struct.softing* %0) #0 {
  %2 = alloca %struct.softing*, align 8
  store %struct.softing* %0, %struct.softing** %2, align 8
  %3 = load %struct.softing*, %struct.softing** %2, align 8
  %4 = getelementptr inbounds %struct.softing, %struct.softing* %3, i32 0, i32 2
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp sge i32 %7, 2
  br i1 %8, label %9, label %29

9:                                                ; preds = %1
  %10 = load %struct.softing*, %struct.softing** %2, align 8
  %11 = getelementptr inbounds %struct.softing, %struct.softing* %10, i32 0, i32 0
  %12 = call i32 @spin_lock_bh(i32* %11)
  %13 = load %struct.softing*, %struct.softing** %2, align 8
  %14 = getelementptr inbounds %struct.softing, %struct.softing* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = load i64, i64* @DPRAM_V2_RESET, align 8
  %17 = getelementptr inbounds i32, i32* %15, i64 %16
  %18 = call i32 @ioread8(i32* %17)
  %19 = or i32 %18, 1
  %20 = load %struct.softing*, %struct.softing** %2, align 8
  %21 = getelementptr inbounds %struct.softing, %struct.softing* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = load i64, i64* @DPRAM_V2_RESET, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  %25 = call i32 @iowrite8(i32 %19, i32* %24)
  %26 = load %struct.softing*, %struct.softing** %2, align 8
  %27 = getelementptr inbounds %struct.softing, %struct.softing* %26, i32 0, i32 0
  %28 = call i32 @spin_unlock_bh(i32* %27)
  br label %29

29:                                               ; preds = %9, %1
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @iowrite8(i32, i32*) #1

declare dso_local i32 @ioread8(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
