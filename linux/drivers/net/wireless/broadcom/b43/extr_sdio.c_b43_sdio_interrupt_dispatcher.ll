; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_sdio.c_b43_sdio_interrupt_dispatcher.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_sdio.c_b43_sdio_interrupt_dispatcher.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdio_func = type { i32 }
%struct.b43_sdio = type { i32 (%struct.b43_wldev*)*, %struct.b43_wldev* }
%struct.b43_wldev = type { i32 }

@B43_STAT_STARTED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdio_func*)* @b43_sdio_interrupt_dispatcher to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_sdio_interrupt_dispatcher(%struct.sdio_func* %0) #0 {
  %2 = alloca %struct.sdio_func*, align 8
  %3 = alloca %struct.b43_sdio*, align 8
  %4 = alloca %struct.b43_wldev*, align 8
  store %struct.sdio_func* %0, %struct.sdio_func** %2, align 8
  %5 = load %struct.sdio_func*, %struct.sdio_func** %2, align 8
  %6 = call %struct.b43_sdio* @sdio_get_drvdata(%struct.sdio_func* %5)
  store %struct.b43_sdio* %6, %struct.b43_sdio** %3, align 8
  %7 = load %struct.b43_sdio*, %struct.b43_sdio** %3, align 8
  %8 = getelementptr inbounds %struct.b43_sdio, %struct.b43_sdio* %7, i32 0, i32 1
  %9 = load %struct.b43_wldev*, %struct.b43_wldev** %8, align 8
  store %struct.b43_wldev* %9, %struct.b43_wldev** %4, align 8
  %10 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %11 = call i64 @b43_status(%struct.b43_wldev* %10)
  %12 = load i64, i64* @B43_STAT_STARTED, align 8
  %13 = icmp slt i64 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i64 @unlikely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %28

18:                                               ; preds = %1
  %19 = load %struct.sdio_func*, %struct.sdio_func** %2, align 8
  %20 = call i32 @sdio_release_host(%struct.sdio_func* %19)
  %21 = load %struct.b43_sdio*, %struct.b43_sdio** %3, align 8
  %22 = getelementptr inbounds %struct.b43_sdio, %struct.b43_sdio* %21, i32 0, i32 0
  %23 = load i32 (%struct.b43_wldev*)*, i32 (%struct.b43_wldev*)** %22, align 8
  %24 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %25 = call i32 %23(%struct.b43_wldev* %24)
  %26 = load %struct.sdio_func*, %struct.sdio_func** %2, align 8
  %27 = call i32 @sdio_claim_host(%struct.sdio_func* %26)
  br label %28

28:                                               ; preds = %18, %17
  ret void
}

declare dso_local %struct.b43_sdio* @sdio_get_drvdata(%struct.sdio_func*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @b43_status(%struct.b43_wldev*) #1

declare dso_local i32 @sdio_release_host(%struct.sdio_func*) #1

declare dso_local i32 @sdio_claim_host(%struct.sdio_func*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
