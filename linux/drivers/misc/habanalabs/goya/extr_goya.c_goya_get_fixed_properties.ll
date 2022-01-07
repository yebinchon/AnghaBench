; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/goya/extr_goya.c_goya_get_fixed_properties.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/goya/extr_goya.c_goya_get_fixed_properties.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_device = type { i64, %struct.asic_fixed_properties }
%struct.asic_fixed_properties = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i32, i64, i64, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@NUMBER_OF_EXT_HW_QUEUES = common dso_local global i32 0, align 4
@QUEUE_TYPE_EXT = common dso_local global i32 0, align 4
@NUMBER_OF_CPU_HW_QUEUES = common dso_local global i32 0, align 4
@QUEUE_TYPE_CPU = common dso_local global i32 0, align 4
@NUMBER_OF_INT_HW_QUEUES = common dso_local global i32 0, align 4
@QUEUE_TYPE_INT = common dso_local global i32 0, align 4
@HL_MAX_QUEUES = common dso_local global i32 0, align 4
@QUEUE_TYPE_NA = common dso_local global i32 0, align 4
@NUMBER_OF_CMPLT_QUEUES = common dso_local global i32 0, align 4
@DRAM_PHYS_BASE = common dso_local global i64 0, align 8
@DRAM_PHYS_DEFAULT_SIZE = common dso_local global i64 0, align 8
@DRAM_BASE_ADDR_USER = common dso_local global i32 0, align 4
@SRAM_BASE_ADDR = common dso_local global i64 0, align 8
@SRAM_SIZE = common dso_local global i64 0, align 8
@SRAM_USER_BASE_OFFSET = common dso_local global i64 0, align 8
@MMU_PAGE_TABLES_ADDR = common dso_local global i32 0, align 4
@MMU_DRAM_DEFAULT_PAGE_ADDR = common dso_local global i32 0, align 4
@MMU_PAGE_TABLES_SIZE = common dso_local global i32 0, align 4
@HL_PTE_SIZE = common dso_local global i32 0, align 4
@HOP_TABLE_SIZE = common dso_local global i32 0, align 4
@HOP0_TABLES_TOTAL_SIZE = common dso_local global i32 0, align 4
@PAGE_SIZE_2MB = common dso_local global i32 0, align 4
@VA_HOST_SPACE_START = common dso_local global i32 0, align 4
@VA_HOST_SPACE_END = common dso_local global i32 0, align 4
@VA_DDR_SPACE_START = common dso_local global i32 0, align 4
@VA_DDR_SPACE_END = common dso_local global i32 0, align 4
@CFG_SIZE = common dso_local global i32 0, align 4
@MAX_ASID = common dso_local global i32 0, align 4
@GOYA_ASYNC_EVENT_ID_SIZE = common dso_local global i32 0, align 4
@PLL_HIGH_DEFAULT = common dso_local global i32 0, align 4
@GOYA_CB_POOL_CB_CNT = common dso_local global i32 0, align 4
@GOYA_CB_POOL_CB_SIZE = common dso_local global i32 0, align 4
@MAX_POWER_DEFAULT = common dso_local global i32 0, align 4
@TPC_ENABLED_MASK = common dso_local global i32 0, align 4
@mmPCIE_DBI_BASE = common dso_local global i32 0, align 4
@CFG_BASE = common dso_local global i64 0, align 8
@mmPCIE_AUX_DBI = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goya_get_fixed_properties(%struct.hl_device* %0) #0 {
  %2 = alloca %struct.hl_device*, align 8
  %3 = alloca %struct.asic_fixed_properties*, align 8
  %4 = alloca i32, align 4
  store %struct.hl_device* %0, %struct.hl_device** %2, align 8
  %5 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %6 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %5, i32 0, i32 1
  store %struct.asic_fixed_properties* %6, %struct.asic_fixed_properties** %3, align 8
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %27, %1
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @NUMBER_OF_EXT_HW_QUEUES, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %30

11:                                               ; preds = %7
  %12 = load i32, i32* @QUEUE_TYPE_EXT, align 4
  %13 = load %struct.asic_fixed_properties*, %struct.asic_fixed_properties** %3, align 8
  %14 = getelementptr inbounds %struct.asic_fixed_properties, %struct.asic_fixed_properties* %13, i32 0, i32 31
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  store i32 %12, i32* %19, align 4
  %20 = load %struct.asic_fixed_properties*, %struct.asic_fixed_properties** %3, align 8
  %21 = getelementptr inbounds %struct.asic_fixed_properties, %struct.asic_fixed_properties* %20, i32 0, i32 31
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store i32 0, i32* %26, align 4
  br label %27

