; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/extr_s2io.c_s2io_add_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/extr_s2io.c_s2io_add_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s2io_nic = type { i32, i32, %struct.TYPE_10__*, %struct.TYPE_9__, %struct.TYPE_8__*, %struct.TYPE_7__*, i32*, %struct.TYPE_6__*, %struct.net_device* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i64, i64, %struct.net_device* }
%struct.TYPE_7__ = type { i64, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.net_device = type { i8* }

@MSI_X = common dso_local global i64 0, align 8
@ERR_DBG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"%s: Defaulting to INTA\0A\00", align 1
@INTA = common dso_local global i64 0, align 8
@MSIX_FLG = common dso_local global i64 0, align 8
@MSIX_RING_TYPE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"%s:MSI-X-%d-RX\00", align 1
@s2io_msix_ring_handle = common dso_local global i32 0, align 4
@MSIX_ALARM_TYPE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"%s:MSI-X-%d-TX\00", align 1
@s2io_msix_fifo_handle = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"%s @Addr:0x%llx Data:0x%llx\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"%s:MSI-X-%d registration failed\0A\00", align 1
@MSIX_REGISTERED_SUCCESS = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [29 x i8] c"MSI-X-RX %d entries enabled\0A\00", align 1
@INFO_DBG = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [47 x i8] c"MSI-X-TX entries enabled through alarm vector\0A\00", align 1
@s2io_isr = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [29 x i8] c"%s: ISR registration failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s2io_nic*)* @s2io_add_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s2io_add_isr(%struct.s2io_nic* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.s2io_nic*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.s2io_nic* %0, %struct.s2io_nic** %3, align 8
  store i32 0, i32* %4, align 4
  %9 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %10 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %9, i32 0, i32 8
  %11 = load %struct.net_device*, %struct.net_device** %10, align 8
  store %struct.net_device* %11, %struct.net_device** %5, align 8
  store i32 0, i32* %6, align 4
  %12 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %13 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @MSI_X, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %20 = call i32 @s2io_enable_msi_x(%struct.s2io_nic* %19)
  store i32 %20, i32* %4, align 4
  br label %21

21:                                               ; preds = %18, %1
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %21
  %25 = load i32, i32* @ERR_DBG, align 4
  %26 = load %struct.net_device*, %struct.net_device** %5, align 8
  %27 = getelementptr inbounds %struct.net_device, %struct.net_device* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 (i32, i8*, ...) @DBG_PRINT(i32 %25, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %28)
  %30 = load i64, i64* @INTA, align 8
  %31 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %32 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  store i64 %30, i64* %33, align 8
  br label %34

34:                                               ; preds = %24, %21
  %35 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %36 = call i32 @store_xmsi_data(%struct.s2io_nic* %35)
  %37 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %38 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @MSI_X, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %254

43:                                               ; preds = %34
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %44

44:                                               ; preds = %241, %43
  %45 = load i32, i32* %7, align 4
  %46 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %47 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %244

50:                                               ; preds = %44
  %51 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %52 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %51, i32 0, i32 4
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %52, align 8
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @MSIX_FLG, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %240

61:                                               ; preds = %50
  %62 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %63 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %62, i32 0, i32 4
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %63, align 8
  %65 = load i32, i32* %7, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @MSIX_RING_TYPE, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %110

72:                                               ; preds = %61
  %73 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %74 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %73, i32 0, i32 6
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %7, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.net_device*, %struct.net_device** %5, align 8
  %81 = getelementptr inbounds %struct.net_device, %struct.net_device* %80, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8
  %83 = load i32, i32* %7, align 4
  %84 = call i32 @snprintf(i32 %79, i32 4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %82, i32 %83)
  %85 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %86 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %85, i32 0, i32 7
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %86, align 8
  %88 = load i32, i32* %7, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @s2io_msix_ring_handle, align 4
  %94 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %95 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %94, i32 0, i32 6
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %7, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %102 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %101, i32 0, i32 4
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %102, align 8
  %104 = load i32, i32* %7, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 2
  %108 = load %struct.net_device*, %struct.net_device** %107, align 8
  %109 = call i32 @request_irq(i32 %92, i32 %93, i32 0, i32 %100, %struct.net_device* %108)
  store i32 %109, i32* %6, align 4
  br label %160

110:                                              ; preds = %61
  %111 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %112 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %111, i32 0, i32 4
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %112, align 8
  %114 = load i32, i32* %7, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @MSIX_ALARM_TYPE, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %159

121:                                              ; preds = %110
  %122 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %123 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %122, i32 0, i32 6
  %124 = load i32*, i32** %123, align 8
  %125 = load i32, i32* %7, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.net_device*, %struct.net_device** %5, align 8
  %130 = getelementptr inbounds %struct.net_device, %struct.net_device* %129, i32 0, i32 0
  %131 = load i8*, i8** %130, align 8
  %132 = load i32, i32* %7, align 4
  %133 = call i32 @snprintf(i32 %128, i32 4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* %131, i32 %132)
  %134 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %135 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %134, i32 0, i32 7
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %135, align 8
  %137 = load i32, i32* %7, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @s2io_msix_fifo_handle, align 4
  %143 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %144 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %143, i32 0, i32 6
  %145 = load i32*, i32** %144, align 8
  %146 = load i32, i32* %7, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %145, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %151 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %150, i32 0, i32 4
  %152 = load %struct.TYPE_8__*, %struct.TYPE_8__** %151, align 8
  %153 = load i32, i32* %7, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 2
  %157 = load %struct.net_device*, %struct.net_device** %156, align 8
  %158 = call i32 @request_irq(i32 %141, i32 %142, i32 0, i32 %149, %struct.net_device* %157)
  store i32 %158, i32* %6, align 4
  br label %159

159:                                              ; preds = %121, %110
  br label %160

160:                                              ; preds = %159, %72
  %161 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %162 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %161, i32 0, i32 5
  %163 = load %struct.TYPE_7__*, %struct.TYPE_7__** %162, align 8
  %164 = load i32, i32* %7, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %180

170:                                              ; preds = %160
  %171 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %172 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %171, i32 0, i32 5
  %173 = load %struct.TYPE_7__*, %struct.TYPE_7__** %172, align 8
  %174 = load i32, i32* %7, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %207, label %180

180:                                              ; preds = %170, %160
  %181 = load i32, i32* @ERR_DBG, align 4
  %182 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %183 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %182, i32 0, i32 6
  %184 = load i32*, i32** %183, align 8
  %185 = load i32, i32* %7, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %184, i64 %186
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %190 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %189, i32 0, i32 5
  %191 = load %struct.TYPE_7__*, %struct.TYPE_7__** %190, align 8
  %192 = load i32, i32* %7, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %191, i64 %193
  %195 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %194, i32 0, i32 1
  %196 = load i64, i64* %195, align 8
  %197 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %198 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %197, i32 0, i32 5
  %199 = load %struct.TYPE_7__*, %struct.TYPE_7__** %198, align 8
  %200 = load i32, i32* %7, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %199, i64 %201
  %203 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = call i64 @ntohl(i64 %204)
  %206 = call i32 (i32, i8*, ...) @DBG_PRINT(i32 %181, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %188, i64 %196, i64 %205)
  br label %210

207:                                              ; preds = %170
  %208 = load i32, i32* %8, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %8, align 4
  br label %210

210:                                              ; preds = %207, %180
  %211 = load i32, i32* %6, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %231

213:                                              ; preds = %210
  %214 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %215 = call i32 @remove_msix_isr(%struct.s2io_nic* %214)
  %216 = load i32, i32* @ERR_DBG, align 4
  %217 = load %struct.net_device*, %struct.net_device** %5, align 8
  %218 = getelementptr inbounds %struct.net_device, %struct.net_device* %217, i32 0, i32 0
  %219 = load i8*, i8** %218, align 8
  %220 = load i32, i32* %7, align 4
  %221 = call i32 (i32, i8*, ...) @DBG_PRINT(i32 %216, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i8* %219, i32 %220)
  %222 = load i32, i32* @ERR_DBG, align 4
  %223 = load %struct.net_device*, %struct.net_device** %5, align 8
  %224 = getelementptr inbounds %struct.net_device, %struct.net_device* %223, i32 0, i32 0
  %225 = load i8*, i8** %224, align 8
  %226 = call i32 (i32, i8*, ...) @DBG_PRINT(i32 %222, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %225)
  %227 = load i64, i64* @INTA, align 8
  %228 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %229 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %228, i32 0, i32 3
  %230 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %229, i32 0, i32 0
  store i64 %227, i64* %230, align 8
  br label %244

231:                                              ; preds = %210
  %232 = load i64, i64* @MSIX_REGISTERED_SUCCESS, align 8
  %233 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %234 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %233, i32 0, i32 4
  %235 = load %struct.TYPE_8__*, %struct.TYPE_8__** %234, align 8
  %236 = load i32, i32* %7, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %235, i64 %237
  %239 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %238, i32 0, i32 0
  store i64 %232, i64* %239, align 8
  br label %240

240:                                              ; preds = %231, %50
  br label %241

241:                                              ; preds = %240
  %242 = load i32, i32* %7, align 4
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* %7, align 4
  br label %44

244:                                              ; preds = %213, %44
  %245 = load i32, i32* %6, align 4
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %253, label %247

247:                                              ; preds = %244
  %248 = load i32, i32* %8, align 4
  %249 = add nsw i32 %248, -1
  store i32 %249, i32* %8, align 4
  %250 = call i32 @pr_info(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i32 %249)
  %251 = load i32, i32* @INFO_DBG, align 4
  %252 = call i32 (i32, i8*, ...) @DBG_PRINT(i32 %251, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i64 0, i64 0))
  br label %253

