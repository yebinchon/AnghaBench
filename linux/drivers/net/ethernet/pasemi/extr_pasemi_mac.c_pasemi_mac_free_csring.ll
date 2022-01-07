; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/pasemi/extr_pasemi_mac.c_pasemi_mac_free_csring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/pasemi/extr_pasemi_mac.c_pasemi_mac_free_csring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pasemi_mac_csring = type { i32, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pasemi_mac_csring*)* @pasemi_mac_free_csring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pasemi_mac_free_csring(%struct.pasemi_mac_csring* %0) #0 {
  %2 = alloca %struct.pasemi_mac_csring*, align 8
  store %struct.pasemi_mac_csring* %0, %struct.pasemi_mac_csring** %2, align 8
  %3 = load %struct.pasemi_mac_csring*, %struct.pasemi_mac_csring** %2, align 8
  %4 = getelementptr inbounds %struct.pasemi_mac_csring, %struct.pasemi_mac_csring* %3, i32 0, i32 1
  %5 = call i32 @pasemi_dma_stop_chan(i32* %4)
  %6 = load %struct.pasemi_mac_csring*, %struct.pasemi_mac_csring** %2, align 8
  %7 = getelementptr inbounds %struct.pasemi_mac_csring, %struct.pasemi_mac_csring* %6, i32 0, i32 2
  %8 = load i32*, i32** %7, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @pasemi_dma_free_flag(i32 %10)
  %12 = load %struct.pasemi_mac_csring*, %struct.pasemi_mac_csring** %2, align 8
  %13 = getelementptr inbounds %struct.pasemi_mac_csring, %struct.pasemi_mac_csring* %12, i32 0, i32 2
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @pasemi_dma_free_flag(i32 %16)
  %18 = load %struct.pasemi_mac_csring*, %struct.pasemi_mac_csring** %2, align 8
  %19 = getelementptr inbounds %struct.pasemi_mac_csring, %struct.pasemi_mac_csring* %18, i32 0, i32 1
  %20 = call i32 @pasemi_dma_free_ring(i32* %19)
  %21 = load %struct.pasemi_mac_csring*, %struct.pasemi_mac_csring** %2, align 8
  %22 = getelementptr inbounds %struct.pasemi_mac_csring, %struct.pasemi_mac_csring* %21, i32 0, i32 1
  %23 = call i32 @pasemi_dma_free_chan(i32* %22)
  %24 = load %struct.pasemi_mac_csring*, %struct.pasemi_mac_csring** %2, align 8
  %25 = getelementptr inbounds %struct.pasemi_mac_csring, %struct.pasemi_mac_csring* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @pasemi_dma_free_fun(i32 %26)
  ret void
}

declare dso_local i32 @pasemi_dma_stop_chan(i32*) #1

declare dso_local i32 @pasemi_dma_free_flag(i32) #1

declare dso_local i32 @pasemi_dma_free_ring(i32*) #1

declare dso_local i32 @pasemi_dma_free_chan(i32*) #1

declare dso_local i32 @pasemi_dma_free_fun(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
