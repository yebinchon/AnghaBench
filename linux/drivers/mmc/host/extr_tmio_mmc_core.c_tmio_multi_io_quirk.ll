; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_tmio_mmc_core.c_tmio_multi_io_quirk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_tmio_mmc_core.c_tmio_multi_io_quirk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_card = type { i32 }
%struct.tmio_mmc_host = type { i32 (%struct.mmc_card.0*, i32, i32)* }
%struct.mmc_card.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_card*, i32, i32)* @tmio_multi_io_quirk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tmio_multi_io_quirk(%struct.mmc_card* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mmc_card*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.tmio_mmc_host*, align 8
  store %struct.mmc_card* %0, %struct.mmc_card** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.mmc_card*, %struct.mmc_card** %5, align 8
  %10 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.tmio_mmc_host* @mmc_priv(i32 %11)
  store %struct.tmio_mmc_host* %12, %struct.tmio_mmc_host** %8, align 8
  %13 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %8, align 8
  %14 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %13, i32 0, i32 0
  %15 = load i32 (%struct.mmc_card.0*, i32, i32)*, i32 (%struct.mmc_card.0*, i32, i32)** %14, align 8
  %16 = icmp ne i32 (%struct.mmc_card.0*, i32, i32)* %15, null
  br i1 %16, label %17, label %26

17:                                               ; preds = %3
  %18 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %8, align 8
  %19 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %18, i32 0, i32 0
  %20 = load i32 (%struct.mmc_card.0*, i32, i32)*, i32 (%struct.mmc_card.0*, i32, i32)** %19, align 8
  %21 = load %struct.mmc_card*, %struct.mmc_card** %5, align 8
  %22 = bitcast %struct.mmc_card* %21 to %struct.mmc_card.0*
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i32 %20(%struct.mmc_card.0* %22, i32 %23, i32 %24)
  store i32 %25, i32* %4, align 4
  br label %28

26:                                               ; preds = %3
  %27 = load i32, i32* %7, align 4
  store i32 %27, i32* %4, align 4
  br label %28

28:                                               ; preds = %26, %17
  %29 = load i32, i32* %4, align 4
  ret i32 %29
}

declare dso_local %struct.tmio_mmc_host* @mmc_priv(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
