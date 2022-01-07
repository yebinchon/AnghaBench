; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ttpci/extr_budget-core.c_ttpci_budget_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ttpci/extr_budget-core.c_ttpci_budget_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.budget = type { i32, i32, i32, i32, %struct.TYPE_11__, %struct.TYPE_9__, i32, i32*, i32, %struct.budget_info*, i32, i32, i32, %struct.saa7146_dev*, i32, i64 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.budget_info = type { i32, i32 }
%struct.saa7146_dev = type { %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.saa7146_pci_extension_data = type { %struct.budget_info* }
%struct.module = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"dev: %p, budget: %p\0A\00", align 1
@TS_WIDTH_ACTIVY = common dso_local global i32 0, align 4
@TS_MAX_BUFSIZE_K_ACTIVY = common dso_local global i32 0, align 4
@TS_HEIGHT_MASK_ACTIVY = common dso_local global i32 0, align 4
@TS_WIDTH_DVBC = common dso_local global i32 0, align 4
@TS_MAX_BUFSIZE_K_DVBC = common dso_local global i32 0, align 4
@TS_HEIGHT_MASK_DVBC = common dso_local global i32 0, align 4
@TS_WIDTH = common dso_local global i32 0, align 4
@TS_MAX_BUFSIZE_K = common dso_local global i32 0, align 4
@TS_HEIGHT_MASK = common dso_local global i32 0, align 4
@dma_buffer_size = common dso_local global i32 0, align 4
@TS_MIN_BUFSIZE_K = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"%s: buffer type = %s, width = %d, height = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"odd/even\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"single\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"%s: dma buffer size %u\0A\00", align 1
@DD1_STREAM_B = common dso_local global i32 0, align 4
@MC2 = common dso_local global i32 0, align 4
@MASK_09 = common dso_local global i32 0, align 4
@MASK_25 = common dso_local global i32 0, align 4
@MASK_10 = common dso_local global i32 0, align 4
@MASK_26 = common dso_local global i32 0, align 4
@DD1_INIT = common dso_local global i32 0, align 4
@BUDGET_VIDEO_PORTB = common dso_local global i32 0, align 4
@BUDGET_VIDEO_PORTA = common dso_local global i32 0, align 4
@GPIO_CTRL = common dso_local global i32 0, align 4
@SAA7146_I2C_BUS_BIT_RATE_120 = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PCI_BT_V1 = common dso_local global i32 0, align 4
@vpeirq = common dso_local global i32 0, align 4
@SAA7146_GPIO_OUTHI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ttpci_budget_init(%struct.budget* %0, %struct.saa7146_dev* %1, %struct.saa7146_pci_extension_data* %2, %struct.module* %3, i16* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.budget*, align 8
  %8 = alloca %struct.saa7146_dev*, align 8
  %9 = alloca %struct.saa7146_pci_extension_data*, align 8
  %10 = alloca %struct.module*, align 8
  %11 = alloca i16*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.budget_info*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.budget* %0, %struct.budget** %7, align 8
  store %struct.saa7146_dev* %1, %struct.saa7146_dev** %8, align 8
  store %struct.saa7146_pci_extension_data* %2, %struct.saa7146_pci_extension_data** %9, align 8
  store %struct.module* %3, %struct.module** %10, align 8
  store i16* %4, i16** %11, align 8
  store i32 0, i32* %12, align 4
  %16 = load %struct.saa7146_pci_extension_data*, %struct.saa7146_pci_extension_data** %9, align 8
  %17 = getelementptr inbounds %struct.saa7146_pci_extension_data, %struct.saa7146_pci_extension_data* %16, i32 0, i32 0
  %18 = load %struct.budget_info*, %struct.budget_info** %17, align 8
  store %struct.budget_info* %18, %struct.budget_info** %13, align 8
  %19 = load %struct.budget*, %struct.budget** %7, align 8
  %20 = call i32 @memset(%struct.budget* %19, i32 0, i32 96)
  %21 = load %struct.saa7146_dev*, %struct.saa7146_dev** %8, align 8
  %22 = load %struct.budget*, %struct.budget** %7, align 8
  %23 = call i32 (i32, i8*, %struct.saa7146_dev*, ...) @dprintk(i32 2, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), %struct.saa7146_dev* %21, %struct.budget* %22)
  %24 = load %struct.budget_info*, %struct.budget_info** %13, align 8
  %25 = load %struct.budget*, %struct.budget** %7, align 8
  %26 = getelementptr inbounds %struct.budget, %struct.budget* %25, i32 0, i32 9
  store %struct.budget_info* %24, %struct.budget_info** %26, align 8
  %27 = load %struct.saa7146_dev*, %struct.saa7146_dev** %8, align 8
  %28 = load %struct.budget*, %struct.budget** %7, align 8
  %29 = getelementptr inbounds %struct.budget, %struct.budget* %28, i32 0, i32 13
  store %struct.saa7146_dev* %27, %struct.saa7146_dev** %29, align 8
  %30 = load %struct.budget*, %struct.budget** %7, align 8
  %31 = getelementptr inbounds %struct.budget, %struct.budget* %30, i32 0, i32 9
  %32 = load %struct.budget_info*, %struct.budget_info** %31, align 8
  %33 = getelementptr inbounds %struct.budget_info, %struct.budget_info* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  switch i32 %34, label %47 [
    i32 133, label %35
    i32 132, label %41
    i32 131, label %41
    i32 135, label %41
    i32 129, label %41
    i32 128, label %41
    i32 130, label %41
    i32 134, label %41
  ]

35:                                               ; preds = %5
  %36 = load i32, i32* @TS_WIDTH_ACTIVY, align 4
  %37 = load %struct.budget*, %struct.budget** %7, align 8
  %38 = getelementptr inbounds %struct.budget, %struct.budget* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load i32, i32* @TS_MAX_BUFSIZE_K_ACTIVY, align 4
  store i32 %39, i32* %14, align 4
  %40 = load i32, i32* @TS_HEIGHT_MASK_ACTIVY, align 4
  store i32 %40, i32* %15, align 4
  br label %53

41:                                               ; preds = %5, %5, %5, %5, %5, %5, %5
  %42 = load i32, i32* @TS_WIDTH_DVBC, align 4
  %43 = load %struct.budget*, %struct.budget** %7, align 8
  %44 = getelementptr inbounds %struct.budget, %struct.budget* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load i32, i32* @TS_MAX_BUFSIZE_K_DVBC, align 4
  store i32 %45, i32* %14, align 4
  %46 = load i32, i32* @TS_HEIGHT_MASK_DVBC, align 4
  store i32 %46, i32* %15, align 4
  br label %53

47:                                               ; preds = %5
  %48 = load i32, i32* @TS_WIDTH, align 4
  %49 = load %struct.budget*, %struct.budget** %7, align 8
  %50 = getelementptr inbounds %struct.budget, %struct.budget* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load i32, i32* @TS_MAX_BUFSIZE_K, align 4
  store i32 %51, i32* %14, align 4
  %52 = load i32, i32* @TS_HEIGHT_MASK, align 4
  store i32 %52, i32* %15, align 4
  br label %53

53:                                               ; preds = %47, %41, %35
  %54 = load i32, i32* @dma_buffer_size, align 4
  %55 = load i32, i32* @TS_MIN_BUFSIZE_K, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  %58 = load i32, i32* @TS_MIN_BUFSIZE_K, align 4
  store i32 %58, i32* @dma_buffer_size, align 4
  br label %66

59:                                               ; preds = %53
  %60 = load i32, i32* @dma_buffer_size, align 4
  %61 = load i32, i32* %14, align 4
  %62 = icmp sgt i32 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  %64 = load i32, i32* %14, align 4
  store i32 %64, i32* @dma_buffer_size, align 4
  br label %65

65:                                               ; preds = %63, %59
  br label %66

66:                                               ; preds = %65, %57
  %67 = load i32, i32* @dma_buffer_size, align 4
  %68 = mul nsw i32 %67, 1024
  %69 = load %struct.budget*, %struct.budget** %7, align 8
  %70 = getelementptr inbounds %struct.budget, %struct.budget* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = sdiv i32 %68, %71
  %73 = load %struct.budget*, %struct.budget** %7, align 8
  %74 = getelementptr inbounds %struct.budget, %struct.budget* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  %75 = load %struct.budget*, %struct.budget** %7, align 8
  %76 = getelementptr inbounds %struct.budget, %struct.budget* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = icmp sgt i32 %77, 4095
  br i1 %78, label %79, label %99

79:                                               ; preds = %66
  %80 = load %struct.budget*, %struct.budget** %7, align 8
  %81 = getelementptr inbounds %struct.budget, %struct.budget* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = sdiv i32 %82, 2
  store i32 %83, i32* %81, align 4
  %84 = load i32, i32* %15, align 4
  %85 = load %struct.budget*, %struct.budget** %7, align 8
  %86 = getelementptr inbounds %struct.budget, %struct.budget* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = and i32 %87, %84
  store i32 %88, i32* %86, align 4
  %89 = load %struct.budget*, %struct.budget** %7, align 8
  %90 = getelementptr inbounds %struct.budget, %struct.budget* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = mul nsw i32 2, %91
  %93 = load %struct.budget*, %struct.budget** %7, align 8
  %94 = getelementptr inbounds %struct.budget, %struct.budget* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = mul nsw i32 %92, %95
  %97 = load %struct.budget*, %struct.budget** %7, align 8
  %98 = getelementptr inbounds %struct.budget, %struct.budget* %97, i32 0, i32 2
  store i32 %96, i32* %98, align 8
  br label %114

99:                                               ; preds = %66
  %100 = load i32, i32* %15, align 4
  %101 = load %struct.budget*, %struct.budget** %7, align 8
  %102 = getelementptr inbounds %struct.budget, %struct.budget* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = and i32 %103, %100
  store i32 %104, i32* %102, align 4
  %105 = load %struct.budget*, %struct.budget** %7, align 8
  %106 = getelementptr inbounds %struct.budget, %struct.budget* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.budget*, %struct.budget** %7, align 8
  %109 = getelementptr inbounds %struct.budget, %struct.budget* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = mul nsw i32 %107, %110
  %112 = load %struct.budget*, %struct.budget** %7, align 8
  %113 = getelementptr inbounds %struct.budget, %struct.budget* %112, i32 0, i32 2
  store i32 %111, i32* %113, align 8
  br label %114

114:                                              ; preds = %99, %79
  %115 = load %struct.budget*, %struct.budget** %7, align 8
  %116 = getelementptr inbounds %struct.budget, %struct.budget* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = mul nsw i32 %117, 80
  %119 = sdiv i32 %118, 100
  %120 = load %struct.budget*, %struct.budget** %7, align 8
  %121 = getelementptr inbounds %struct.budget, %struct.budget* %120, i32 0, i32 3
  store i32 %119, i32* %121, align 4
  %122 = load %struct.budget*, %struct.budget** %7, align 8
  %123 = getelementptr inbounds %struct.budget, %struct.budget* %122, i32 0, i32 15
  store i64 0, i64* %123, align 8
  %124 = load i32, i32* @jiffies, align 4
  %125 = load %struct.budget*, %struct.budget** %7, align 8
  %126 = getelementptr inbounds %struct.budget, %struct.budget* %125, i32 0, i32 14
  store i32 %124, i32* %126, align 8
  %127 = load %struct.budget*, %struct.budget** %7, align 8
  %128 = getelementptr inbounds %struct.budget, %struct.budget* %127, i32 0, i32 13
  %129 = load %struct.saa7146_dev*, %struct.saa7146_dev** %128, align 8
  %130 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = sext i32 %131 to i64
  %133 = inttoptr i64 %132 to %struct.saa7146_dev*
  %134 = load %struct.budget*, %struct.budget** %7, align 8
  %135 = getelementptr inbounds %struct.budget, %struct.budget* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.budget*, %struct.budget** %7, align 8
  %138 = getelementptr inbounds %struct.budget, %struct.budget* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.budget*, %struct.budget** %7, align 8
  %141 = getelementptr inbounds %struct.budget, %struct.budget* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = mul nsw i32 %139, %142
  %144 = icmp sgt i32 %136, %143
  %145 = zext i1 %144 to i64
  %146 = select i1 %144, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0)
  %147 = load %struct.budget*, %struct.budget** %7, align 8
  %148 = getelementptr inbounds %struct.budget, %struct.budget* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = load %struct.budget*, %struct.budget** %7, align 8
  %151 = getelementptr inbounds %struct.budget, %struct.budget* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = call i32 (i32, i8*, %struct.saa7146_dev*, ...) @dprintk(i32 2, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), %struct.saa7146_dev* %133, i8* %146, i32 %149, i32 %152)
  %154 = load %struct.budget*, %struct.budget** %7, align 8
  %155 = getelementptr inbounds %struct.budget, %struct.budget* %154, i32 0, i32 13
  %156 = load %struct.saa7146_dev*, %struct.saa7146_dev** %155, align 8
  %157 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.budget*, %struct.budget** %7, align 8
  %160 = getelementptr inbounds %struct.budget, %struct.budget* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = call i32 @printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %158, i32 %161)
  %163 = load %struct.budget*, %struct.budget** %7, align 8
  %164 = getelementptr inbounds %struct.budget, %struct.budget* %163, i32 0, i32 4
  %165 = load %struct.budget*, %struct.budget** %7, align 8
  %166 = getelementptr inbounds %struct.budget, %struct.budget* %165, i32 0, i32 9
  %167 = load %struct.budget_info*, %struct.budget_info** %166, align 8
  %168 = getelementptr inbounds %struct.budget_info, %struct.budget_info* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.module*, %struct.module** %10, align 8
  %171 = load %struct.budget*, %struct.budget** %7, align 8
  %172 = getelementptr inbounds %struct.budget, %struct.budget* %171, i32 0, i32 13
  %173 = load %struct.saa7146_dev*, %struct.saa7146_dev** %172, align 8
  %174 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %173, i32 0, i32 0
  %175 = load %struct.TYPE_10__*, %struct.TYPE_10__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %175, i32 0, i32 0
  %177 = load i16*, i16** %11, align 8
  %178 = call i32 @dvb_register_adapter(%struct.TYPE_11__* %164, i32 %169, %struct.module* %170, i32* %176, i16* %177)
  store i32 %178, i32* %12, align 4
  %179 = load i32, i32* %12, align 4
  %180 = icmp slt i32 %179, 0
  br i1 %180, label %181, label %183

