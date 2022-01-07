; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_winbond-cir.c_wbcir_irq_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_winbond-cir.c_wbcir_irq_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wbcir_data = type { i64, i32, i32, i64, i64 }
%struct.pnp_dev = type { i32 }
%struct.ir_raw_event = type { i32, i32 }

@WBCIR_REG_SP3_LSR = common dso_local global i64 0, align 8
@WBCIR_RX_AVAIL = common dso_local global i32 0, align 4
@WBCIR_REG_SP3_RXDATA = common dso_local global i64 0, align 8
@WBCIR_RXSTATE_ERROR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wbcir_data*, %struct.pnp_dev*)* @wbcir_irq_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wbcir_irq_rx(%struct.wbcir_data* %0, %struct.pnp_dev* %1) #0 {
  %3 = alloca %struct.wbcir_data*, align 8
  %4 = alloca %struct.pnp_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ir_raw_event, align 4
  %7 = alloca i32, align 4
  store %struct.wbcir_data* %0, %struct.wbcir_data** %3, align 8
  store %struct.pnp_dev* %1, %struct.pnp_dev** %4, align 8
  %8 = bitcast %struct.ir_raw_event* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %8, i8 0, i64 8, i1 false)
  br label %9

9:                                                ; preds = %61, %31, %2
  %10 = load %struct.wbcir_data*, %struct.wbcir_data** %3, align 8
  %11 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %10, i32 0, i32 4
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @WBCIR_REG_SP3_LSR, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @inb(i64 %14)
  %16 = load i32, i32* @WBCIR_RX_AVAIL, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %66

19:                                               ; preds = %9
  %20 = load %struct.wbcir_data*, %struct.wbcir_data** %3, align 8
  %21 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %20, i32 0, i32 4
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @WBCIR_REG_SP3_RXDATA, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @inb(i64 %24)
  store i32 %25, i32* %5, align 4
  %26 = load %struct.wbcir_data*, %struct.wbcir_data** %3, align 8
  %27 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @WBCIR_RXSTATE_ERROR, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %19
  br label %9

32:                                               ; preds = %19
  %33 = load i32, i32* %5, align 4
  %34 = and i32 %33, 127
  %35 = add nsw i32 %34, 1
  %36 = load %struct.wbcir_data*, %struct.wbcir_data** %3, align 8
  %37 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i32 2, i32 10
  %42 = mul nsw i32 %35, %41
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %5, align 4
  %44 = and i32 %43, 128
  %45 = icmp ne i32 %44, 0
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i32 0, i32 1
  %48 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %6, i32 0, i32 0
  store i32 %47, i32* %48, align 4
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @US_TO_NS(i32 %49)
  %51 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %6, i32 0, i32 1
  store i32 %50, i32* %51, align 4
  %52 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %6, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %32
  %56 = load i32, i32* %7, align 4
  %57 = load %struct.wbcir_data*, %struct.wbcir_data** %3, align 8
  %58 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = add i32 %59, %56
  store i32 %60, i32* %58, align 8
  br label %61

61:                                               ; preds = %55, %32
  %62 = load %struct.wbcir_data*, %struct.wbcir_data** %3, align 8
  %63 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @ir_raw_event_store_with_filter(i32 %64, %struct.ir_raw_event* %6)
  br label %9

66:                                               ; preds = %9
  %67 = load %struct.wbcir_data*, %struct.wbcir_data** %3, align 8
  %68 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @ir_raw_event_handle(i32 %69)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @inb(i64) #2

declare dso_local i32 @US_TO_NS(i32) #2

declare dso_local i32 @ir_raw_event_store_with_filter(i32, %struct.ir_raw_event*) #2

declare dso_local i32 @ir_raw_event_handle(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
