; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_efx.c_efx_probe_vpd_strings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_efx.c_efx_probe_vpd_strings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i32, i32, %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@SFC_VPD_LEN = common dso_local global i32 0, align 4
@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Unable to read VPD\0A\00", align 1
@PCI_VPD_LRDT_RO_DATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"VPD Read-only not found\0A\00", align 1
@PCI_VPD_LRDT_TAG_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"PN\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Part number not found\0A\00", align 1
@PCI_VPD_INFO_FLD_HDR_SIZE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [24 x i8] c"Incomplete part number\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"Part Number : %.*s\0A\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"SN\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"Serial number not found\0A\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"Incomplete serial number\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.efx_nic*)* @efx_probe_vpd_strings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @efx_probe_vpd_strings(%struct.efx_nic* %0) #0 {
  %2 = alloca %struct.efx_nic*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %2, align 8
  %12 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %13 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %12, i32 0, i32 2
  %14 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  store %struct.pci_dev* %14, %struct.pci_dev** %3, align 8
  %15 = load i32, i32* @SFC_VPD_LEN, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %4, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %5, align 8
  %19 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %20 = trunc i64 %16 to i32
  %21 = call i32 @pci_read_vpd(%struct.pci_dev* %19, i32 0, i32 %20, i8* %18)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp sle i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %1
  %25 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %26 = load i32, i32* @drv, align 4
  %27 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %28 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @netif_err(%struct.efx_nic* %25, i32 %26, i32 %29, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %11, align 4
  br label %168

31:                                               ; preds = %1
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @PCI_VPD_LRDT_RO_DATA, align 4
  %34 = call i32 @pci_vpd_find_tag(i8* %18, i32 0, i32 %32, i32 %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %31
  %38 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %39 = load i32, i32* @drv, align 4
  %40 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %41 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @netif_err(%struct.efx_nic* %38, i32 %39, i32 %42, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %11, align 4
  br label %168

44:                                               ; preds = %31
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %18, i64 %46
  %48 = call i32 @pci_vpd_lrdt_size(i8* %47)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @PCI_VPD_LRDT_TAG_SIZE, align 4
  %52 = add nsw i32 %50, %51
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* %10, align 4
  %55 = add nsw i32 %53, %54
  %56 = load i32, i32* %6, align 4
  %57 = icmp sgt i32 %55, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %44
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* %9, align 4
  %61 = sub nsw i32 %59, %60
  store i32 %61, i32* %10, align 4
  br label %62

62:                                               ; preds = %58, %44
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* %10, align 4
  %65 = call i32 @pci_vpd_find_info_keyword(i8* %18, i32 %63, i32 %64, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* %9, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %62
  %69 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %70 = load i32, i32* @drv, align 4
  %71 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %72 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @netif_err(%struct.efx_nic* %69, i32 %70, i32 %73, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %11, align 4
  br label %168

75:                                               ; preds = %62
  %76 = load i32, i32* %9, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8, i8* %18, i64 %77
  %79 = call i32 @pci_vpd_info_field_size(i8* %78)
  store i32 %79, i32* %10, align 4
  %80 = load i64, i64* @PCI_VPD_INFO_FLD_HDR_SIZE, align 8
  %81 = load i32, i32* %9, align 4
  %82 = sext i32 %81 to i64
  %83 = add nsw i64 %82, %80
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %9, align 4
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* %10, align 4
  %87 = add nsw i32 %85, %86
  %88 = load i32, i32* %6, align 4
  %89 = icmp sgt i32 %87, %88
  br i1 %89, label %90, label %97

90:                                               ; preds = %75
  %91 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %92 = load i32, i32* @drv, align 4
  %93 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %94 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @netif_err(%struct.efx_nic* %91, i32 %92, i32 %95, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %11, align 4
  br label %168

97:                                               ; preds = %75
  %98 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %99 = load i32, i32* @drv, align 4
  %100 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %101 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %10, align 4
  %104 = load i32, i32* %9, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8, i8* %18, i64 %105
  %107 = call i32 @netif_info(%struct.efx_nic* %98, i32 %99, i32 %102, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i32 %103, i8* %106)
  %108 = load i32, i32* %7, align 4
  %109 = load i32, i32* @PCI_VPD_LRDT_TAG_SIZE, align 4
  %110 = add nsw i32 %108, %109
  store i32 %110, i32* %9, align 4
  %111 = load i32, i32* %8, align 4
  store i32 %111, i32* %10, align 4
  %112 = load i32, i32* %9, align 4
  %113 = load i32, i32* %10, align 4
  %114 = call i32 @pci_vpd_find_info_keyword(i8* %18, i32 %112, i32 %113, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  store i32 %114, i32* %9, align 4
  %115 = load i32, i32* %9, align 4
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %124

117:                                              ; preds = %97
  %118 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %119 = load i32, i32* @drv, align 4
  %120 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %121 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @netif_err(%struct.efx_nic* %118, i32 %119, i32 %122, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0))
  store i32 1, i32* %11, align 4
  br label %168

124:                                              ; preds = %97
  %125 = load i32, i32* %9, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i8, i8* %18, i64 %126
  %128 = call i32 @pci_vpd_info_field_size(i8* %127)
  store i32 %128, i32* %10, align 4
  %129 = load i64, i64* @PCI_VPD_INFO_FLD_HDR_SIZE, align 8
  %130 = load i32, i32* %9, align 4
  %131 = sext i32 %130 to i64
  %132 = add nsw i64 %131, %129
  %133 = trunc i64 %132 to i32
  store i32 %133, i32* %9, align 4
  %134 = load i32, i32* %9, align 4
  %135 = load i32, i32* %10, align 4
  %136 = add nsw i32 %134, %135
  %137 = load i32, i32* %6, align 4
  %138 = icmp sgt i32 %136, %137
  br i1 %138, label %139, label %146

139:                                              ; preds = %124
  %140 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %141 = load i32, i32* @drv, align 4
  %142 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %143 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @netif_err(%struct.efx_nic* %140, i32 %141, i32 %144, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0))
  store i32 1, i32* %11, align 4
  br label %168

146:                                              ; preds = %124
  %147 = load i32, i32* %10, align 4
  %148 = add nsw i32 %147, 1
  %149 = load i32, i32* @GFP_KERNEL, align 4
  %150 = call i32 @kmalloc(i32 %148, i32 %149)
  %151 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %152 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %151, i32 0, i32 0
  store i32 %150, i32* %152, align 8
  %153 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %154 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %158, label %157

157:                                              ; preds = %146
  store i32 1, i32* %11, align 4
  br label %168

158:                                              ; preds = %146
  %159 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %160 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* %10, align 4
  %163 = add nsw i32 %162, 1
  %164 = load i32, i32* %9, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i8, i8* %18, i64 %165
  %167 = call i32 @snprintf(i32 %161, i32 %163, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i8* %166)
  store i32 0, i32* %11, align 4
  br label %168

168:                                              ; preds = %158, %157, %139, %117, %90, %68, %37, %24
  %169 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %169)
  %170 = load i32, i32* %11, align 4
  switch i32 %170, label %172 [
    i32 0, label %171
    i32 1, label %171
  ]

171:                                              ; preds = %168, %168
  ret void

172:                                              ; preds = %168
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @pci_read_vpd(%struct.pci_dev*, i32, i32, i8*) #2

declare dso_local i32 @netif_err(%struct.efx_nic*, i32, i32, i8*) #2

declare dso_local i32 @pci_vpd_find_tag(i8*, i32, i32, i32) #2

declare dso_local i32 @pci_vpd_lrdt_size(i8*) #2

declare dso_local i32 @pci_vpd_find_info_keyword(i8*, i32, i32, i8*) #2

declare dso_local i32 @pci_vpd_info_field_size(i8*) #2

declare dso_local i32 @netif_info(%struct.efx_nic*, i32, i32, i8*, i32, i8*) #2

declare dso_local i32 @kmalloc(i32, i32) #2

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
