; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_cavium.c_check_switch_errors.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_cavium.c_check_switch_errors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cvm_mmc_host = type { i32, i64 }

@MIO_EMM_SWITCH_ERR0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Switch power class error\0A\00", align 1
@MIO_EMM_SWITCH_ERR1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Switch hs timing error\0A\00", align 1
@MIO_EMM_SWITCH_ERR2 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"Switch bus width error\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cvm_mmc_host*)* @check_switch_errors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_switch_errors(%struct.cvm_mmc_host* %0) #0 {
  %2 = alloca %struct.cvm_mmc_host*, align 8
  %3 = alloca i32, align 4
  store %struct.cvm_mmc_host* %0, %struct.cvm_mmc_host** %2, align 8
  %4 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %2, align 8
  %5 = getelementptr inbounds %struct.cvm_mmc_host, %struct.cvm_mmc_host* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %2, align 8
  %8 = call i64 @MIO_EMM_SWITCH(%struct.cvm_mmc_host* %7)
  %9 = add nsw i64 %6, %8
  %10 = call i32 @readq(i64 %9)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @MIO_EMM_SWITCH_ERR0, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %2, align 8
  %17 = getelementptr inbounds %struct.cvm_mmc_host, %struct.cvm_mmc_host* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @dev_err(i32 %18, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %15, %1
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @MIO_EMM_SWITCH_ERR1, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %2, align 8
  %27 = getelementptr inbounds %struct.cvm_mmc_host, %struct.cvm_mmc_host* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @dev_err(i32 %28, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %30

30:                                               ; preds = %25, %20
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @MIO_EMM_SWITCH_ERR2, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %2, align 8
  %37 = getelementptr inbounds %struct.cvm_mmc_host, %struct.cvm_mmc_host* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @dev_err(i32 %38, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %40

40:                                               ; preds = %35, %30
  ret void
}

declare dso_local i32 @readq(i64) #1

declare dso_local i64 @MIO_EMM_SWITCH(%struct.cvm_mmc_host*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
