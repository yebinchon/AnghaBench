; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_winbond-cir.c_wbcir_idle_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_winbond-cir.c_wbcir_idle_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rc_dev = type { %struct.wbcir_data* }
%struct.wbcir_data = type { i64, i64, i64 }

@WBCIR_RXSTATE_INACTIVE = common dso_local global i64 0, align 8
@WBCIR_RXSTATE_ACTIVE = common dso_local global i64 0, align 8
@WBCIR_RX_DISABLE = common dso_local global i32 0, align 4
@WBCIR_REG_SP3_ASCR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rc_dev*, i32)* @wbcir_idle_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wbcir_idle_rx(%struct.rc_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.rc_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.wbcir_data*, align 8
  store %struct.rc_dev* %0, %struct.rc_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.rc_dev*, %struct.rc_dev** %3, align 8
  %7 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %6, i32 0, i32 0
  %8 = load %struct.wbcir_data*, %struct.wbcir_data** %7, align 8
  store %struct.wbcir_data* %8, %struct.wbcir_data** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %21, label %11

11:                                               ; preds = %2
  %12 = load %struct.wbcir_data*, %struct.wbcir_data** %5, align 8
  %13 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @WBCIR_RXSTATE_INACTIVE, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %11
  %18 = load i64, i64* @WBCIR_RXSTATE_ACTIVE, align 8
  %19 = load %struct.wbcir_data*, %struct.wbcir_data** %5, align 8
  %20 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %19, i32 0, i32 0
  store i64 %18, i64* %20, align 8
  br label %21

21:                                               ; preds = %17, %11, %2
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %49

24:                                               ; preds = %21
  %25 = load %struct.wbcir_data*, %struct.wbcir_data** %5, align 8
  %26 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @WBCIR_RXSTATE_INACTIVE, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %49

30:                                               ; preds = %24
  %31 = load i64, i64* @WBCIR_RXSTATE_INACTIVE, align 8
  %32 = load %struct.wbcir_data*, %struct.wbcir_data** %5, align 8
  %33 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  %34 = load %struct.wbcir_data*, %struct.wbcir_data** %5, align 8
  %35 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %30
  %39 = load %struct.wbcir_data*, %struct.wbcir_data** %5, align 8
  %40 = call i32 @wbcir_carrier_report(%struct.wbcir_data* %39)
  br label %41

41:                                               ; preds = %38, %30
  %42 = load i32, i32* @WBCIR_RX_DISABLE, align 4
  %43 = load %struct.wbcir_data*, %struct.wbcir_data** %5, align 8
  %44 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @WBCIR_REG_SP3_ASCR, align 8
  %47 = add nsw i64 %45, %46
  %48 = call i32 @outb(i32 %42, i64 %47)
  br label %49

49:                                               ; preds = %41, %24, %21
  ret void
}

declare dso_local i32 @wbcir_carrier_report(%struct.wbcir_data*) #1

declare dso_local i32 @outb(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
