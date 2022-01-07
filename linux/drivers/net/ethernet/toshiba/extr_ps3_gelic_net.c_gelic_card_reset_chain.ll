; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/toshiba/extr_ps3_gelic_net.c_gelic_card_reset_chain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/toshiba/extr_ps3_gelic_net.c_gelic_card_reset_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gelic_card = type { i32 }
%struct.gelic_descr_chain = type { %struct.gelic_descr*, %struct.gelic_descr* }
%struct.gelic_descr = type { i64, i32, %struct.gelic_descr* }

@GELIC_DESCR_DMA_CARDOWNED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gelic_card*, %struct.gelic_descr_chain*, %struct.gelic_descr*)* @gelic_card_reset_chain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gelic_card_reset_chain(%struct.gelic_card* %0, %struct.gelic_descr_chain* %1, %struct.gelic_descr* %2) #0 {
  %4 = alloca %struct.gelic_card*, align 8
  %5 = alloca %struct.gelic_descr_chain*, align 8
  %6 = alloca %struct.gelic_descr*, align 8
  %7 = alloca %struct.gelic_descr*, align 8
  store %struct.gelic_card* %0, %struct.gelic_card** %4, align 8
  store %struct.gelic_descr_chain* %1, %struct.gelic_descr_chain** %5, align 8
  store %struct.gelic_descr* %2, %struct.gelic_descr** %6, align 8
  %8 = load %struct.gelic_descr*, %struct.gelic_descr** %6, align 8
  store %struct.gelic_descr* %8, %struct.gelic_descr** %7, align 8
  br label %9

9:                                                ; preds = %27, %3
  %10 = load %struct.gelic_descr*, %struct.gelic_descr** %6, align 8
  %11 = load %struct.gelic_descr*, %struct.gelic_descr** %7, align 8
  %12 = getelementptr inbounds %struct.gelic_descr, %struct.gelic_descr* %11, i32 0, i32 2
  %13 = load %struct.gelic_descr*, %struct.gelic_descr** %12, align 8
  %14 = icmp ne %struct.gelic_descr* %10, %13
  br i1 %14, label %15, label %30

15:                                               ; preds = %9
  %16 = load %struct.gelic_descr*, %struct.gelic_descr** %7, align 8
  %17 = load i32, i32* @GELIC_DESCR_DMA_CARDOWNED, align 4
  %18 = call i32 @gelic_descr_set_status(%struct.gelic_descr* %16, i32 %17)
  %19 = load %struct.gelic_descr*, %struct.gelic_descr** %7, align 8
  %20 = getelementptr inbounds %struct.gelic_descr, %struct.gelic_descr* %19, i32 0, i32 2
  %21 = load %struct.gelic_descr*, %struct.gelic_descr** %20, align 8
  %22 = getelementptr inbounds %struct.gelic_descr, %struct.gelic_descr* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i64 @cpu_to_be32(i32 %23)
  %25 = load %struct.gelic_descr*, %struct.gelic_descr** %7, align 8
  %26 = getelementptr inbounds %struct.gelic_descr, %struct.gelic_descr* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  br label %27

27:                                               ; preds = %15
  %28 = load %struct.gelic_descr*, %struct.gelic_descr** %7, align 8
  %29 = getelementptr inbounds %struct.gelic_descr, %struct.gelic_descr* %28, i32 1
  store %struct.gelic_descr* %29, %struct.gelic_descr** %7, align 8
  br label %9

30:                                               ; preds = %9
  %31 = load %struct.gelic_descr*, %struct.gelic_descr** %6, align 8
  %32 = load %struct.gelic_descr_chain*, %struct.gelic_descr_chain** %5, align 8
  %33 = getelementptr inbounds %struct.gelic_descr_chain, %struct.gelic_descr_chain* %32, i32 0, i32 1
  store %struct.gelic_descr* %31, %struct.gelic_descr** %33, align 8
  %34 = load %struct.gelic_descr*, %struct.gelic_descr** %7, align 8
  %35 = getelementptr inbounds %struct.gelic_descr, %struct.gelic_descr* %34, i64 -1
  %36 = load %struct.gelic_descr_chain*, %struct.gelic_descr_chain** %5, align 8
  %37 = getelementptr inbounds %struct.gelic_descr_chain, %struct.gelic_descr_chain* %36, i32 0, i32 0
  store %struct.gelic_descr* %35, %struct.gelic_descr** %37, align 8
  %38 = load %struct.gelic_descr*, %struct.gelic_descr** %7, align 8
  %39 = getelementptr inbounds %struct.gelic_descr, %struct.gelic_descr* %38, i64 -1
  %40 = getelementptr inbounds %struct.gelic_descr, %struct.gelic_descr* %39, i32 0, i32 0
  store i64 0, i64* %40, align 8
  ret void
}

declare dso_local i32 @gelic_descr_set_status(%struct.gelic_descr*, i32) #1

declare dso_local i64 @cpu_to_be32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
