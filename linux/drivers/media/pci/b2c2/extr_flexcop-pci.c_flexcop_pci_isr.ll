; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/b2c2/extr_flexcop-pci.c_flexcop_pci_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/b2c2/extr_flexcop-pci.c_flexcop_pci_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flexcop_pci = type { i32, i32, i32, i32, %struct.TYPE_9__*, %struct.flexcop_device*, i64 }
%struct.TYPE_9__ = type { i32, i32, i64, i64 }
%struct.flexcop_device = type { void (%struct.TYPE_10__*, %struct.flexcop_device*, i32)* }
%struct.TYPE_10__ = type { i32, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i64, i64, i64, i64 }

@IRQ_HANDLED = common dso_local global i32 0, align 4
@irq_20c = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"data receiver error\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Continuity error flag is set\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"LLC_SNAP_FLAG_set is set\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"Transport error\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"%d valid irq took place so far\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"page change to page: %d\0A\00", align 1
@dma1_008 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [64 x i8] c"%u irq: %08x cur_addr: %llx: cur_pos: %08x, last_cur_pos: %08x \00", align 1
@jiffies = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [36 x i8] c" end was reached: passing %d bytes \00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c" passing %d bytes \00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.10 = private unnamed_addr constant [58 x i8] c"isr for flexcop called, apparently without reason (%08x)\0A\00", align 1
@IRQ_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @flexcop_pci_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flexcop_pci_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.flexcop_pci*, align 8
  %6 = alloca %struct.flexcop_device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_10__, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_10__, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_10__, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = bitcast i8* %14 to %struct.flexcop_pci*
  store %struct.flexcop_pci* %15, %struct.flexcop_pci** %5, align 8
  %16 = load %struct.flexcop_pci*, %struct.flexcop_pci** %5, align 8
  %17 = getelementptr inbounds %struct.flexcop_pci, %struct.flexcop_pci* %16, i32 0, i32 5
  %18 = load %struct.flexcop_device*, %struct.flexcop_device** %17, align 8
  store %struct.flexcop_device* %18, %struct.flexcop_device** %6, align 8
  %19 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %19, i32* %9, align 4
  %20 = load %struct.flexcop_pci*, %struct.flexcop_pci** %5, align 8
  %21 = getelementptr inbounds %struct.flexcop_pci, %struct.flexcop_pci* %20, i32 0, i32 3
  %22 = load i64, i64* %7, align 8
  %23 = call i32 @spin_lock_irqsave(i32* %21, i64 %22)
  %24 = load %struct.flexcop_device*, %struct.flexcop_device** %6, align 8
  %25 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %24, i32 0, i32 0
  %26 = load void (%struct.TYPE_10__*, %struct.flexcop_device*, i32)*, void (%struct.TYPE_10__*, %struct.flexcop_device*, i32)** %25, align 8
  %27 = load %struct.flexcop_device*, %struct.flexcop_device** %6, align 8
  %28 = load i32, i32* @irq_20c, align 4
  call void %26(%struct.TYPE_10__* sret %10, %struct.flexcop_device* %27, i32 %28)
  %29 = bitcast %struct.TYPE_10__* %8 to i8*
  %30 = bitcast %struct.TYPE_10__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %29, i8* align 8 %30, i64 48, i1 false)
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 5
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %2
  %36 = call i32 (i8*, ...) @deb_chk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %37

