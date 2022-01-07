; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_read_vpd_fw_ver.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_read_vpd_fw_ver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2 = type { i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@PCI_VPD_LRDT_RO_DATA = common dso_local global i32 0, align 4
@PCI_VPD_LRDT_TAG_SIZE = common dso_local global i64 0, align 8
@PCI_VPD_RO_KEYWORD_MFR_ID = common dso_local global i32 0, align 4
@PCI_VPD_INFO_FLD_HDR_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"1028\00", align 1
@PCI_VPD_RO_KEYWORD_VENDOR0 = common dso_local global i32 0, align 4
@BNX2_MAX_VER_SLEN = common dso_local global i32 0, align 4
@BNX2_VPD_LEN = common dso_local global i32 0, align 4
@BNX2_VPD_NVRAM_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2*)* @bnx2_read_vpd_fw_ver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2_read_vpd_fw_ver(%struct.bnx2* %0) #0 {
  %2 = alloca %struct.bnx2*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.bnx2* %0, %struct.bnx2** %2, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call i32* @kmalloc(i32 256, i32 %10)
  store i32* %11, i32** %6, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %185

15:                                               ; preds = %1
  %16 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 128
  %19 = call i32 @bnx2_nvram_read(%struct.bnx2* %16, i32 768, i32* %18, i32 128)
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %3, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  br label %182

23:                                               ; preds = %15
  store i32 0, i32* %4, align 4
  br label %24

24:                                               ; preds = %74, %23
  %25 = load i32, i32* %4, align 4
  %26 = icmp slt i32 %25, 128
  br i1 %26, label %27, label %77

27:                                               ; preds = %24
  %28 = load i32*, i32** %6, align 8
  %29 = load i32, i32* %4, align 4
  %30 = add nsw i32 %29, 128
  %31 = add nsw i32 %30, 3
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %28, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = load i32*, i32** %6, align 8
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  store i32 %34, i32* %38, align 4
  %39 = load i32*, i32** %6, align 8
  %40 = load i32, i32* %4, align 4
  %41 = add nsw i32 %40, 128
  %42 = add nsw i32 %41, 2
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %39, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = load i32*, i32** %6, align 8
  %47 = load i32, i32* %4, align 4
  %48 = add nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %46, i64 %49
  store i32 %45, i32* %50, align 4
  %51 = load i32*, i32** %6, align 8
  %52 = load i32, i32* %4, align 4
  %53 = add nsw i32 %52, 128
  %54 = add nsw i32 %53, 1
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %51, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = load i32*, i32** %6, align 8
  %59 = load i32, i32* %4, align 4
  %60 = add nsw i32 %59, 2
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %58, i64 %61
  store i32 %57, i32* %62, align 4
  %63 = load i32*, i32** %6, align 8
  %64 = load i32, i32* %4, align 4
  %65 = add nsw i32 %64, 128
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %63, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = load i32*, i32** %6, align 8
  %70 = load i32, i32* %4, align 4
  %71 = add nsw i32 %70, 3
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %69, i64 %72
  store i32 %68, i32* %73, align 4
  br label %74

74:                                               ; preds = %27
  %75 = load i32, i32* %4, align 4
  %76 = add nsw i32 %75, 4
  store i32 %76, i32* %4, align 4
  br label %24

77:                                               ; preds = %24
  %78 = load i32*, i32** %6, align 8
  %79 = load i32, i32* @PCI_VPD_LRDT_RO_DATA, align 4
  %80 = call i32 @pci_vpd_find_tag(i32* %78, i32 0, i32 128, i32 %79)
  store i32 %80, i32* %4, align 4
  %81 = load i32, i32* %4, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %77
  br label %182

84:                                               ; preds = %77
  %85 = load i32*, i32** %6, align 8
  %86 = load i32, i32* %4, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = call i32 @pci_vpd_lrdt_size(i32* %88)
  store i32 %89, i32* %8, align 4
  %90 = load i64, i64* @PCI_VPD_LRDT_TAG_SIZE, align 8
  %91 = load i32, i32* %4, align 4
  %92 = sext i32 %91 to i64
  %93 = add nsw i64 %92, %90
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %4, align 4
  %95 = load i32, i32* %4, align 4
  %96 = load i32, i32* %8, align 4
  %97 = add i32 %95, %96
  store i32 %97, i32* %7, align 4
  %98 = load i32, i32* %7, align 4
  %99 = icmp ugt i32 %98, 128
  br i1 %99, label %100, label %101

100:                                              ; preds = %84
  br label %182

