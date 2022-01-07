; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_set_tpa.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_set_tpa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { i32, i32, i32, i32 }

@BNXT_FLAG_TPA = common dso_local global i32 0, align 4
@BNXT_STATE_FW_FATAL_COND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"hwrm vnic set tpa failure rc for vnic %d: %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnxt*, i32)* @bnxt_set_tpa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_set_tpa(%struct.bnxt* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bnxt*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.bnxt* %0, %struct.bnxt** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %13 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @BNXT_FLAG_TPA, align 4
  %16 = and i32 %14, %15
  store i32 %16, i32* %8, align 4
  br label %25

17:                                               ; preds = %2
  %18 = load i32, i32* @BNXT_STATE_FW_FATAL_COND, align 4
  %19 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %20 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %19, i32 0, i32 3
  %21 = call i64 @test_bit(i32 %18, i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %52

24:                                               ; preds = %17
  br label %25

25:                                               ; preds = %24, %11
  store i32 0, i32* %7, align 4
  br label %26

26:                                               ; preds = %48, %25
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %29 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %51

32:                                               ; preds = %26
  %33 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @bnxt_hwrm_vnic_set_tpa(%struct.bnxt* %33, i32 %34, i32 %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %32
  %40 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %41 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @netdev_err(i32 %42, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %43, i32 %44)
  %46 = load i32, i32* %6, align 4
  store i32 %46, i32* %3, align 4
  br label %52

47:                                               ; preds = %32
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %7, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %7, align 4
  br label %26

51:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %51, %39, %23
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @bnxt_hwrm_vnic_set_tpa(%struct.bnxt*, i32, i32) #1

declare dso_local i32 @netdev_err(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
