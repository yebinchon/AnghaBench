; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_at86rf230.c_at86rf230_async_read_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_at86rf230.c_at86rf230_async_read_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.at86rf230_local = type { i32 }
%struct.at86rf230_state_change = type { i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { void (i8*)* }

@CMD_REG_MASK = common dso_local global i32 0, align 4
@CMD_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.at86rf230_local*, i32, %struct.at86rf230_state_change*, void (i8*)*)* @at86rf230_async_read_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @at86rf230_async_read_reg(%struct.at86rf230_local* %0, i32 %1, %struct.at86rf230_state_change* %2, void (i8*)* %3) #0 {
  %5 = alloca %struct.at86rf230_local*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.at86rf230_state_change*, align 8
  %8 = alloca void (i8*)*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store %struct.at86rf230_local* %0, %struct.at86rf230_local** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.at86rf230_state_change* %2, %struct.at86rf230_state_change** %7, align 8
  store void (i8*)* %3, void (i8*)** %8, align 8
  %11 = load %struct.at86rf230_state_change*, %struct.at86rf230_state_change** %7, align 8
  %12 = getelementptr inbounds %struct.at86rf230_state_change, %struct.at86rf230_state_change* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %10, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @CMD_REG_MASK, align 4
  %16 = and i32 %14, %15
  %17 = load i32, i32* @CMD_REG, align 4
  %18 = or i32 %16, %17
  %19 = load i32*, i32** %10, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  store i32 %18, i32* %20, align 4
  %21 = load void (i8*)*, void (i8*)** %8, align 8
  %22 = load %struct.at86rf230_state_change*, %struct.at86rf230_state_change** %7, align 8
  %23 = getelementptr inbounds %struct.at86rf230_state_change, %struct.at86rf230_state_change* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store void (i8*)* %21, void (i8*)** %24, align 8
  %25 = load %struct.at86rf230_local*, %struct.at86rf230_local** %5, align 8
  %26 = getelementptr inbounds %struct.at86rf230_local, %struct.at86rf230_local* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.at86rf230_state_change*, %struct.at86rf230_state_change** %7, align 8
  %29 = getelementptr inbounds %struct.at86rf230_state_change, %struct.at86rf230_state_change* %28, i32 0, i32 1
  %30 = call i32 @spi_async(i32 %27, %struct.TYPE_2__* %29)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %4
  %34 = load %struct.at86rf230_local*, %struct.at86rf230_local** %5, align 8
  %35 = load %struct.at86rf230_state_change*, %struct.at86rf230_state_change** %7, align 8
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @at86rf230_async_error(%struct.at86rf230_local* %34, %struct.at86rf230_state_change* %35, i32 %36)
  br label %38

38:                                               ; preds = %33, %4
  ret void
}

declare dso_local i32 @spi_async(i32, %struct.TYPE_2__*) #1

declare dso_local i32 @at86rf230_async_error(%struct.at86rf230_local*, %struct.at86rf230_state_change*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
