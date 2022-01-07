; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_t4_hw.c_cim_intr_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_t4_hw.c_cim_intr_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intr_info = type { i32, i8*, i32, i32 }
%struct.adapter = type { i32 }

@cim_intr_handler.cim_intr_info = internal constant [9 x %struct.intr_info] [%struct.intr_info { i32 146, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i32 0, i32 0), i32 -1, i32 1 }, %struct.intr_info { i32 154, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0), i32 -1, i32 1 }, %struct.intr_info { i32 155, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0), i32 -1, i32 1 }, %struct.intr_info { i32 147, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i32 0, i32 0), i32 -1, i32 1 }, %struct.intr_info { i32 148, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i32 0, i32 0), i32 -1, i32 1 }, %struct.intr_info { i32 132, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i32 0, i32 0), i32 -1, i32 1 }, %struct.intr_info { i32 131, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i32 0, i32 0), i32 -1, i32 1 }, %struct.intr_info { i32 128, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i32 0, i32 0), i32 -1, i32 1 }, %struct.intr_info zeroinitializer], align 16
@.str = private unnamed_addr constant [35 x i8] c"CIM control register prefetch drop\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"CIM OBQ parity error\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"CIM IBQ parity error\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"CIM mailbox uP parity error\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"CIM mailbox host parity error\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"CIM TIEQ outgoing parity error\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"CIM TIEQ incoming parity error\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"CIM TIMER0 interrupt\00", align 1
@cim_intr_handler.cim_upintr_info = internal constant [29 x %struct.intr_info] [%struct.intr_info { i32 143, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i32 0, i32 0), i32 -1, i32 1 }, %struct.intr_info { i32 151, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i32 0, i32 0), i32 -1, i32 1 }, %struct.intr_info { i32 149, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i32 0, i32 0), i32 -1, i32 1 }, %struct.intr_info { i32 152, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i32 0, i32 0), i32 -1, i32 1 }, %struct.intr_info { i32 153, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i32 0, i32 0), i32 -1, i32 1 }, %struct.intr_info { i32 150, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i32 0, i32 0), i32 -1, i32 1 }, %struct.intr_info { i32 142, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.14, i32 0, i32 0), i32 -1, i32 1 }, %struct.intr_info { i32 137, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.15, i32 0, i32 0), i32 -1, i32 1 }, %struct.intr_info { i32 160, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.16, i32 0, i32 0), i32 -1, i32 1 }, %struct.intr_info { i32 139, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.17, i32 0, i32 0), i32 -1, i32 1 }, %struct.intr_info { i32 134, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.18, i32 0, i32 0), i32 -1, i32 1 }, %struct.intr_info { i32 157, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.19, i32 0, i32 0), i32 -1, i32 1 }, %struct.intr_info { i32 140, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.20, i32 0, i32 0), i32 -1, i32 1 }, %struct.intr_info { i32 135, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.21, i32 0, i32 0), i32 -1, i32 1 }, %struct.intr_info { i32 162, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.22, i32 0, i32 0), i32 -1, i32 1 }, %struct.intr_info { i32 158, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.23, i32 0, i32 0), i32 -1, i32 1 }, %struct.intr_info { i32 141, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.24, i32 0, i32 0), i32 -1, i32 1 }, %struct.intr_info { i32 136, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.25, i32 0, i32 0), i32 -1, i32 1 }, %struct.intr_info { i32 163, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.26, i32 0, i32 0), i32 -1, i32 1 }, %struct.intr_info { i32 159, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.27, i32 0, i32 0), i32 -1, i32 1 }, %struct.intr_info { i32 138, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.28, i32 0, i32 0), i32 -1, i32 1 }, %struct.intr_info { i32 133, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.29, i32 0, i32 0), i32 -1, i32 1 }, %struct.intr_info { i32 161, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.30, i32 0, i32 0), i32 -1, i32 1 }, %struct.intr_info { i32 156, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.31, i32 0, i32 0), i32 -1, i32 1 }, %struct.intr_info { i32 145, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.32, i32 0, i32 0), i32 -1, i32 1 }, %struct.intr_info { i32 144, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.33, i32 0, i32 0), i32 -1, i32 1 }, %struct.intr_info { i32 130, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.34, i32 0, i32 0), i32 -1, i32 1 }, %struct.intr_info { i32 129, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.35, i32 0, i32 0), i32 -1, i32 1 }, %struct.intr_info zeroinitializer], align 16
@.str.8 = private unnamed_addr constant [26 x i8] c"CIM reserved space access\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"CIM illegal transaction\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"CIM illegal write\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"CIM illegal read\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"CIM illegal read BE\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"CIM illegal write BE\00", align 1
@.str.14 = private unnamed_addr constant [32 x i8] c"CIM single read from boot space\00", align 1
@.str.15 = private unnamed_addr constant [31 x i8] c"CIM single write to boot space\00", align 1
@.str.16 = private unnamed_addr constant [30 x i8] c"CIM block write to boot space\00", align 1
@.str.17 = private unnamed_addr constant [33 x i8] c"CIM single read from flash space\00", align 1
@.str.18 = private unnamed_addr constant [32 x i8] c"CIM single write to flash space\00", align 1
@.str.19 = private unnamed_addr constant [31 x i8] c"CIM block write to flash space\00", align 1
@.str.20 = private unnamed_addr constant [23 x i8] c"CIM single EEPROM read\00", align 1
@.str.21 = private unnamed_addr constant [24 x i8] c"CIM single EEPROM write\00", align 1
@.str.22 = private unnamed_addr constant [22 x i8] c"CIM block EEPROM read\00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"CIM block EEPROM write\00", align 1
@.str.24 = private unnamed_addr constant [31 x i8] c"CIM single read from CTL space\00", align 1
@.str.25 = private unnamed_addr constant [30 x i8] c"CIM single write to CTL space\00", align 1
@.str.26 = private unnamed_addr constant [30 x i8] c"CIM block read from CTL space\00", align 1
@.str.27 = private unnamed_addr constant [29 x i8] c"CIM block write to CTL space\00", align 1
@.str.28 = private unnamed_addr constant [30 x i8] c"CIM single read from PL space\00", align 1
@.str.29 = private unnamed_addr constant [29 x i8] c"CIM single write to PL space\00", align 1
@.str.30 = private unnamed_addr constant [29 x i8] c"CIM block read from PL space\00", align 1
@.str.31 = private unnamed_addr constant [28 x i8] c"CIM block write to PL space\00", align 1
@.str.32 = private unnamed_addr constant [27 x i8] c"CIM request FIFO overwrite\00", align 1
@.str.33 = private unnamed_addr constant [28 x i8] c"CIM response FIFO overwrite\00", align 1
@.str.34 = private unnamed_addr constant [16 x i8] c"CIM PIF timeout\00", align 1
@.str.35 = private unnamed_addr constant [19 x i8] c"CIM PIF MA timeout\00", align 1
@PCIE_FW_A = common dso_local global i32 0, align 4
@PCIE_FW_ERR_F = common dso_local global i32 0, align 4
@CIM_HOST_INT_CAUSE_A = common dso_local global i32 0, align 4
@PCIE_FW_EVAL_CRASH = common dso_local global i64 0, align 8
@CIM_HOST_UPACC_INT_CAUSE_A = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*)* @cim_intr_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cim_intr_handler(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %6 = load %struct.adapter*, %struct.adapter** %2, align 8
  %7 = load i32, i32* @PCIE_FW_A, align 4
  %8 = call i32 @t4_read_reg(%struct.adapter* %6, i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @PCIE_FW_ERR_F, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load %struct.adapter*, %struct.adapter** %2, align 8
  %15 = call i32 @t4_report_fw_error(%struct.adapter* %14)
  br label %16

16:                                               ; preds = %13, %1
  %17 = load %struct.adapter*, %struct.adapter** %2, align 8
  %18 = load i32, i32* @CIM_HOST_INT_CAUSE_A, align 4
  %19 = call i32 @t4_read_reg(%struct.adapter* %17, i32 %18)
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %3, align 4
  %21 = and i32 %20, 128
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %38

23:                                               ; preds = %16
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @PCIE_FW_ERR_F, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load i32, i32* %4, align 4
  %30 = call i64 @PCIE_FW_EVAL_G(i32 %29)
  %31 = load i64, i64* @PCIE_FW_EVAL_CRASH, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %28, %23
  %34 = load %struct.adapter*, %struct.adapter** %2, align 8
  %35 = load i32, i32* @CIM_HOST_INT_CAUSE_A, align 4
  %36 = call i32 @t4_write_reg(%struct.adapter* %34, i32 %35, i32 128)
  br label %37

37:                                               ; preds = %33, %28
  br label %38

38:                                               ; preds = %37, %16
  %39 = load %struct.adapter*, %struct.adapter** %2, align 8
  %40 = load i32, i32* @CIM_HOST_INT_CAUSE_A, align 4
  %41 = call i32 @t4_handle_intr_status(%struct.adapter* %39, i32 %40, %struct.intr_info* getelementptr inbounds ([9 x %struct.intr_info], [9 x %struct.intr_info]* @cim_intr_handler.cim_intr_info, i64 0, i64 0))
  %42 = load %struct.adapter*, %struct.adapter** %2, align 8
  %43 = load i32, i32* @CIM_HOST_UPACC_INT_CAUSE_A, align 4
  %44 = call i32 @t4_handle_intr_status(%struct.adapter* %42, i32 %43, %struct.intr_info* getelementptr inbounds ([29 x %struct.intr_info], [29 x %struct.intr_info]* @cim_intr_handler.cim_upintr_info, i64 0, i64 0))
  %45 = add nsw i32 %41, %44
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %38
  %49 = load %struct.adapter*, %struct.adapter** %2, align 8
  %50 = call i32 @t4_fatal_err(%struct.adapter* %49)
  br label %51

51:                                               ; preds = %48, %38
  ret void
}

declare dso_local i32 @t4_read_reg(%struct.adapter*, i32) #1

declare dso_local i32 @t4_report_fw_error(%struct.adapter*) #1

declare dso_local i64 @PCIE_FW_EVAL_G(i32) #1

declare dso_local i32 @t4_write_reg(%struct.adapter*, i32, i32) #1

declare dso_local i32 @t4_handle_intr_status(%struct.adapter*, i32, %struct.intr_info*) #1

declare dso_local i32 @t4_fatal_err(%struct.adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
