; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_mmc_ops.c_mmc_send_cid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_mmc_ops.c_mmc_send_cid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }

@MMC_ALL_SEND_CID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mmc_send_cid(%struct.mmc_host* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mmc_host*, align 8
  %5 = alloca i32*, align 8
  store %struct.mmc_host* %0, %struct.mmc_host** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %7 = call i64 @mmc_host_is_spi(%struct.mmc_host* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = call i32 @mmc_spi_send_cid(%struct.mmc_host* %10, i32* %11)
  store i32 %12, i32* %3, align 4
  br label %18

13:                                               ; preds = %2
  %14 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = load i32, i32* @MMC_ALL_SEND_CID, align 4
  %17 = call i32 @mmc_send_cxd_native(%struct.mmc_host* %14, i32 0, i32* %15, i32 %16)
  store i32 %17, i32* %3, align 4
  br label %18

18:                                               ; preds = %13, %9
  %19 = load i32, i32* %3, align 4
  ret i32 %19
}

declare dso_local i64 @mmc_host_is_spi(%struct.mmc_host*) #1

declare dso_local i32 @mmc_spi_send_cid(%struct.mmc_host*, i32*) #1

declare dso_local i32 @mmc_send_cxd_native(%struct.mmc_host*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
