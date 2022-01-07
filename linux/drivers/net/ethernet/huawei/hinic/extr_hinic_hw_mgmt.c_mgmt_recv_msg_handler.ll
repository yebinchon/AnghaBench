; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_mgmt.c_mgmt_recv_msg_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_mgmt.c_mgmt_recv_msg_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hinic_pf_to_mgmt = type { %struct.hinic_mgmt_cb*, %struct.hinic_hwif* }
%struct.hinic_mgmt_cb = type { i64, i32, i32 (i32, i32, i32, i32, i32*, i32*)* }
%struct.hinic_hwif = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.hinic_recv_msg = type { i64, i32, i32, i32, i32, i32, i32* }

@HINIC_MOD_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"Unknown MGMT MSG module = %d\0A\00", align 1
@HINIC_MGMT_CB_ENABLED = common dso_local global i64 0, align 8
@HINIC_MGMT_CB_RUNNING = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"No MGMT msg handler, mod = %d\0A\00", align 1
@MGMT_RESP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hinic_pf_to_mgmt*, %struct.hinic_recv_msg*)* @mgmt_recv_msg_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mgmt_recv_msg_handler(%struct.hinic_pf_to_mgmt* %0, %struct.hinic_recv_msg* %1) #0 {
  %3 = alloca %struct.hinic_pf_to_mgmt*, align 8
  %4 = alloca %struct.hinic_recv_msg*, align 8
  %5 = alloca %struct.hinic_hwif*, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.hinic_mgmt_cb*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.hinic_pf_to_mgmt* %0, %struct.hinic_pf_to_mgmt** %3, align 8
  store %struct.hinic_recv_msg* %1, %struct.hinic_recv_msg** %4, align 8
  %11 = load %struct.hinic_pf_to_mgmt*, %struct.hinic_pf_to_mgmt** %3, align 8
  %12 = getelementptr inbounds %struct.hinic_pf_to_mgmt, %struct.hinic_pf_to_mgmt* %11, i32 0, i32 1
  %13 = load %struct.hinic_hwif*, %struct.hinic_hwif** %12, align 8
  store %struct.hinic_hwif* %13, %struct.hinic_hwif** %5, align 8
  %14 = load %struct.hinic_hwif*, %struct.hinic_hwif** %5, align 8
  %15 = getelementptr inbounds %struct.hinic_hwif, %struct.hinic_hwif* %14, i32 0, i32 0
  %16 = load %struct.pci_dev*, %struct.pci_dev** %15, align 8
  store %struct.pci_dev* %16, %struct.pci_dev** %6, align 8
  %17 = load %struct.hinic_recv_msg*, %struct.hinic_recv_msg** %4, align 8
  %18 = getelementptr inbounds %struct.hinic_recv_msg, %struct.hinic_recv_msg* %17, i32 0, i32 6
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %7, align 8
  store i32 0, i32* %10, align 4
  %20 = load %struct.hinic_recv_msg*, %struct.hinic_recv_msg** %4, align 8
  %21 = getelementptr inbounds %struct.hinic_recv_msg, %struct.hinic_recv_msg* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @HINIC_MOD_MAX, align 8
  %24 = icmp uge i64 %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %2
  %26 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %27 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %26, i32 0, i32 0
  %28 = load %struct.hinic_recv_msg*, %struct.hinic_recv_msg** %4, align 8
  %29 = getelementptr inbounds %struct.hinic_recv_msg, %struct.hinic_recv_msg* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @dev_err(i32* %27, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %30)
  br label %106

32:                                               ; preds = %2
  %33 = load %struct.hinic_pf_to_mgmt*, %struct.hinic_pf_to_mgmt** %3, align 8
  %34 = getelementptr inbounds %struct.hinic_pf_to_mgmt, %struct.hinic_pf_to_mgmt* %33, i32 0, i32 0
  %35 = load %struct.hinic_mgmt_cb*, %struct.hinic_mgmt_cb** %34, align 8
  %36 = load %struct.hinic_recv_msg*, %struct.hinic_recv_msg** %4, align 8
  %37 = getelementptr inbounds %struct.hinic_recv_msg, %struct.hinic_recv_msg* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds %struct.hinic_mgmt_cb, %struct.hinic_mgmt_cb* %35, i64 %38
  store %struct.hinic_mgmt_cb* %39, %struct.hinic_mgmt_cb** %8, align 8
  %40 = load %struct.hinic_mgmt_cb*, %struct.hinic_mgmt_cb** %8, align 8
  %41 = getelementptr inbounds %struct.hinic_mgmt_cb, %struct.hinic_mgmt_cb* %40, i32 0, i32 0
  %42 = load i64, i64* @HINIC_MGMT_CB_ENABLED, align 8
  %43 = load i64, i64* @HINIC_MGMT_CB_ENABLED, align 8
  %44 = load i64, i64* @HINIC_MGMT_CB_RUNNING, align 8
  %45 = or i64 %43, %44
  %46 = call i64 @cmpxchg(i64* %41, i64 %42, i64 %45)
  store i64 %46, i64* %9, align 8
  %47 = load i64, i64* %9, align 8
  %48 = load i64, i64* @HINIC_MGMT_CB_ENABLED, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %73

