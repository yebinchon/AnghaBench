; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_sdio.c_ath10k_sdio_write32.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_sdio.c_ath10k_sdio_write32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.ath10k_sdio = type { %struct.sdio_func* }
%struct.sdio_func = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"failed to write 0x%x to address 0x%x: %d\0A\00", align 1
@ATH10K_DBG_SDIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"sdio write32 addr 0x%x val 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*, i32, i32)* @ath10k_sdio_write32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_sdio_write32(%struct.ath10k* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ath10k*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ath10k_sdio*, align 8
  %8 = alloca %struct.sdio_func*, align 8
  %9 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %11 = call %struct.ath10k_sdio* @ath10k_sdio_priv(%struct.ath10k* %10)
  store %struct.ath10k_sdio* %11, %struct.ath10k_sdio** %7, align 8
  %12 = load %struct.ath10k_sdio*, %struct.ath10k_sdio** %7, align 8
  %13 = getelementptr inbounds %struct.ath10k_sdio, %struct.ath10k_sdio* %12, i32 0, i32 0
  %14 = load %struct.sdio_func*, %struct.sdio_func** %13, align 8
  store %struct.sdio_func* %14, %struct.sdio_func** %8, align 8
  %15 = load %struct.sdio_func*, %struct.sdio_func** %8, align 8
  %16 = call i32 @sdio_claim_host(%struct.sdio_func* %15)
  %17 = load %struct.sdio_func*, %struct.sdio_func** %8, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @sdio_writel(%struct.sdio_func* %17, i32 %18, i32 %19, i32* %9)
  %21 = load i32, i32* %9, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %3
  %24 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @ath10k_warn(%struct.ath10k* %24, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %26, i32 %27)
  br label %35

29:                                               ; preds = %3
  %30 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %31 = load i32, i32* @ATH10K_DBG_SDIO, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @ath10k_dbg(%struct.ath10k* %30, i32 %31, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %32, i32 %33)
  br label %35

35:                                               ; preds = %29, %23
  %36 = load %struct.sdio_func*, %struct.sdio_func** %8, align 8
  %37 = call i32 @sdio_release_host(%struct.sdio_func* %36)
  %38 = load i32, i32* %9, align 4
  ret i32 %38
}

declare dso_local %struct.ath10k_sdio* @ath10k_sdio_priv(%struct.ath10k*) #1

declare dso_local i32 @sdio_claim_host(%struct.sdio_func*) #1

declare dso_local i32 @sdio_writel(%struct.sdio_func*, i32, i32, i32*) #1

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, i32, i32, i32) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, i32, i32) #1

declare dso_local i32 @sdio_release_host(%struct.sdio_func*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