181:                                              ; preds = %114
  %182 = load i32, i32* %12, align 4
  store i32 %182, i32* %6, align 4
  br label %343

183:                                              ; preds = %114
  %184 = load %struct.saa7146_dev*, %struct.saa7146_dev** %8, align 8
  %185 = load i32, i32* @DD1_STREAM_B, align 4
  %186 = call i32 @saa7146_write(%struct.saa7146_dev* %184, i32 %185, i32 0)
  %187 = load %struct.saa7146_dev*, %struct.saa7146_dev** %8, align 8
  %188 = load i32, i32* @MC2, align 4
  %189 = load i32, i32* @MASK_09, align 4
  %190 = load i32, i32* @MASK_25, align 4
  %191 = or i32 %189, %190
  %192 = call i32 @saa7146_write(%struct.saa7146_dev* %187, i32 %188, i32 %191)
  %193 = load %struct.saa7146_dev*, %struct.saa7146_dev** %8, align 8
  %194 = load i32, i32* @MC2, align 4
  %195 = load i32, i32* @MASK_10, align 4
  %196 = load i32, i32* @MASK_26, align 4
  %197 = or i32 %195, %196
  %198 = call i32 @saa7146_write(%struct.saa7146_dev* %193, i32 %194, i32 %197)
  %199 = load %struct.saa7146_dev*, %struct.saa7146_dev** %8, align 8
  %200 = load i32, i32* @DD1_INIT, align 4
  %201 = call i32 @saa7146_write(%struct.saa7146_dev* %199, i32 %200, i32 33554432)
  %202 = load %struct.saa7146_dev*, %struct.saa7146_dev** %8, align 8
  %203 = load i32, i32* @MC2, align 4
  %204 = load i32, i32* @MASK_09, align 4
  %205 = load i32, i32* @MASK_25, align 4
  %206 = or i32 %204, %205
  %207 = load i32, i32* @MASK_10, align 4
  %208 = or i32 %206, %207
  %209 = load i32, i32* @MASK_26, align 4
  %210 = or i32 %208, %209
  %211 = call i32 @saa7146_write(%struct.saa7146_dev* %202, i32 %203, i32 %210)
  %212 = load %struct.budget_info*, %struct.budget_info** %13, align 8
  %213 = getelementptr inbounds %struct.budget_info, %struct.budget_info* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = icmp ne i32 %214, 133
  br i1 %215, label %216, label %220

