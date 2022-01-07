; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_core.c_octeon_setup_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_core.c_octeon_setup_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { i32, i8*, i8*, i32, i32, i32, i32, %struct.TYPE_7__*, i32, %struct.octeon_device*, i32, %struct.TYPE_6__, i64 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.msix_entry = type { i32, i32 }

@MAX_IOQ_INTERRUPTS_PER_PF = common dso_local global i32 0, align 4
@MAX_IOQ_INTERRUPTS_PER_VF = common dso_local global i32 0, align 4
@INTRNAMSIZ = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Irq name storage alloc failed...\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Memory Alloc failed...\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"unable to Allocate MSI-X interrupts\0A\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"OCTEON: Enough MSI-X interrupts are allocated...\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"LiquidIO%u-pf%u-aux\00", align 1
@liquidio_legacy_intr_handler = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [49 x i8] c"Request_irq failed for MSIX interrupt Error: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"LiquidIO%u-pf%u-rxtx-%u\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"LiquidIO%u-vf%u-rxtx-%u\00", align 1
@liquidio_msix_intr_handler = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [27 x i8] c"OCTEON[%d]: MSI-X enabled\0A\00", align 1
@.str.9 = private unnamed_addr constant [43 x i8] c"Reverting to legacy interrupts. Error: %d\0A\00", align 1
@LIO_FLAG_MSI_ENABLED = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [34 x i8] c"Request IRQ failed with code: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @octeon_setup_interrupt(%struct.octeon_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.octeon_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.msix_entry*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.octeon_device* %0, %struct.octeon_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* null, i8** %7, align 8
  store i32 0, i32* %9, align 4
  store i8* null, i8** %11, align 8
  %15 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %16 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %15, i32 0, i32 12
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %419

19:                                               ; preds = %2
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %22 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %24 = call i64 @OCTEON_CN23XX_PF(%struct.octeon_device* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %19
  %27 = load i32, i32* @MAX_IOQ_INTERRUPTS_PER_PF, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %9, align 4
  %29 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %30 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %30, align 8
  br label %40

33:                                               ; preds = %19
  %34 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %35 = call i64 @OCTEON_CN23XX_VF(%struct.octeon_device* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i32, i32* @MAX_IOQ_INTERRUPTS_PER_VF, align 4
  store i32 %38, i32* %9, align 4
  br label %39

39:                                               ; preds = %37, %33
  br label %40

40:                                               ; preds = %39, %26
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* @INTRNAMSIZ, align 4
  %43 = load i32, i32* @GFP_KERNEL, align 4
  %44 = call i8* @kcalloc(i32 %41, i32 %42, i32 %43)
  %45 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %46 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %45, i32 0, i32 1
  store i8* %44, i8** %46, align 8
  %47 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %48 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %47, i32 0, i32 1
  %49 = load i8*, i8** %48, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %59, label %51

51:                                               ; preds = %40
  %52 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %53 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %52, i32 0, i32 7
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = call i32 (i32*, i8*, ...) @dev_err(i32* %55, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %530

59:                                               ; preds = %40
  %60 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %61 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %60, i32 0, i32 1
  %62 = load i8*, i8** %61, align 8
  store i8* %62, i8** %7, align 8
  %63 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %64 = call i64 @OCTEON_CN23XX_PF(%struct.octeon_device* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %59
  %67 = load i8*, i8** %7, align 8
  %68 = load i32, i32* @MAX_IOQ_INTERRUPTS_PER_PF, align 4
  %69 = call i64 @IRQ_NAME_OFF(i32 %68)
  %70 = getelementptr inbounds i8, i8* %67, i64 %69
  store i8* %70, i8** %11, align 8
  br label %71

71:                                               ; preds = %66, %59
  %72 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %73 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @GFP_KERNEL, align 4
  %76 = call i8* @kcalloc(i32 %74, i32 8, i32 %75)
  %77 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %78 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %77, i32 0, i32 2
  store i8* %76, i8** %78, align 8
  %79 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %80 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %79, i32 0, i32 2
  %81 = load i8*, i8** %80, align 8
  %82 = icmp ne i8* %81, null
  br i1 %82, label %97, label %83

83:                                               ; preds = %71
  %84 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %85 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %84, i32 0, i32 7
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = call i32 (i32*, i8*, ...) @dev_err(i32* %87, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %89 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %90 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %89, i32 0, i32 1
  %91 = load i8*, i8** %90, align 8
  %92 = call i32 @kfree(i8* %91)
  %93 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %94 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %93, i32 0, i32 1
  store i8* null, i8** %94, align 8
  %95 = load i32, i32* @ENOMEM, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %3, align 4
  br label %530

97:                                               ; preds = %71
  %98 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %99 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %98, i32 0, i32 2
  %100 = load i8*, i8** %99, align 8
  %101 = bitcast i8* %100 to %struct.msix_entry*
  store %struct.msix_entry* %101, %struct.msix_entry** %6, align 8
  %102 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %103 = call i64 @OCTEON_CN23XX_PF(%struct.octeon_device* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %141

105:                                              ; preds = %97
  store i32 0, i32* %8, align 4
  br label %106

106:                                              ; preds = %125, %105
  %107 = load i32, i32* %8, align 4
  %108 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %109 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = sub nsw i32 %110, 1
  %112 = icmp slt i32 %107, %111
  br i1 %112, label %113, label %128

113:                                              ; preds = %106
  %114 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %115 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %114, i32 0, i32 11
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* %8, align 4
  %119 = add nsw i32 %117, %118
  %120 = load %struct.msix_entry*, %struct.msix_entry** %6, align 8
  %121 = load i32, i32* %8, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %120, i64 %122
  %124 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %123, i32 0, i32 0
  store i32 %119, i32* %124, align 4
  br label %125

125:                                              ; preds = %113
  %126 = load i32, i32* %8, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %8, align 4
  br label %106

128:                                              ; preds = %106
  %129 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %130 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %129, i32 0, i32 11
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.msix_entry*, %struct.msix_entry** %6, align 8
  %134 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %135 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = sub nsw i32 %136, 1
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %133, i64 %138
  %140 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %139, i32 0, i32 0
  store i32 %132, i32* %140, align 4
  br label %164

141:                                              ; preds = %97
  %142 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %143 = call i64 @OCTEON_CN23XX_VF(%struct.octeon_device* %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %163

145:                                              ; preds = %141
  store i32 0, i32* %8, align 4
  br label %146

146:                                              ; preds = %159, %145
  %147 = load i32, i32* %8, align 4
  %148 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %149 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = icmp slt i32 %147, %150
  br i1 %151, label %152, label %162

152:                                              ; preds = %146
  %153 = load i32, i32* %8, align 4
  %154 = load %struct.msix_entry*, %struct.msix_entry** %6, align 8
  %155 = load i32, i32* %8, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %154, i64 %156
  %158 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %157, i32 0, i32 0
  store i32 %153, i32* %158, align 4
  br label %159

159:                                              ; preds = %152
  %160 = load i32, i32* %8, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %8, align 4
  br label %146

162:                                              ; preds = %146
  br label %163

163:                                              ; preds = %162, %141
  br label %164

164:                                              ; preds = %163, %128
  %165 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %166 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %165, i32 0, i32 7
  %167 = load %struct.TYPE_7__*, %struct.TYPE_7__** %166, align 8
  %168 = load %struct.msix_entry*, %struct.msix_entry** %6, align 8
  %169 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %170 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %173 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = call i32 @pci_enable_msix_range(%struct.TYPE_7__* %167, %struct.msix_entry* %168, i32 %171, i32 %174)
  store i32 %175, i32* %10, align 4
  %176 = load i32, i32* %10, align 4
  %177 = icmp slt i32 %176, 0
  br i1 %177, label %178, label %197

178:                                              ; preds = %164
  %179 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %180 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %179, i32 0, i32 7
  %181 = load %struct.TYPE_7__*, %struct.TYPE_7__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %181, i32 0, i32 0
  %183 = call i32 (i32*, i8*, ...) @dev_err(i32* %182, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %184 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %185 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %184, i32 0, i32 2
  %186 = load i8*, i8** %185, align 8
  %187 = call i32 @kfree(i8* %186)
  %188 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %189 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %188, i32 0, i32 2
  store i8* null, i8** %189, align 8
  %190 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %191 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %190, i32 0, i32 1
  %192 = load i8*, i8** %191, align 8
  %193 = call i32 @kfree(i8* %192)
  %194 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %195 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %194, i32 0, i32 1
  store i8* null, i8** %195, align 8
  %196 = load i32, i32* %10, align 4
  store i32 %196, i32* %3, align 4
  br label %530

197:                                              ; preds = %164
  %198 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %199 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %198, i32 0, i32 7
  %200 = load %struct.TYPE_7__*, %struct.TYPE_7__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %200, i32 0, i32 0
  %202 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %201, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0))
  %203 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %204 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  store i32 %205, i32* %12, align 4
  %206 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %207 = call i64 @OCTEON_CN23XX_PF(%struct.octeon_device* %206)
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %258

209:                                              ; preds = %197
  %210 = load i32, i32* %12, align 4
  %211 = sub nsw i32 %210, 1
  store i32 %211, i32* %12, align 4
  %212 = load i8*, i8** %11, align 8
  %213 = load i32, i32* @INTRNAMSIZ, align 4
  %214 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %215 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %214, i32 0, i32 3
  %216 = load i32, i32* %215, align 8
  %217 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %218 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %217, i32 0, i32 4
  %219 = load i32, i32* %218, align 4
  %220 = call i32 (i8*, i32, i8*, i32, i32, ...) @snprintf(i8* %212, i32 %213, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %216, i32 %219)
  %221 = load %struct.msix_entry*, %struct.msix_entry** %6, align 8
  %222 = load i32, i32* %12, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %221, i64 %223
  %225 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 4
  %227 = load i32, i32* @liquidio_legacy_intr_handler, align 4
  %228 = load i8*, i8** %11, align 8
  %229 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %230 = call i32 @request_irq(i32 %226, i32 %227, i32 0, i8* %228, %struct.octeon_device* %229)
  store i32 %230, i32* %13, align 4
  %231 = load i32, i32* %13, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %257

233:                                              ; preds = %209
  %234 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %235 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %234, i32 0, i32 7
  %236 = load %struct.TYPE_7__*, %struct.TYPE_7__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %236, i32 0, i32 0
  %238 = load i32, i32* %13, align 4
  %239 = call i32 (i32*, i8*, ...) @dev_err(i32* %237, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0), i32 %238)
  %240 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %241 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %240, i32 0, i32 7
  %242 = load %struct.TYPE_7__*, %struct.TYPE_7__** %241, align 8
  %243 = call i32 @pci_disable_msix(%struct.TYPE_7__* %242)
  %244 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %245 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %244, i32 0, i32 2
  %246 = load i8*, i8** %245, align 8
  %247 = call i32 @kfree(i8* %246)
  %248 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %249 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %248, i32 0, i32 1
  %250 = load i8*, i8** %249, align 8
  %251 = call i32 @kfree(i8* %250)
  %252 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %253 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %252, i32 0, i32 1
  store i8* null, i8** %253, align 8
  %254 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %255 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %254, i32 0, i32 2
  store i8* null, i8** %255, align 8
  %256 = load i32, i32* %13, align 4
  store i32 %256, i32* %3, align 4
  br label %530

257:                                              ; preds = %209
  br label %258

258:                                              ; preds = %257, %197
  store i32 0, i32* %8, align 4
  br label %259

259:                                              ; preds = %407, %258
  %260 = load i32, i32* %8, align 4
  %261 = load i32, i32* %12, align 4
  %262 = icmp slt i32 %260, %261
  br i1 %262, label %263, label %410

263:                                              ; preds = %259
  %264 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %265 = call i64 @OCTEON_CN23XX_PF(%struct.octeon_device* %264)
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %267, label %281

267:                                              ; preds = %263
  %268 = load i8*, i8** %7, align 8
  %269 = load i32, i32* %8, align 4
  %270 = call i64 @IRQ_NAME_OFF(i32 %269)
  %271 = getelementptr inbounds i8, i8* %268, i64 %270
  %272 = load i32, i32* @INTRNAMSIZ, align 4
  %273 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %274 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %273, i32 0, i32 3
  %275 = load i32, i32* %274, align 8
  %276 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %277 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %276, i32 0, i32 4
  %278 = load i32, i32* %277, align 4
  %279 = load i32, i32* %8, align 4
  %280 = call i32 (i8*, i32, i8*, i32, i32, ...) @snprintf(i8* %271, i32 %272, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i32 %275, i32 %278, i32 %279)
  br label %281

281:                                              ; preds = %267, %263
  %282 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %283 = call i64 @OCTEON_CN23XX_VF(%struct.octeon_device* %282)
  %284 = icmp ne i64 %283, 0
  br i1 %284, label %285, label %299

285:                                              ; preds = %281
  %286 = load i8*, i8** %7, align 8
  %287 = load i32, i32* %8, align 4
  %288 = call i64 @IRQ_NAME_OFF(i32 %287)
  %289 = getelementptr inbounds i8, i8* %286, i64 %288
  %290 = load i32, i32* @INTRNAMSIZ, align 4
  %291 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %292 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %291, i32 0, i32 3
  %293 = load i32, i32* %292, align 8
  %294 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %295 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %294, i32 0, i32 5
  %296 = load i32, i32* %295, align 8
  %297 = load i32, i32* %8, align 4
  %298 = call i32 (i8*, i32, i8*, i32, i32, ...) @snprintf(i8* %289, i32 %290, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 %293, i32 %296, i32 %297)
  br label %299

299:                                              ; preds = %285, %281
  %300 = load %struct.msix_entry*, %struct.msix_entry** %6, align 8
  %301 = load i32, i32* %8, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %300, i64 %302
  %304 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %303, i32 0, i32 1
  %305 = load i32, i32* %304, align 4
  %306 = load i32, i32* @liquidio_msix_intr_handler, align 4
  %307 = load i8*, i8** %7, align 8
  %308 = load i32, i32* %8, align 4
  %309 = call i64 @IRQ_NAME_OFF(i32 %308)
  %310 = getelementptr inbounds i8, i8* %307, i64 %309
  %311 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %312 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %311, i32 0, i32 9
  %313 = load %struct.octeon_device*, %struct.octeon_device** %312, align 8
  %314 = load i32, i32* %8, align 4
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %313, i64 %315
  %317 = call i32 @request_irq(i32 %305, i32 %306, i32 0, i8* %310, %struct.octeon_device* %316)
  store i32 %317, i32* %13, align 4
  %318 = load i32, i32* %13, align 4
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %320, label %379

320:                                              ; preds = %299
  %321 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %322 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %321, i32 0, i32 7
  %323 = load %struct.TYPE_7__*, %struct.TYPE_7__** %322, align 8
  %324 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %323, i32 0, i32 0
  %325 = load i32, i32* %13, align 4
  %326 = call i32 (i32*, i8*, ...) @dev_err(i32* %324, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0), i32 %325)
  %327 = load %struct.msix_entry*, %struct.msix_entry** %6, align 8
  %328 = load i32, i32* %12, align 4
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %327, i64 %329
  %331 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %330, i32 0, i32 1
  %332 = load i32, i32* %331, align 4
  %333 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %334 = call i32 @free_irq(i32 %332, %struct.octeon_device* %333)
  br label %335

335:                                              ; preds = %338, %320
  %336 = load i32, i32* %8, align 4
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %338, label %361

338:                                              ; preds = %335
  %339 = load i32, i32* %8, align 4
  %340 = add nsw i32 %339, -1
  store i32 %340, i32* %8, align 4
  %341 = load %struct.msix_entry*, %struct.msix_entry** %6, align 8
  %342 = load i32, i32* %8, align 4
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %341, i64 %343
  %345 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %344, i32 0, i32 1
  %346 = load i32, i32* %345, align 4
  %347 = call i32 @irq_set_affinity_hint(i32 %346, i32* null)
  %348 = load %struct.msix_entry*, %struct.msix_entry** %6, align 8
  %349 = load i32, i32* %8, align 4
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %348, i64 %350
  %352 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %351, i32 0, i32 1
  %353 = load i32, i32* %352, align 4
  %354 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %355 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %354, i32 0, i32 9
  %356 = load %struct.octeon_device*, %struct.octeon_device** %355, align 8
  %357 = load i32, i32* %8, align 4
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %356, i64 %358
  %360 = call i32 @free_irq(i32 %353, %struct.octeon_device* %359)
  br label %335

361:                                              ; preds = %335
  %362 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %363 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %362, i32 0, i32 7
  %364 = load %struct.TYPE_7__*, %struct.TYPE_7__** %363, align 8
  %365 = call i32 @pci_disable_msix(%struct.TYPE_7__* %364)
  %366 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %367 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %366, i32 0, i32 2
  %368 = load i8*, i8** %367, align 8
  %369 = call i32 @kfree(i8* %368)
  %370 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %371 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %370, i32 0, i32 1
  %372 = load i8*, i8** %371, align 8
  %373 = call i32 @kfree(i8* %372)
  %374 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %375 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %374, i32 0, i32 1
  store i8* null, i8** %375, align 8
  %376 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %377 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %376, i32 0, i32 2
  store i8* null, i8** %377, align 8
  %378 = load i32, i32* %13, align 4
  store i32 %378, i32* %3, align 4
  br label %530

379:                                              ; preds = %299
  %380 = load %struct.msix_entry*, %struct.msix_entry** %6, align 8
  %381 = load i32, i32* %8, align 4
  %382 = sext i32 %381 to i64
  %383 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %380, i64 %382
  %384 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %383, i32 0, i32 1
  %385 = load i32, i32* %384, align 4
  %386 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %387 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %386, i32 0, i32 9
  %388 = load %struct.octeon_device*, %struct.octeon_device** %387, align 8
  %389 = load i32, i32* %8, align 4
  %390 = sext i32 %389 to i64
  %391 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %388, i64 %390
  %392 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %391, i32 0, i32 10
  store i32 %385, i32* %392, align 8
  %393 = load %struct.msix_entry*, %struct.msix_entry** %6, align 8
  %394 = load i32, i32* %8, align 4
  %395 = sext i32 %394 to i64
  %396 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %393, i64 %395
  %397 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %396, i32 0, i32 1
  %398 = load i32, i32* %397, align 4
  %399 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %400 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %399, i32 0, i32 9
  %401 = load %struct.octeon_device*, %struct.octeon_device** %400, align 8
  %402 = load i32, i32* %8, align 4
  %403 = sext i32 %402 to i64
  %404 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %401, i64 %403
  %405 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %404, i32 0, i32 8
  %406 = call i32 @irq_set_affinity_hint(i32 %398, i32* %405)
  br label %407

407:                                              ; preds = %379
  %408 = load i32, i32* %8, align 4
  %409 = add nsw i32 %408, 1
  store i32 %409, i32* %8, align 4
  br label %259

410:                                              ; preds = %259
  %411 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %412 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %411, i32 0, i32 7
  %413 = load %struct.TYPE_7__*, %struct.TYPE_7__** %412, align 8
  %414 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %413, i32 0, i32 0
  %415 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %416 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %415, i32 0, i32 3
  %417 = load i32, i32* %416, align 8
  %418 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %414, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0), i32 %417)
  br label %529

419:                                              ; preds = %2
  %420 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %421 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %420, i32 0, i32 7
  %422 = load %struct.TYPE_7__*, %struct.TYPE_7__** %421, align 8
  %423 = call i32 @pci_enable_msi(%struct.TYPE_7__* %422)
  store i32 %423, i32* %14, align 4
  %424 = load i32, i32* %14, align 4
  %425 = icmp ne i32 %424, 0
  br i1 %425, label %426, label %433

426:                                              ; preds = %419
  %427 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %428 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %427, i32 0, i32 7
  %429 = load %struct.TYPE_7__*, %struct.TYPE_7__** %428, align 8
  %430 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %429, i32 0, i32 0
  %431 = load i32, i32* %14, align 4
  %432 = call i32 @dev_warn(i32* %430, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.9, i64 0, i64 0), i32 %431)
  br label %439

433:                                              ; preds = %419
  %434 = load i32, i32* @LIO_FLAG_MSI_ENABLED, align 4
  %435 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %436 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %435, i32 0, i32 6
  %437 = load i32, i32* %436, align 4
  %438 = or i32 %437, %434
  store i32 %438, i32* %436, align 4
  br label %439

439:                                              ; preds = %433, %426
  %440 = load i32, i32* @INTRNAMSIZ, align 4
  %441 = load i32, i32* @GFP_KERNEL, align 4
  %442 = call i8* @kcalloc(i32 1, i32 %440, i32 %441)
  %443 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %444 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %443, i32 0, i32 1
  store i8* %442, i8** %444, align 8
  %445 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %446 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %445, i32 0, i32 1
  %447 = load i8*, i8** %446, align 8
  %448 = icmp ne i8* %447, null
  br i1 %448, label %452, label %449

449:                                              ; preds = %439
  %450 = load i32, i32* @ENOMEM, align 4
  %451 = sub nsw i32 0, %450
  store i32 %451, i32* %3, align 4
  br label %530

452:                                              ; preds = %439
  %453 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %454 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %453, i32 0, i32 1
  %455 = load i8*, i8** %454, align 8
  store i8* %455, i8** %7, align 8
  %456 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %457 = call i64 @OCTEON_CN23XX_PF(%struct.octeon_device* %456)
  %458 = icmp ne i64 %457, 0
  br i1 %458, label %459, label %471

459:                                              ; preds = %452
  %460 = load i8*, i8** %7, align 8
  %461 = call i64 @IRQ_NAME_OFF(i32 0)
  %462 = getelementptr inbounds i8, i8* %460, i64 %461
  %463 = load i32, i32* @INTRNAMSIZ, align 4
  %464 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %465 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %464, i32 0, i32 3
  %466 = load i32, i32* %465, align 8
  %467 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %468 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %467, i32 0, i32 4
  %469 = load i32, i32* %468, align 4
  %470 = call i32 (i8*, i32, i8*, i32, i32, ...) @snprintf(i8* %462, i32 %463, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i32 %466, i32 %469, i32 0)
  br label %471

471:                                              ; preds = %459, %452
  %472 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %473 = call i64 @OCTEON_CN23XX_VF(%struct.octeon_device* %472)
  %474 = icmp ne i64 %473, 0
  br i1 %474, label %475, label %487

475:                                              ; preds = %471
  %476 = load i8*, i8** %7, align 8
  %477 = call i64 @IRQ_NAME_OFF(i32 0)
  %478 = getelementptr inbounds i8, i8* %476, i64 %477
  %479 = load i32, i32* @INTRNAMSIZ, align 4
  %480 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %481 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %480, i32 0, i32 3
  %482 = load i32, i32* %481, align 8
  %483 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %484 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %483, i32 0, i32 5
  %485 = load i32, i32* %484, align 8
  %486 = call i32 (i8*, i32, i8*, i32, i32, ...) @snprintf(i8* %478, i32 %479, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 %482, i32 %485, i32 0)
  br label %487

487:                                              ; preds = %475, %471
  %488 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %489 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %488, i32 0, i32 7
  %490 = load %struct.TYPE_7__*, %struct.TYPE_7__** %489, align 8
  %491 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %490, i32 0, i32 1
  %492 = load i32, i32* %491, align 4
  %493 = load i32, i32* @liquidio_legacy_intr_handler, align 4
  %494 = load i32, i32* @IRQF_SHARED, align 4
  %495 = load i8*, i8** %7, align 8
  %496 = call i64 @IRQ_NAME_OFF(i32 0)
  %497 = getelementptr inbounds i8, i8* %495, i64 %496
  %498 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %499 = call i32 @request_irq(i32 %492, i32 %493, i32 %494, i8* %497, %struct.octeon_device* %498)
  store i32 %499, i32* %13, align 4
  %500 = load i32, i32* %13, align 4
  %501 = icmp ne i32 %500, 0
  br i1 %501, label %502, label %528

502:                                              ; preds = %487
  %503 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %504 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %503, i32 0, i32 6
  %505 = load i32, i32* %504, align 4
  %506 = load i32, i32* @LIO_FLAG_MSI_ENABLED, align 4
  %507 = and i32 %505, %506
  %508 = icmp ne i32 %507, 0
  br i1 %508, label %509, label %514

509:                                              ; preds = %502
  %510 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %511 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %510, i32 0, i32 7
  %512 = load %struct.TYPE_7__*, %struct.TYPE_7__** %511, align 8
  %513 = call i32 @pci_disable_msi(%struct.TYPE_7__* %512)
  br label %514

514:                                              ; preds = %509, %502
  %515 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %516 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %515, i32 0, i32 7
  %517 = load %struct.TYPE_7__*, %struct.TYPE_7__** %516, align 8
  %518 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %517, i32 0, i32 0
  %519 = load i32, i32* %13, align 4
  %520 = call i32 (i32*, i8*, ...) @dev_err(i32* %518, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0), i32 %519)
  %521 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %522 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %521, i32 0, i32 1
  %523 = load i8*, i8** %522, align 8
  %524 = call i32 @kfree(i8* %523)
  %525 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %526 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %525, i32 0, i32 1
  store i8* null, i8** %526, align 8
  %527 = load i32, i32* %13, align 4
  store i32 %527, i32* %3, align 4
  br label %530

528:                                              ; preds = %487
  br label %529

529:                                              ; preds = %528, %410
  store i32 0, i32* %3, align 4
  br label %530

530:                                              ; preds = %529, %514, %449, %361, %233, %178, %83, %51
  %531 = load i32, i32* %3, align 4
  ret i32 %531
}

declare dso_local i64 @OCTEON_CN23XX_PF(%struct.octeon_device*) #1

declare dso_local i64 @OCTEON_CN23XX_VF(%struct.octeon_device*) #1

declare dso_local i8* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i64 @IRQ_NAME_OFF(i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @pci_enable_msix_range(%struct.TYPE_7__*, %struct.msix_entry*, i32, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32, ...) #1

declare dso_local i32 @request_irq(i32, i32, i32, i8*, %struct.octeon_device*) #1

declare dso_local i32 @pci_disable_msix(%struct.TYPE_7__*) #1

declare dso_local i32 @free_irq(i32, %struct.octeon_device*) #1

declare dso_local i32 @irq_set_affinity_hint(i32, i32*) #1

declare dso_local i32 @pci_enable_msi(%struct.TYPE_7__*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i32 @pci_disable_msi(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
