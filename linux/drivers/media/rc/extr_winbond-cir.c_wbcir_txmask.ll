; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_winbond-cir.c_wbcir_txmask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_winbond-cir.c_wbcir_txmask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rc_dev = type { %struct.wbcir_data* }
%struct.wbcir_data = type { i64, i32, i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@WBCIR_TXSTATE_INACTIVE = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@WBCIR_REG_ECEIR_CTS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rc_dev*, i32)* @wbcir_txmask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wbcir_txmask(%struct.rc_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rc_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.wbcir_data*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.rc_dev* %0, %struct.rc_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %10 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %9, i32 0, i32 0
  %11 = load %struct.wbcir_data*, %struct.wbcir_data** %10, align 8
  store %struct.wbcir_data* %11, %struct.wbcir_data** %6, align 8
  %12 = load i32, i32* %5, align 4
  %13 = icmp sgt i32 %12, 15
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 4, i32* %3, align 4
  br label %63

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  switch i32 %16, label %21 [
    i32 1, label %17
    i32 2, label %18
    i32 4, label %19
    i32 8, label %20
  ]

17:                                               ; preds = %15
  store i32 0, i32* %8, align 4
  br label %24

18:                                               ; preds = %15
  store i32 1, i32* %8, align 4
  br label %24

19:                                               ; preds = %15
  store i32 2, i32* %8, align 4
  br label %24

20:                                               ; preds = %15
  store i32 3, i32* %8, align 4
  br label %24

21:                                               ; preds = %15
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %63

24:                                               ; preds = %20, %19, %18, %17
  %25 = load %struct.wbcir_data*, %struct.wbcir_data** %6, align 8
  %26 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %25, i32 0, i32 2
  %27 = load i64, i64* %7, align 8
  %28 = call i32 @spin_lock_irqsave(i32* %26, i64 %27)
  %29 = load %struct.wbcir_data*, %struct.wbcir_data** %6, align 8
  %30 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @WBCIR_TXSTATE_INACTIVE, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %24
  %35 = load %struct.wbcir_data*, %struct.wbcir_data** %6, align 8
  %36 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %35, i32 0, i32 2
  %37 = load i64, i64* %7, align 8
  %38 = call i32 @spin_unlock_irqrestore(i32* %36, i64 %37)
  %39 = load i32, i32* @EBUSY, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %63

41:                                               ; preds = %24
  %42 = load %struct.wbcir_data*, %struct.wbcir_data** %6, align 8
  %43 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %58

47:                                               ; preds = %41
  %48 = load %struct.wbcir_data*, %struct.wbcir_data** %6, align 8
  %49 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @WBCIR_REG_ECEIR_CTS, align 8
  %52 = add nsw i64 %50, %51
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @wbcir_set_bits(i64 %52, i32 %53, i32 12)
  %55 = load i32, i32* %5, align 4
  %56 = load %struct.wbcir_data*, %struct.wbcir_data** %6, align 8
  %57 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 8
  br label %58

58:                                               ; preds = %47, %41
  %59 = load %struct.wbcir_data*, %struct.wbcir_data** %6, align 8
  %60 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %59, i32 0, i32 2
  %61 = load i64, i64* %7, align 8
  %62 = call i32 @spin_unlock_irqrestore(i32* %60, i64 %61)
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %58, %34, %21, %14
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @wbcir_set_bits(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
