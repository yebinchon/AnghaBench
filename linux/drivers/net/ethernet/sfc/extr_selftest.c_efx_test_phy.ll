; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_selftest.c_efx_test_phy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_selftest.c_efx_test_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.efx_nic*, i32, i32)* }
%struct.efx_self_tests = type { i32 }

@EPERM = common dso_local global i32 0, align 4
@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"%s phy selftest\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"Failed\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"Passed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efx_nic*, %struct.efx_self_tests*, i32)* @efx_test_phy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efx_test_phy(%struct.efx_nic* %0, %struct.efx_self_tests* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.efx_nic*, align 8
  %6 = alloca %struct.efx_self_tests*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %5, align 8
  store %struct.efx_self_tests* %1, %struct.efx_self_tests** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %10 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %9, i32 0, i32 2
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32 (%struct.efx_nic*, i32, i32)*, i32 (%struct.efx_nic*, i32, i32)** %12, align 8
  %14 = icmp ne i32 (%struct.efx_nic*, i32, i32)* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %52

16:                                               ; preds = %3
  %17 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %18 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %17, i32 0, i32 1
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %21 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %20, i32 0, i32 2
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32 (%struct.efx_nic*, i32, i32)*, i32 (%struct.efx_nic*, i32, i32)** %23, align 8
  %25 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %26 = load %struct.efx_self_tests*, %struct.efx_self_tests** %6, align 8
  %27 = getelementptr inbounds %struct.efx_self_tests, %struct.efx_self_tests* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i32 %24(%struct.efx_nic* %25, i32 %28, i32 %29)
  store i32 %30, i32* %8, align 4
  %31 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %32 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %31, i32 0, i32 1
  %33 = call i32 @mutex_unlock(i32* %32)
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @EPERM, align 4
  %36 = sub nsw i32 0, %35
  %37 = icmp eq i32 %34, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %16
  store i32 0, i32* %8, align 4
  br label %50

39:                                               ; preds = %16
  %40 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %41 = load i32, i32* @drv, align 4
  %42 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %43 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %49 = call i32 @netif_info(%struct.efx_nic* %40, i32 %41, i32 %44, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %48)
  br label %50

50:                                               ; preds = %39, %38
  %51 = load i32, i32* %8, align 4
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %50, %15
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @netif_info(%struct.efx_nic*, i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
