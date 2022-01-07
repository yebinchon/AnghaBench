; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_smd.c_wcn36xx_smd_tx_compl_ind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_smd.c_wcn36xx_smd_tx_compl_ind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wcn36xx = type { i32 }
%struct.wcn36xx_hal_tx_compl_ind_msg = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"Bad TX complete indication\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wcn36xx*, i8*, i64)* @wcn36xx_smd_tx_compl_ind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wcn36xx_smd_tx_compl_ind(%struct.wcn36xx* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wcn36xx*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.wcn36xx_hal_tx_compl_ind_msg*, align 8
  store %struct.wcn36xx* %0, %struct.wcn36xx** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.wcn36xx_hal_tx_compl_ind_msg*
  store %struct.wcn36xx_hal_tx_compl_ind_msg* %10, %struct.wcn36xx_hal_tx_compl_ind_msg** %8, align 8
  %11 = load i64, i64* %7, align 8
  %12 = icmp ne i64 %11, 4
  br i1 %12, label %13, label %17

13:                                               ; preds = %3
  %14 = call i32 @wcn36xx_warn(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @EIO, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %23

17:                                               ; preds = %3
  %18 = load %struct.wcn36xx*, %struct.wcn36xx** %5, align 8
  %19 = load %struct.wcn36xx_hal_tx_compl_ind_msg*, %struct.wcn36xx_hal_tx_compl_ind_msg** %8, align 8
  %20 = getelementptr inbounds %struct.wcn36xx_hal_tx_compl_ind_msg, %struct.wcn36xx_hal_tx_compl_ind_msg* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @wcn36xx_dxe_tx_ack_ind(%struct.wcn36xx* %18, i32 %21)
  store i32 0, i32* %4, align 4
  br label %23

23:                                               ; preds = %17, %13
  %24 = load i32, i32* %4, align 4
  ret i32 %24
}

declare dso_local i32 @wcn36xx_warn(i8*) #1

declare dso_local i32 @wcn36xx_dxe_tx_ack_ind(%struct.wcn36xx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
