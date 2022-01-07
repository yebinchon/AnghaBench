; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_aic.c_ar9003_aic_find_index.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_aic.c_ar9003_aic_find_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ATH_AIC_MAX_AIC_LIN_TABLE = common dso_local global i64 0, align 8
@aic_lin_table = common dso_local global i64* null, align 8
@ATH_AIC_MAX_COM_ATT_DB_TABLE = common dso_local global i64 0, align 8
@com_att_db_table = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i64)* @ar9003_aic_find_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ar9003_aic_find_index(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i64 %1, i64* %4, align 8
  store i64 -1, i64* %5, align 8
  %6 = load i32, i32* %3, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %27

8:                                                ; preds = %2
  %9 = load i64, i64* @ATH_AIC_MAX_AIC_LIN_TABLE, align 8
  %10 = sub i64 %9, 1
  store i64 %10, i64* %5, align 8
  br label %11

11:                                               ; preds = %23, %8
  %12 = load i64, i64* %5, align 8
  %13 = icmp uge i64 %12, 0
  br i1 %13, label %14, label %26

14:                                               ; preds = %11
  %15 = load i64*, i64** @aic_lin_table, align 8
  %16 = load i64, i64* %5, align 8
  %17 = getelementptr inbounds i64, i64* %15, i64 %16
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* %4, align 8
  %20 = icmp uge i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  br label %26

22:                                               ; preds = %14
  br label %23

23:                                               ; preds = %22
  %24 = load i64, i64* %5, align 8
  %25 = add i64 %24, -1
  store i64 %25, i64* %5, align 8
  br label %11

26:                                               ; preds = %21, %11
  br label %56

27:                                               ; preds = %2
  %28 = load i32, i32* %3, align 4
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %30, label %55

30:                                               ; preds = %27
  store i64 0, i64* %5, align 8
  br label %31

31:                                               ; preds = %46, %30
  %32 = load i64, i64* %5, align 8
  %33 = load i64, i64* @ATH_AIC_MAX_COM_ATT_DB_TABLE, align 8
  %34 = icmp ult i64 %32, %33
  br i1 %34, label %35, label %49

35:                                               ; preds = %31
  %36 = load i64*, i64** @com_att_db_table, align 8
  %37 = load i64, i64* %5, align 8
  %38 = getelementptr inbounds i64, i64* %36, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %4, align 8
  %41 = icmp ugt i64 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %35
  %43 = load i64, i64* %5, align 8
  %44 = add i64 %43, -1
  store i64 %44, i64* %5, align 8
  br label %49

45:                                               ; preds = %35
  br label %46

46:                                               ; preds = %45
  %47 = load i64, i64* %5, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %5, align 8
  br label %31

49:                                               ; preds = %42, %31
  %50 = load i64, i64* %5, align 8
  %51 = load i64, i64* @ATH_AIC_MAX_COM_ATT_DB_TABLE, align 8
  %52 = icmp uge i64 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  store i64 -1, i64* %5, align 8
  br label %54

54:                                               ; preds = %53, %49
  br label %55

55:                                               ; preds = %54, %27
  br label %56

56:                                               ; preds = %55, %26
  %57 = load i64, i64* %5, align 8
  ret i64 %57
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
