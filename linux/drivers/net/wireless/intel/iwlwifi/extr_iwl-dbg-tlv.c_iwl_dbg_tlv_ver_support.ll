; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/extr_iwl-dbg-tlv.c_iwl_dbg_tlv_ver_support.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/extr_iwl-dbg-tlv.c_iwl_dbg_tlv_ver_support.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }
%struct.iwl_ucode_tlv = type { i32, i32* }
%struct.iwl_fw_ini_header = type { i32 }

@IWL_UCODE_TLV_DEBUG_BASE = common dso_local global i64 0, align 8
@dbg_ver_table = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_ucode_tlv*)* @iwl_dbg_tlv_ver_support to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_dbg_tlv_ver_support(%struct.iwl_ucode_tlv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iwl_ucode_tlv*, align 8
  %4 = alloca %struct.iwl_fw_ini_header*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.iwl_ucode_tlv* %0, %struct.iwl_ucode_tlv** %3, align 8
  %8 = load %struct.iwl_ucode_tlv*, %struct.iwl_ucode_tlv** %3, align 8
  %9 = getelementptr inbounds %struct.iwl_ucode_tlv, %struct.iwl_ucode_tlv* %8, i32 0, i32 1
  %10 = load i32*, i32** %9, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  %12 = bitcast i32* %11 to i8*
  %13 = bitcast i8* %12 to %struct.iwl_fw_ini_header*
  store %struct.iwl_fw_ini_header* %13, %struct.iwl_fw_ini_header** %4, align 8
  %14 = load %struct.iwl_ucode_tlv*, %struct.iwl_ucode_tlv** %3, align 8
  %15 = getelementptr inbounds %struct.iwl_ucode_tlv, %struct.iwl_ucode_tlv* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i64 @le32_to_cpu(i32 %16)
  store i64 %17, i64* %5, align 8
  %18 = load i64, i64* %5, align 8
  %19 = load i64, i64* @IWL_UCODE_TLV_DEBUG_BASE, align 8
  %20 = sub i64 %18, %19
  store i64 %20, i64* %6, align 8
  %21 = load %struct.iwl_fw_ini_header*, %struct.iwl_fw_ini_header** %4, align 8
  %22 = getelementptr inbounds %struct.iwl_fw_ini_header, %struct.iwl_fw_ini_header* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @le32_to_cpu(i32 %23)
  store i64 %24, i64* %7, align 8
  %25 = load i64, i64* %7, align 8
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dbg_ver_table, align 8
  %27 = load i64, i64* %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ult i64 %25, %30
  br i1 %31, label %40, label %32

32:                                               ; preds = %1
  %33 = load i64, i64* %7, align 8
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dbg_ver_table, align 8
  %35 = load i64, i64* %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ugt i64 %33, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %32, %1
  store i32 0, i32* %2, align 4
  br label %42

41:                                               ; preds = %32
  store i32 1, i32* %2, align 4
  br label %42

42:                                               ; preds = %41, %40
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i64 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
