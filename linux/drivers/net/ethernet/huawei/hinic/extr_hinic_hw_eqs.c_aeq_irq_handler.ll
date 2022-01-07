; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_eqs.c_aeq_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_eqs.c_aeq_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hinic_eq = type { i32, i32, i32 }
%struct.hinic_aeqs = type { %struct.hinic_hw_event_cb*, %struct.hinic_hwif* }
%struct.hinic_hw_event_cb = type { i64, i32, i32 (i32, i32, i32)* }
%struct.hinic_hwif = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.hinic_aeq_elem = type { i32, i32 }

@WRAPPED = common dso_local global i32 0, align 4
@TYPE = common dso_local global i32 0, align 4
@HINIC_MAX_AEQ_EVENTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Unknown AEQ Event %d\0A\00", align 1
@SRC = common dso_local global i32 0, align 4
@SIZE = common dso_local global i32 0, align 4
@HINIC_EQE_ENABLED = common dso_local global i64 0, align 8
@HINIC_EQE_RUNNING = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"Unhandled AEQ Event %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hinic_eq*)* @aeq_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aeq_irq_handler(%struct.hinic_eq* %0) #0 {
  %2 = alloca %struct.hinic_eq*, align 8
  %3 = alloca %struct.hinic_aeqs*, align 8
  %4 = alloca %struct.hinic_hwif*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca %struct.hinic_aeq_elem*, align 8
  %7 = alloca %struct.hinic_hw_event_cb*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.hinic_eq* %0, %struct.hinic_eq** %2, align 8
  %13 = load %struct.hinic_eq*, %struct.hinic_eq** %2, align 8
  %14 = call %struct.hinic_aeqs* @aeq_to_aeqs(%struct.hinic_eq* %13)
  store %struct.hinic_aeqs* %14, %struct.hinic_aeqs** %3, align 8
  %15 = load %struct.hinic_aeqs*, %struct.hinic_aeqs** %3, align 8
  %16 = getelementptr inbounds %struct.hinic_aeqs, %struct.hinic_aeqs* %15, i32 0, i32 1
  %17 = load %struct.hinic_hwif*, %struct.hinic_hwif** %16, align 8
  store %struct.hinic_hwif* %17, %struct.hinic_hwif** %4, align 8
  %18 = load %struct.hinic_hwif*, %struct.hinic_hwif** %4, align 8
  %19 = getelementptr inbounds %struct.hinic_hwif, %struct.hinic_hwif* %18, i32 0, i32 0
  %20 = load %struct.pci_dev*, %struct.pci_dev** %19, align 8
  store %struct.pci_dev* %20, %struct.pci_dev** %5, align 8
  store i32 0, i32* %11, align 4
  br label %21

21:                                               ; preds = %132, %1
  %22 = load i32, i32* %11, align 4
  %23 = load %struct.hinic_eq*, %struct.hinic_eq** %2, align 8
  %24 = getelementptr inbounds %struct.hinic_eq, %struct.hinic_eq* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %135

27:                                               ; preds = %21
  %28 = load %struct.hinic_eq*, %struct.hinic_eq** %2, align 8
  %29 = call %struct.hinic_aeq_elem* @GET_CURR_AEQ_ELEM(%struct.hinic_eq* %28)
  store %struct.hinic_aeq_elem* %29, %struct.hinic_aeq_elem** %6, align 8
  %30 = load %struct.hinic_aeq_elem*, %struct.hinic_aeq_elem** %6, align 8
  %31 = getelementptr inbounds %struct.hinic_aeq_elem, %struct.hinic_aeq_elem* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @be32_to_cpu(i32 %32)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* @WRAPPED, align 4
  %36 = call i32 @HINIC_EQ_ELEM_DESC_GET(i32 %34, i32 %35)
  %37 = load %struct.hinic_eq*, %struct.hinic_eq** %2, align 8
  %38 = getelementptr inbounds %struct.hinic_eq, %struct.hinic_eq* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp eq i32 %36, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %27
  br label %135

42:                                               ; preds = %27
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* @TYPE, align 4
  %45 = call i32 @HINIC_EQ_ELEM_DESC_GET(i32 %43, i32 %44)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @HINIC_MAX_AEQ_EVENTS, align 4
  %48 = icmp uge i32 %46, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %42
  %50 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %51 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %50, i32 0, i32 0
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @dev_err(i32* %51, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %52)
  br label %135