27:                                               ; preds = %11
  %28 = load i32, i32* %4, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %4, align 4
  br label %7

30:                                               ; preds = %7
  br label %31

31:                                               ; preds = %53, %30
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @NUMBER_OF_EXT_HW_QUEUES, align 4
  %34 = load i32, i32* @NUMBER_OF_CPU_HW_QUEUES, align 4
  %35 = add nsw i32 %33, %34
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %56

37:                                               ; preds = %31
  %38 = load i32, i32* @QUEUE_TYPE_CPU, align 4
  %39 = load %struct.asic_fixed_properties*, %struct.asic_fixed_properties** %3, align 8
  %40 = getelementptr inbounds %struct.asic_fixed_properties, %struct.asic_fixed_properties* %39, i32 0, i32 31
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = load i32, i32* %4, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  store i32 %38, i32* %45, align 4
  %46 = load %struct.asic_fixed_properties*, %struct.asic_fixed_properties** %3, align 8
  %47 = getelementptr inbounds %struct.asic_fixed_properties, %struct.asic_fixed_properties* %46, i32 0, i32 31
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = load i32, i32* %4, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  store i32 1, i32* %52, align 4
  br label %53

53:                                               ; preds = %37
  %54 = load i32, i32* %4, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %4, align 4
  br label %31

56:                                               ; preds = %31
  br label %57

57:                                               ; preds = %81, %56
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* @NUMBER_OF_EXT_HW_QUEUES, align 4
  %60 = load i32, i32* @NUMBER_OF_CPU_HW_QUEUES, align 4
  %61 = add nsw i32 %59, %60
  %62 = load i32, i32* @NUMBER_OF_INT_HW_QUEUES, align 4
  %63 = add nsw i32 %61, %62
  %64 = icmp slt i32 %58, %63
  br i1 %64, label %65, label %84

65:                                               ; preds = %57
  %66 = load i32, i32* @QUEUE_TYPE_INT, align 4
  %67 = load %struct.asic_fixed_properties*, %struct.asic_fixed_properties** %3, align 8
  %68 = getelementptr inbounds %struct.asic_fixed_properties, %struct.asic_fixed_properties* %67, i32 0, i32 31
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = load i32, i32* %4, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 1
  store i32 %66, i32* %73, align 4
  %74 = load %struct.asic_fixed_properties*, %struct.asic_fixed_properties** %3, align 8
  %75 = getelementptr inbounds %struct.asic_fixed_properties, %struct.asic_fixed_properties* %74, i32 0, i32 31
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = load i32, i32* %4, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  store i32 0, i32* %80, align 4
  br label %81

81:                                               ; preds = %65
  %82 = load i32, i32* %4, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %4, align 4
  br label %57

84:                                               ; preds = %57
  br label %85

85:                                               ; preds = %98, %84
  %86 = load i32, i32* %4, align 4
  %87 = load i32, i32* @HL_MAX_QUEUES, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %101

89:                                               ; preds = %85
  %90 = load i32, i32* @QUEUE_TYPE_NA, align 4
  %91 = load %struct.asic_fixed_properties*, %struct.asic_fixed_properties** %3, align 8
  %92 = getelementptr inbounds %struct.asic_fixed_properties, %struct.asic_fixed_properties* %91, i32 0, i32 31
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = load i32, i32* %4, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 1
  store i32 %90, i32* %97, align 4
  br label %98

98:                                               ; preds = %89
  %99 = load i32, i32* %4, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %4, align 4
  br label %85