216:                                              ; preds = %183
  %217 = load i32, i32* @BUDGET_VIDEO_PORTB, align 4
  %218 = load %struct.budget*, %struct.budget** %7, align 8
  %219 = getelementptr inbounds %struct.budget, %struct.budget* %218, i32 0, i32 12
  store i32 %217, i32* %219, align 8
  br label %224

220:                                              ; preds = %183
  %221 = load i32, i32* @BUDGET_VIDEO_PORTA, align 4
  %222 = load %struct.budget*, %struct.budget** %7, align 8
  %223 = getelementptr inbounds %struct.budget, %struct.budget* %222, i32 0, i32 12
  store i32 %221, i32* %223, align 8
  br label %224

224:                                              ; preds = %220, %216
  %225 = load %struct.budget*, %struct.budget** %7, align 8
  %226 = getelementptr inbounds %struct.budget, %struct.budget* %225, i32 0, i32 11
  %227 = call i32 @spin_lock_init(i32* %226)
  %228 = load %struct.budget*, %struct.budget** %7, align 8
  %229 = getelementptr inbounds %struct.budget, %struct.budget* %228, i32 0, i32 10
  %230 = call i32 @spin_lock_init(i32* %229)
  %231 = load %struct.budget_info*, %struct.budget_info** %13, align 8
  %232 = getelementptr inbounds %struct.budget_info, %struct.budget_info* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  %234 = icmp ne i32 %233, 133
  br i1 %234, label %235, label %239

