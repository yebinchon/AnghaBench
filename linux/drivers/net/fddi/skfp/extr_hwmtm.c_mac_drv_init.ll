; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/fddi/skfp/extr_hwmtm.c_mac_drv_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/fddi/skfp/extr_hwmtm.c_mac_drv_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s_smc = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__, %union.s_fp_descr* }
%struct.TYPE_4__ = type { i32*, i32* }
%union.s_fp_descr = type { i32 }

@HWM_E0001 = common dso_local global i32 0, align 4
@HWM_E0001_MSG = common dso_local global i32 0, align 4
@HWM_E0002 = common dso_local global i32 0, align 4
@HWM_E0002_MSG = common dso_local global i32 0, align 4
@RXD_TXD_COUNT = common dso_local global i64 0, align 8
@MAX_MBUF = common dso_local global i32 0, align 4
@mb_start = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mac_drv_init(%struct.s_smc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.s_smc*, align 8
  store %struct.s_smc* %0, %struct.s_smc** %3, align 8
  %4 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %5 = load i32, i32* @HWM_E0001, align 4
  %6 = load i32, i32* @HWM_E0001_MSG, align 4
  %7 = call i32 @SMT_PANIC(%struct.s_smc* %4, i32 %5, i32 %6)
  %8 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %9 = load i32, i32* @HWM_E0002, align 4
  %10 = load i32, i32* @HWM_E0002_MSG, align 4
  %11 = call i32 @SMT_PANIC(%struct.s_smc* %8, i32 %9, i32 %10)
  %12 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %13 = load i64, i64* @RXD_TXD_COUNT, align 8
  %14 = add nsw i64 %13, 1
  %15 = trunc i64 %14 to i32
  %16 = sext i32 %15 to i64
  %17 = mul i64 %16, 4
  %18 = trunc i64 %17 to i32
  %19 = call i64 @mac_drv_get_desc_mem(%struct.s_smc* %12, i32 %18)
  %20 = inttoptr i64 %19 to %union.s_fp_descr*
  %21 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %22 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  store %union.s_fp_descr* %20, %union.s_fp_descr** %24, align 8
  %25 = icmp ne %union.s_fp_descr* %20, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %40

27:                                               ; preds = %1
  %28 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %29 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %36 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  store i32* %34, i32** %39, align 8
  store i32 0, i32* %2, align 4
  br label %40

40:                                               ; preds = %27, %26
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @SMT_PANIC(%struct.s_smc*, i32, i32) #1

declare dso_local i64 @mac_drv_get_desc_mem(%struct.s_smc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
