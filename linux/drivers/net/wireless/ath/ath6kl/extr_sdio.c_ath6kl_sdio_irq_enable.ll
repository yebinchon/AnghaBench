; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_sdio.c_ath6kl_sdio_irq_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_sdio.c_ath6kl_sdio_irq_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath6kl = type { i32 }
%struct.ath6kl_sdio = type { i32 }

@ath6kl_sdio_irq_handler = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Failed to claim sdio irq: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath6kl*)* @ath6kl_sdio_irq_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath6kl_sdio_irq_enable(%struct.ath6kl* %0) #0 {
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
  %12 = getelementptr inbounds %struct.ath6kl_sdio, %struct.ath6kl_sdio* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @ath6kl_sdio_irq_handler, align 4
  %15 = call i32 @sdio_claim_irq(i32 %13, i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @ath6kl_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %19)
  br label %21

21:                                               ; preds = %18, %1
  %22 = load %struct.ath6kl_sdio*, %struct.ath6kl_sdio** %3, align 8
  %23 = getelementptr inbounds %struct.ath6kl_sdio, %struct.ath6kl_sdio* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @sdio_release_host(i32 %24)
  ret void
}

declare dso_local %struct.ath6kl_sdio* @ath6kl_sdio_priv(%struct.ath6kl*) #1

declare dso_local i32 @sdio_claim_host(i32) #1

declare dso_local i32 @sdio_claim_irq(i32, i32) #1

declare dso_local i32 @ath6kl_err(i8*, i32) #1

declare dso_local i32 @sdio_release_host(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