101:                                              ; preds = %84
  %102 = load i32*, i32** %6, align 8
  %103 = load i32, i32* %4, align 4
  %104 = load i32, i32* %8, align 4
  %105 = load i32, i32* @PCI_VPD_RO_KEYWORD_MFR_ID, align 4
  %106 = call i32 @pci_vpd_find_info_keyword(i32* %102, i32 %103, i32 %104, i32 %105)
  store i32 %106, i32* %5, align 4
  %107 = load i32, i32* %5, align 4
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %101
  br label %182

110:                                              ; preds = %101
  %111 = load i32*, i32** %6, align 8
  %112 = load i32, i32* %5, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  %115 = call i32 @pci_vpd_info_field_size(i32* %114)
  store i32 %115, i32* %9, align 4
  %116 = load i64, i64* @PCI_VPD_INFO_FLD_HDR_SIZE, align 8
  %117 = load i32, i32* %5, align 4
  %118 = sext i32 %117 to i64
  %119 = add nsw i64 %118, %116
  %120 = trunc i64 %119 to i32
  store i32 %120, i32* %5, align 4
  %121 = load i32, i32* %5, align 4
  %122 = load i32, i32* %9, align 4
  %123 = add i32 %121, %122
  %124 = load i32, i32* %7, align 4
  %125 = icmp ugt i32 %123, %124
  br i1 %125, label %136, label %126

126:                                              ; preds = %110
  %127 = load i32, i32* %9, align 4
  %128 = icmp ne i32 %127, 4
  br i1 %128, label %136, label %129

129:                                              ; preds = %126
  %130 = load i32*, i32** %6, align 8
  %131 = load i32, i32* %5, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  %134 = call i64 @memcmp(i32* %133, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %129, %126, %110
  br label %182

137:                                              ; preds = %129
  %138 = load i32*, i32** %6, align 8
  %139 = load i32, i32* %4, align 4
  %140 = load i32, i32* %8, align 4
  %141 = load i32, i32* @PCI_VPD_RO_KEYWORD_VENDOR0, align 4
  %142 = call i32 @pci_vpd_find_info_keyword(i32* %138, i32 %139, i32 %140, i32 %141)
  store i32 %142, i32* %5, align 4
  %143 = load i32, i32* %5, align 4
  %144 = icmp slt i32 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %137
  br label %182

146:                                              ; preds = %137
  %147 = load i32*, i32** %6, align 8
  %148 = load i32, i32* %5, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %147, i64 %149
  %151 = call i32 @pci_vpd_info_field_size(i32* %150)
  store i32 %151, i32* %9, align 4
  %152 = load i64, i64* @PCI_VPD_INFO_FLD_HDR_SIZE, align 8
  %153 = load i32, i32* %5, align 4
  %154 = sext i32 %153 to i64
  %155 = add nsw i64 %154, %152
  %156 = trunc i64 %155 to i32
  store i32 %156, i32* %5, align 4
  %157 = load i32, i32* %5, align 4
  %158 = load i32, i32* %9, align 4
  %159 = add i32 %157, %158
  %160 = load i32, i32* %7, align 4
  %161 = icmp ugt i32 %159, %160
  br i1 %161, label %165, label %162

162:                                              ; preds = %146
  %163 = load i32, i32* %9, align 4
  %164 = icmp ugt i32 %163, 30
  br i1 %164, label %165, label %166

165:                                              ; preds = %162, %146
  br label %182

166:                                              ; preds = %162
  %167 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %168 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %167, i32 0, i32 0
  %169 = load i8*, i8** %168, align 8
  %170 = load i32*, i32** %6, align 8
  %171 = load i32, i32* %5, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %170, i64 %172
  %174 = load i32, i32* %9, align 4
  %175 = call i32 @memcpy(i8* %169, i32* %173, i32 %174)
  %176 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %177 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %176, i32 0, i32 0
  %178 = load i8*, i8** %177, align 8
  %179 = load i32, i32* %9, align 4
  %180 = zext i32 %179 to i64
  %181 = getelementptr inbounds i8, i8* %178, i64 %180
  store i8 32, i8* %181, align 1
  br label %182

182:                                              ; preds = %166, %165, %145, %136, %109, %100, %83, %22
  %183 = load i32*, i32** %6, align 8
  %184 = call i32 @kfree(i32* %183)
  br label %185

185:                                              ; preds = %182, %14
  ret void
}

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @bnx2_nvram_read(%struct.bnx2*, i32, i32*, i32) #1

declare dso_local i32 @pci_vpd_find_tag(i32*, i32, i32, i32) #1

declare dso_local i32 @pci_vpd_lrdt_size(i32*) #1

declare dso_local i32 @pci_vpd_find_info_keyword(i32*, i32, i32, i32) #1

declare dso_local i32 @pci_vpd_info_field_size(i32*) #1

declare dso_local i64 @memcmp(i32*, i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