235:                                              ; preds = %224
  %236 = load %struct.saa7146_dev*, %struct.saa7146_dev** %8, align 8
  %237 = load i32, i32* @GPIO_CTRL, align 4
  %238 = call i32 @saa7146_write(%struct.saa7146_dev* %236, i32 %237, i32 5242880)
  br label %239

239:                                              ; preds = %235, %224
  %240 = load %struct.budget*, %struct.budget** %7, align 8
  %241 = getelementptr inbounds %struct.budget, %struct.budget* %240, i32 0, i32 5
  %242 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 4
  %244 = load %struct.budget*, %struct.budget** %7, align 8
  %245 = getelementptr inbounds %struct.budget, %struct.budget* %244, i32 0, i32 9
  %246 = load %struct.budget_info*, %struct.budget_info** %245, align 8
  %247 = getelementptr inbounds %struct.budget_info, %struct.budget_info* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 4
  %249 = call i32 @strscpy(i32 %243, i32 %248, i32 4)
  %250 = load %struct.saa7146_dev*, %struct.saa7146_dev** %8, align 8
  %251 = load %struct.budget*, %struct.budget** %7, align 8
  %252 = getelementptr inbounds %struct.budget, %struct.budget* %251, i32 0, i32 5
  %253 = load i32, i32* @SAA7146_I2C_BUS_BIT_RATE_120, align 4
  %254 = call i32 @saa7146_i2c_adapter_prepare(%struct.saa7146_dev* %250, %struct.TYPE_9__* %252, i32 %253)
  %255 = load %struct.budget*, %struct.budget** %7, align 8
  %256 = getelementptr inbounds %struct.budget, %struct.budget* %255, i32 0, i32 5
  %257 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 4
  %259 = load %struct.budget*, %struct.budget** %7, align 8
  %260 = getelementptr inbounds %struct.budget, %struct.budget* %259, i32 0, i32 9
  %261 = load %struct.budget_info*, %struct.budget_info** %260, align 8
  %262 = getelementptr inbounds %struct.budget_info, %struct.budget_info* %261, i32 0, i32 1
  %263 = load i32, i32* %262, align 4
  %264 = call i32 @strscpy(i32 %258, i32 %263, i32 4)
  %265 = load %struct.budget*, %struct.budget** %7, align 8
  %266 = getelementptr inbounds %struct.budget, %struct.budget* %265, i32 0, i32 5
  %267 = call i64 @i2c_add_adapter(%struct.TYPE_9__* %266)
  %268 = icmp slt i64 %267, 0
  br i1 %268, label %269, label %272

