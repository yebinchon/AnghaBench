; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_winbond-cir.c_wbcir_txcarrier.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_winbond-cir.c_wbcir_txcarrier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rc_dev = type { %struct.wbcir_data* }
%struct.wbcir_data = type { i64, i32, i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@WBCIR_TXSTATE_INACTIVE = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@WBCIR_BANK_7 = common dso_local global i32 0, align 4
@WBCIR_REG_SP3_IRTXMC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rc_dev*, i32)* @wbcir_txcarrier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wbcir_txcarrier(%struct.rc_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rc_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.wbcir_data*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.rc_dev* %0, %struct.rc_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %11 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %10, i32 0, i32 0
  %12 = load %struct.wbcir_data*, %struct.wbcir_data** %11, align 8
  store %struct.wbcir_data* %12, %struct.wbcir_data** %6, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @DIV_ROUND_CLOSEST(i32 %13, i32 1000)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp slt i32 %15, 30
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* %9, align 4
  %19 = icmp sgt i32 %18, 60
  br i1 %19, label %20, label %23

20:                                               ; preds = %17, %2
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %80

23:                                               ; preds = %17
  %24 = load i32, i32* %9, align 4
  switch i32 %24, label %33 [
    i32 58, label %25
    i32 59, label %25
    i32 60, label %25
    i32 57, label %30
  ]

25:                                               ; preds = %23, %23, %23
  %26 = load i32, i32* %9, align 4
  %27 = sub nsw i32 %26, 58
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %9, align 4
  %29 = mul nsw i32 %28, 1000
  store i32 %29, i32* %9, align 4
  br label %38

30:                                               ; preds = %23
  %31 = load i32, i32* %9, align 4
  %32 = sub nsw i32 %31, 27
  store i32 %32, i32* %8, align 4
  store i32 56900, i32* %9, align 4
  br label %38

33:                                               ; preds = %23
  %34 = load i32, i32* %9, align 4
  %35 = sub nsw i32 %34, 27
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %9, align 4
  %37 = mul nsw i32 %36, 1000
  store i32 %37, i32* %9, align 4
  br label %38

38:                                               ; preds = %33, %30, %25
  %39 = load %struct.wbcir_data*, %struct.wbcir_data** %6, align 8
  %40 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %39, i32 0, i32 2
  %41 = load i64, i64* %7, align 8
  %42 = call i32 @spin_lock_irqsave(i32* %40, i64 %41)
  %43 = load %struct.wbcir_data*, %struct.wbcir_data** %6, align 8
  %44 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @WBCIR_TXSTATE_INACTIVE, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %55

48:                                               ; preds = %38
  %49 = load %struct.wbcir_data*, %struct.wbcir_data** %6, align 8
  %50 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %49, i32 0, i32 2
  %51 = load i64, i64* %7, align 8
  %52 = call i32 @spin_unlock_irqrestore(i32* %50, i64 %51)
  %53 = load i32, i32* @EBUSY, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %80

55:                                               ; preds = %38
  %56 = load %struct.wbcir_data*, %struct.wbcir_data** %6, align 8
  %57 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %9, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %61, label %75

61:                                               ; preds = %55
  %62 = load %struct.wbcir_data*, %struct.wbcir_data** %6, align 8
  %63 = load i32, i32* @WBCIR_BANK_7, align 4
  %64 = call i32 @wbcir_select_bank(%struct.wbcir_data* %62, i32 %63)
  %65 = load %struct.wbcir_data*, %struct.wbcir_data** %6, align 8
  %66 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @WBCIR_REG_SP3_IRTXMC, align 8
  %69 = add nsw i64 %67, %68
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @wbcir_set_bits(i64 %69, i32 %70, i32 31)
  %72 = load i32, i32* %9, align 4
  %73 = load %struct.wbcir_data*, %struct.wbcir_data** %6, align 8
  %74 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 8
  br label %75

75:                                               ; preds = %61, %55
  %76 = load %struct.wbcir_data*, %struct.wbcir_data** %6, align 8
  %77 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %76, i32 0, i32 2
  %78 = load i64, i64* %7, align 8
  %79 = call i32 @spin_unlock_irqrestore(i32* %77, i64 %78)
  store i32 0, i32* %3, align 4
  br label %80

80:                                               ; preds = %75, %48, %20
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i32 @DIV_ROUND_CLOSEST(i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @wbcir_select_bank(%struct.wbcir_data*, i32) #1

declare dso_local i32 @wbcir_set_bits(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