37:                                               ; preds = %35, %2
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 4
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = call i32 (i8*, ...) @deb_chk(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %44

44:                                               ; preds = %42, %37
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = call i32 (i8*, ...) @deb_chk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %51

51:                                               ; preds = %49, %44
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = call i32 (i8*, ...) @deb_chk(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  br label %58

58:                                               ; preds = %56, %51
  %59 = load %struct.flexcop_pci*, %struct.flexcop_pci** %5, align 8
  %60 = getelementptr inbounds %struct.flexcop_pci, %struct.flexcop_pci* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = srem i32 %61, 1000
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %58
  %65 = load %struct.flexcop_pci*, %struct.flexcop_pci** %5, align 8
  %66 = getelementptr inbounds %struct.flexcop_pci, %struct.flexcop_pci* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 (i8*, ...) @deb_chk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %67)
  br label %69

69:                                               ; preds = %64, %58
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp eq i32 %72, 1
  br i1 %73, label %74, label %131

74:                                               ; preds = %69
  %75 = load %struct.flexcop_pci*, %struct.flexcop_pci** %5, align 8
  %76 = getelementptr inbounds %struct.flexcop_pci, %struct.flexcop_pci* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %97

79:                                               ; preds = %74
  %80 = load %struct.flexcop_pci*, %struct.flexcop_pci** %5, align 8
  %81 = getelementptr inbounds %struct.flexcop_pci, %struct.flexcop_pci* %80, i32 0, i32 5
  %82 = load %struct.flexcop_device*, %struct.flexcop_device** %81, align 8
  %83 = load %struct.flexcop_pci*, %struct.flexcop_pci** %5, align 8
  %84 = getelementptr inbounds %struct.flexcop_pci, %struct.flexcop_pci* %83, i32 0, i32 4
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i64 0
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.flexcop_pci*, %struct.flexcop_pci** %5, align 8
  %90 = getelementptr inbounds %struct.flexcop_pci, %struct.flexcop_pci* %89, i32 0, i32 4
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i64 0
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = sdiv i32 %94, 188
  %96 = call i32 @flexcop_pass_dmx_packets(%struct.flexcop_device* %82, i64 %88, i32 %95)
  br label %115

97:                                               ; preds = %74
  %98 = load %struct.flexcop_pci*, %struct.flexcop_pci** %5, align 8
  %99 = getelementptr inbounds %struct.flexcop_pci, %struct.flexcop_pci* %98, i32 0, i32 5
  %100 = load %struct.flexcop_device*, %struct.flexcop_device** %99, align 8
  %101 = load %struct.flexcop_pci*, %struct.flexcop_pci** %5, align 8
  %102 = getelementptr inbounds %struct.flexcop_pci, %struct.flexcop_pci* %101, i32 0, i32 4
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i64 0
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 3
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.flexcop_pci*, %struct.flexcop_pci** %5, align 8
  %108 = getelementptr inbounds %struct.flexcop_pci, %struct.flexcop_pci* %107, i32 0, i32 4
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i64 0
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = sdiv i32 %112, 188
  %114 = call i32 @flexcop_pass_dmx_packets(%struct.flexcop_device* %100, i64 %106, i32 %113)
  br label %115

115:                                              ; preds = %97, %79
  %116 = load %struct.flexcop_pci*, %struct.flexcop_pci** %5, align 8
  %117 = getelementptr inbounds %struct.flexcop_pci, %struct.flexcop_pci* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = icmp ne i32 %118, 0
  %120 = xor i1 %119, true
  %121 = zext i1 %120 to i32
  %122 = call i32 (i8*, ...) @deb_irq(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i32 %121)
  %123 = load %struct.flexcop_pci*, %struct.flexcop_pci** %5, align 8
  %124 = getelementptr inbounds %struct.flexcop_pci, %struct.flexcop_pci* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = icmp ne i32 %125, 0
  %127 = xor i1 %126, true
  %128 = zext i1 %127 to i32
  %129 = load %struct.flexcop_pci*, %struct.flexcop_pci** %5, align 8
  %130 = getelementptr inbounds %struct.flexcop_pci, %struct.flexcop_pci* %129, i32 0, i32 1
  store i32 %128, i32* %130, align 4
  br label %267

131:                                              ; preds = %69
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = icmp eq i32 %134, 1
  br i1 %135, label %136, label %261

136:                                              ; preds = %131
  %137 = load %struct.flexcop_device*, %struct.flexcop_device** %6, align 8
  %138 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %137, i32 0, i32 0
  %139 = load void (%struct.TYPE_10__*, %struct.flexcop_device*, i32)*, void (%struct.TYPE_10__*, %struct.flexcop_device*, i32)** %138, align 8
  %140 = load %struct.flexcop_device*, %struct.flexcop_device** %6, align 8
  %141 = load i32, i32* @dma1_008, align 4
  call void %139(%struct.TYPE_10__* sret %12, %struct.flexcop_device* %140, i32 %141)
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = shl i32 %144, 2
  store i32 %145, i32* %11, align 4
  %146 = load i32, i32* %11, align 4
  %147 = load %struct.flexcop_pci*, %struct.flexcop_pci** %5, align 8
  %148 = getelementptr inbounds %struct.flexcop_pci, %struct.flexcop_pci* %147, i32 0, i32 4
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i64 0
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = sub nsw i32 %146, %152
  store i32 %153, i32* %13, align 4
  %154 = load i64, i64* @jiffies, align 8
  %155 = load %struct.flexcop_pci*, %struct.flexcop_pci** %5, align 8
  %156 = getelementptr inbounds %struct.flexcop_pci, %struct.flexcop_pci* %155, i32 0, i32 6
  %157 = load i64, i64* %156, align 8
  %158 = sub nsw i64 %154, %157
  %159 = call i32 @jiffies_to_usecs(i64 %158)
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* %11, align 4
  %163 = sext i32 %162 to i64
  %164 = load i32, i32* %13, align 4
  %165 = load %struct.flexcop_pci*, %struct.flexcop_pci** %5, align 8
  %166 = getelementptr inbounds %struct.flexcop_pci, %struct.flexcop_pci* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 8
  %168 = call i32 (i8*, ...) @deb_irq(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.6, i64 0, i64 0), i32 %159, i32 %161, i64 %163, i32 %164, i32 %167)
  %169 = load i64, i64* @jiffies, align 8
  %170 = load %struct.flexcop_pci*, %struct.flexcop_pci** %5, align 8
  %171 = getelementptr inbounds %struct.flexcop_pci, %struct.flexcop_pci* %170, i32 0, i32 6
  store i64 %169, i64* %171, align 8
  %172 = load i32, i32* %13, align 4
  %173 = load %struct.flexcop_pci*, %struct.flexcop_pci** %5, align 8
  %174 = getelementptr inbounds %struct.flexcop_pci, %struct.flexcop_pci* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 8
  %176 = icmp slt i32 %172, %175
  br i1 %176, label %177, label %219