54:                                               ; preds = %42
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* @SRC, align 4
  %57 = call i32 @HINIC_EQ_ELEM_DESC_GET(i32 %55, i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %108, label %59

59:                                               ; preds = %54
  %60 = load %struct.hinic_aeqs*, %struct.hinic_aeqs** %3, align 8
  %61 = getelementptr inbounds %struct.hinic_aeqs, %struct.hinic_aeqs* %60, i32 0, i32 0
  %62 = load %struct.hinic_hw_event_cb*, %struct.hinic_hw_event_cb** %61, align 8
  %63 = load i32, i32* %8, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds %struct.hinic_hw_event_cb, %struct.hinic_hw_event_cb* %62, i64 %64
  store %struct.hinic_hw_event_cb* %65, %struct.hinic_hw_event_cb** %7, align 8
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* @SIZE, align 4
  %68 = call i32 @HINIC_EQ_ELEM_DESC_GET(i32 %66, i32 %67)
  store i32 %68, i32* %12, align 4
  %69 = load %struct.hinic_hw_event_cb*, %struct.hinic_hw_event_cb** %7, align 8
  %70 = getelementptr inbounds %struct.hinic_hw_event_cb, %struct.hinic_hw_event_cb* %69, i32 0, i32 0
  %71 = load i64, i64* @HINIC_EQE_ENABLED, align 8
  %72 = load i64, i64* @HINIC_EQE_ENABLED, align 8
  %73 = load i64, i64* @HINIC_EQE_RUNNING, align 8
  %74 = or i64 %72, %73
  %75 = call i64 @cmpxchg(i64* %70, i64 %71, i64 %74)
  store i64 %75, i64* %9, align 8
  %76 = load i64, i64* %9, align 8
  %77 = load i64, i64* @HINIC_EQE_ENABLED, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %96

79:                                               ; preds = %59
  %80 = load %struct.hinic_hw_event_cb*, %struct.hinic_hw_event_cb** %7, align 8
  %81 = getelementptr inbounds %struct.hinic_hw_event_cb, %struct.hinic_hw_event_cb* %80, i32 0, i32 2
  %82 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %81, align 8
  %83 = icmp ne i32 (i32, i32, i32)* %82, null
  br i1 %83, label %84, label %96

84:                                               ; preds = %79
  %85 = load %struct.hinic_hw_event_cb*, %struct.hinic_hw_event_cb** %7, align 8
  %86 = getelementptr inbounds %struct.hinic_hw_event_cb, %struct.hinic_hw_event_cb* %85, i32 0, i32 2
  %87 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %86, align 8
  %88 = load %struct.hinic_hw_event_cb*, %struct.hinic_hw_event_cb** %7, align 8
  %89 = getelementptr inbounds %struct.hinic_hw_event_cb, %struct.hinic_hw_event_cb* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.hinic_aeq_elem*, %struct.hinic_aeq_elem** %6, align 8
  %92 = getelementptr inbounds %struct.hinic_aeq_elem, %struct.hinic_aeq_elem* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %12, align 4
  %95 = call i32 %87(i32 %90, i32 %93, i32 %94)
  br label %101

96:                                               ; preds = %79, %59
  %97 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %98 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %97, i32 0, i32 0
  %99 = load i32, i32* %8, align 4
  %100 = call i32 @dev_err(i32* %98, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %99)
  br label %101

101:                                              ; preds = %96, %84
  %102 = load i64, i64* @HINIC_EQE_RUNNING, align 8
  %103 = xor i64 %102, -1
  %104 = load %struct.hinic_hw_event_cb*, %struct.hinic_hw_event_cb** %7, align 8
  %105 = getelementptr inbounds %struct.hinic_hw_event_cb, %struct.hinic_hw_event_cb* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = and i64 %106, %103
  store i64 %107, i64* %105, align 8
  br label %108

108:                                              ; preds = %101, %54
  %109 = load %struct.hinic_eq*, %struct.hinic_eq** %2, align 8
  %110 = getelementptr inbounds %struct.hinic_eq, %struct.hinic_eq* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %110, align 4
  %113 = load %struct.hinic_eq*, %struct.hinic_eq** %2, align 8
  %114 = getelementptr inbounds %struct.hinic_eq, %struct.hinic_eq* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.hinic_eq*, %struct.hinic_eq** %2, align 8
  %117 = getelementptr inbounds %struct.hinic_eq, %struct.hinic_eq* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = icmp eq i32 %115, %118
  br i1 %119, label %120, label %131

120:                                              ; preds = %108
  %121 = load %struct.hinic_eq*, %struct.hinic_eq** %2, align 8
  %122 = getelementptr inbounds %struct.hinic_eq, %struct.hinic_eq* %121, i32 0, i32 2
  store i32 0, i32* %122, align 4
  %123 = load %struct.hinic_eq*, %struct.hinic_eq** %2, align 8
  %124 = getelementptr inbounds %struct.hinic_eq, %struct.hinic_eq* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = icmp ne i32 %125, 0
  %127 = xor i1 %126, true
  %128 = zext i1 %127 to i32
  %129 = load %struct.hinic_eq*, %struct.hinic_eq** %2, align 8
  %130 = getelementptr inbounds %struct.hinic_eq, %struct.hinic_eq* %129, i32 0, i32 1
  store i32 %128, i32* %130, align 4
  br label %131

131:                                              ; preds = %120, %108
  br label %132

132:                                              ; preds = %131
  %133 = load i32, i32* %11, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %11, align 4
  br label %21

135:                                              ; preds = %49, %41, %21
  ret void
}

declare dso_local %struct.hinic_aeqs* @aeq_to_aeqs(%struct.hinic_eq*) #1

declare dso_local %struct.hinic_aeq_elem* @GET_CURR_AEQ_ELEM(%struct.hinic_eq*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @HINIC_EQ_ELEM_DESC_GET(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i64 @cmpxchg(i64*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
