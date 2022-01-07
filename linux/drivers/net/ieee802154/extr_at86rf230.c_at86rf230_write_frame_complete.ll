; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_at86rf230.c_at86rf230_write_frame_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_at86rf230.c_at86rf230_write_frame_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.at86rf230_state_change = type { %struct.TYPE_2__, %struct.at86rf230_local* }
%struct.TYPE_2__ = type { i32 }
%struct.at86rf230_local = type { i32 }

@RG_TRX_STATE = common dso_local global i32 0, align 4
@STATE_BUSY_TX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @at86rf230_write_frame_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @at86rf230_write_frame_complete(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.at86rf230_state_change*, align 8
  %4 = alloca %struct.at86rf230_local*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.at86rf230_state_change*
  store %struct.at86rf230_state_change* %6, %struct.at86rf230_state_change** %3, align 8
  %7 = load %struct.at86rf230_state_change*, %struct.at86rf230_state_change** %3, align 8
  %8 = getelementptr inbounds %struct.at86rf230_state_change, %struct.at86rf230_state_change* %7, i32 0, i32 1
  %9 = load %struct.at86rf230_local*, %struct.at86rf230_local** %8, align 8
  store %struct.at86rf230_local* %9, %struct.at86rf230_local** %4, align 8
  %10 = load %struct.at86rf230_state_change*, %struct.at86rf230_state_change** %3, align 8
  %11 = getelementptr inbounds %struct.at86rf230_state_change, %struct.at86rf230_state_change* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store i32 2, i32* %12, align 8
  %13 = load %struct.at86rf230_local*, %struct.at86rf230_local** %4, align 8
  %14 = getelementptr inbounds %struct.at86rf230_local, %struct.at86rf230_local* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @gpio_is_valid(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load %struct.at86rf230_local*, %struct.at86rf230_local** %4, align 8
  %20 = call i32 @at86rf230_slp_tr_rising_edge(%struct.at86rf230_local* %19)
  br label %27

21:                                               ; preds = %1
  %22 = load %struct.at86rf230_local*, %struct.at86rf230_local** %4, align 8
  %23 = load i32, i32* @RG_TRX_STATE, align 4
  %24 = load i32, i32* @STATE_BUSY_TX, align 4
  %25 = load %struct.at86rf230_state_change*, %struct.at86rf230_state_change** %3, align 8
  %26 = call i32 @at86rf230_async_write_reg(%struct.at86rf230_local* %22, i32 %23, i32 %24, %struct.at86rf230_state_change* %25, i32* null)
  br label %27

27:                                               ; preds = %21, %18
  ret void
}

declare dso_local i64 @gpio_is_valid(i32) #1

declare dso_local i32 @at86rf230_slp_tr_rising_edge(%struct.at86rf230_local*) #1

declare dso_local i32 @at86rf230_async_write_reg(%struct.at86rf230_local*, i32, i32, %struct.at86rf230_state_change*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
