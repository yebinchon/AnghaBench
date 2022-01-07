; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_eqs.c_ceq_event_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_eqs.c_ceq_event_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hinic_ceqs = type { %struct.hinic_ceq_cb*, %struct.hinic_hwif* }
%struct.hinic_ceq_cb = type { i64, i32, i32 (i32, i32)* }
%struct.hinic_hwif = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@HINIC_MAX_CEQ_EVENTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Unknown CEQ event, event = %d\0A\00", align 1
@HINIC_EQE_ENABLED = common dso_local global i64 0, align 8
@HINIC_EQE_RUNNING = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"Unhandled CEQ Event %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hinic_ceqs*, i32)* @ceq_event_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ceq_event_handler(%struct.hinic_ceqs* %0, i32 %1) #0 {
  %3 = alloca %struct.hinic_ceqs*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hinic_hwif*, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca %struct.hinic_ceq_cb*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.hinic_ceqs* %0, %struct.hinic_ceqs** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.hinic_ceqs*, %struct.hinic_ceqs** %3, align 8
  %11 = getelementptr inbounds %struct.hinic_ceqs, %struct.hinic_ceqs* %10, i32 0, i32 1
  %12 = load %struct.hinic_hwif*, %struct.hinic_hwif** %11, align 8
  store %struct.hinic_hwif* %12, %struct.hinic_hwif** %5, align 8
  %13 = load %struct.hinic_hwif*, %struct.hinic_hwif** %5, align 8
  %14 = getelementptr inbounds %struct.hinic_hwif, %struct.hinic_hwif* %13, i32 0, i32 0
  %15 = load %struct.pci_dev*, %struct.pci_dev** %14, align 8
  store %struct.pci_dev* %15, %struct.pci_dev** %6, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @CEQE_TYPE(i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @HINIC_MAX_CEQ_EVENTS, align 4
  %20 = icmp uge i32 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %2
  %22 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %23 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %22, i32 0, i32 0
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @dev_err(i32* %23, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %24)
  br label %70

26:                                               ; preds = %2
  %27 = load %struct.hinic_ceqs*, %struct.hinic_ceqs** %3, align 8
  %28 = getelementptr inbounds %struct.hinic_ceqs, %struct.hinic_ceqs* %27, i32 0, i32 0
  %29 = load %struct.hinic_ceq_cb*, %struct.hinic_ceq_cb** %28, align 8
  %30 = load i32, i32* %8, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.hinic_ceq_cb, %struct.hinic_ceq_cb* %29, i64 %31
  store %struct.hinic_ceq_cb* %32, %struct.hinic_ceq_cb** %7, align 8
  %33 = load %struct.hinic_ceq_cb*, %struct.hinic_ceq_cb** %7, align 8
  %34 = getelementptr inbounds %struct.hinic_ceq_cb, %struct.hinic_ceq_cb* %33, i32 0, i32 0
  %35 = load i64, i64* @HINIC_EQE_ENABLED, align 8
  %36 = load i64, i64* @HINIC_EQE_ENABLED, align 8
  %37 = load i64, i64* @HINIC_EQE_RUNNING, align 8
  %38 = or i64 %36, %37
  %39 = call i64 @cmpxchg(i64* %34, i64 %35, i64 %38)
  store i64 %39, i64* %9, align 8
  %40 = load i64, i64* %9, align 8
  %41 = load i64, i64* @HINIC_EQE_ENABLED, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %58

43:                                               ; preds = %26
  %44 = load %struct.hinic_ceq_cb*, %struct.hinic_ceq_cb** %7, align 8
  %45 = getelementptr inbounds %struct.hinic_ceq_cb, %struct.hinic_ceq_cb* %44, i32 0, i32 2
  %46 = load i32 (i32, i32)*, i32 (i32, i32)** %45, align 8
  %47 = icmp ne i32 (i32, i32)* %46, null
  br i1 %47, label %48, label %58

48:                                               ; preds = %43
  %49 = load %struct.hinic_ceq_cb*, %struct.hinic_ceq_cb** %7, align 8
  %50 = getelementptr inbounds %struct.hinic_ceq_cb, %struct.hinic_ceq_cb* %49, i32 0, i32 2
  %51 = load i32 (i32, i32)*, i32 (i32, i32)** %50, align 8
  %52 = load %struct.hinic_ceq_cb*, %struct.hinic_ceq_cb** %7, align 8
  %53 = getelementptr inbounds %struct.hinic_ceq_cb, %struct.hinic_ceq_cb* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @CEQE_DATA(i32 %55)
  %57 = call i32 %51(i32 %54, i32 %56)
  br label %63

58:                                               ; preds = %43, %26
  %59 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %60 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %59, i32 0, i32 0
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @dev_err(i32* %60, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %61)
  br label %63

63:                                               ; preds = %58, %48
  %64 = load i64, i64* @HINIC_EQE_RUNNING, align 8
  %65 = xor i64 %64, -1
  %66 = load %struct.hinic_ceq_cb*, %struct.hinic_ceq_cb** %7, align 8
  %67 = getelementptr inbounds %struct.hinic_ceq_cb, %struct.hinic_ceq_cb* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = and i64 %68, %65
  store i64 %69, i64* %67, align 8
  br label %70

70:                                               ; preds = %63, %21
  ret void
}

declare dso_local i32 @CEQE_TYPE(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i64 @cmpxchg(i64*, i64, i64) #1

declare dso_local i32 @CEQE_DATA(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
