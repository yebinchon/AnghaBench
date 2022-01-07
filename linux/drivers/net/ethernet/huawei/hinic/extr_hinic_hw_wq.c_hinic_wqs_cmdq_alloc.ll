; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_wq.c_hinic_wqs_cmdq_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_wq.c_hinic_wqs_cmdq_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hinic_cmdq_pages = type { %struct.hinic_hwif* }
%struct.hinic_wq = type { i32, i32, i64, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, %struct.hinic_hwif* }
%struct.hinic_hwif = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"wqebb_size must be power of 2\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"wq_page_size must be > 0\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"WQ q_depth must be power of 2\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"num wqebbs per page must be power of 2\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"Failed to allocate CMDQ page\0A\00", align 1
@CMDQ_WQ_MAX_PAGES = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [29 x i8] c"Failed to alloc CMDQ blocks\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hinic_wqs_cmdq_alloc(%struct.hinic_cmdq_pages* %0, %struct.hinic_wq* %1, %struct.hinic_hwif* %2, i32 %3, i64 %4, i64 %5, i64 %6, i64 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.hinic_cmdq_pages*, align 8
  %11 = alloca %struct.hinic_wq*, align 8
  %12 = alloca %struct.hinic_hwif*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.pci_dev*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.hinic_cmdq_pages* %0, %struct.hinic_cmdq_pages** %10, align 8
  store %struct.hinic_wq* %1, %struct.hinic_wq** %11, align 8
  store %struct.hinic_hwif* %2, %struct.hinic_hwif** %12, align 8
  store i32 %3, i32* %13, align 4
  store i64 %4, i64* %14, align 8
  store i64 %5, i64* %15, align 8
  store i64 %6, i64* %16, align 8
  store i64 %7, i64* %17, align 8
  %25 = load %struct.hinic_hwif*, %struct.hinic_hwif** %12, align 8
  %26 = getelementptr inbounds %struct.hinic_hwif, %struct.hinic_hwif* %25, i32 0, i32 0
  %27 = load %struct.pci_dev*, %struct.pci_dev** %26, align 8
  store %struct.pci_dev* %27, %struct.pci_dev** %18, align 8
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %24, align 4
  %30 = load i64, i64* %14, align 8
  %31 = call i32 @is_power_of_2(i64 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %8
  %34 = load %struct.pci_dev*, %struct.pci_dev** %18, align 8
  %35 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %34, i32 0, i32 0
  %36 = call i32 @dev_err(i32* %35, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %9, align 4
  br label %263

39:                                               ; preds = %8
  %40 = load i64, i64* %15, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %39
  %43 = load %struct.pci_dev*, %struct.pci_dev** %18, align 8
  %44 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %43, i32 0, i32 0
  %45 = call i32 @dev_err(i32* %44, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %9, align 4
  br label %263

48:                                               ; preds = %39
  %49 = load i64, i64* %16, align 8
  %50 = load i64, i64* %16, align 8
  %51 = sub nsw i64 %50, 1
  %52 = and i64 %49, %51
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %48
  %55 = load %struct.pci_dev*, %struct.pci_dev** %18, align 8
  %56 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %55, i32 0, i32 0
  %57 = call i32 @dev_err(i32* %56, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %9, align 4
  br label %263

60:                                               ; preds = %48
  %61 = load i64, i64* %14, align 8
  %62 = call i64 @ilog2(i64 %61)
  store i64 %62, i64* %21, align 8
  %63 = load i64, i64* %15, align 8
  %64 = load i64, i64* %14, align 8
  %65 = call i64 @ALIGN(i64 %63, i64 %64)
  %66 = load i64, i64* %21, align 8
  %67 = ashr i64 %65, %66
  store i64 %67, i64* %20, align 8
  %68 = load i64, i64* %20, align 8
  %69 = call i32 @is_power_of_2(i64 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %77, label %71

71:                                               ; preds = %60
  %72 = load %struct.pci_dev*, %struct.pci_dev** %18, align 8
  %73 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %72, i32 0, i32 0
  %74 = call i32 @dev_err(i32* %73, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %9, align 4
  br label %263

77:                                               ; preds = %60
  %78 = load %struct.hinic_hwif*, %struct.hinic_hwif** %12, align 8
  %79 = load %struct.hinic_cmdq_pages*, %struct.hinic_cmdq_pages** %10, align 8
  %80 = getelementptr inbounds %struct.hinic_cmdq_pages, %struct.hinic_cmdq_pages* %79, i32 0, i32 0
  store %struct.hinic_hwif* %78, %struct.hinic_hwif** %80, align 8
  %81 = load %struct.hinic_cmdq_pages*, %struct.hinic_cmdq_pages** %10, align 8
  %82 = call i32 @cmdq_allocate_page(%struct.hinic_cmdq_pages* %81)
  store i32 %82, i32* %24, align 4
  %83 = load i32, i32* %24, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %77
  %86 = load %struct.pci_dev*, %struct.pci_dev** %18, align 8
  %87 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %86, i32 0, i32 0
  %88 = call i32 @dev_err(i32* %87, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %89 = load i32, i32* %24, align 4
  store i32 %89, i32* %9, align 4
  br label %263

90:                                               ; preds = %77
  %91 = load i64, i64* %20, align 8
  %92 = call i64 @ilog2(i64 %91)
  store i64 %92, i64* %19, align 8
  store i32 0, i32* %22, align 4
  br label %93

93:                                               ; preds = %232, %90
  %94 = load i32, i32* %22, align 4
  %95 = load i32, i32* %13, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %97, label %235

97:                                               ; preds = %93
  %98 = load %struct.hinic_hwif*, %struct.hinic_hwif** %12, align 8
  %99 = load %struct.hinic_wq*, %struct.hinic_wq** %11, align 8
  %100 = load i32, i32* %22, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.hinic_wq, %struct.hinic_wq* %99, i64 %101
  %103 = getelementptr inbounds %struct.hinic_wq, %struct.hinic_wq* %102, i32 0, i32 17
  store %struct.hinic_hwif* %98, %struct.hinic_hwif** %103, align 8
  %104 = load %struct.hinic_wq*, %struct.hinic_wq** %11, align 8
  %105 = load i32, i32* %22, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.hinic_wq, %struct.hinic_wq* %104, i64 %106
  %108 = getelementptr inbounds %struct.hinic_wq, %struct.hinic_wq* %107, i32 0, i32 16
  store i64 0, i64* %108, align 8
  %109 = load i32, i32* %22, align 4
  %110 = load %struct.hinic_wq*, %struct.hinic_wq** %11, align 8
  %111 = load i32, i32* %22, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.hinic_wq, %struct.hinic_wq* %110, i64 %112
  %114 = getelementptr inbounds %struct.hinic_wq, %struct.hinic_wq* %113, i32 0, i32 0
  store i32 %109, i32* %114, align 8
  %115 = load i64, i64* %14, align 8
  %116 = load %struct.hinic_wq*, %struct.hinic_wq** %11, align 8
  %117 = load i32, i32* %22, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.hinic_wq, %struct.hinic_wq* %116, i64 %118
  %120 = getelementptr inbounds %struct.hinic_wq, %struct.hinic_wq* %119, i32 0, i32 15
  store i64 %115, i64* %120, align 8
  %121 = load i64, i64* %15, align 8
  %122 = load %struct.hinic_wq*, %struct.hinic_wq** %11, align 8
  %123 = load i32, i32* %22, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.hinic_wq, %struct.hinic_wq* %122, i64 %124
  %126 = getelementptr inbounds %struct.hinic_wq, %struct.hinic_wq* %125, i32 0, i32 14
  store i64 %121, i64* %126, align 8
  %127 = load i64, i64* %16, align 8
  %128 = load %struct.hinic_wq*, %struct.hinic_wq** %11, align 8
  %129 = load i32, i32* %22, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.hinic_wq, %struct.hinic_wq* %128, i64 %130
  %132 = getelementptr inbounds %struct.hinic_wq, %struct.hinic_wq* %131, i32 0, i32 13
  store i64 %127, i64* %132, align 8
  %133 = load i64, i64* %17, align 8
  %134 = load %struct.hinic_wq*, %struct.hinic_wq** %11, align 8
  %135 = load i32, i32* %22, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.hinic_wq, %struct.hinic_wq* %134, i64 %136
  %138 = getelementptr inbounds %struct.hinic_wq, %struct.hinic_wq* %137, i32 0, i32 12
  store i64 %133, i64* %138, align 8
  %139 = load i64, i64* %20, align 8
  %140 = load %struct.hinic_wq*, %struct.hinic_wq** %11, align 8
  %141 = load i32, i32* %22, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.hinic_wq, %struct.hinic_wq* %140, i64 %142
  %144 = getelementptr inbounds %struct.hinic_wq, %struct.hinic_wq* %143, i32 0, i32 11
  store i64 %139, i64* %144, align 8
  %145 = load i64, i64* %19, align 8
  %146 = load %struct.hinic_wq*, %struct.hinic_wq** %11, align 8
  %147 = load i32, i32* %22, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.hinic_wq, %struct.hinic_wq* %146, i64 %148
  %150 = getelementptr inbounds %struct.hinic_wq, %struct.hinic_wq* %149, i32 0, i32 10
  store i64 %145, i64* %150, align 8
  %151 = load i64, i64* %21, align 8
  %152 = load %struct.hinic_wq*, %struct.hinic_wq** %11, align 8
  %153 = load i32, i32* %22, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.hinic_wq, %struct.hinic_wq* %152, i64 %154
  %156 = getelementptr inbounds %struct.hinic_wq, %struct.hinic_wq* %155, i32 0, i32 9
  store i64 %151, i64* %156, align 8
  %157 = load %struct.hinic_cmdq_pages*, %struct.hinic_cmdq_pages** %10, align 8
  %158 = load %struct.hinic_wq*, %struct.hinic_wq** %11, align 8
  %159 = load i32, i32* %22, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.hinic_wq, %struct.hinic_wq* %158, i64 %160
  %162 = call i32 @CMDQ_BASE_VADDR(%struct.hinic_cmdq_pages* %157, %struct.hinic_wq* %161)
  %163 = load %struct.hinic_wq*, %struct.hinic_wq** %11, align 8
  %164 = load i32, i32* %22, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.hinic_wq, %struct.hinic_wq* %163, i64 %165
  %167 = getelementptr inbounds %struct.hinic_wq, %struct.hinic_wq* %166, i32 0, i32 8
  store i32 %162, i32* %167, align 4
  %168 = load %struct.hinic_cmdq_pages*, %struct.hinic_cmdq_pages** %10, align 8
  %169 = load %struct.hinic_wq*, %struct.hinic_wq** %11, align 8
  %170 = load i32, i32* %22, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.hinic_wq, %struct.hinic_wq* %169, i64 %171
  %173 = call i32 @CMDQ_BASE_ADDR(%struct.hinic_cmdq_pages* %168, %struct.hinic_wq* %172)
  %174 = load %struct.hinic_wq*, %struct.hinic_wq** %11, align 8
  %175 = load i32, i32* %22, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.hinic_wq, %struct.hinic_wq* %174, i64 %176
  %178 = getelementptr inbounds %struct.hinic_wq, %struct.hinic_wq* %177, i32 0, i32 7
  store i32 %173, i32* %178, align 8
  %179 = load %struct.hinic_cmdq_pages*, %struct.hinic_cmdq_pages** %10, align 8
  %180 = load %struct.hinic_wq*, %struct.hinic_wq** %11, align 8
  %181 = load i32, i32* %22, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.hinic_wq, %struct.hinic_wq* %180, i64 %182
  %184 = call i32 @CMDQ_BASE_PADDR(%struct.hinic_cmdq_pages* %179, %struct.hinic_wq* %183)
  %185 = load %struct.hinic_wq*, %struct.hinic_wq** %11, align 8
  %186 = load i32, i32* %22, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.hinic_wq, %struct.hinic_wq* %185, i64 %187
  %189 = getelementptr inbounds %struct.hinic_wq, %struct.hinic_wq* %188, i32 0, i32 6
  store i32 %184, i32* %189, align 4
  %190 = load %struct.hinic_wq*, %struct.hinic_wq** %11, align 8
  %191 = load i32, i32* %22, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.hinic_wq, %struct.hinic_wq* %190, i64 %192
  %194 = load %struct.hinic_cmdq_pages*, %struct.hinic_cmdq_pages** %10, align 8
  %195 = getelementptr inbounds %struct.hinic_cmdq_pages, %struct.hinic_cmdq_pages* %194, i32 0, i32 0
  %196 = load %struct.hinic_hwif*, %struct.hinic_hwif** %195, align 8
  %197 = load i32, i32* @CMDQ_WQ_MAX_PAGES, align 4
  %198 = call i32 @alloc_wq_pages(%struct.hinic_wq* %193, %struct.hinic_hwif* %196, i32 %197)
  store i32 %198, i32* %24, align 4
  %199 = load i32, i32* %24, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %205

201:                                              ; preds = %97
  %202 = load %struct.pci_dev*, %struct.pci_dev** %18, align 8
  %203 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %202, i32 0, i32 0
  %204 = call i32 @dev_err(i32* %203, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  br label %236

205:                                              ; preds = %97
  %206 = load %struct.hinic_wq*, %struct.hinic_wq** %11, align 8
  %207 = load i32, i32* %22, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds %struct.hinic_wq, %struct.hinic_wq* %206, i64 %208
  %210 = getelementptr inbounds %struct.hinic_wq, %struct.hinic_wq* %209, i32 0, i32 5
  %211 = call i32 @atomic_set(i32* %210, i64 0)
  %212 = load %struct.hinic_wq*, %struct.hinic_wq** %11, align 8
  %213 = load i32, i32* %22, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds %struct.hinic_wq, %struct.hinic_wq* %212, i64 %214
  %216 = getelementptr inbounds %struct.hinic_wq, %struct.hinic_wq* %215, i32 0, i32 4
  %217 = call i32 @atomic_set(i32* %216, i64 0)
  %218 = load %struct.hinic_wq*, %struct.hinic_wq** %11, align 8
  %219 = load i32, i32* %22, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds %struct.hinic_wq, %struct.hinic_wq* %218, i64 %220
  %222 = getelementptr inbounds %struct.hinic_wq, %struct.hinic_wq* %221, i32 0, i32 3
  %223 = load i64, i64* %16, align 8
  %224 = call i32 @atomic_set(i32* %222, i64 %223)
  %225 = load i64, i64* %16, align 8
  %226 = sub nsw i64 %225, 1
  %227 = load %struct.hinic_wq*, %struct.hinic_wq** %11, align 8
  %228 = load i32, i32* %22, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds %struct.hinic_wq, %struct.hinic_wq* %227, i64 %229
  %231 = getelementptr inbounds %struct.hinic_wq, %struct.hinic_wq* %230, i32 0, i32 2
  store i64 %226, i64* %231, align 8
  br label %232

232:                                              ; preds = %205
  %233 = load i32, i32* %22, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %22, align 4
  br label %93

235:                                              ; preds = %93
  store i32 0, i32* %9, align 4
  br label %263

236:                                              ; preds = %201
  store i32 0, i32* %23, align 4
  br label %237

237:                                              ; preds = %256, %236
  %238 = load i32, i32* %23, align 4
  %239 = load i32, i32* %22, align 4
  %240 = icmp slt i32 %238, %239
  br i1 %240, label %241, label %259

241:                                              ; preds = %237
  %242 = load %struct.hinic_wq*, %struct.hinic_wq** %11, align 8
  %243 = load i32, i32* %23, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds %struct.hinic_wq, %struct.hinic_wq* %242, i64 %244
  %246 = load %struct.hinic_cmdq_pages*, %struct.hinic_cmdq_pages** %10, align 8
  %247 = getelementptr inbounds %struct.hinic_cmdq_pages, %struct.hinic_cmdq_pages* %246, i32 0, i32 0
  %248 = load %struct.hinic_hwif*, %struct.hinic_hwif** %247, align 8
  %249 = load %struct.hinic_wq*, %struct.hinic_wq** %11, align 8
  %250 = load i32, i32* %23, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds %struct.hinic_wq, %struct.hinic_wq* %249, i64 %251
  %253 = getelementptr inbounds %struct.hinic_wq, %struct.hinic_wq* %252, i32 0, i32 1
  %254 = load i32, i32* %253, align 4
  %255 = call i32 @free_wq_pages(%struct.hinic_wq* %245, %struct.hinic_hwif* %248, i32 %254)
  br label %256

256:                                              ; preds = %241
  %257 = load i32, i32* %23, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %23, align 4
  br label %237

259:                                              ; preds = %237
  %260 = load %struct.hinic_cmdq_pages*, %struct.hinic_cmdq_pages** %10, align 8
  %261 = call i32 @cmdq_free_page(%struct.hinic_cmdq_pages* %260)
  %262 = load i32, i32* %24, align 4
  store i32 %262, i32* %9, align 4
  br label %263

263:                                              ; preds = %259, %235, %85, %71, %54, %42, %33
  %264 = load i32, i32* %9, align 4
  ret i32 %264
}

declare dso_local i32 @is_power_of_2(i64) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i64 @ilog2(i64) #1

declare dso_local i64 @ALIGN(i64, i64) #1

declare dso_local i32 @cmdq_allocate_page(%struct.hinic_cmdq_pages*) #1

declare dso_local i32 @CMDQ_BASE_VADDR(%struct.hinic_cmdq_pages*, %struct.hinic_wq*) #1

declare dso_local i32 @CMDQ_BASE_ADDR(%struct.hinic_cmdq_pages*, %struct.hinic_wq*) #1

declare dso_local i32 @CMDQ_BASE_PADDR(%struct.hinic_cmdq_pages*, %struct.hinic_wq*) #1

declare dso_local i32 @alloc_wq_pages(%struct.hinic_wq*, %struct.hinic_hwif*, i32) #1

declare dso_local i32 @atomic_set(i32*, i64) #1

declare dso_local i32 @free_wq_pages(%struct.hinic_wq*, %struct.hinic_hwif*, i32) #1

declare dso_local i32 @cmdq_free_page(%struct.hinic_cmdq_pages*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
