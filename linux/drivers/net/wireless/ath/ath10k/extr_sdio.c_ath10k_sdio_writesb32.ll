; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_sdio.c_ath10k_sdio_writesb32.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_sdio.c_ath10k_sdio_writesb32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.ath10k_sdio = type { %struct.sdio_func* }
%struct.sdio_func = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"failed to write value 0x%x to fixed sb address 0x%x: %d\0A\00", align 1
@ATH10K_DBG_SDIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"sdio writesb32 addr 0x%x val 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*, i32, i32)* @ath10k_sdio_writesb32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_sdio_writesb32(%struct.ath10k* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath10k*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ath10k_sdio*, align 8
  %9 = alloca %struct.sdio_func*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %13 = call %struct.ath10k_sdio* @ath10k_sdio_priv(%struct.ath10k* %12)
  store %struct.ath10k_sdio* %13, %struct.ath10k_sdio** %8, align 8
  %14 = load %struct.ath10k_sdio*, %struct.ath10k_sdio** %8, align 8
  %15 = getelementptr inbounds %struct.ath10k_sdio, %struct.ath10k_sdio* %14, i32 0, i32 0
  %16 = load %struct.sdio_func*, %struct.sdio_func** %15, align 8
  store %struct.sdio_func* %16, %struct.sdio_func** %9, align 8
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call i32* @kzalloc(i32 4, i32 %17)
  store i32* %18, i32** %10, align 8
  %19 = load i32*, i32** %10, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %54

24:                                               ; preds = %3
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @cpu_to_le32(i32 %25)
  %27 = load i32*, i32** %10, align 8
  store i32 %26, i32* %27, align 4
  %28 = load %struct.sdio_func*, %struct.sdio_func** %9, align 8
  %29 = call i32 @sdio_claim_host(%struct.sdio_func* %28)
  %30 = load %struct.sdio_func*, %struct.sdio_func** %9, align 8
  %31 = load i32, i32* %6, align 4
  %32 = load i32*, i32** %10, align 8
  %33 = call i32 @sdio_writesb(%struct.sdio_func* %30, i32 %31, i32* %32, i32 4)
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %24
  %37 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* %11, align 4
  %41 = call i32 @ath10k_warn(%struct.ath10k* %37, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %39, i32 %40)
  br label %48

42:                                               ; preds = %24
  %43 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %44 = load i32, i32* @ATH10K_DBG_SDIO, align 4
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @ath10k_dbg(%struct.ath10k* %43, i32 %44, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %45, i32 %46)
  br label %48

48:                                               ; preds = %42, %36
  %49 = load %struct.sdio_func*, %struct.sdio_func** %9, align 8
  %50 = call i32 @sdio_release_host(%struct.sdio_func* %49)
  %51 = load i32*, i32** %10, align 8
  %52 = call i32 @kfree(i32* %51)
  %53 = load i32, i32* %11, align 4
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %48, %21
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local %struct.ath10k_sdio* @ath10k_sdio_priv(%struct.ath10k*) #1

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @sdio_claim_host(%struct.sdio_func*) #1

declare dso_local i32 @sdio_writesb(%struct.sdio_func*, i32, i32*, i32) #1

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, i32, i32, i32) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, i32, i32) #1

declare dso_local i32 @sdio_release_host(%struct.sdio_func*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
