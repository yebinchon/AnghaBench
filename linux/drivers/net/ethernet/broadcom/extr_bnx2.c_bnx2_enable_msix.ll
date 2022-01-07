; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_enable_msix.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_enable_msix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2 = type { i32, i32, %struct.TYPE_2__*, i32, %struct.net_device* }
%struct.TYPE_2__ = type { i32, i32, i64 }
%struct.net_device = type { i8* }
%struct.msix_entry = type { i32, i64 }

@BNX2_MAX_MSIX_VEC = common dso_local global i32 0, align 4
@BNX2_PCI_MSIX_CONTROL = common dso_local global i32 0, align 4
@BNX2_MAX_MSIX_HW_VEC = common dso_local global i64 0, align 8
@BNX2_PCI_MSIX_TBL_OFF_BIR = common dso_local global i32 0, align 4
@BNX2_PCI_GRC_WINDOW2_BASE = common dso_local global i64 0, align 8
@BNX2_PCI_MSIX_PBA_OFF_BIT = common dso_local global i32 0, align 4
@BNX2_PCI_GRC_WINDOW3_BASE = common dso_local global i64 0, align 8
@BNX2_MIN_MSIX_VEC = common dso_local global i32 0, align 4
@BNX2_FLAG_USING_MSIX = common dso_local global i32 0, align 4
@BNX2_FLAG_ONE_SHOT_MSI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s-%d\00", align 1
@bnx2_msi_1shot = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2*, i32)* @bnx2_enable_msix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2_enable_msix(%struct.bnx2* %0, i32 %1) #0 {
  %3 = alloca %struct.bnx2*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.bnx2* %0, %struct.bnx2** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load i32, i32* @BNX2_MAX_MSIX_VEC, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %7, align 8
  %15 = alloca %struct.msix_entry, i64 %13, align 16
  store i64 %13, i64* %8, align 8
  %16 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %17 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %16, i32 0, i32 4
  %18 = load %struct.net_device*, %struct.net_device** %17, align 8
  store %struct.net_device* %18, %struct.net_device** %9, align 8
  store i32 4, i32* %10, align 4
  %19 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %20 = call i32 @bnx2_setup_msix_tbl(%struct.bnx2* %19)
  %21 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %22 = load i32, i32* @BNX2_PCI_MSIX_CONTROL, align 4
  %23 = load i64, i64* @BNX2_MAX_MSIX_HW_VEC, align 8
  %24 = sub nsw i64 %23, 1
  %25 = call i32 @BNX2_WR(%struct.bnx2* %21, i32 %22, i64 %24)
  %26 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %27 = load i32, i32* @BNX2_PCI_MSIX_TBL_OFF_BIR, align 4
  %28 = load i64, i64* @BNX2_PCI_GRC_WINDOW2_BASE, align 8
  %29 = call i32 @BNX2_WR(%struct.bnx2* %26, i32 %27, i64 %28)
  %30 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %31 = load i32, i32* @BNX2_PCI_MSIX_PBA_OFF_BIT, align 4
  %32 = load i64, i64* @BNX2_PCI_GRC_WINDOW3_BASE, align 8
  %33 = call i32 @BNX2_WR(%struct.bnx2* %30, i32 %31, i64 %32)
  %34 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %35 = load i32, i32* @BNX2_PCI_MSIX_CONTROL, align 4
  %36 = call i32 @BNX2_RD(%struct.bnx2* %34, i32 %35)
  store i32 0, i32* %5, align 4
  br label %37

37:                                               ; preds = %51, %2
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @BNX2_MAX_MSIX_VEC, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %54

41:                                               ; preds = %37
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %15, i64 %44
  %46 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %45, i32 0, i32 0
  store i32 %42, i32* %46, align 16
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %15, i64 %48
  %50 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %49, i32 0, i32 1
  store i64 0, i64* %50, align 8
  br label %51

51:                                               ; preds = %41
  %52 = load i32, i32* %5, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %5, align 4
  br label %37

54:                                               ; preds = %37
  %55 = load i32, i32* %4, align 4
  store i32 %55, i32* %6, align 4
  %56 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %57 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @BNX2_MIN_MSIX_VEC, align 4
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @pci_enable_msix_range(i32 %58, %struct.msix_entry* %15, i32 %59, i32 %60)
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %6, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %54
  store i32 1, i32* %11, align 4
  br label %119

65:                                               ; preds = %54
  %66 = load i32, i32* %6, align 4
  store i32 %66, i32* %4, align 4
  %67 = load i32, i32* %4, align 4
  %68 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %69 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  %70 = load i32, i32* @BNX2_FLAG_USING_MSIX, align 4
  %71 = load i32, i32* @BNX2_FLAG_ONE_SHOT_MSI, align 4
  %72 = or i32 %70, %71
  %73 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %74 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = or i32 %75, %72
  store i32 %76, i32* %74, align 4
  store i32 0, i32* %5, align 4
  br label %77

77:                                               ; preds = %115, %65
  %78 = load i32, i32* %5, align 4
  %79 = load i32, i32* %6, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %118

81:                                               ; preds = %77
  %82 = load i32, i32* %5, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %15, i64 %83
  %85 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %88 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %87, i32 0, i32 2
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = load i32, i32* %5, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 2
  store i64 %86, i64* %93, align 8
  %94 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %95 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %94, i32 0, i32 2
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = load i32, i32* %5, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.net_device*, %struct.net_device** %9, align 8
  %103 = getelementptr inbounds %struct.net_device, %struct.net_device* %102, i32 0, i32 0
  %104 = load i8*, i8** %103, align 8
  %105 = load i32, i32* %5, align 4
  %106 = call i32 @snprintf(i32 %101, i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %104, i32 %105)
  %107 = load i32, i32* @bnx2_msi_1shot, align 4
  %108 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %109 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %108, i32 0, i32 2
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** %109, align 8
  %111 = load i32, i32* %5, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 0
  store i32 %107, i32* %114, align 8
  br label %115

115:                                              ; preds = %81
  %116 = load i32, i32* %5, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %5, align 4
  br label %77

118:                                              ; preds = %77
  store i32 0, i32* %11, align 4
  br label %119

119:                                              ; preds = %118, %64
  %120 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %120)
  %121 = load i32, i32* %11, align 4
  switch i32 %121, label %123 [
    i32 0, label %122
    i32 1, label %122
  ]

122:                                              ; preds = %119, %119
  ret void

123:                                              ; preds = %119
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @bnx2_setup_msix_tbl(%struct.bnx2*) #2

declare dso_local i32 @BNX2_WR(%struct.bnx2*, i32, i64) #2

declare dso_local i32 @BNX2_RD(%struct.bnx2*, i32) #2

declare dso_local i32 @pci_enable_msix_range(i32, %struct.msix_entry*, i32, i32) #2

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
