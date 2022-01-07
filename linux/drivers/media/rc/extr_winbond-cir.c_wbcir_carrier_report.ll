; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_winbond-cir.c_wbcir_carrier_report.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_winbond-cir.c_wbcir_carrier_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wbcir_data = type { i64, i64, i32 }
%struct.ir_raw_event = type { i32, i32 }

@WBCIR_REG_ECEIR_CNT_LO = common dso_local global i64 0, align 8
@WBCIR_REG_ECEIR_CNT_HI = common dso_local global i64 0, align 8
@WBCIR_REG_ECEIR_CCTL = common dso_local global i64 0, align 8
@WBCIR_CNTR_R = common dso_local global i32 0, align 4
@WBCIR_CNTR_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wbcir_data*)* @wbcir_carrier_report to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wbcir_carrier_report(%struct.wbcir_data* %0) #0 {
  %2 = alloca %struct.wbcir_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ir_raw_event, align 4
  store %struct.wbcir_data* %0, %struct.wbcir_data** %2, align 8
  %5 = load %struct.wbcir_data*, %struct.wbcir_data** %2, align 8
  %6 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @WBCIR_REG_ECEIR_CNT_LO, align 8
  %9 = add nsw i64 %7, %8
  %10 = call i32 @inb(i64 %9)
  %11 = load %struct.wbcir_data*, %struct.wbcir_data** %2, align 8
  %12 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @WBCIR_REG_ECEIR_CNT_HI, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @inb(i64 %15)
  %17 = shl i32 %16, 8
  %18 = or i32 %10, %17
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %3, align 4
  %20 = icmp ugt i32 %19, 0
  br i1 %20, label %21, label %37

21:                                               ; preds = %1
  %22 = load i32, i32* %3, align 4
  %23 = icmp ult i32 %22, 65535
  br i1 %23, label %24, label %37

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %4, i32 0, i32 0
  store i32 1, i32* %25, align 4
  %26 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %4, i32 0, i32 1
  %27 = load i32, i32* %3, align 4
  %28 = mul i32 %27, 1000000
  %29 = load %struct.wbcir_data*, %struct.wbcir_data** %2, align 8
  %30 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @DIV_ROUND_CLOSEST(i32 %28, i64 %31)
  store i32 %32, i32* %26, align 4
  %33 = load %struct.wbcir_data*, %struct.wbcir_data** %2, align 8
  %34 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @ir_raw_event_store(i32 %35, %struct.ir_raw_event* %4)
  br label %37

37:                                               ; preds = %24, %21, %1
  %38 = load %struct.wbcir_data*, %struct.wbcir_data** %2, align 8
  %39 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %38, i32 0, i32 1
  store i64 0, i64* %39, align 8
  %40 = load %struct.wbcir_data*, %struct.wbcir_data** %2, align 8
  %41 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @WBCIR_REG_ECEIR_CCTL, align 8
  %44 = add nsw i64 %42, %43
  %45 = load i32, i32* @WBCIR_CNTR_R, align 4
  %46 = load i32, i32* @WBCIR_CNTR_EN, align 4
  %47 = load i32, i32* @WBCIR_CNTR_R, align 4
  %48 = or i32 %46, %47
  %49 = call i32 @wbcir_set_bits(i64 %44, i32 %45, i32 %48)
  %50 = load %struct.wbcir_data*, %struct.wbcir_data** %2, align 8
  %51 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @WBCIR_REG_ECEIR_CCTL, align 8
  %54 = add nsw i64 %52, %53
  %55 = load i32, i32* @WBCIR_CNTR_EN, align 4
  %56 = load i32, i32* @WBCIR_CNTR_EN, align 4
  %57 = load i32, i32* @WBCIR_CNTR_R, align 4
  %58 = or i32 %56, %57
  %59 = call i32 @wbcir_set_bits(i64 %54, i32 %55, i32 %58)
  ret void
}

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @DIV_ROUND_CLOSEST(i32, i64) #1

declare dso_local i32 @ir_raw_event_store(i32, %struct.ir_raw_event*) #1

declare dso_local i32 @wbcir_set_bits(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
