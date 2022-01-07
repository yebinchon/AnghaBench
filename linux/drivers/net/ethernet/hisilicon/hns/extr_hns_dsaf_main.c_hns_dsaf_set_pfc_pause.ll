; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_main.c_hns_dsaf_set_pfc_pause.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_main.c_hns_dsaf_set_pfc_pause.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsaf_device = type { i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"dsaf v1 can not close pfc!\0A\00", align 1
@DSAF_PAUSE_CFG_REG = common dso_local global i64 0, align 8
@DSAF_PFC_PAUSE_RX_EN_B = common dso_local global i32 0, align 4
@DSAF_PFC_PAUSE_TX_EN_B = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dsaf_device*, i32, i32, i32)* @hns_dsaf_set_pfc_pause to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hns_dsaf_set_pfc_pause(%struct.dsaf_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.dsaf_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dsaf_device* %0, %struct.dsaf_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load %struct.dsaf_device*, %struct.dsaf_device** %5, align 8
  %10 = getelementptr inbounds %struct.dsaf_device, %struct.dsaf_device* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @AE_IS_VER1(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %26

14:                                               ; preds = %4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %17, %14
  %21 = load %struct.dsaf_device*, %struct.dsaf_device** %5, align 8
  %22 = getelementptr inbounds %struct.dsaf_device, %struct.dsaf_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @dev_err(i32 %23, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %20, %17
  br label %53

26:                                               ; preds = %4
  %27 = load %struct.dsaf_device*, %struct.dsaf_device** %5, align 8
  %28 = load i64, i64* @DSAF_PAUSE_CFG_REG, align 8
  %29 = load i32, i32* %6, align 4
  %30 = mul nsw i32 %29, 4
  %31 = sext i32 %30 to i64
  %32 = add nsw i64 %28, %31
  %33 = load i32, i32* @DSAF_PFC_PAUSE_RX_EN_B, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = call i32 @dsaf_set_dev_bit(%struct.dsaf_device* %27, i64 %32, i32 %33, i32 %38)
  %40 = load %struct.dsaf_device*, %struct.dsaf_device** %5, align 8
  %41 = load i64, i64* @DSAF_PAUSE_CFG_REG, align 8
  %42 = load i32, i32* %6, align 4
  %43 = mul nsw i32 %42, 4
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %41, %44
  %46 = load i32, i32* @DSAF_PFC_PAUSE_TX_EN_B, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  %52 = call i32 @dsaf_set_dev_bit(%struct.dsaf_device* %40, i64 %45, i32 %46, i32 %51)
  br label %53

53:                                               ; preds = %26, %25
  ret void
}

declare dso_local i64 @AE_IS_VER1(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @dsaf_set_dev_bit(%struct.dsaf_device*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