101:                                              ; preds = %85
  %102 = load i32, i32* @NUMBER_OF_CMPLT_QUEUES, align 4
  %103 = load %struct.asic_fixed_properties*, %struct.asic_fixed_properties** %3, align 8
  %104 = getelementptr inbounds %struct.asic_fixed_properties, %struct.asic_fixed_properties* %103, i32 0, i32 30
  store i32 %102, i32* %104, align 8
  %105 = load i64, i64* @DRAM_PHYS_BASE, align 8
  %106 = load %struct.asic_fixed_properties*, %struct.asic_fixed_properties** %3, align 8
  %107 = getelementptr inbounds %struct.asic_fixed_properties, %struct.asic_fixed_properties* %106, i32 0, i32 28
  store i64 %105, i64* %107, align 8
  %108 = load i64, i64* @DRAM_PHYS_DEFAULT_SIZE, align 8
  %109 = load %struct.asic_fixed_properties*, %struct.asic_fixed_properties** %3, align 8
  %110 = getelementptr inbounds %struct.asic_fixed_properties, %struct.asic_fixed_properties* %109, i32 0, i32 27
  store i64 %108, i64* %110, align 8
  %111 = load %struct.asic_fixed_properties*, %struct.asic_fixed_properties** %3, align 8
  %112 = getelementptr inbounds %struct.asic_fixed_properties, %struct.asic_fixed_properties* %111, i32 0, i32 28
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.asic_fixed_properties*, %struct.asic_fixed_properties** %3, align 8
  %115 = getelementptr inbounds %struct.asic_fixed_properties, %struct.asic_fixed_properties* %114, i32 0, i32 27
  %116 = load i64, i64* %115, align 8
  %117 = add nsw i64 %113, %116
  %118 = load %struct.asic_fixed_properties*, %struct.asic_fixed_properties** %3, align 8
  %119 = getelementptr inbounds %struct.asic_fixed_properties, %struct.asic_fixed_properties* %118, i32 0, i32 29
  store i64 %117, i64* %119, align 8
  %120 = load i32, i32* @DRAM_BASE_ADDR_USER, align 4
  %121 = load %struct.asic_fixed_properties*, %struct.asic_fixed_properties** %3, align 8
  %122 = getelementptr inbounds %struct.asic_fixed_properties, %struct.asic_fixed_properties* %121, i32 0, i32 26
  store i32 %120, i32* %122, align 8
  %123 = load i64, i64* @SRAM_BASE_ADDR, align 8
  %124 = load %struct.asic_fixed_properties*, %struct.asic_fixed_properties** %3, align 8
  %125 = getelementptr inbounds %struct.asic_fixed_properties, %struct.asic_fixed_properties* %124, i32 0, i32 22
  store i64 %123, i64* %125, align 8
  %126 = load i64, i64* @SRAM_SIZE, align 8
  %127 = load %struct.asic_fixed_properties*, %struct.asic_fixed_properties** %3, align 8
  %128 = getelementptr inbounds %struct.asic_fixed_properties, %struct.asic_fixed_properties* %127, i32 0, i32 24
  store i64 %126, i64* %128, align 8
  %129 = load %struct.asic_fixed_properties*, %struct.asic_fixed_properties** %3, align 8
  %130 = getelementptr inbounds %struct.asic_fixed_properties, %struct.asic_fixed_properties* %129, i32 0, i32 22
  %131 = load i64, i64* %130, align 8
  %132 = load %struct.asic_fixed_properties*, %struct.asic_fixed_properties** %3, align 8
  %133 = getelementptr inbounds %struct.asic_fixed_properties, %struct.asic_fixed_properties* %132, i32 0, i32 24
  %134 = load i64, i64* %133, align 8
  %135 = add nsw i64 %131, %134
  %136 = load %struct.asic_fixed_properties*, %struct.asic_fixed_properties** %3, align 8
  %137 = getelementptr inbounds %struct.asic_fixed_properties, %struct.asic_fixed_properties* %136, i32 0, i32 25
  store i64 %135, i64* %137, align 8
  %138 = load %struct.asic_fixed_properties*, %struct.asic_fixed_properties** %3, align 8
  %139 = getelementptr inbounds %struct.asic_fixed_properties, %struct.asic_fixed_properties* %138, i32 0, i32 22
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @SRAM_USER_BASE_OFFSET, align 8
  %142 = add nsw i64 %140, %141
  %143 = load %struct.asic_fixed_properties*, %struct.asic_fixed_properties** %3, align 8
  %144 = getelementptr inbounds %struct.asic_fixed_properties, %struct.asic_fixed_properties* %143, i32 0, i32 23
  store i64 %142, i64* %144, align 8
  %145 = load i32, i32* @MMU_PAGE_TABLES_ADDR, align 4
  %146 = load %struct.asic_fixed_properties*, %struct.asic_fixed_properties** %3, align 8
  %147 = getelementptr inbounds %struct.asic_fixed_properties, %struct.asic_fixed_properties* %146, i32 0, i32 21
  store i32 %145, i32* %147, align 4
  %148 = load i32, i32* @MMU_DRAM_DEFAULT_PAGE_ADDR, align 4
  %149 = load %struct.asic_fixed_properties*, %struct.asic_fixed_properties** %3, align 8
  %150 = getelementptr inbounds %struct.asic_fixed_properties, %struct.asic_fixed_properties* %149, i32 0, i32 20
  store i32 %148, i32* %150, align 8
  %151 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %152 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %101
  %156 = load %struct.asic_fixed_properties*, %struct.asic_fixed_properties** %3, align 8
  %157 = getelementptr inbounds %struct.asic_fixed_properties, %struct.asic_fixed_properties* %156, i32 0, i32 0
  store i32 8388608, i32* %157, align 8
  br label %162

