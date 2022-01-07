; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_winbond-cir.c_wbcir_set_carrier_report.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_winbond-cir.c_wbcir_set_carrier_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rc_dev = type { %struct.wbcir_data* }
%struct.wbcir_data = type { i32, i32, i64, %struct.TYPE_2__*, i64, i64 }
%struct.TYPE_2__ = type { i32, i64 }

@WBCIR_REG_ECEIR_CCTL = common dso_local global i64 0, align 8
@WBCIR_CNTR_R = common dso_local global i32 0, align 4
@WBCIR_CNTR_EN = common dso_local global i32 0, align 4
@WBCIR_BANK_2 = common dso_local global i32 0, align 4
@WBCIR_REG_SP3_BGDL = common dso_local global i64 0, align 8
@WBCIR_REG_SP3_BGDH = common dso_local global i64 0, align 8
@WBCIR_BANK_7 = common dso_local global i32 0, align 4
@WBCIR_REG_SP3_RCCFG = common dso_local global i64 0, align 8
@WBCIR_RX_T_OV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rc_dev*, i32)* @wbcir_set_carrier_report to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wbcir_set_carrier_report(%struct.rc_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rc_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.wbcir_data*, align 8
  %7 = alloca i64, align 8
  store %struct.rc_dev* %0, %struct.rc_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %9 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %8, i32 0, i32 0
  %10 = load %struct.wbcir_data*, %struct.wbcir_data** %9, align 8
  store %struct.wbcir_data* %10, %struct.wbcir_data** %6, align 8
  %11 = load %struct.wbcir_data*, %struct.wbcir_data** %6, align 8
  %12 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %11, i32 0, i32 1
  %13 = load i64, i64* %7, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.wbcir_data*, %struct.wbcir_data** %6, align 8
  %16 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %2
  %21 = load %struct.wbcir_data*, %struct.wbcir_data** %6, align 8
  %22 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %21, i32 0, i32 1
  %23 = load i64, i64* %7, align 8
  %24 = call i32 @spin_unlock_irqrestore(i32* %22, i64 %23)
  store i32 0, i32* %3, align 4
  br label %111

25:                                               ; preds = %2
  %26 = load %struct.wbcir_data*, %struct.wbcir_data** %6, align 8
  %27 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %26, i32 0, i32 5
  store i64 0, i64* %27, align 8
  %28 = load %struct.wbcir_data*, %struct.wbcir_data** %6, align 8
  %29 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %28, i32 0, i32 4
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @WBCIR_REG_ECEIR_CCTL, align 8
  %32 = add nsw i64 %30, %31
  %33 = load i32, i32* @WBCIR_CNTR_R, align 4
  %34 = load i32, i32* @WBCIR_CNTR_EN, align 4
  %35 = load i32, i32* @WBCIR_CNTR_R, align 4
  %36 = or i32 %34, %35
  %37 = call i32 @wbcir_set_bits(i64 %32, i32 %33, i32 %36)
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %58

40:                                               ; preds = %25
  %41 = load %struct.wbcir_data*, %struct.wbcir_data** %6, align 8
  %42 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %41, i32 0, i32 3
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %58

47:                                               ; preds = %40
  %48 = load %struct.wbcir_data*, %struct.wbcir_data** %6, align 8
  %49 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %48, i32 0, i32 4
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @WBCIR_REG_ECEIR_CCTL, align 8
  %52 = add nsw i64 %50, %51
  %53 = load i32, i32* @WBCIR_CNTR_EN, align 4
  %54 = load i32, i32* @WBCIR_CNTR_EN, align 4
  %55 = load i32, i32* @WBCIR_CNTR_R, align 4
  %56 = or i32 %54, %55
  %57 = call i32 @wbcir_set_bits(i64 %52, i32 %53, i32 %56)
  br label %58

58:                                               ; preds = %47, %40, %25
  %59 = load %struct.wbcir_data*, %struct.wbcir_data** %6, align 8
  %60 = load i32, i32* @WBCIR_BANK_2, align 4
  %61 = call i32 @wbcir_select_bank(%struct.wbcir_data* %59, i32 %60)
  %62 = load i32, i32* %5, align 4
  %63 = icmp ne i32 %62, 0
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i32 2, i32 10
  %66 = call i32 @US_TO_NS(i32 %65)
  %67 = load %struct.wbcir_data*, %struct.wbcir_data** %6, align 8
  %68 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %67, i32 0, i32 3
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  store i32 %66, i32* %70, align 8
  %71 = load i32, i32* %5, align 4
  %72 = icmp ne i32 %71, 0
  %73 = zext i1 %72 to i64
  %74 = select i1 %72, i32 3, i32 15
  %75 = load %struct.wbcir_data*, %struct.wbcir_data** %6, align 8
  %76 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @WBCIR_REG_SP3_BGDL, align 8
  %79 = add nsw i64 %77, %78
  %80 = call i32 @outb(i32 %74, i64 %79)
  %81 = load %struct.wbcir_data*, %struct.wbcir_data** %6, align 8
  %82 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @WBCIR_REG_SP3_BGDH, align 8
  %85 = add nsw i64 %83, %84
  %86 = call i32 @outb(i32 0, i64 %85)
  %87 = load %struct.wbcir_data*, %struct.wbcir_data** %6, align 8
  %88 = load i32, i32* @WBCIR_BANK_7, align 4
  %89 = call i32 @wbcir_select_bank(%struct.wbcir_data* %87, i32 %88)
  %90 = load %struct.wbcir_data*, %struct.wbcir_data** %6, align 8
  %91 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @WBCIR_REG_SP3_RCCFG, align 8
  %94 = add nsw i64 %92, %93
  %95 = load i32, i32* %5, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %58
  %98 = load i32, i32* @WBCIR_RX_T_OV, align 4
  br label %100

99:                                               ; preds = %58
  br label %100

100:                                              ; preds = %99, %97
  %101 = phi i32 [ %98, %97 ], [ 0, %99 ]
  %102 = load i32, i32* @WBCIR_RX_T_OV, align 4
  %103 = call i32 @wbcir_set_bits(i64 %94, i32 %101, i32 %102)
  %104 = load i32, i32* %5, align 4
  %105 = load %struct.wbcir_data*, %struct.wbcir_data** %6, align 8
  %106 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %105, i32 0, i32 0
  store i32 %104, i32* %106, align 8
  %107 = load %struct.wbcir_data*, %struct.wbcir_data** %6, align 8
  %108 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %107, i32 0, i32 1
  %109 = load i64, i64* %7, align 8
  %110 = call i32 @spin_unlock_irqrestore(i32* %108, i64 %109)
  store i32 0, i32* %3, align 4
  br label %111

111:                                              ; preds = %100, %20
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @wbcir_set_bits(i64, i32, i32) #1

declare dso_local i32 @wbcir_select_bank(%struct.wbcir_data*, i32) #1

declare dso_local i32 @US_TO_NS(i32) #1

declare dso_local i32 @outb(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
