; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_trans.c_iwl_trans_pcie_dump_pointers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_trans.c_iwl_trans_pcie_dump_pointers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.iwl_fw_error_dump_fw_mon = type { i8*, i8*, i8*, i8* }

@IWL_DEVICE_FAMILY_AX210 = common dso_local global i64 0, align 8
@DBGC_CUR_DBGBUF_BASE_ADDR_LSB = common dso_local global i32 0, align 4
@DBGC_CUR_DBGBUF_BASE_ADDR_MSB = common dso_local global i32 0, align 4
@DBGC_CUR_DBGBUF_STATUS = common dso_local global i32 0, align 4
@DBGC_DBGBUF_WRAP_AROUND = common dso_local global i32 0, align 4
@MON_BUFF_BASE_ADDR = common dso_local global i32 0, align 4
@MON_BUFF_WRPTR = common dso_local global i32 0, align 4
@MON_BUFF_CYCLE_CNT = common dso_local global i32 0, align 4
@DBGC_CUR_DBGBUF_STATUS_OFFSET_MSK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_trans*, %struct.iwl_fw_error_dump_fw_mon*)* @iwl_trans_pcie_dump_pointers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_trans_pcie_dump_pointers(%struct.iwl_trans* %0, %struct.iwl_fw_error_dump_fw_mon* %1) #0 {
  %3 = alloca %struct.iwl_trans*, align 8
  %4 = alloca %struct.iwl_fw_error_dump_fw_mon*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.iwl_trans* %0, %struct.iwl_trans** %3, align 8
  store %struct.iwl_fw_error_dump_fw_mon* %1, %struct.iwl_fw_error_dump_fw_mon** %4, align 8
  %10 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %11 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %10, i32 0, i32 0
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @IWL_DEVICE_FAMILY_AX210, align 8
  %16 = icmp sge i64 %14, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = load i32, i32* @DBGC_CUR_DBGBUF_BASE_ADDR_LSB, align 4
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* @DBGC_CUR_DBGBUF_BASE_ADDR_MSB, align 4
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* @DBGC_CUR_DBGBUF_STATUS, align 4
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* @DBGC_DBGBUF_WRAP_AROUND, align 4
  store i32 %21, i32* %9, align 4
  br label %55

22:                                               ; preds = %2
  %23 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %24 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = icmp ne %struct.TYPE_4__* %26, null
  br i1 %27, label %28, label %50

28:                                               ; preds = %22
  %29 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %30 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @le32_to_cpu(i32 %34)
  store i32 %35, i32* %7, align 4
  %36 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %37 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @le32_to_cpu(i32 %41)
  store i32 %42, i32* %9, align 4
  %43 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %44 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @le32_to_cpu(i32 %48)
  store i32 %49, i32* %5, align 4
  br label %54

50:                                               ; preds = %22
  %51 = load i32, i32* @MON_BUFF_BASE_ADDR, align 4
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* @MON_BUFF_WRPTR, align 4
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* @MON_BUFF_CYCLE_CNT, align 4
  store i32 %53, i32* %9, align 4
  br label %54

54:                                               ; preds = %50, %28
  br label %55

55:                                               ; preds = %54, %17
  %56 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @iwl_read_prph(%struct.iwl_trans* %56, i32 %57)
  store i32 %58, i32* %8, align 4
  %59 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @iwl_read_prph(%struct.iwl_trans* %59, i32 %60)
  %62 = call i8* @cpu_to_le32(i32 %61)
  %63 = load %struct.iwl_fw_error_dump_fw_mon*, %struct.iwl_fw_error_dump_fw_mon** %4, align 8
  %64 = getelementptr inbounds %struct.iwl_fw_error_dump_fw_mon, %struct.iwl_fw_error_dump_fw_mon* %63, i32 0, i32 3
  store i8* %62, i8** %64, align 8
  %65 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @iwl_read_prph(%struct.iwl_trans* %65, i32 %66)
  %68 = call i8* @cpu_to_le32(i32 %67)
  %69 = load %struct.iwl_fw_error_dump_fw_mon*, %struct.iwl_fw_error_dump_fw_mon** %4, align 8
  %70 = getelementptr inbounds %struct.iwl_fw_error_dump_fw_mon, %struct.iwl_fw_error_dump_fw_mon* %69, i32 0, i32 2
  store i8* %68, i8** %70, align 8
  %71 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %72 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %71, i32 0, i32 0
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @IWL_DEVICE_FAMILY_AX210, align 8
  %77 = icmp sge i64 %75, %76
  br i1 %77, label %78, label %88

78:                                               ; preds = %55
  %79 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %80 = load i32, i32* %6, align 4
  %81 = call i32 @iwl_read_prph(%struct.iwl_trans* %79, i32 %80)
  %82 = call i8* @cpu_to_le32(i32 %81)
  %83 = load %struct.iwl_fw_error_dump_fw_mon*, %struct.iwl_fw_error_dump_fw_mon** %4, align 8
  %84 = getelementptr inbounds %struct.iwl_fw_error_dump_fw_mon, %struct.iwl_fw_error_dump_fw_mon* %83, i32 0, i32 1
  store i8* %82, i8** %84, align 8
  %85 = load i32, i32* @DBGC_CUR_DBGBUF_STATUS_OFFSET_MSK, align 4
  %86 = load i32, i32* %8, align 4
  %87 = and i32 %86, %85
  store i32 %87, i32* %8, align 4
  br label %88

88:                                               ; preds = %78, %55
  %89 = load i32, i32* %8, align 4
  %90 = call i8* @cpu_to_le32(i32 %89)
  %91 = load %struct.iwl_fw_error_dump_fw_mon*, %struct.iwl_fw_error_dump_fw_mon** %4, align 8
  %92 = getelementptr inbounds %struct.iwl_fw_error_dump_fw_mon, %struct.iwl_fw_error_dump_fw_mon* %91, i32 0, i32 0
  store i8* %90, i8** %92, align 8
  ret void
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @iwl_read_prph(%struct.iwl_trans*, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