177:                                              ; preds = %136
  %178 = load %struct.flexcop_pci*, %struct.flexcop_pci** %5, align 8
  %179 = getelementptr inbounds %struct.flexcop_pci, %struct.flexcop_pci* %178, i32 0, i32 4
  %180 = load %struct.TYPE_9__*, %struct.TYPE_9__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %180, i64 0
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = mul nsw i32 %183, 2
  %185 = sub nsw i32 %184, 1
  %186 = load %struct.flexcop_pci*, %struct.flexcop_pci** %5, align 8
  %187 = getelementptr inbounds %struct.flexcop_pci, %struct.flexcop_pci* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 8
  %189 = sub nsw i32 %185, %188
  %190 = call i32 (i8*, ...) @deb_irq(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0), i32 %189)
  %191 = load %struct.flexcop_pci*, %struct.flexcop_pci** %5, align 8
  %192 = getelementptr inbounds %struct.flexcop_pci, %struct.flexcop_pci* %191, i32 0, i32 5
  %193 = load %struct.flexcop_device*, %struct.flexcop_device** %192, align 8
  %194 = load %struct.flexcop_pci*, %struct.flexcop_pci** %5, align 8
  %195 = getelementptr inbounds %struct.flexcop_pci, %struct.flexcop_pci* %194, i32 0, i32 4
  %196 = load %struct.TYPE_9__*, %struct.TYPE_9__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %196, i64 0
  %198 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %197, i32 0, i32 2
  %199 = load i64, i64* %198, align 8
  %200 = load %struct.flexcop_pci*, %struct.flexcop_pci** %5, align 8
  %201 = getelementptr inbounds %struct.flexcop_pci, %struct.flexcop_pci* %200, i32 0, i32 2
  %202 = load i32, i32* %201, align 8
  %203 = sext i32 %202 to i64
  %204 = add nsw i64 %199, %203
  %205 = load %struct.flexcop_pci*, %struct.flexcop_pci** %5, align 8
  %206 = getelementptr inbounds %struct.flexcop_pci, %struct.flexcop_pci* %205, i32 0, i32 4
  %207 = load %struct.TYPE_9__*, %struct.TYPE_9__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %207, i64 0
  %209 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = mul nsw i32 %210, 2
  %212 = load %struct.flexcop_pci*, %struct.flexcop_pci** %5, align 8
  %213 = getelementptr inbounds %struct.flexcop_pci, %struct.flexcop_pci* %212, i32 0, i32 2
  %214 = load i32, i32* %213, align 8
  %215 = sub nsw i32 %211, %214
  %216 = call i32 @flexcop_pass_dmx_data(%struct.flexcop_device* %193, i64 %204, i32 %215)
  %217 = load %struct.flexcop_pci*, %struct.flexcop_pci** %5, align 8
  %218 = getelementptr inbounds %struct.flexcop_pci, %struct.flexcop_pci* %217, i32 0, i32 2
  store i32 0, i32* %218, align 8
  br label %219

