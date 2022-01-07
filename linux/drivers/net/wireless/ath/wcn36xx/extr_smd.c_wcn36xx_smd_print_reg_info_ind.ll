; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_smd.c_wcn36xx_smd_print_reg_info_ind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_smd.c_wcn36xx_smd_print_reg_info_ind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wcn36xx = type { i32 }
%struct.wcn36xx_hal_print_reg_info_ind = type { i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [37 x i8] c"Corrupted print reg info indication\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@WCN36XX_DBG_HAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"reginfo indication, scenario: 0x%x reason: 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"\090x%x: 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wcn36xx*, i8*, i64)* @wcn36xx_smd_print_reg_info_ind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wcn36xx_smd_print_reg_info_ind(%struct.wcn36xx* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wcn36xx*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.wcn36xx_hal_print_reg_info_ind*, align 8
  %9 = alloca i32, align 4
  store %struct.wcn36xx* %0, %struct.wcn36xx** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.wcn36xx_hal_print_reg_info_ind*
  store %struct.wcn36xx_hal_print_reg_info_ind* %11, %struct.wcn36xx_hal_print_reg_info_ind** %8, align 8
  %12 = load i64, i64* %7, align 8
  %13 = icmp ult i64 %12, 24
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = call i32 @wcn36xx_warn(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @EIO, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %56

18:                                               ; preds = %3
  %19 = load i32, i32* @WCN36XX_DBG_HAL, align 4
  %20 = load %struct.wcn36xx_hal_print_reg_info_ind*, %struct.wcn36xx_hal_print_reg_info_ind** %8, align 8
  %21 = getelementptr inbounds %struct.wcn36xx_hal_print_reg_info_ind, %struct.wcn36xx_hal_print_reg_info_ind* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.wcn36xx_hal_print_reg_info_ind*, %struct.wcn36xx_hal_print_reg_info_ind** %8, align 8
  %24 = getelementptr inbounds %struct.wcn36xx_hal_print_reg_info_ind, %struct.wcn36xx_hal_print_reg_info_ind* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @wcn36xx_dbg(i32 %19, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %22, i32 %25)
  store i32 0, i32* %9, align 4
  br label %27

27:                                               ; preds = %52, %18
  %28 = load i32, i32* %9, align 4
  %29 = load %struct.wcn36xx_hal_print_reg_info_ind*, %struct.wcn36xx_hal_print_reg_info_ind** %8, align 8
  %30 = getelementptr inbounds %struct.wcn36xx_hal_print_reg_info_ind, %struct.wcn36xx_hal_print_reg_info_ind* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %55

33:                                               ; preds = %27
  %34 = load i32, i32* @WCN36XX_DBG_HAL, align 4
  %35 = load %struct.wcn36xx_hal_print_reg_info_ind*, %struct.wcn36xx_hal_print_reg_info_ind** %8, align 8
  %36 = getelementptr inbounds %struct.wcn36xx_hal_print_reg_info_ind, %struct.wcn36xx_hal_print_reg_info_ind* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = load i32, i32* %9, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.wcn36xx_hal_print_reg_info_ind*, %struct.wcn36xx_hal_print_reg_info_ind** %8, align 8
  %44 = getelementptr inbounds %struct.wcn36xx_hal_print_reg_info_ind, %struct.wcn36xx_hal_print_reg_info_ind* %43, i32 0, i32 1
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @wcn36xx_dbg(i32 %34, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %42, i32 %50)
  br label %52

52:                                               ; preds = %33
  %53 = load i32, i32* %9, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %9, align 4
  br label %27

55:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  br label %56

56:                                               ; preds = %55, %14
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i32 @wcn36xx_warn(i8*) #1

declare dso_local i32 @wcn36xx_dbg(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
