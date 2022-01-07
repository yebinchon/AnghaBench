; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_alloc_vnic_attributes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_alloc_vnic_attributes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { i32, i32, i32, %struct.bnxt_vnic_info*, %struct.pci_dev* }
%struct.bnxt_vnic_info = type { i32, i32, i64, i64, i8*, i8*, i32, i8*, i64, i32 }
%struct.pci_dev = type { i32 }

@BNXT_VNIC_UCAST_FLAG = common dso_local global i32 0, align 4
@BNXT_MAX_UC_ADDRS = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BNXT_VNIC_MCAST_FLAG = common dso_local global i32 0, align 4
@BNXT_MAX_MC_ADDRS = common dso_local global i32 0, align 4
@BNXT_FLAG_CHIP_P5 = common dso_local global i32 0, align 4
@BNXT_VNIC_RSS_FLAG = common dso_local global i32 0, align 4
@BNXT_FLAG_NEW_RSS_CAP = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@HW_HASH_INDEX_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnxt*)* @bnxt_alloc_vnic_attributes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_alloc_vnic_attributes(%struct.bnxt* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bnxt*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.bnxt_vnic_info*, align 8
  %8 = alloca %struct.pci_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.bnxt* %0, %struct.bnxt** %3, align 8
  store i32 0, i32* %5, align 4
  %11 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %12 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %11, i32 0, i32 4
  %13 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  store %struct.pci_dev* %13, %struct.pci_dev** %8, align 8
  store i32 0, i32* %4, align 4
  br label %14

14:                                               ; preds = %175, %1
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %17 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %178

20:                                               ; preds = %14
  %21 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %22 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %21, i32 0, i32 3
  %23 = load %struct.bnxt_vnic_info*, %struct.bnxt_vnic_info** %22, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.bnxt_vnic_info, %struct.bnxt_vnic_info* %23, i64 %25
  store %struct.bnxt_vnic_info* %26, %struct.bnxt_vnic_info** %7, align 8
  %27 = load %struct.bnxt_vnic_info*, %struct.bnxt_vnic_info** %7, align 8
  %28 = getelementptr inbounds %struct.bnxt_vnic_info, %struct.bnxt_vnic_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @BNXT_VNIC_UCAST_FLAG, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %55

33:                                               ; preds = %20
  %34 = load i32, i32* @BNXT_MAX_UC_ADDRS, align 4
  %35 = sub nsw i32 %34, 1
  %36 = load i32, i32* @ETH_ALEN, align 4
  %37 = mul nsw i32 %35, %36
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %54

40:                                               ; preds = %33
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* @GFP_KERNEL, align 4
  %43 = call i32 @kmalloc(i32 %41, i32 %42)
  %44 = load %struct.bnxt_vnic_info*, %struct.bnxt_vnic_info** %7, align 8
  %45 = getelementptr inbounds %struct.bnxt_vnic_info, %struct.bnxt_vnic_info* %44, i32 0, i32 9
  store i32 %43, i32* %45, align 8
  %46 = load %struct.bnxt_vnic_info*, %struct.bnxt_vnic_info** %7, align 8
  %47 = getelementptr inbounds %struct.bnxt_vnic_info, %struct.bnxt_vnic_info* %46, i32 0, i32 9
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %40
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %5, align 4
  br label %179

53:                                               ; preds = %40
  br label %54

54:                                               ; preds = %53, %33
  br label %55

55:                                               ; preds = %54, %20
  %56 = load %struct.bnxt_vnic_info*, %struct.bnxt_vnic_info** %7, align 8
  %57 = getelementptr inbounds %struct.bnxt_vnic_info, %struct.bnxt_vnic_info* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @BNXT_VNIC_MCAST_FLAG, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %87

62:                                               ; preds = %55
  %63 = load i32, i32* @BNXT_MAX_MC_ADDRS, align 4
  %64 = load i32, i32* @ETH_ALEN, align 4
  %65 = mul nsw i32 %63, %64
  %66 = load %struct.bnxt_vnic_info*, %struct.bnxt_vnic_info** %7, align 8
  %67 = getelementptr inbounds %struct.bnxt_vnic_info, %struct.bnxt_vnic_info* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %69 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %68, i32 0, i32 0
  %70 = load %struct.bnxt_vnic_info*, %struct.bnxt_vnic_info** %7, align 8
  %71 = getelementptr inbounds %struct.bnxt_vnic_info, %struct.bnxt_vnic_info* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.bnxt_vnic_info*, %struct.bnxt_vnic_info** %7, align 8
  %74 = getelementptr inbounds %struct.bnxt_vnic_info, %struct.bnxt_vnic_info* %73, i32 0, i32 8
  %75 = load i32, i32* @GFP_KERNEL, align 4
  %76 = call i8* @dma_alloc_coherent(i32* %69, i32 %72, i64* %74, i32 %75)
  %77 = load %struct.bnxt_vnic_info*, %struct.bnxt_vnic_info** %7, align 8
  %78 = getelementptr inbounds %struct.bnxt_vnic_info, %struct.bnxt_vnic_info* %77, i32 0, i32 7
  store i8* %76, i8** %78, align 8
  %79 = load %struct.bnxt_vnic_info*, %struct.bnxt_vnic_info** %7, align 8
  %80 = getelementptr inbounds %struct.bnxt_vnic_info, %struct.bnxt_vnic_info* %79, i32 0, i32 7
  %81 = load i8*, i8** %80, align 8
  %82 = icmp ne i8* %81, null
  br i1 %82, label %86, label %83

83:                                               ; preds = %62
  %84 = load i32, i32* @ENOMEM, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %5, align 4
  br label %179

86:                                               ; preds = %62
  br label %87

87:                                               ; preds = %86, %55
  %88 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %89 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @BNXT_FLAG_CHIP_P5, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %87
  br label %121

95:                                               ; preds = %87
  %96 = load %struct.bnxt_vnic_info*, %struct.bnxt_vnic_info** %7, align 8
  %97 = getelementptr inbounds %struct.bnxt_vnic_info, %struct.bnxt_vnic_info* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @BNXT_VNIC_RSS_FLAG, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %95
  %103 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %104 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  store i32 %105, i32* %9, align 4
  br label %107

106:                                              ; preds = %95
  store i32 1, i32* %9, align 4
  br label %107

107:                                              ; preds = %106, %102
  %108 = load i32, i32* %9, align 4
  %109 = load i32, i32* @GFP_KERNEL, align 4
  %110 = call i32 @kcalloc(i32 %108, i32 4, i32 %109)
  %111 = load %struct.bnxt_vnic_info*, %struct.bnxt_vnic_info** %7, align 8
  %112 = getelementptr inbounds %struct.bnxt_vnic_info, %struct.bnxt_vnic_info* %111, i32 0, i32 6
  store i32 %110, i32* %112, align 8
  %113 = load %struct.bnxt_vnic_info*, %struct.bnxt_vnic_info** %7, align 8
  %114 = getelementptr inbounds %struct.bnxt_vnic_info, %struct.bnxt_vnic_info* %113, i32 0, i32 6
  %115 = load i32, i32* %114, align 8
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %120, label %117

117:                                              ; preds = %107
  %118 = load i32, i32* @ENOMEM, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %5, align 4
  br label %179

120:                                              ; preds = %107
  br label %121

121:                                              ; preds = %120, %94
  %122 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %123 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @BNXT_FLAG_NEW_RSS_CAP, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %136

128:                                              ; preds = %121
  %129 = load %struct.bnxt_vnic_info*, %struct.bnxt_vnic_info** %7, align 8
  %130 = getelementptr inbounds %struct.bnxt_vnic_info, %struct.bnxt_vnic_info* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* @BNXT_VNIC_RSS_FLAG, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %136, label %135

135:                                              ; preds = %128
  br label %175

136:                                              ; preds = %128, %121
  %137 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %138 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %137, i32 0, i32 0
  %139 = load i32, i32* @PAGE_SIZE, align 4
  %140 = load %struct.bnxt_vnic_info*, %struct.bnxt_vnic_info** %7, align 8
  %141 = getelementptr inbounds %struct.bnxt_vnic_info, %struct.bnxt_vnic_info* %140, i32 0, i32 2
  %142 = load i32, i32* @GFP_KERNEL, align 4
  %143 = call i8* @dma_alloc_coherent(i32* %138, i32 %139, i64* %141, i32 %142)
  %144 = load %struct.bnxt_vnic_info*, %struct.bnxt_vnic_info** %7, align 8
  %145 = getelementptr inbounds %struct.bnxt_vnic_info, %struct.bnxt_vnic_info* %144, i32 0, i32 4
  store i8* %143, i8** %145, align 8
  %146 = load %struct.bnxt_vnic_info*, %struct.bnxt_vnic_info** %7, align 8
  %147 = getelementptr inbounds %struct.bnxt_vnic_info, %struct.bnxt_vnic_info* %146, i32 0, i32 4
  %148 = load i8*, i8** %147, align 8
  %149 = icmp ne i8* %148, null
  br i1 %149, label %153, label %150

150:                                              ; preds = %136
  %151 = load i32, i32* @ENOMEM, align 4
  %152 = sub nsw i32 0, %151
  store i32 %152, i32* %5, align 4
  br label %179

153:                                              ; preds = %136
  %154 = load i32, i32* @HW_HASH_INDEX_SIZE, align 4
  %155 = sext i32 %154 to i64
  %156 = mul i64 %155, 4
  %157 = trunc i64 %156 to i32
  %158 = call i32 @L1_CACHE_ALIGN(i32 %157)
  store i32 %158, i32* %6, align 4
  %159 = load %struct.bnxt_vnic_info*, %struct.bnxt_vnic_info** %7, align 8
  %160 = getelementptr inbounds %struct.bnxt_vnic_info, %struct.bnxt_vnic_info* %159, i32 0, i32 4
  %161 = load i8*, i8** %160, align 8
  %162 = load i32, i32* %6, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr i8, i8* %161, i64 %163
  %165 = load %struct.bnxt_vnic_info*, %struct.bnxt_vnic_info** %7, align 8
  %166 = getelementptr inbounds %struct.bnxt_vnic_info, %struct.bnxt_vnic_info* %165, i32 0, i32 5
  store i8* %164, i8** %166, align 8
  %167 = load %struct.bnxt_vnic_info*, %struct.bnxt_vnic_info** %7, align 8
  %168 = getelementptr inbounds %struct.bnxt_vnic_info, %struct.bnxt_vnic_info* %167, i32 0, i32 2
  %169 = load i64, i64* %168, align 8
  %170 = load i32, i32* %6, align 4
  %171 = sext i32 %170 to i64
  %172 = add nsw i64 %169, %171
  %173 = load %struct.bnxt_vnic_info*, %struct.bnxt_vnic_info** %7, align 8
  %174 = getelementptr inbounds %struct.bnxt_vnic_info, %struct.bnxt_vnic_info* %173, i32 0, i32 3
  store i64 %172, i64* %174, align 8
  br label %175

175:                                              ; preds = %153, %135
  %176 = load i32, i32* %4, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %4, align 4
  br label %14

178:                                              ; preds = %14
  store i32 0, i32* %2, align 4
  br label %181

179:                                              ; preds = %150, %117, %83, %50
  %180 = load i32, i32* %5, align 4
  store i32 %180, i32* %2, align 4
  br label %181

181:                                              ; preds = %179, %178
  %182 = load i32, i32* %2, align 4
  ret i32 %182
}

declare dso_local i32 @kmalloc(i32, i32) #1

declare dso_local i8* @dma_alloc_coherent(i32*, i32, i64*, i32) #1

declare dso_local i32 @kcalloc(i32, i32, i32) #1

declare dso_local i32 @L1_CACHE_ALIGN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
