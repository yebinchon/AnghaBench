; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_sdio.c_ath6kl_sdio_bmi_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_sdio.c_ath6kl_sdio_bmi_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath6kl = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@HIF_RD_SYNC_BYTE_INC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Unable to read the bmi data from the device: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath6kl*, i32*, i32)* @ath6kl_sdio_bmi_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath6kl_sdio_bmi_read(%struct.ath6kl* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath6kl*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ath6kl* %0, %struct.ath6kl** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp sge i32 %10, 4
  br i1 %11, label %12, label %20

12:                                               ; preds = %3
  %13 = load %struct.ath6kl*, %struct.ath6kl** %5, align 8
  %14 = call i32 @ath6kl_bmi_get_rx_lkahd(%struct.ath6kl* %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = load i32, i32* %8, align 4
  store i32 %18, i32* %4, align 4
  br label %38

19:                                               ; preds = %12
  br label %20

20:                                               ; preds = %19, %3
  %21 = load %struct.ath6kl*, %struct.ath6kl** %5, align 8
  %22 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %9, align 4
  %25 = load %struct.ath6kl*, %struct.ath6kl** %5, align 8
  %26 = load i32, i32* %9, align 4
  %27 = load i32*, i32** %6, align 8
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @HIF_RD_SYNC_BYTE_INC, align 4
  %30 = call i32 @ath6kl_sdio_read_write_sync(%struct.ath6kl* %25, i32 %26, i32* %27, i32 %28, i32 %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %20
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @ath6kl_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* %8, align 4
  store i32 %36, i32* %4, align 4
  br label %38

37:                                               ; preds = %20
  store i32 0, i32* %4, align 4
  br label %38

38:                                               ; preds = %37, %33, %17
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i32 @ath6kl_bmi_get_rx_lkahd(%struct.ath6kl*) #1

declare dso_local i32 @ath6kl_sdio_read_write_sync(%struct.ath6kl*, i32, i32*, i32, i32) #1

declare dso_local i32 @ath6kl_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