158:                                              ; preds = %101
  %159 = load i32, i32* @MMU_PAGE_TABLES_SIZE, align 4
  %160 = load %struct.asic_fixed_properties*, %struct.asic_fixed_properties** %3, align 8
  %161 = getelementptr inbounds %struct.asic_fixed_properties, %struct.asic_fixed_properties* %160, i32 0, i32 0
  store i32 %159, i32* %161, align 8
  br label %162

162:                                              ; preds = %158, %155
  %163 = load i32, i32* @HL_PTE_SIZE, align 4
  %164 = load %struct.asic_fixed_properties*, %struct.asic_fixed_properties** %3, align 8
  %165 = getelementptr inbounds %struct.asic_fixed_properties, %struct.asic_fixed_properties* %164, i32 0, i32 19
  store i32 %163, i32* %165, align 4
  %166 = load i32, i32* @HOP_TABLE_SIZE, align 4
  %167 = load %struct.asic_fixed_properties*, %struct.asic_fixed_properties** %3, align 8
  %168 = getelementptr inbounds %struct.asic_fixed_properties, %struct.asic_fixed_properties* %167, i32 0, i32 18
  store i32 %166, i32* %168, align 8
  %169 = load i32, i32* @HOP0_TABLES_TOTAL_SIZE, align 4
  %170 = load %struct.asic_fixed_properties*, %struct.asic_fixed_properties** %3, align 8
  %171 = getelementptr inbounds %struct.asic_fixed_properties, %struct.asic_fixed_properties* %170, i32 0, i32 17
  store i32 %169, i32* %171, align 4
  %172 = load i32, i32* @PAGE_SIZE_2MB, align 4
  %173 = load %struct.asic_fixed_properties*, %struct.asic_fixed_properties** %3, align 8
  %174 = getelementptr inbounds %struct.asic_fixed_properties, %struct.asic_fixed_properties* %173, i32 0, i32 16
  store i32 %172, i32* %174, align 8
  %175 = load i32, i32* @VA_HOST_SPACE_START, align 4
  %176 = load %struct.asic_fixed_properties*, %struct.asic_fixed_properties** %3, align 8
  %177 = getelementptr inbounds %struct.asic_fixed_properties, %struct.asic_fixed_properties* %176, i32 0, i32 15
  store i32 %175, i32* %177, align 4
  %178 = load i32, i32* @VA_HOST_SPACE_END, align 4
  %179 = load %struct.asic_fixed_properties*, %struct.asic_fixed_properties** %3, align 8
  %180 = getelementptr inbounds %struct.asic_fixed_properties, %struct.asic_fixed_properties* %179, i32 0, i32 14
  store i32 %178, i32* %180, align 8
  %181 = load i32, i32* @VA_DDR_SPACE_START, align 4
  %182 = load %struct.asic_fixed_properties*, %struct.asic_fixed_properties** %3, align 8
  %183 = getelementptr inbounds %struct.asic_fixed_properties, %struct.asic_fixed_properties* %182, i32 0, i32 13
  store i32 %181, i32* %183, align 4
  %184 = load i32, i32* @VA_DDR_SPACE_END, align 4
  %185 = load %struct.asic_fixed_properties*, %struct.asic_fixed_properties** %3, align 8
  %186 = getelementptr inbounds %struct.asic_fixed_properties, %struct.asic_fixed_properties* %185, i32 0, i32 11
  store i32 %184, i32* %186, align 4
  %187 = load %struct.asic_fixed_properties*, %struct.asic_fixed_properties** %3, align 8
  %188 = getelementptr inbounds %struct.asic_fixed_properties, %struct.asic_fixed_properties* %187, i32 0, i32 11
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.asic_fixed_properties*, %struct.asic_fixed_properties** %3, align 8
  %191 = getelementptr inbounds %struct.asic_fixed_properties, %struct.asic_fixed_properties* %190, i32 0, i32 12
  store i32 %189, i32* %191, align 8
  %192 = load i32, i32* @CFG_SIZE, align 4
  %193 = load %struct.asic_fixed_properties*, %struct.asic_fixed_properties** %3, align 8
  %194 = getelementptr inbounds %struct.asic_fixed_properties, %struct.asic_fixed_properties* %193, i32 0, i32 10
  store i32 %192, i32* %194, align 8
  %195 = load i32, i32* @MAX_ASID, align 4
  %196 = load %struct.asic_fixed_properties*, %struct.asic_fixed_properties** %3, align 8
  %197 = getelementptr inbounds %struct.asic_fixed_properties, %struct.asic_fixed_properties* %196, i32 0, i32 9
  store i32 %195, i32* %197, align 4
  %198 = load i32, i32* @GOYA_ASYNC_EVENT_ID_SIZE, align 4
  %199 = load %struct.asic_fixed_properties*, %struct.asic_fixed_properties** %3, align 8
  %200 = getelementptr inbounds %struct.asic_fixed_properties, %struct.asic_fixed_properties* %199, i32 0, i32 8
  store i32 %198, i32* %200, align 8
  %201 = load i32, i32* @PLL_HIGH_DEFAULT, align 4
  %202 = load %struct.asic_fixed_properties*, %struct.asic_fixed_properties** %3, align 8
  %203 = getelementptr inbounds %struct.asic_fixed_properties, %struct.asic_fixed_properties* %202, i32 0, i32 7
  store i32 %201, i32* %203, align 4
  %204 = load i32, i32* @GOYA_CB_POOL_CB_CNT, align 4
  %205 = load %struct.asic_fixed_properties*, %struct.asic_fixed_properties** %3, align 8
  %206 = getelementptr inbounds %struct.asic_fixed_properties, %struct.asic_fixed_properties* %205, i32 0, i32 6
  store i32 %204, i32* %206, align 8
  %207 = load i32, i32* @GOYA_CB_POOL_CB_SIZE, align 4
  %208 = load %struct.asic_fixed_properties*, %struct.asic_fixed_properties** %3, align 8
  %209 = getelementptr inbounds %struct.asic_fixed_properties, %struct.asic_fixed_properties* %208, i32 0, i32 5
  store i32 %207, i32* %209, align 4
  %210 = load i32, i32* @MAX_POWER_DEFAULT, align 4
  %211 = load %struct.asic_fixed_properties*, %struct.asic_fixed_properties** %3, align 8
  %212 = getelementptr inbounds %struct.asic_fixed_properties, %struct.asic_fixed_properties* %211, i32 0, i32 4
  store i32 %210, i32* %212, align 8
  %213 = load i32, i32* @TPC_ENABLED_MASK, align 4
  %214 = load %struct.asic_fixed_properties*, %struct.asic_fixed_properties** %3, align 8
  %215 = getelementptr inbounds %struct.asic_fixed_properties, %struct.asic_fixed_properties* %214, i32 0, i32 3
  store i32 %213, i32* %215, align 4
  %216 = load i32, i32* @mmPCIE_DBI_BASE, align 4
  %217 = load %struct.asic_fixed_properties*, %struct.asic_fixed_properties** %3, align 8
  %218 = getelementptr inbounds %struct.asic_fixed_properties, %struct.asic_fixed_properties* %217, i32 0, i32 2
  store i32 %216, i32* %218, align 8
  %219 = load i64, i64* @CFG_BASE, align 8
  %220 = load i64, i64* @mmPCIE_AUX_DBI, align 8
  %221 = add nsw i64 %219, %220
  %222 = load %struct.asic_fixed_properties*, %struct.asic_fixed_properties** %3, align 8
  %223 = getelementptr inbounds %struct.asic_fixed_properties, %struct.asic_fixed_properties* %222, i32 0, i32 1
  store i64 %221, i64* %223, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