219:                                              ; preds = %177, %136
  %220 = load i32, i32* %13, align 4
  %221 = load %struct.flexcop_pci*, %struct.flexcop_pci** %5, align 8
  %222 = getelementptr inbounds %struct.flexcop_pci, %struct.flexcop_pci* %221, i32 0, i32 2
  %223 = load i32, i32* %222, align 8
  %224 = icmp sgt i32 %220, %223
  br i1 %224, label %225, label %252

225:                                              ; preds = %219
  %226 = load i32, i32* %13, align 4
  %227 = load %struct.flexcop_pci*, %struct.flexcop_pci** %5, align 8
  %228 = getelementptr inbounds %struct.flexcop_pci, %struct.flexcop_pci* %227, i32 0, i32 2
  %229 = load i32, i32* %228, align 8
  %230 = sub nsw i32 %226, %229
  %231 = call i32 (i8*, ...) @deb_irq(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i32 %230)
  %232 = load %struct.flexcop_pci*, %struct.flexcop_pci** %5, align 8
  %233 = getelementptr inbounds %struct.flexcop_pci, %struct.flexcop_pci* %232, i32 0, i32 5
  %234 = load %struct.flexcop_device*, %struct.flexcop_device** %233, align 8
  %235 = load %struct.flexcop_pci*, %struct.flexcop_pci** %5, align 8
  %236 = getelementptr inbounds %struct.flexcop_pci, %struct.flexcop_pci* %235, i32 0, i32 4
  %237 = load %struct.TYPE_9__*, %struct.TYPE_9__** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %237, i64 0
  %239 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %238, i32 0, i32 2
  %240 = load i64, i64* %239, align 8
  %241 = load %struct.flexcop_pci*, %struct.flexcop_pci** %5, align 8
  %242 = getelementptr inbounds %struct.flexcop_pci, %struct.flexcop_pci* %241, i32 0, i32 2
  %243 = load i32, i32* %242, align 8
  %244 = sext i32 %243 to i64
  %245 = add nsw i64 %240, %244
  %246 = load i32, i32* %13, align 4
  %247 = load %struct.flexcop_pci*, %struct.flexcop_pci** %5, align 8
  %248 = getelementptr inbounds %struct.flexcop_pci, %struct.flexcop_pci* %247, i32 0, i32 2
  %249 = load i32, i32* %248, align 8
  %250 = sub nsw i32 %246, %249
  %251 = call i32 @flexcop_pass_dmx_data(%struct.flexcop_device* %234, i64 %245, i32 %250)
  br label %252

252:                                              ; preds = %225, %219
  %253 = call i32 (i8*, ...) @deb_irq(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  %254 = load i32, i32* %13, align 4
  %255 = load %struct.flexcop_pci*, %struct.flexcop_pci** %5, align 8
  %256 = getelementptr inbounds %struct.flexcop_pci, %struct.flexcop_pci* %255, i32 0, i32 2
  store i32 %254, i32* %256, align 8
  %257 = load %struct.flexcop_pci*, %struct.flexcop_pci** %5, align 8
  %258 = getelementptr inbounds %struct.flexcop_pci, %struct.flexcop_pci* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 8
  %260 = add nsw i32 %259, 1
  store i32 %260, i32* %258, align 8
  br label %266

261:                                              ; preds = %131
  %262 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  %264 = call i32 (i8*, ...) @deb_irq(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.10, i64 0, i64 0), i32 %263)
  %265 = load i32, i32* @IRQ_NONE, align 4
  store i32 %265, i32* %9, align 4
  br label %266

266:                                              ; preds = %261, %252
  br label %267

267:                                              ; preds = %266, %115
  %268 = load %struct.flexcop_pci*, %struct.flexcop_pci** %5, align 8
  %269 = getelementptr inbounds %struct.flexcop_pci, %struct.flexcop_pci* %268, i32 0, i32 3
  %270 = load i64, i64* %7, align 8
  %271 = call i32 @spin_unlock_irqrestore(i32* %269, i64 %270)
  %272 = load i32, i32* %9, align 4
  ret i32 %272
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @deb_chk(i8*, ...) #1

declare dso_local i32 @flexcop_pass_dmx_packets(%struct.flexcop_device*, i64, i32) #1

declare dso_local i32 @deb_irq(i8*, ...) #1

declare dso_local i32 @jiffies_to_usecs(i64) #1

declare dso_local i32 @flexcop_pass_dmx_data(%struct.flexcop_device*, i64, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
