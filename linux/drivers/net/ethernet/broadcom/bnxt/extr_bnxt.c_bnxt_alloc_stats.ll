; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_alloc_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_alloc_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { i64, i64, i64, i32, i32, i32, i32, i8*, i32, i32, i8*, i8*, i32, i32, i64, i8*, i8*, %struct.bnxt_napi**, %struct.pci_dev* }
%struct.bnxt_napi = type { %struct.bnxt_cp_ring_info }
%struct.bnxt_cp_ring_info = type { i32, i8*, i32 }
%struct.pci_dev = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@INVALID_STATS_CTX_ID = common dso_local global i32 0, align 4
@CHIP_NUM_58700 = common dso_local global i64 0, align 8
@BNXT_FLAG_PORT_STATS = common dso_local global i32 0, align 4
@BNXT_FW_CAP_EXT_STATS_SUPPORTED = common dso_local global i32 0, align 4
@BNXT_FLAG_PORT_STATS_EXT = common dso_local global i32 0, align 4
@BNXT_FW_CAP_PCIE_STATS_SUPPORTED = common dso_local global i32 0, align 4
@BNXT_FLAG_PCIE_STATS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnxt*)* @bnxt_alloc_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_alloc_stats(%struct.bnxt* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bnxt*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca %struct.bnxt_napi*, align 8
  %8 = alloca %struct.bnxt_cp_ring_info*, align 8
  store %struct.bnxt* %0, %struct.bnxt** %3, align 8
  %9 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %10 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %9, i32 0, i32 18
  %11 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  store %struct.pci_dev* %11, %struct.pci_dev** %6, align 8
  %12 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %13 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %4, align 8
  store i64 0, i64* %5, align 8
  br label %15

15:                                               ; preds = %51, %1
  %16 = load i64, i64* %5, align 8
  %17 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %18 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ult i64 %16, %19
  br i1 %20, label %21, label %54

21:                                               ; preds = %15
  %22 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %23 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %22, i32 0, i32 17
  %24 = load %struct.bnxt_napi**, %struct.bnxt_napi*** %23, align 8
  %25 = load i64, i64* %5, align 8
  %26 = getelementptr inbounds %struct.bnxt_napi*, %struct.bnxt_napi** %24, i64 %25
  %27 = load %struct.bnxt_napi*, %struct.bnxt_napi** %26, align 8
  store %struct.bnxt_napi* %27, %struct.bnxt_napi** %7, align 8
  %28 = load %struct.bnxt_napi*, %struct.bnxt_napi** %7, align 8
  %29 = getelementptr inbounds %struct.bnxt_napi, %struct.bnxt_napi* %28, i32 0, i32 0
  store %struct.bnxt_cp_ring_info* %29, %struct.bnxt_cp_ring_info** %8, align 8
  %30 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %31 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %30, i32 0, i32 0
  %32 = load i64, i64* %4, align 8
  %33 = trunc i64 %32 to i32
  %34 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %8, align 8
  %35 = getelementptr inbounds %struct.bnxt_cp_ring_info, %struct.bnxt_cp_ring_info* %34, i32 0, i32 2
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call i8* @dma_alloc_coherent(i32* %31, i32 %33, i32* %35, i32 %36)
  %38 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %8, align 8
  %39 = getelementptr inbounds %struct.bnxt_cp_ring_info, %struct.bnxt_cp_ring_info* %38, i32 0, i32 1
  store i8* %37, i8** %39, align 8
  %40 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %8, align 8
  %41 = getelementptr inbounds %struct.bnxt_cp_ring_info, %struct.bnxt_cp_ring_info* %40, i32 0, i32 1
  %42 = load i8*, i8** %41, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %21
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %219

47:                                               ; preds = %21
  %48 = load i32, i32* @INVALID_STATS_CTX_ID, align 4
  %49 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %8, align 8
  %50 = getelementptr inbounds %struct.bnxt_cp_ring_info, %struct.bnxt_cp_ring_info* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  br label %51

51:                                               ; preds = %47
  %52 = load i64, i64* %5, align 8
  %53 = add i64 %52, 1
  store i64 %53, i64* %5, align 8
  br label %15

54:                                               ; preds = %15
  %55 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %56 = call i64 @BNXT_VF(%struct.bnxt* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %64, label %58

58:                                               ; preds = %54
  %59 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %60 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @CHIP_NUM_58700, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %58, %54
  store i32 0, i32* %2, align 4
  br label %219

65:                                               ; preds = %58
  %66 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %67 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %66, i32 0, i32 15
  %68 = load i8*, i8** %67, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  br label %113

71:                                               ; preds = %65
  %72 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %73 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %72, i32 0, i32 3
  store i32 1032, i32* %73, align 8
  %74 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %75 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %74, i32 0, i32 0
  %76 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %77 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %80 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %79, i32 0, i32 13
  %81 = load i32, i32* @GFP_KERNEL, align 4
  %82 = call i8* @dma_alloc_coherent(i32* %75, i32 %78, i32* %80, i32 %81)
  %83 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %84 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %83, i32 0, i32 15
  store i8* %82, i8** %84, align 8
  %85 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %86 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %85, i32 0, i32 15
  %87 = load i8*, i8** %86, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %92, label %89

89:                                               ; preds = %71
  %90 = load i32, i32* @ENOMEM, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %2, align 4
  br label %219

92:                                               ; preds = %71
  %93 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %94 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %93, i32 0, i32 15
  %95 = load i8*, i8** %94, align 8
  %96 = getelementptr i8, i8* %95, i64 1
  %97 = getelementptr i8, i8* %96, i64 512
  %98 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %99 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %98, i32 0, i32 16
  store i8* %97, i8** %99, align 8
  %100 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %101 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %100, i32 0, i32 13
  %102 = load i32, i32* %101, align 4
  %103 = sext i32 %102 to i64
  %104 = add i64 %103, 4
  %105 = add i64 %104, 512
  %106 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %107 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %106, i32 0, i32 14
  store i64 %105, i64* %107, align 8
  %108 = load i32, i32* @BNXT_FLAG_PORT_STATS, align 4
  %109 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %110 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %109, i32 0, i32 6
  %111 = load i32, i32* %110, align 4
  %112 = or i32 %111, %108
  store i32 %112, i32* %110, align 4
  br label %113

113:                                              ; preds = %92, %70
  %114 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %115 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 4
  %117 = icmp slt i32 %116, 67588
  br i1 %117, label %123, label %118

118:                                              ; preds = %113
  %119 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %120 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %119, i32 0, i32 4
  %121 = load i32, i32* %120, align 4
  %122 = icmp eq i32 %121, 67840
  br i1 %122, label %123, label %132

123:                                              ; preds = %118, %113
  %124 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %125 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %124, i32 0, i32 5
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @BNXT_FW_CAP_EXT_STATS_SUPPORTED, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %131, label %130

130:                                              ; preds = %123
  store i32 0, i32* %2, align 4
  br label %219

131:                                              ; preds = %123
  br label %132

132:                                              ; preds = %131, %118
  %133 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %134 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %133, i32 0, i32 11
  %135 = load i8*, i8** %134, align 8
  %136 = icmp ne i8* %135, null
  br i1 %136, label %137, label %138

137:                                              ; preds = %132
  br label %153

138:                                              ; preds = %132
  %139 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %140 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %139, i32 0, i32 0
  %141 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %142 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %141, i32 0, i32 12
  %143 = load i32, i32* @GFP_KERNEL, align 4
  %144 = call i8* @dma_alloc_coherent(i32* %140, i32 4, i32* %142, i32 %143)
  %145 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %146 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %145, i32 0, i32 11
  store i8* %144, i8** %146, align 8
  %147 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %148 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %147, i32 0, i32 11
  %149 = load i8*, i8** %148, align 8
  %150 = icmp ne i8* %149, null
  br i1 %150, label %152, label %151

151:                                              ; preds = %138
  store i32 0, i32* %2, align 4
  br label %219

152:                                              ; preds = %138
  br label %153

153:                                              ; preds = %152, %137
  %154 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %155 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %154, i32 0, i32 10
  %156 = load i8*, i8** %155, align 8
  %157 = icmp ne i8* %156, null
  br i1 %157, label %158, label %159

158:                                              ; preds = %153
  br label %186

159:                                              ; preds = %153
  %160 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %161 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %160, i32 0, i32 4
  %162 = load i32, i32* %161, align 4
  %163 = icmp sge i32 %162, 67842
  br i1 %163, label %171, label %164

164:                                              ; preds = %159
  %165 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %166 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %165, i32 0, i32 5
  %167 = load i32, i32* %166, align 8
  %168 = load i32, i32* @BNXT_FW_CAP_EXT_STATS_SUPPORTED, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %180

171:                                              ; preds = %164, %159
  %172 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %173 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %172, i32 0, i32 0
  %174 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %175 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %174, i32 0, i32 9
  %176 = load i32, i32* @GFP_KERNEL, align 4
  %177 = call i8* @dma_alloc_coherent(i32* %173, i32 4, i32* %175, i32 %176)
  %178 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %179 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %178, i32 0, i32 10
  store i8* %177, i8** %179, align 8
  br label %180

180:                                              ; preds = %171, %164
  %181 = load i32, i32* @BNXT_FLAG_PORT_STATS_EXT, align 4
  %182 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %183 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %182, i32 0, i32 6
  %184 = load i32, i32* %183, align 4
  %185 = or i32 %184, %181
  store i32 %185, i32* %183, align 4
  br label %186

186:                                              ; preds = %180, %158
  %187 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %188 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %187, i32 0, i32 7
  %189 = load i8*, i8** %188, align 8
  %190 = icmp ne i8* %189, null
  br i1 %190, label %198, label %191

191:                                              ; preds = %186
  %192 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %193 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %192, i32 0, i32 5
  %194 = load i32, i32* %193, align 8
  %195 = load i32, i32* @BNXT_FW_CAP_PCIE_STATS_SUPPORTED, align 4
  %196 = and i32 %194, %195
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %199, label %198

198:                                              ; preds = %191, %186
  store i32 0, i32* %2, align 4
  br label %219

199:                                              ; preds = %191
  %200 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %201 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %200, i32 0, i32 0
  %202 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %203 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %202, i32 0, i32 8
  %204 = load i32, i32* @GFP_KERNEL, align 4
  %205 = call i8* @dma_alloc_coherent(i32* %201, i32 4, i32* %203, i32 %204)
  %206 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %207 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %206, i32 0, i32 7
  store i8* %205, i8** %207, align 8
  %208 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %209 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %208, i32 0, i32 7
  %210 = load i8*, i8** %209, align 8
  %211 = icmp ne i8* %210, null
  br i1 %211, label %213, label %212

212:                                              ; preds = %199
  store i32 0, i32* %2, align 4
  br label %219

213:                                              ; preds = %199
  %214 = load i32, i32* @BNXT_FLAG_PCIE_STATS, align 4
  %215 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %216 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %215, i32 0, i32 6
  %217 = load i32, i32* %216, align 4
  %218 = or i32 %217, %214
  store i32 %218, i32* %216, align 4
  store i32 0, i32* %2, align 4
  br label %219

219:                                              ; preds = %213, %212, %198, %151, %130, %89, %64, %44
  %220 = load i32, i32* %2, align 4
  ret i32 %220
}

declare dso_local i8* @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i64 @BNXT_VF(%struct.bnxt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