269:                                              ; preds = %239
  %270 = load i32, i32* @ENOMEM, align 4
  %271 = sub nsw i32 0, %270
  store i32 %271, i32* %12, align 4
  br label %338

272:                                              ; preds = %239
  %273 = load %struct.budget*, %struct.budget** %7, align 8
  %274 = getelementptr inbounds %struct.budget, %struct.budget* %273, i32 0, i32 5
  %275 = load %struct.budget*, %struct.budget** %7, align 8
  %276 = getelementptr inbounds %struct.budget, %struct.budget* %275, i32 0, i32 4
  %277 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 8
  %279 = call i32 @ttpci_eeprom_parse_mac(%struct.TYPE_9__* %274, i32 %278)
  %280 = load %struct.saa7146_dev*, %struct.saa7146_dev** %8, align 8
  %281 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %280, i32 0, i32 0
  %282 = load %struct.TYPE_10__*, %struct.TYPE_10__** %281, align 8
  %283 = load %struct.budget*, %struct.budget** %7, align 8
  %284 = getelementptr inbounds %struct.budget, %struct.budget* %283, i32 0, i32 2
  %285 = load i32, i32* %284, align 8
  %286 = load %struct.budget*, %struct.budget** %7, align 8
  %287 = getelementptr inbounds %struct.budget, %struct.budget* %286, i32 0, i32 6
  %288 = call i32* @saa7146_vmalloc_build_pgtable(%struct.TYPE_10__* %282, i32 %285, i32* %287)
  %289 = load %struct.budget*, %struct.budget** %7, align 8
  %290 = getelementptr inbounds %struct.budget, %struct.budget* %289, i32 0, i32 7
  store i32* %288, i32** %290, align 8
  %291 = load %struct.budget*, %struct.budget** %7, align 8
  %292 = getelementptr inbounds %struct.budget, %struct.budget* %291, i32 0, i32 7
  %293 = load i32*, i32** %292, align 8
  %294 = icmp eq i32* null, %293
  br i1 %294, label %295, label %298

