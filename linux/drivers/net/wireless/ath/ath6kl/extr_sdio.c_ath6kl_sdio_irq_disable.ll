; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_sdio.c_ath6kl_sdio_irq_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_sdio.c_ath6kl_sdio_irq_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath6kl = type { i32 }
%struct.ath6kl_sdio = type { i32, i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"Failed to release sdio irq: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath6kl*)* @ath6kl_sdio_irq_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath6kl_sdio_irq_disable(%struct.ath6kl* %0) #0 {
  %2 = alloca %struct.ath6kl*, align 8
  %3 = alloca %struct.ath6kl_sdio*, align 8
  %4 = alloca i32, align 4
  store %struct.ath6kl* %0, %struct.ath6kl** %2, align 8
  %5 = load %struct.ath6kl*, %struct.ath6kl** %2, align 8
  %6 = call %struct.ath6kl_sdio* @ath6kl_sdio_priv(%struct.ath6kl* %5)
  store %struct.ath6kl_sdio* %6, %struct.ath6kl_sdio** %3, align 8
  %7 = load %struct.ath6kl_sdio*, %struct.ath6kl_sdio** %3, align 8
  %8 = getelementptr inbounds %struct.ath6kl_sdio, %struct.ath6kl_sdio* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @sdio_claim_host(i32 %9)
  %11 = load %struct.ath6kl_sdio*, %struct.ath6kl_sdio** %3, align 8
  %12 = getelementptr inbounds %struct.ath6kl_sdio, %struct.ath6kl_sdio* %11, i32 0, i32 2
  %13 = call i64 @atomic_read(i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %34

15:                                               ; preds = %1
  %16 = load %struct.ath6kl_sdio*, %struct.ath6kl_sdio** %3, align 8
  %17 = getelementptr inbounds %struct.ath6kl_sdio, %struct.ath6kl_sdio* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @sdio_release_host(i32 %18)
  %20 = load %struct.ath6kl_sdio*, %struct.ath6kl_sdio** %3, align 8
  %21 = getelementptr inbounds %struct.ath6kl_sdio, %struct.ath6kl_sdio* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.ath6kl*, %struct.ath6kl** %2, align 8
  %24 = call i32 @ath6kl_sdio_is_on_irq(%struct.ath6kl* %23)
  %25 = call i32 @wait_event_interruptible(i32 %22, i32 %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %15
  br label %49

29:                                               ; preds = %15
  %30 = load %struct.ath6kl_sdio*, %struct.ath6kl_sdio** %3, align 8
  %31 = getelementptr inbounds %struct.ath6kl_sdio, %struct.ath6kl_sdio* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @sdio_claim_host(i32 %32)
  br label %34

34:                                               ; preds = %29, %1
  %35 = load %struct.ath6kl_sdio*, %struct.ath6kl_sdio** %3, align 8
  %36 = getelementptr inbounds %struct.ath6kl_sdio, %struct.ath6kl_sdio* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @sdio_release_irq(i32 %37)
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %34
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @ath6kl_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %42)
  br label %44

44:                                               ; preds = %41, %34
  %45 = load %struct.ath6kl_sdio*, %struct.ath6kl_sdio** %3, align 8
  %46 = getelementptr inbounds %struct.ath6kl_sdio, %struct.ath6kl_sdio* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @sdio_release_host(i32 %47)
  br label %49

49:                                               ; preds = %44, %28
  ret void
}

declare dso_local %struct.ath6kl_sdio* @ath6kl_sdio_priv(%struct.ath6kl*) #1

declare dso_local i32 @sdio_claim_host(i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @sdio_release_host(i32) #1

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

declare dso_local i32 @ath6kl_sdio_is_on_irq(%struct.ath6kl*) #1

declare dso_local i32 @sdio_release_irq(i32) #1

declare dso_local i32 @ath6kl_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
