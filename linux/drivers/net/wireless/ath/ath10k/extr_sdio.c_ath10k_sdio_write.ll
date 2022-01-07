; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_sdio.c_ath10k_sdio_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_sdio.c_ath10k_sdio_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.ath10k_sdio = type { %struct.sdio_func* }
%struct.sdio_func = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"failed to write to address 0x%x: %d\0A\00", align 1
@ATH10K_DBG_SDIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"sdio write addr 0x%x buf 0x%p len %zu\0A\00", align 1
@ATH10K_DBG_SDIO_DUMP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"sdio write \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*, i32, i8*, i64)* @ath10k_sdio_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_sdio_write(%struct.ath10k* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.ath10k*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.ath10k_sdio*, align 8
  %10 = alloca %struct.sdio_func*, align 8
  %11 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %13 = call %struct.ath10k_sdio* @ath10k_sdio_priv(%struct.ath10k* %12)
  store %struct.ath10k_sdio* %13, %struct.ath10k_sdio** %9, align 8
  %14 = load %struct.ath10k_sdio*, %struct.ath10k_sdio** %9, align 8
  %15 = getelementptr inbounds %struct.ath10k_sdio, %struct.ath10k_sdio* %14, i32 0, i32 0
  %16 = load %struct.sdio_func*, %struct.sdio_func** %15, align 8
  store %struct.sdio_func* %16, %struct.sdio_func** %10, align 8
  %17 = load %struct.sdio_func*, %struct.sdio_func** %10, align 8
  %18 = call i32 @sdio_claim_host(%struct.sdio_func* %17)
  %19 = load %struct.sdio_func*, %struct.sdio_func** %10, align 8
  %20 = load i32, i32* %6, align 4
  %21 = load i8*, i8** %7, align 8
  %22 = load i64, i64* %8, align 8
  %23 = call i32 @sdio_memcpy_toio(%struct.sdio_func* %19, i32 %20, i8* %21, i64 %22)
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %11, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %4
  %27 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %11, align 4
  %30 = call i32 @ath10k_warn(%struct.ath10k* %27, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %29)
  br label %43

31:                                               ; preds = %4
  %32 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %33 = load i32, i32* @ATH10K_DBG_SDIO, align 4
  %34 = load i32, i32* %6, align 4
  %35 = load i8*, i8** %7, align 8
  %36 = load i64, i64* %8, align 8
  %37 = call i32 @ath10k_dbg(%struct.ath10k* %32, i32 %33, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %34, i8* %35, i64 %36)
  %38 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %39 = load i32, i32* @ATH10K_DBG_SDIO_DUMP, align 4
  %40 = load i8*, i8** %7, align 8
  %41 = load i64, i64* %8, align 8
  %42 = call i32 @ath10k_dbg_dump(%struct.ath10k* %38, i32 %39, i32* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* %40, i64 %41)
  br label %43

43:                                               ; preds = %31, %26
  %44 = load %struct.sdio_func*, %struct.sdio_func** %10, align 8
  %45 = call i32 @sdio_release_host(%struct.sdio_func* %44)
  %46 = load i32, i32* %11, align 4
  ret i32 %46
}

declare dso_local %struct.ath10k_sdio* @ath10k_sdio_priv(%struct.ath10k*) #1

declare dso_local i32 @sdio_claim_host(%struct.sdio_func*) #1

declare dso_local i32 @sdio_memcpy_toio(%struct.sdio_func*, i32, i8*, i64) #1

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, i32, i32) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, i32, i8*, i64) #1

declare dso_local i32 @ath10k_dbg_dump(%struct.ath10k*, i32, i32*, i8*, i8*, i64) #1

declare dso_local i32 @sdio_release_host(%struct.sdio_func*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
