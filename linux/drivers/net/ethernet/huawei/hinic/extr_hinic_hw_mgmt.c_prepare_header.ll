; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_mgmt.c_prepare_header.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_mgmt.c_prepare_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hinic_pf_to_mgmt = type { %struct.hinic_hwif* }
%struct.hinic_hwif = type { i32 }

@MSG_LEN = common dso_local global i32 0, align 4
@MODULE = common dso_local global i32 0, align 4
@SEGMENT_LEN = common dso_local global i32 0, align 4
@SEG_LEN = common dso_local global i32 0, align 4
@NO_ACK = common dso_local global i32 0, align 4
@ASYNC_MGMT_TO_PF = common dso_local global i32 0, align 4
@SEQID = common dso_local global i32 0, align 4
@LAST_SEGMENT = common dso_local global i32 0, align 4
@LAST = common dso_local global i32 0, align 4
@DIRECTION = common dso_local global i32 0, align 4
@CMD = common dso_local global i32 0, align 4
@PCI_INTF = common dso_local global i32 0, align 4
@PF_IDX = common dso_local global i32 0, align 4
@MSG_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hinic_pf_to_mgmt*, i32, i32, i32, i32, i32, i32)* @prepare_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prepare_header(%struct.hinic_pf_to_mgmt* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.hinic_pf_to_mgmt*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.hinic_hwif*, align 8
  store %struct.hinic_pf_to_mgmt* %0, %struct.hinic_pf_to_mgmt** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %16 = load %struct.hinic_pf_to_mgmt*, %struct.hinic_pf_to_mgmt** %8, align 8
  %17 = getelementptr inbounds %struct.hinic_pf_to_mgmt, %struct.hinic_pf_to_mgmt* %16, i32 0, i32 0
  %18 = load %struct.hinic_hwif*, %struct.hinic_hwif** %17, align 8
  store %struct.hinic_hwif* %18, %struct.hinic_hwif** %15, align 8
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @MSG_LEN, align 4
  %21 = call i32 @HINIC_MSG_HEADER_SET(i32 %19, i32 %20)
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* @MODULE, align 4
  %24 = call i32 @HINIC_MSG_HEADER_SET(i32 %22, i32 %23)
  %25 = or i32 %21, %24
  %26 = load i32, i32* @SEGMENT_LEN, align 4
  %27 = load i32, i32* @SEG_LEN, align 4
  %28 = call i32 @HINIC_MSG_HEADER_SET(i32 %26, i32 %27)
  %29 = or i32 %25, %28
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* @NO_ACK, align 4
  %32 = call i32 @HINIC_MSG_HEADER_SET(i32 %30, i32 %31)
  %33 = or i32 %29, %32
  %34 = load i32, i32* @ASYNC_MGMT_TO_PF, align 4
  %35 = call i32 @HINIC_MSG_HEADER_SET(i32 0, i32 %34)
  %36 = or i32 %33, %35
  %37 = load i32, i32* @SEQID, align 4
  %38 = call i32 @HINIC_MSG_HEADER_SET(i32 0, i32 %37)
  %39 = or i32 %36, %38
  %40 = load i32, i32* @LAST_SEGMENT, align 4
  %41 = load i32, i32* @LAST, align 4
  %42 = call i32 @HINIC_MSG_HEADER_SET(i32 %40, i32 %41)
  %43 = or i32 %39, %42
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* @DIRECTION, align 4
  %46 = call i32 @HINIC_MSG_HEADER_SET(i32 %44, i32 %45)
  %47 = or i32 %43, %46
  %48 = load i32, i32* %13, align 4
  %49 = load i32, i32* @CMD, align 4
  %50 = call i32 @HINIC_MSG_HEADER_SET(i32 %48, i32 %49)
  %51 = or i32 %47, %50
  %52 = load %struct.hinic_hwif*, %struct.hinic_hwif** %15, align 8
  %53 = call i32 @HINIC_HWIF_PCI_INTF(%struct.hinic_hwif* %52)
  %54 = load i32, i32* @PCI_INTF, align 4
  %55 = call i32 @HINIC_MSG_HEADER_SET(i32 %53, i32 %54)
  %56 = or i32 %51, %55
  %57 = load %struct.hinic_hwif*, %struct.hinic_hwif** %15, align 8
  %58 = call i32 @HINIC_HWIF_PF_IDX(%struct.hinic_hwif* %57)
  %59 = load i32, i32* @PF_IDX, align 4
  %60 = call i32 @HINIC_MSG_HEADER_SET(i32 %58, i32 %59)
  %61 = or i32 %56, %60
  %62 = load i32, i32* %14, align 4
  %63 = load i32, i32* @MSG_ID, align 4
  %64 = call i32 @HINIC_MSG_HEADER_SET(i32 %62, i32 %63)
  %65 = or i32 %61, %64
  ret i32 %65
}

declare dso_local i32 @HINIC_MSG_HEADER_SET(i32, i32) #1

declare dso_local i32 @HINIC_HWIF_PCI_INTF(%struct.hinic_hwif*) #1

declare dso_local i32 @HINIC_HWIF_PF_IDX(%struct.hinic_hwif*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