295:                                              ; preds = %272
  %296 = load i32, i32* @ENOMEM, align 4
  %297 = sub nsw i32 0, %296
  store i32 %297, i32* %12, align 4
  br label %334

298:                                              ; preds = %272
  %299 = load %struct.saa7146_dev*, %struct.saa7146_dev** %8, align 8
  %300 = load i32, i32* @PCI_BT_V1, align 4
  %301 = call i32 @saa7146_write(%struct.saa7146_dev* %299, i32 %300, i32 1835008)
  %302 = load %struct.saa7146_dev*, %struct.saa7146_dev** %8, align 8
  %303 = load i32, i32* @GPIO_CTRL, align 4
  %304 = call i32 @saa7146_write(%struct.saa7146_dev* %302, i32 %303, i32 0)
  %305 = load %struct.budget*, %struct.budget** %7, align 8
  %306 = getelementptr inbounds %struct.budget, %struct.budget* %305, i32 0, i32 8
  %307 = load i32, i32* @vpeirq, align 4
  %308 = load %struct.budget*, %struct.budget** %7, align 8
  %309 = ptrtoint %struct.budget* %308 to i64
  %310 = call i32 @tasklet_init(i32* %306, i32 %307, i64 %309)
  %311 = load %struct.budget_info*, %struct.budget_info** %13, align 8
  %312 = getelementptr inbounds %struct.budget_info, %struct.budget_info* %311, i32 0, i32 0
  %313 = load i32, i32* %312, align 4
  %314 = icmp ne i32 %313, 133
  br i1 %314, label %315, label %319

