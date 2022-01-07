; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_mgmt.c_recv_mgmt_msg_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_mgmt.c_recv_mgmt_msg_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hinic_pf_to_mgmt = type { %struct.hinic_hwif* }
%struct.hinic_hwif = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.hinic_recv_msg = type { i8*, i8*, i8*, i8*, i8*, i64 }

@SEQID = common dso_local global i32 0, align 4
@SEG_LEN = common dso_local global i32 0, align 4
@MAX_MSG_LEN = common dso_local global i32 0, align 4
@SEGMENT_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"recv big mgmt msg\0A\00", align 1
@LAST = common dso_local global i32 0, align 4
@CMD = common dso_local global i32 0, align 4
@MODULE = common dso_local global i32 0, align 4
@ASYNC_MGMT_TO_PF = common dso_local global i32 0, align 4
@MSG_LEN = common dso_local global i32 0, align 4
@MSG_ID = common dso_local global i32 0, align 4
@DIRECTION = common dso_local global i32 0, align 4
@MGMT_RESP = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hinic_pf_to_mgmt*, i32*, %struct.hinic_recv_msg*)* @recv_mgmt_msg_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @recv_mgmt_msg_handler(%struct.hinic_pf_to_mgmt* %0, i32* %1, %struct.hinic_recv_msg* %2) #0 {
  %4 = alloca %struct.hinic_pf_to_mgmt*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.hinic_recv_msg*, align 8
  %7 = alloca %struct.hinic_hwif*, align 8
  %8 = alloca %struct.pci_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store %struct.hinic_pf_to_mgmt* %0, %struct.hinic_pf_to_mgmt** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.hinic_recv_msg* %2, %struct.hinic_recv_msg** %6, align 8
  %12 = load %struct.hinic_pf_to_mgmt*, %struct.hinic_pf_to_mgmt** %4, align 8
  %13 = getelementptr inbounds %struct.hinic_pf_to_mgmt, %struct.hinic_pf_to_mgmt* %12, i32 0, i32 0
  %14 = load %struct.hinic_hwif*, %struct.hinic_hwif** %13, align 8
  store %struct.hinic_hwif* %14, %struct.hinic_hwif** %7, align 8
  %15 = load %struct.hinic_hwif*, %struct.hinic_hwif** %7, align 8
  %16 = getelementptr inbounds %struct.hinic_hwif, %struct.hinic_hwif* %15, i32 0, i32 0
  %17 = load %struct.pci_dev*, %struct.pci_dev** %16, align 8
  store %struct.pci_dev* %17, %struct.pci_dev** %8, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @SEQID, align 4
  %21 = call i8* @HINIC_MSG_HEADER_GET(i32 %19, i32 %20)
  %22 = ptrtoint i8* %21 to i32
  store i32 %22, i32* %9, align 4
  %23 = load i32*, i32** %5, align 8
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @SEG_LEN, align 4
  %26 = call i8* @HINIC_MSG_HEADER_GET(i32 %24, i32 %25)
  %27 = ptrtoint i8* %26 to i32
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @MAX_MSG_LEN, align 4
  %30 = load i32, i32* @SEGMENT_LEN, align 4
  %31 = sdiv i32 %29, %30
  %32 = icmp sge i32 %28, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %3
  %34 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %35 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %34, i32 0, i32 0
  %36 = call i32 @dev_err(i32* %35, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %102

37:                                               ; preds = %3
  %38 = load i32*, i32** %5, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 4
  store i32* %39, i32** %11, align 8
  %40 = load %struct.hinic_recv_msg*, %struct.hinic_recv_msg** %6, align 8
  %41 = getelementptr inbounds %struct.hinic_recv_msg, %struct.hinic_recv_msg* %40, i32 0, i32 5
  %42 = load i64, i64* %41, align 8
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* @SEGMENT_LEN, align 4
  %45 = mul nsw i32 %43, %44
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %42, %46
  %48 = load i32*, i32** %11, align 8
  %49 = load i32, i32* %10, align 4
  %50 = call i32 @memcpy(i64 %47, i32* %48, i32 %49)
  %51 = load i32*, i32** %5, align 8
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @LAST, align 4
  %54 = call i8* @HINIC_MSG_HEADER_GET(i32 %52, i32 %53)
  %55 = icmp ne i8* %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %37
  br label %102

57:                                               ; preds = %37
  %58 = load i32*, i32** %5, align 8
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @CMD, align 4
  %61 = call i8* @HINIC_MSG_HEADER_GET(i32 %59, i32 %60)
  %62 = load %struct.hinic_recv_msg*, %struct.hinic_recv_msg** %6, align 8
  %63 = getelementptr inbounds %struct.hinic_recv_msg, %struct.hinic_recv_msg* %62, i32 0, i32 4
  store i8* %61, i8** %63, align 8
  %64 = load i32*, i32** %5, align 8
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @MODULE, align 4
  %67 = call i8* @HINIC_MSG_HEADER_GET(i32 %65, i32 %66)
  %68 = load %struct.hinic_recv_msg*, %struct.hinic_recv_msg** %6, align 8
  %69 = getelementptr inbounds %struct.hinic_recv_msg, %struct.hinic_recv_msg* %68, i32 0, i32 3
  store i8* %67, i8** %69, align 8
  %70 = load i32*, i32** %5, align 8
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @ASYNC_MGMT_TO_PF, align 4
  %73 = call i8* @HINIC_MSG_HEADER_GET(i32 %71, i32 %72)
  %74 = load %struct.hinic_recv_msg*, %struct.hinic_recv_msg** %6, align 8
  %75 = getelementptr inbounds %struct.hinic_recv_msg, %struct.hinic_recv_msg* %74, i32 0, i32 2
  store i8* %73, i8** %75, align 8
  %76 = load i32*, i32** %5, align 8
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @MSG_LEN, align 4
  %79 = call i8* @HINIC_MSG_HEADER_GET(i32 %77, i32 %78)
  %80 = load %struct.hinic_recv_msg*, %struct.hinic_recv_msg** %6, align 8
  %81 = getelementptr inbounds %struct.hinic_recv_msg, %struct.hinic_recv_msg* %80, i32 0, i32 1
  store i8* %79, i8** %81, align 8
  %82 = load i32*, i32** %5, align 8
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @MSG_ID, align 4
  %85 = call i8* @HINIC_MSG_HEADER_GET(i32 %83, i32 %84)
  %86 = load %struct.hinic_recv_msg*, %struct.hinic_recv_msg** %6, align 8
  %87 = getelementptr inbounds %struct.hinic_recv_msg, %struct.hinic_recv_msg* %86, i32 0, i32 0
  store i8* %85, i8** %87, align 8
  %88 = load i32*, i32** %5, align 8
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @DIRECTION, align 4
  %91 = call i8* @HINIC_MSG_HEADER_GET(i32 %89, i32 %90)
  %92 = load i8*, i8** @MGMT_RESP, align 8
  %93 = icmp eq i8* %91, %92
  br i1 %93, label %94, label %98

94:                                               ; preds = %57
  %95 = load %struct.hinic_pf_to_mgmt*, %struct.hinic_pf_to_mgmt** %4, align 8
  %96 = load %struct.hinic_recv_msg*, %struct.hinic_recv_msg** %6, align 8
  %97 = call i32 @mgmt_resp_msg_handler(%struct.hinic_pf_to_mgmt* %95, %struct.hinic_recv_msg* %96)
  br label %102

98:                                               ; preds = %57
  %99 = load %struct.hinic_pf_to_mgmt*, %struct.hinic_pf_to_mgmt** %4, align 8
  %100 = load %struct.hinic_recv_msg*, %struct.hinic_recv_msg** %6, align 8
  %101 = call i32 @mgmt_recv_msg_handler(%struct.hinic_pf_to_mgmt* %99, %struct.hinic_recv_msg* %100)
  br label %102

102:                                              ; preds = %33, %56, %98, %94
  ret void
}

declare dso_local i8* @HINIC_MSG_HEADER_GET(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @memcpy(i64, i32*, i32) #1

declare dso_local i32 @mgmt_resp_msg_handler(%struct.hinic_pf_to_mgmt*, %struct.hinic_recv_msg*) #1

declare dso_local i32 @mgmt_recv_msg_handler(%struct.hinic_pf_to_mgmt*, %struct.hinic_recv_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
