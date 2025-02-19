; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_msix.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_msix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt_napi = type { i32, %struct.bnxt_cp_ring_info, %struct.bnxt* }
%struct.bnxt_cp_ring_info = type { i32**, i32, i32 }
%struct.bnxt = type { i32 }

@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @bnxt_msix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_msix(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.bnxt_napi*, align 8
  %6 = alloca %struct.bnxt*, align 8
  %7 = alloca %struct.bnxt_cp_ring_info*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.bnxt_napi*
  store %struct.bnxt_napi* %10, %struct.bnxt_napi** %5, align 8
  %11 = load %struct.bnxt_napi*, %struct.bnxt_napi** %5, align 8
  %12 = getelementptr inbounds %struct.bnxt_napi, %struct.bnxt_napi* %11, i32 0, i32 2
  %13 = load %struct.bnxt*, %struct.bnxt** %12, align 8
  store %struct.bnxt* %13, %struct.bnxt** %6, align 8
  %14 = load %struct.bnxt_napi*, %struct.bnxt_napi** %5, align 8
  %15 = getelementptr inbounds %struct.bnxt_napi, %struct.bnxt_napi* %14, i32 0, i32 1
  store %struct.bnxt_cp_ring_info* %15, %struct.bnxt_cp_ring_info** %7, align 8
  %16 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %7, align 8
  %17 = getelementptr inbounds %struct.bnxt_cp_ring_info, %struct.bnxt_cp_ring_info* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @RING_CMP(i32 %18)
  store i32 %19, i32* %8, align 4
  %20 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %7, align 8
  %21 = getelementptr inbounds %struct.bnxt_cp_ring_info, %struct.bnxt_cp_ring_info* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %21, align 8
  %24 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %7, align 8
  %25 = getelementptr inbounds %struct.bnxt_cp_ring_info, %struct.bnxt_cp_ring_info* %24, i32 0, i32 0
  %26 = load i32**, i32*** %25, align 8
  %27 = load i32, i32* %8, align 4
  %28 = call i64 @CP_RING(i32 %27)
  %29 = getelementptr inbounds i32*, i32** %26, i64 %28
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %8, align 4
  %32 = call i64 @CP_IDX(i32 %31)
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = call i32 @prefetch(i32* %33)
  %35 = load %struct.bnxt_napi*, %struct.bnxt_napi** %5, align 8
  %36 = getelementptr inbounds %struct.bnxt_napi, %struct.bnxt_napi* %35, i32 0, i32 0
  %37 = call i32 @napi_schedule(i32* %36)
  %38 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %38
}

declare dso_local i32 @RING_CMP(i32) #1

declare dso_local i32 @prefetch(i32*) #1

declare dso_local i64 @CP_RING(i32) #1

declare dso_local i64 @CP_IDX(i32) #1

declare dso_local i32 @napi_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
