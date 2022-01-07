; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_pcie.c_mwifiex_interrupt_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_pcie.c_mwifiex_interrupt_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_adapter = type { i32, i64, i32, i32, i32, i32, %struct.pcie_service_card* }
%struct.pcie_service_card = type { i64, i64 }

@PCIE_HOST_INT_STATUS = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Read register failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Write register failed\0A\00", align 1
@PS_STATE_SLEEP = common dso_local global i64 0, align 8
@PS_STATE_AWAKE = common dso_local global i64 0, align 8
@INTR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"ireg: 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mwifiex_adapter*, i32)* @mwifiex_interrupt_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mwifiex_interrupt_status(%struct.mwifiex_adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.mwifiex_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.pcie_service_card*, align 8
  store %struct.mwifiex_adapter* %0, %struct.mwifiex_adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %9 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %8, i32 0, i32 6
  %10 = load %struct.pcie_service_card*, %struct.pcie_service_card** %9, align 8
  store %struct.pcie_service_card* %10, %struct.pcie_service_card** %7, align 8
  %11 = load %struct.pcie_service_card*, %struct.pcie_service_card** %7, align 8
  %12 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %26

15:                                               ; preds = %2
  %16 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %17 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %16, i32 0, i32 3
  %18 = load i64, i64* %6, align 8
  %19 = call i32 @spin_lock_irqsave(i32* %17, i64 %18)
  %20 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %21 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %20, i32 0, i32 0
  store i32 1, i32* %21, align 8
  %22 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %23 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %22, i32 0, i32 3
  %24 = load i64, i64* %6, align 8
  %25 = call i32 @spin_unlock_irqrestore(i32* %23, i64 %24)
  br label %114

26:                                               ; preds = %2
  %27 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %28 = call i64 @mwifiex_pcie_ok_to_access_hw(%struct.mwifiex_adapter* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  br label %114

31:                                               ; preds = %26
  %32 = load %struct.pcie_service_card*, %struct.pcie_service_card** %7, align 8
  %33 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %31
  %37 = load i32, i32* %4, align 4
  %38 = icmp sge i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @BIT(i32 %40)
  store i32 %41, i32* %5, align 4
  br label %72

42:                                               ; preds = %36, %31
  %43 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %44 = load i32, i32* @PCIE_HOST_INT_STATUS, align 4
  %45 = call i64 @mwifiex_read_reg(%struct.mwifiex_adapter* %43, i32 %44, i32* %5)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %49 = load i32, i32* @ERROR, align 4
  %50 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %48, i32 %49, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %114

51:                                               ; preds = %42
  %52 = load i32, i32* %5, align 4
  %53 = icmp eq i32 %52, -1
  br i1 %53, label %57, label %54

54:                                               ; preds = %51
  %55 = load i32, i32* %5, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %54, %51
  br label %114

58:                                               ; preds = %54
  %59 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %60 = call i32 @mwifiex_pcie_disable_host_int(%struct.mwifiex_adapter* %59)
  %61 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %62 = load i32, i32* @PCIE_HOST_INT_STATUS, align 4
  %63 = load i32, i32* %5, align 4
  %64 = xor i32 %63, -1
  %65 = call i64 @mwifiex_write_reg(%struct.mwifiex_adapter* %61, i32 %62, i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %58
  %68 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %69 = load i32, i32* @ERROR, align 4
  %70 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %68, i32 %69, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %114

71:                                               ; preds = %58
  br label %72

72:                                               ; preds = %71, %39
  %73 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %74 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %73, i32 0, i32 5
  %75 = load i32, i32* %74, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %96, label %77

77:                                               ; preds = %72
  %78 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %79 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @PS_STATE_SLEEP, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %96

83:                                               ; preds = %77
  %84 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %85 = call i64 @mwifiex_pcie_ok_to_access_hw(%struct.mwifiex_adapter* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %96

87:                                               ; preds = %83
  %88 = load i64, i64* @PS_STATE_AWAKE, align 8
  %89 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %90 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %89, i32 0, i32 1
  store i64 %88, i64* %90, align 8
  %91 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %92 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %91, i32 0, i32 2
  store i32 0, i32* %92, align 8
  %93 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %94 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %93, i32 0, i32 4
  %95 = call i32 @del_timer(i32* %94)
  br label %96

96:                                               ; preds = %87, %83, %77, %72
  %97 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %98 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %97, i32 0, i32 3
  %99 = load i64, i64* %6, align 8
  %100 = call i32 @spin_lock_irqsave(i32* %98, i64 %99)
  %101 = load i32, i32* %5, align 4
  %102 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %103 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = or i32 %104, %101
  store i32 %105, i32* %103, align 8
  %106 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %107 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %106, i32 0, i32 3
  %108 = load i64, i64* %6, align 8
  %109 = call i32 @spin_unlock_irqrestore(i32* %107, i64 %108)
  %110 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %111 = load i32, i32* @INTR, align 4
  %112 = load i32, i32* %5, align 4
  %113 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %110, i32 %111, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %112)
  br label %114

114:                                              ; preds = %96, %67, %57, %47, %30, %15
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @mwifiex_pcie_ok_to_access_hw(%struct.mwifiex_adapter*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i64 @mwifiex_read_reg(%struct.mwifiex_adapter*, i32, i32*) #1

declare dso_local i32 @mwifiex_dbg(%struct.mwifiex_adapter*, i32, i8*, ...) #1

declare dso_local i32 @mwifiex_pcie_disable_host_int(%struct.mwifiex_adapter*) #1

declare dso_local i64 @mwifiex_write_reg(%struct.mwifiex_adapter*, i32, i32) #1

declare dso_local i32 @del_timer(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