50:                                               ; preds = %32
  %51 = load %struct.hinic_mgmt_cb*, %struct.hinic_mgmt_cb** %8, align 8
  %52 = getelementptr inbounds %struct.hinic_mgmt_cb, %struct.hinic_mgmt_cb* %51, i32 0, i32 2
  %53 = load i32 (i32, i32, i32, i32, i32*, i32*)*, i32 (i32, i32, i32, i32, i32*, i32*)** %52, align 8
  %54 = icmp ne i32 (i32, i32, i32, i32, i32*, i32*)* %53, null
  br i1 %54, label %55, label %73

55:                                               ; preds = %50
  %56 = load %struct.hinic_mgmt_cb*, %struct.hinic_mgmt_cb** %8, align 8
  %57 = getelementptr inbounds %struct.hinic_mgmt_cb, %struct.hinic_mgmt_cb* %56, i32 0, i32 2
  %58 = load i32 (i32, i32, i32, i32, i32*, i32*)*, i32 (i32, i32, i32, i32, i32*, i32*)** %57, align 8
  %59 = load %struct.hinic_mgmt_cb*, %struct.hinic_mgmt_cb** %8, align 8
  %60 = getelementptr inbounds %struct.hinic_mgmt_cb, %struct.hinic_mgmt_cb* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.hinic_recv_msg*, %struct.hinic_recv_msg** %4, align 8
  %63 = getelementptr inbounds %struct.hinic_recv_msg, %struct.hinic_recv_msg* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.hinic_recv_msg*, %struct.hinic_recv_msg** %4, align 8
  %66 = getelementptr inbounds %struct.hinic_recv_msg, %struct.hinic_recv_msg* %65, i32 0, i32 5
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.hinic_recv_msg*, %struct.hinic_recv_msg** %4, align 8
  %69 = getelementptr inbounds %struct.hinic_recv_msg, %struct.hinic_recv_msg* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  %71 = load i32*, i32** %7, align 8
  %72 = call i32 %58(i32 %61, i32 %64, i32 %67, i32 %70, i32* %71, i32* %10)
  br label %80

73:                                               ; preds = %50, %32
  %74 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %75 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %74, i32 0, i32 0
  %76 = load %struct.hinic_recv_msg*, %struct.hinic_recv_msg** %4, align 8
  %77 = getelementptr inbounds %struct.hinic_recv_msg, %struct.hinic_recv_msg* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @dev_err(i32* %75, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i64 %78)
  br label %80

80:                                               ; preds = %73, %55
  %81 = load i64, i64* @HINIC_MGMT_CB_RUNNING, align 8
  %82 = xor i64 %81, -1
  %83 = load %struct.hinic_mgmt_cb*, %struct.hinic_mgmt_cb** %8, align 8
  %84 = getelementptr inbounds %struct.hinic_mgmt_cb, %struct.hinic_mgmt_cb* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = and i64 %85, %82
  store i64 %86, i64* %84, align 8
  %87 = load %struct.hinic_recv_msg*, %struct.hinic_recv_msg** %4, align 8
  %88 = getelementptr inbounds %struct.hinic_recv_msg, %struct.hinic_recv_msg* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 8
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %106, label %91

91:                                               ; preds = %80
  %92 = load %struct.hinic_pf_to_mgmt*, %struct.hinic_pf_to_mgmt** %3, align 8
  %93 = load %struct.hinic_recv_msg*, %struct.hinic_recv_msg** %4, align 8
  %94 = getelementptr inbounds %struct.hinic_recv_msg, %struct.hinic_recv_msg* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.hinic_recv_msg*, %struct.hinic_recv_msg** %4, align 8
  %97 = getelementptr inbounds %struct.hinic_recv_msg, %struct.hinic_recv_msg* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = load i32*, i32** %7, align 8
  %100 = load i32, i32* %10, align 4
  %101 = load i32, i32* @MGMT_RESP, align 4
  %102 = load %struct.hinic_recv_msg*, %struct.hinic_recv_msg** %4, align 8
  %103 = getelementptr inbounds %struct.hinic_recv_msg, %struct.hinic_recv_msg* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @msg_to_mgmt_async(%struct.hinic_pf_to_mgmt* %92, i64 %95, i32 %98, i32* %99, i32 %100, i32 %101, i32 %104)
  br label %106

106:                                              ; preds = %25, %91, %80
  ret void
}

declare dso_local i32 @dev_err(i32*, i8*, i64) #1

declare dso_local i64 @cmpxchg(i64*, i64, i64) #1

declare dso_local i32 @msg_to_mgmt_async(%struct.hinic_pf_to_mgmt*, i64, i32, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
