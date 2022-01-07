; ModuleID = '/home/carl/AnghaBench/linux/drivers/memstick/host/extr_tifm_ms.c_tifm_ms_issue_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/memstick/host/extr_tifm_ms.c_tifm_ms_issue_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tifm_ms = type { i32, i32, %struct.TYPE_5__*, i64, i32, i64, i64, i64, i64, %struct.tifm_dev* }
%struct.TYPE_5__ = type { i32, i64, i32, i32, %struct.TYPE_6__, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.tifm_dev = type { i32, i64 }

@no_dma = common dso_local global i32 0, align 4
@TIFM_FIFO_INT_SETALL = common dso_local global i32 0, align 4
@SOCK_DMA_FIFO_INT_ENABLE_CLEAR = common dso_local global i64 0, align 8
@TIFM_FIFO_ENABLE = common dso_local global i32 0, align 4
@SOCK_FIFO_CONTROL = common dso_local global i64 0, align 8
@READ = common dso_local global i64 0, align 8
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SOCK_FIFO_PAGE_SIZE = common dso_local global i64 0, align 8
@TIFM_FIFO_INTMASK = common dso_local global i32 0, align 4
@SOCK_DMA_FIFO_INT_ENABLE_SET = common dso_local global i64 0, align 8
@TIFM_DMA_EN = common dso_local global i32 0, align 4
@WRITE = common dso_local global i64 0, align 8
@TIFM_DMA_TX = common dso_local global i32 0, align 4
@SOCK_DMA_ADDRESS = common dso_local global i64 0, align 8
@SOCK_DMA_CONTROL = common dso_local global i64 0, align 8
@TIFM_MS_SYS_FIFO = common dso_local global i32 0, align 4
@SOCK_MS_SYSTEM = common dso_local global i64 0, align 8
@TIFM_FIFO_MORE = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@TIFM_CTRL_LED = common dso_local global i32 0, align 4
@SOCK_CONTROL = common dso_local global i64 0, align 8
@TIFM_MS_SYS_INTCLR = common dso_local global i32 0, align 4
@TIFM_MS_SYS_DMA = common dso_local global i32 0, align 4
@SOCK_MS_COMMAND = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"executing TPC %x, %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tifm_ms*)* @tifm_ms_issue_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tifm_ms_issue_cmd(%struct.tifm_ms* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tifm_ms*, align 8
  %4 = alloca %struct.tifm_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.tifm_ms* %0, %struct.tifm_ms** %3, align 8
  %8 = load %struct.tifm_ms*, %struct.tifm_ms** %3, align 8
  %9 = getelementptr inbounds %struct.tifm_ms, %struct.tifm_ms* %8, i32 0, i32 9
  %10 = load %struct.tifm_dev*, %struct.tifm_dev** %9, align 8
  store %struct.tifm_dev* %10, %struct.tifm_dev** %4, align 8
  %11 = load %struct.tifm_ms*, %struct.tifm_ms** %3, align 8
  %12 = getelementptr inbounds %struct.tifm_ms, %struct.tifm_ms* %11, i32 0, i32 5
  store i64 0, i64* %12, align 8
  %13 = load %struct.tifm_ms*, %struct.tifm_ms** %3, align 8
  %14 = getelementptr inbounds %struct.tifm_ms, %struct.tifm_ms* %13, i32 0, i32 8
  store i64 0, i64* %14, align 8
  %15 = load %struct.tifm_ms*, %struct.tifm_ms** %3, align 8
  %16 = getelementptr inbounds %struct.tifm_ms, %struct.tifm_ms* %15, i32 0, i32 7
  store i64 0, i64* %16, align 8
  %17 = load %struct.tifm_ms*, %struct.tifm_ms** %3, align 8
  %18 = getelementptr inbounds %struct.tifm_ms, %struct.tifm_ms* %17, i32 0, i32 6
  store i64 0, i64* %18, align 8
  %19 = load %struct.tifm_ms*, %struct.tifm_ms** %3, align 8
  %20 = getelementptr inbounds %struct.tifm_ms, %struct.tifm_ms* %19, i32 0, i32 5
  store i64 0, i64* %20, align 8
  %21 = load i32, i32* @no_dma, align 4
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = load %struct.tifm_ms*, %struct.tifm_ms** %3, align 8
  %26 = getelementptr inbounds %struct.tifm_ms, %struct.tifm_ms* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load %struct.tifm_ms*, %struct.tifm_ms** %3, align 8
  %28 = getelementptr inbounds %struct.tifm_ms, %struct.tifm_ms* %27, i32 0, i32 2
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 5
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %47

33:                                               ; preds = %1
  %34 = load %struct.tifm_ms*, %struct.tifm_ms** %3, align 8
  %35 = getelementptr inbounds %struct.tifm_ms, %struct.tifm_ms* %34, i32 0, i32 2
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 4
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @is_power_of_2(i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %33
  %44 = load %struct.tifm_ms*, %struct.tifm_ms** %3, align 8
  %45 = getelementptr inbounds %struct.tifm_ms, %struct.tifm_ms* %44, i32 0, i32 0
  store i32 0, i32* %45, align 8
  br label %46

46:                                               ; preds = %43, %33
  br label %55

47:                                               ; preds = %1
  %48 = load %struct.tifm_ms*, %struct.tifm_ms** %3, align 8
  %49 = getelementptr inbounds %struct.tifm_ms, %struct.tifm_ms* %48, i32 0, i32 2
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  store i32 %52, i32* %5, align 4
  %53 = load %struct.tifm_ms*, %struct.tifm_ms** %3, align 8
  %54 = getelementptr inbounds %struct.tifm_ms, %struct.tifm_ms* %53, i32 0, i32 0
  store i32 0, i32* %54, align 8
  br label %55

55:                                               ; preds = %47, %46
  %56 = load i32, i32* @TIFM_FIFO_INT_SETALL, align 4
  %57 = load %struct.tifm_dev*, %struct.tifm_dev** %4, align 8
  %58 = getelementptr inbounds %struct.tifm_dev, %struct.tifm_dev* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @SOCK_DMA_FIFO_INT_ENABLE_CLEAR, align 8
  %61 = add nsw i64 %59, %60
  %62 = call i32 @writel(i32 %56, i64 %61)
  %63 = load i32, i32* @TIFM_FIFO_ENABLE, align 4
  %64 = load %struct.tifm_dev*, %struct.tifm_dev** %4, align 8
  %65 = getelementptr inbounds %struct.tifm_dev, %struct.tifm_dev* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @SOCK_FIFO_CONTROL, align 8
  %68 = add nsw i64 %66, %67
  %69 = call i32 @writel(i32 %63, i64 %68)
  %70 = load %struct.tifm_ms*, %struct.tifm_ms** %3, align 8
  %71 = getelementptr inbounds %struct.tifm_ms, %struct.tifm_ms* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %168

74:                                               ; preds = %55
  %75 = load %struct.tifm_dev*, %struct.tifm_dev** %4, align 8
  %76 = load %struct.tifm_ms*, %struct.tifm_ms** %3, align 8
  %77 = getelementptr inbounds %struct.tifm_ms, %struct.tifm_ms* %76, i32 0, i32 2
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 4
  %80 = load %struct.tifm_ms*, %struct.tifm_ms** %3, align 8
  %81 = getelementptr inbounds %struct.tifm_ms, %struct.tifm_ms* %80, i32 0, i32 2
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @READ, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %74
  %88 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  br label %91

89:                                               ; preds = %74
  %90 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  br label %91

91:                                               ; preds = %89, %87
  %92 = phi i32 [ %88, %87 ], [ %90, %89 ]
  %93 = call i32 @tifm_map_sg(%struct.tifm_dev* %75, %struct.TYPE_6__* %79, i32 1, i32 %92)
  %94 = icmp ne i32 1, %93
  br i1 %94, label %95, label %107

95:                                               ; preds = %91
  %96 = load i32, i32* @ENOMEM, align 4
  %97 = sub nsw i32 0, %96
  %98 = load %struct.tifm_ms*, %struct.tifm_ms** %3, align 8
  %99 = getelementptr inbounds %struct.tifm_ms, %struct.tifm_ms* %98, i32 0, i32 2
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 2
  store i32 %97, i32* %101, align 8
  %102 = load %struct.tifm_ms*, %struct.tifm_ms** %3, align 8
  %103 = getelementptr inbounds %struct.tifm_ms, %struct.tifm_ms* %102, i32 0, i32 2
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  store i32 %106, i32* %2, align 4
  br label %266

107:                                              ; preds = %91
  %108 = load %struct.tifm_ms*, %struct.tifm_ms** %3, align 8
  %109 = getelementptr inbounds %struct.tifm_ms, %struct.tifm_ms* %108, i32 0, i32 2
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 4
  %112 = call i32 @sg_dma_len(%struct.TYPE_6__* %111)
  store i32 %112, i32* %5, align 4
  %113 = load i32, i32* %5, align 4
  %114 = call i32 @ilog2(i32 %113)
  %115 = sub i32 %114, 2
  %116 = load %struct.tifm_dev*, %struct.tifm_dev** %4, align 8
  %117 = getelementptr inbounds %struct.tifm_dev, %struct.tifm_dev* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @SOCK_FIFO_PAGE_SIZE, align 8
  %120 = add nsw i64 %118, %119
  %121 = call i32 @writel(i32 %115, i64 %120)
  %122 = load i32, i32* @TIFM_FIFO_INTMASK, align 4
  %123 = load %struct.tifm_dev*, %struct.tifm_dev** %4, align 8
  %124 = getelementptr inbounds %struct.tifm_dev, %struct.tifm_dev* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @SOCK_DMA_FIFO_INT_ENABLE_SET, align 8
  %127 = add nsw i64 %125, %126
  %128 = call i32 @writel(i32 %122, i64 %127)
  %129 = load i32, i32* @TIFM_DMA_EN, align 4
  %130 = or i32 %129, 256
  store i32 %130, i32* %7, align 4
  %131 = load %struct.tifm_ms*, %struct.tifm_ms** %3, align 8
  %132 = getelementptr inbounds %struct.tifm_ms, %struct.tifm_ms* %131, i32 0, i32 2
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @WRITE, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %142

138:                                              ; preds = %107
  %139 = load i32, i32* @TIFM_DMA_TX, align 4
  %140 = load i32, i32* %7, align 4
  %141 = or i32 %140, %139
  store i32 %141, i32* %7, align 4
  br label %142

142:                                              ; preds = %138, %107
  %143 = load i32, i32* @TIFM_FIFO_INTMASK, align 4
  %144 = load %struct.tifm_dev*, %struct.tifm_dev** %4, align 8
  %145 = getelementptr inbounds %struct.tifm_dev, %struct.tifm_dev* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @SOCK_DMA_FIFO_INT_ENABLE_SET, align 8
  %148 = add nsw i64 %146, %147
  %149 = call i32 @writel(i32 %143, i64 %148)
  %150 = load %struct.tifm_ms*, %struct.tifm_ms** %3, align 8
  %151 = getelementptr inbounds %struct.tifm_ms, %struct.tifm_ms* %150, i32 0, i32 2
  %152 = load %struct.TYPE_5__*, %struct.TYPE_5__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 4
  %154 = call i32 @sg_dma_address(%struct.TYPE_6__* %153)
  %155 = load %struct.tifm_dev*, %struct.tifm_dev** %4, align 8
  %156 = getelementptr inbounds %struct.tifm_dev, %struct.tifm_dev* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* @SOCK_DMA_ADDRESS, align 8
  %159 = add nsw i64 %157, %158
  %160 = call i32 @writel(i32 %154, i64 %159)
  %161 = load i32, i32* %7, align 4
  %162 = load %struct.tifm_dev*, %struct.tifm_dev** %4, align 8
  %163 = getelementptr inbounds %struct.tifm_dev, %struct.tifm_dev* %162, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* @SOCK_DMA_CONTROL, align 8
  %166 = add nsw i64 %164, %165
  %167 = call i32 @writel(i32 %161, i64 %166)
  br label %187

168:                                              ; preds = %55
  %169 = load %struct.tifm_ms*, %struct.tifm_ms** %3, align 8
  %170 = getelementptr inbounds %struct.tifm_ms, %struct.tifm_ms* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* @TIFM_MS_SYS_FIFO, align 4
  %173 = or i32 %171, %172
  %174 = load %struct.tifm_dev*, %struct.tifm_dev** %4, align 8
  %175 = getelementptr inbounds %struct.tifm_dev, %struct.tifm_dev* %174, i32 0, i32 1
  %176 = load i64, i64* %175, align 8
  %177 = load i64, i64* @SOCK_MS_SYSTEM, align 8
  %178 = add nsw i64 %176, %177
  %179 = call i32 @writel(i32 %173, i64 %178)
  %180 = load i32, i32* @TIFM_FIFO_MORE, align 4
  %181 = load %struct.tifm_dev*, %struct.tifm_dev** %4, align 8
  %182 = getelementptr inbounds %struct.tifm_dev, %struct.tifm_dev* %181, i32 0, i32 1
  %183 = load i64, i64* %182, align 8
  %184 = load i64, i64* @SOCK_DMA_FIFO_INT_ENABLE_SET, align 8
  %185 = add nsw i64 %183, %184
  %186 = call i32 @writel(i32 %180, i64 %185)
  br label %187

187:                                              ; preds = %168, %142
  %188 = load %struct.tifm_ms*, %struct.tifm_ms** %3, align 8
  %189 = getelementptr inbounds %struct.tifm_ms, %struct.tifm_ms* %188, i32 0, i32 4
  %190 = load i64, i64* @jiffies, align 8
  %191 = load %struct.tifm_ms*, %struct.tifm_ms** %3, align 8
  %192 = getelementptr inbounds %struct.tifm_ms, %struct.tifm_ms* %191, i32 0, i32 3
  %193 = load i64, i64* %192, align 8
  %194 = add nsw i64 %190, %193
  %195 = call i32 @mod_timer(i32* %189, i64 %194)
  %196 = load i32, i32* @TIFM_CTRL_LED, align 4
  %197 = load %struct.tifm_dev*, %struct.tifm_dev** %4, align 8
  %198 = getelementptr inbounds %struct.tifm_dev, %struct.tifm_dev* %197, i32 0, i32 1
  %199 = load i64, i64* %198, align 8
  %200 = load i64, i64* @SOCK_CONTROL, align 8
  %201 = add nsw i64 %199, %200
  %202 = call i32 @readl(i64 %201)
  %203 = or i32 %196, %202
  %204 = load %struct.tifm_dev*, %struct.tifm_dev** %4, align 8
  %205 = getelementptr inbounds %struct.tifm_dev, %struct.tifm_dev* %204, i32 0, i32 1
  %206 = load i64, i64* %205, align 8
  %207 = load i64, i64* @SOCK_CONTROL, align 8
  %208 = add nsw i64 %206, %207
  %209 = call i32 @writel(i32 %203, i64 %208)
  %210 = load %struct.tifm_ms*, %struct.tifm_ms** %3, align 8
  %211 = getelementptr inbounds %struct.tifm_ms, %struct.tifm_ms* %210, i32 0, i32 2
  %212 = load %struct.TYPE_5__*, %struct.TYPE_5__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %212, i32 0, i32 2
  store i32 0, i32* %213, align 8
  %214 = load %struct.tifm_dev*, %struct.tifm_dev** %4, align 8
  %215 = getelementptr inbounds %struct.tifm_dev, %struct.tifm_dev* %214, i32 0, i32 1
  %216 = load i64, i64* %215, align 8
  %217 = load i64, i64* @SOCK_MS_SYSTEM, align 8
  %218 = add nsw i64 %216, %217
  %219 = call i32 @readl(i64 %218)
  store i32 %219, i32* %7, align 4
  %220 = load i32, i32* @TIFM_MS_SYS_INTCLR, align 4
  %221 = load i32, i32* %7, align 4
  %222 = or i32 %221, %220
  store i32 %222, i32* %7, align 4
  %223 = load %struct.tifm_ms*, %struct.tifm_ms** %3, align 8
  %224 = getelementptr inbounds %struct.tifm_ms, %struct.tifm_ms* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %231

227:                                              ; preds = %187
  %228 = load i32, i32* @TIFM_MS_SYS_DMA, align 4
  %229 = load i32, i32* %7, align 4
  %230 = or i32 %229, %228
  store i32 %230, i32* %7, align 4
  br label %236

231:                                              ; preds = %187
  %232 = load i32, i32* @TIFM_MS_SYS_DMA, align 4
  %233 = xor i32 %232, -1
  %234 = load i32, i32* %7, align 4
  %235 = and i32 %234, %233
  store i32 %235, i32* %7, align 4
  br label %236

236:                                              ; preds = %231, %227
  %237 = load i32, i32* %7, align 4
  %238 = load %struct.tifm_dev*, %struct.tifm_dev** %4, align 8
  %239 = getelementptr inbounds %struct.tifm_dev, %struct.tifm_dev* %238, i32 0, i32 1
  %240 = load i64, i64* %239, align 8
  %241 = load i64, i64* @SOCK_MS_SYSTEM, align 8
  %242 = add nsw i64 %240, %241
  %243 = call i32 @writel(i32 %237, i64 %242)
  %244 = load %struct.tifm_ms*, %struct.tifm_ms** %3, align 8
  %245 = getelementptr inbounds %struct.tifm_ms, %struct.tifm_ms* %244, i32 0, i32 2
  %246 = load %struct.TYPE_5__*, %struct.TYPE_5__** %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %246, i32 0, i32 3
  %248 = load i32, i32* %247, align 4
  %249 = and i32 %248, 15
  %250 = shl i32 %249, 12
  store i32 %250, i32* %6, align 4
  %251 = load i32, i32* %5, align 4
  %252 = load i32, i32* %6, align 4
  %253 = or i32 %252, %251
  store i32 %253, i32* %6, align 4
  %254 = load i32, i32* %6, align 4
  %255 = load %struct.tifm_dev*, %struct.tifm_dev** %4, align 8
  %256 = getelementptr inbounds %struct.tifm_dev, %struct.tifm_dev* %255, i32 0, i32 1
  %257 = load i64, i64* %256, align 8
  %258 = load i64, i64* @SOCK_MS_COMMAND, align 8
  %259 = add nsw i64 %257, %258
  %260 = call i32 @writel(i32 %254, i64 %259)
  %261 = load %struct.tifm_dev*, %struct.tifm_dev** %4, align 8
  %262 = getelementptr inbounds %struct.tifm_dev, %struct.tifm_dev* %261, i32 0, i32 0
  %263 = load i32, i32* %6, align 4
  %264 = load i32, i32* %7, align 4
  %265 = call i32 @dev_dbg(i32* %262, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %263, i32 %264)
  store i32 0, i32* %2, align 4
  br label %266

266:                                              ; preds = %236, %95
  %267 = load i32, i32* %2, align 4
  ret i32 %267
}

declare dso_local i32 @is_power_of_2(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @tifm_map_sg(%struct.tifm_dev*, %struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @sg_dma_len(%struct.TYPE_6__*) #1

declare dso_local i32 @ilog2(i32) #1

declare dso_local i32 @sg_dma_address(%struct.TYPE_6__*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
