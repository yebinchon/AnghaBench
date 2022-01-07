; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/fddi/skfp/extr_hwmtm.c_mac_drv_repair_descr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/fddi/skfp/extr_hwmtm.c_mac_drv_repair_descr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s_smc = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32*, %struct.TYPE_4__*, i32* }
%struct.TYPE_4__ = type { i64 }

@STOPPED = common dso_local global i64 0, align 8
@HWM_E0013 = common dso_local global i32 0, align 4
@HWM_E0013_MSG = common dso_local global i32 0, align 4
@QUEUE_A0 = common dso_local global i64 0, align 8
@B5_XA_DA = common dso_local global i32 0, align 4
@B0_XA_CSR = common dso_local global i32 0, align 4
@CSR_START = common dso_local global i32 0, align 4
@QUEUE_S = common dso_local global i64 0, align 8
@B5_XS_DA = common dso_local global i32 0, align 4
@B0_XS_CSR = common dso_local global i32 0, align 4
@QUEUE_R1 = common dso_local global i64 0, align 8
@B4_R1_DA = common dso_local global i32 0, align 4
@B0_R1_CSR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mac_drv_repair_descr(%struct.s_smc* %0) #0 {
  %2 = alloca %struct.s_smc*, align 8
  %3 = alloca i32, align 4
  store %struct.s_smc* %0, %struct.s_smc** %2, align 8
  %4 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %5 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @STOPPED, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = call i32 (...) @SK_BREAK()
  %12 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %13 = load i32, i32* @HWM_E0013, align 4
  %14 = load i32, i32* @HWM_E0013_MSG, align 4
  %15 = call i32 @SMT_PANIC(%struct.s_smc* %12, i32 %13, i32 %14)
  br label %95

16:                                               ; preds = %1
  %17 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %18 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %19 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  %23 = load i64, i64* @QUEUE_A0, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @repair_txd_ring(%struct.s_smc* %17, i32 %25)
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* @B5_XA_DA, align 4
  %28 = call i32 @ADDR(i32 %27)
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @outpd(i32 %28, i32 %29)
  %31 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %32 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = load i64, i64* @QUEUE_A0, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %16
  %42 = load i32, i32* @B0_XA_CSR, align 4
  %43 = call i32 @ADDR(i32 %42)
  %44 = load i32, i32* @CSR_START, align 4
  %45 = call i32 @outpd(i32 %43, i32 %44)
  br label %46

46:                                               ; preds = %41, %16
  %47 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %48 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %49 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  %53 = load i64, i64* @QUEUE_S, align 8
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @repair_txd_ring(%struct.s_smc* %47, i32 %55)
  store i32 %56, i32* %3, align 4
  %57 = load i32, i32* @B5_XS_DA, align 4
  %58 = call i32 @ADDR(i32 %57)
  %59 = load i32, i32* %3, align 4
  %60 = call i32 @outpd(i32 %58, i32 %59)
  %61 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %62 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = load i64, i64* @QUEUE_S, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %46
  %72 = load i32, i32* @B0_XS_CSR, align 4
  %73 = call i32 @ADDR(i32 %72)
  %74 = load i32, i32* @CSR_START, align 4
  %75 = call i32 @outpd(i32 %73, i32 %74)
  br label %76

76:                                               ; preds = %71, %46
  %77 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %78 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %79 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = load i64, i64* @QUEUE_R1, align 8
  %84 = getelementptr inbounds i32, i32* %82, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @repair_rxd_ring(%struct.s_smc* %77, i32 %85)
  store i32 %86, i32* %3, align 4
  %87 = load i32, i32* @B4_R1_DA, align 4
  %88 = call i32 @ADDR(i32 %87)
  %89 = load i32, i32* %3, align 4
  %90 = call i32 @outpd(i32 %88, i32 %89)
  %91 = load i32, i32* @B0_R1_CSR, align 4
  %92 = call i32 @ADDR(i32 %91)
  %93 = load i32, i32* @CSR_START, align 4
  %94 = call i32 @outpd(i32 %92, i32 %93)
  br label %95

95:                                               ; preds = %76, %10
  ret void
}

declare dso_local i32 @SK_BREAK(...) #1

declare dso_local i32 @SMT_PANIC(%struct.s_smc*, i32, i32) #1

declare dso_local i32 @repair_txd_ring(%struct.s_smc*, i32) #1

declare dso_local i32 @outpd(i32, i32) #1

declare dso_local i32 @ADDR(i32) #1

declare dso_local i32 @repair_rxd_ring(%struct.s_smc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