315:                                              ; preds = %298
  %316 = load %struct.saa7146_dev*, %struct.saa7146_dev** %8, align 8
  %317 = load i32, i32* @SAA7146_GPIO_OUTHI, align 4
  %318 = call i32 @saa7146_setgpio(%struct.saa7146_dev* %316, i32 2, i32 %317)
  br label %319

319:                                              ; preds = %315, %298
  %320 = load %struct.budget*, %struct.budget** %7, align 8
  %321 = call i32 @budget_register(%struct.budget* %320)
  store i32 %321, i32* %12, align 4
  %322 = icmp eq i32 %321, 0
  br i1 %322, label %323, label %324

323:                                              ; preds = %319
  store i32 0, i32* %6, align 4
  br label %343

324:                                              ; preds = %319
  %325 = load %struct.saa7146_dev*, %struct.saa7146_dev** %8, align 8
  %326 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %325, i32 0, i32 0
  %327 = load %struct.TYPE_10__*, %struct.TYPE_10__** %326, align 8
  %328 = load %struct.budget*, %struct.budget** %7, align 8
  %329 = getelementptr inbounds %struct.budget, %struct.budget* %328, i32 0, i32 7
  %330 = load i32*, i32** %329, align 8
  %331 = load %struct.budget*, %struct.budget** %7, align 8
  %332 = getelementptr inbounds %struct.budget, %struct.budget* %331, i32 0, i32 6
  %333 = call i32 @saa7146_vfree_destroy_pgtable(%struct.TYPE_10__* %327, i32* %330, i32* %332)
  br label %334

334:                                              ; preds = %324, %295
  %335 = load %struct.budget*, %struct.budget** %7, align 8
  %336 = getelementptr inbounds %struct.budget, %struct.budget* %335, i32 0, i32 5
  %337 = call i32 @i2c_del_adapter(%struct.TYPE_9__* %336)
  br label %338

338:                                              ; preds = %334, %269
  %339 = load %struct.budget*, %struct.budget** %7, align 8
  %340 = getelementptr inbounds %struct.budget, %struct.budget* %339, i32 0, i32 4
  %341 = call i32 @dvb_unregister_adapter(%struct.TYPE_11__* %340)
  %342 = load i32, i32* %12, align 4
  store i32 %342, i32* %6, align 4
  br label %343

343:                                              ; preds = %338, %323, %181
  %344 = load i32, i32* %6, align 4
  ret i32 %344
}

declare dso_local i32 @memset(%struct.budget*, i32, i32) #1

declare dso_local i32 @dprintk(i32, i8*, %struct.saa7146_dev*, ...) #1

declare dso_local i32 @printk(i8*, i32, i32) #1

declare dso_local i32 @dvb_register_adapter(%struct.TYPE_11__*, i32, %struct.module*, i32*, i16*) #1

declare dso_local i32 @saa7146_write(%struct.saa7146_dev*, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @strscpy(i32, i32, i32) #1

declare dso_local i32 @saa7146_i2c_adapter_prepare(%struct.saa7146_dev*, %struct.TYPE_9__*, i32) #1

declare dso_local i64 @i2c_add_adapter(%struct.TYPE_9__*) #1

declare dso_local i32 @ttpci_eeprom_parse_mac(%struct.TYPE_9__*, i32) #1

declare dso_local i32* @saa7146_vmalloc_build_pgtable(%struct.TYPE_10__*, i32, i32*) #1

declare dso_local i32 @tasklet_init(i32*, i32, i64) #1

declare dso_local i32 @saa7146_setgpio(%struct.saa7146_dev*, i32, i32) #1

declare dso_local i32 @budget_register(%struct.budget*) #1

declare dso_local i32 @saa7146_vfree_destroy_pgtable(%struct.TYPE_10__*, i32*, i32*) #1

declare dso_local i32 @i2c_del_adapter(%struct.TYPE_9__*) #1

declare dso_local i32 @dvb_unregister_adapter(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