253:                                              ; preds = %247, %244
  br label %254

254:                                              ; preds = %253, %34
  %255 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %256 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %255, i32 0, i32 3
  %257 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %256, i32 0, i32 0
  %258 = load i64, i64* %257, align 8
  %259 = load i64, i64* @INTA, align 8
  %260 = icmp eq i64 %258, %259
  br i1 %260, label %261, label %283

261:                                              ; preds = %254
  %262 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %263 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %262, i32 0, i32 2
  %264 = load %struct.TYPE_10__*, %struct.TYPE_10__** %263, align 8
  %265 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 4
  %267 = load i32, i32* @s2io_isr, align 4
  %268 = load i32, i32* @IRQF_SHARED, align 4
  %269 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %270 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %269, i32 0, i32 1
  %271 = load i32, i32* %270, align 4
  %272 = load %struct.net_device*, %struct.net_device** %5, align 8
  %273 = call i32 @request_irq(i32 %266, i32 %267, i32 %268, i32 %271, %struct.net_device* %272)
  store i32 %273, i32* %6, align 4
  %274 = load i32, i32* %6, align 4
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %282

276:                                              ; preds = %261
  %277 = load i32, i32* @ERR_DBG, align 4
  %278 = load %struct.net_device*, %struct.net_device** %5, align 8
  %279 = getelementptr inbounds %struct.net_device, %struct.net_device* %278, i32 0, i32 0
  %280 = load i8*, i8** %279, align 8
  %281 = call i32 (i32, i8*, ...) @DBG_PRINT(i32 %277, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i8* %280)
  store i32 -1, i32* %2, align 4
  br label %284

282:                                              ; preds = %261
  br label %283

283:                                              ; preds = %282, %254
  store i32 0, i32* %2, align 4
  br label %284

284:                                              ; preds = %283, %276
  %285 = load i32, i32* %2, align 4
  ret i32 %285
}

declare dso_local i32 @s2io_enable_msi_x(%struct.s2io_nic*) #1

declare dso_local i32 @DBG_PRINT(i32, i8*, ...) #1

declare dso_local i32 @store_xmsi_data(%struct.s2io_nic*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i32) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.net_device*) #1

declare dso_local i64 @ntohl(i64) #1

declare dso_local i32 @remove_msix_isr(%struct.s2io_nic*) #1

declare dso_local i32 @pr_info(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
