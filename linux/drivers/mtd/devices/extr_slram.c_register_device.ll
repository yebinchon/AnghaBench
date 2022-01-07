; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_slram.c_register_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_slram.c_register_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_9__*, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i8*, i64, i32, %struct.TYPE_9__*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }

@slram_mtdlist = common dso_local global %struct.TYPE_8__* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"slram: Cannot allocate new MTD device.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@MEMREMAP_WB = common dso_local global i32 0, align 4
@MEMREMAP_WT = common dso_local global i32 0, align 4
@MEMREMAP_WC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"slram: memremap failed\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@MTD_CAP_RAM = common dso_local global i32 0, align 4
@slram_erase = common dso_local global i32 0, align 4
@slram_point = common dso_local global i32 0, align 4
@slram_unpoint = common dso_local global i32 0, align 4
@slram_read = common dso_local global i32 0, align 4
@slram_write = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@MTD_RAM = common dso_local global i32 0, align 4
@SLRAM_BLK_SZ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"slram: Failed to register new device\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [51 x i8] c"slram: Registered device %s from %luKiB to %luKiB\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"slram: Mapped from 0x%p to 0x%p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i64)* @register_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @register_device(i8* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_8__**, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.TYPE_8__** @slram_mtdlist, %struct.TYPE_8__*** %8, align 8
  br label %9

9:                                                ; preds = %13, %3
  %10 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %12 = icmp ne %struct.TYPE_8__* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 1
  store %struct.TYPE_8__** %16, %struct.TYPE_8__*** %8, align 8
  br label %9

17:                                               ; preds = %9
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.TYPE_8__* @kmalloc(i32 16, i32 %18)
  %20 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  store %struct.TYPE_8__* %19, %struct.TYPE_8__** %20, align 8
  %21 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %23 = icmp ne %struct.TYPE_8__* %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %17
  %25 = call i32 @E(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %257

28:                                               ; preds = %17
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call i8* @kzalloc(i32 4, i32 %29)
  %31 = bitcast i8* %30 to %struct.TYPE_9__*
  %32 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  store %struct.TYPE_9__* %31, %struct.TYPE_9__** %34, align 8
  %35 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 1
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %37, align 8
  %38 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %40, align 8
  %42 = icmp ne %struct.TYPE_9__* %41, null
  br i1 %42, label %43, label %69

43:                                               ; preds = %28
  %44 = load i32, i32* @GFP_KERNEL, align 4
  %45 = call i8* @kzalloc(i32 8, i32 %44)
  %46 = bitcast i8* %45 to %struct.TYPE_9__*
  %47 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 3
  store %struct.TYPE_9__* %46, %struct.TYPE_9__** %51, align 8
  %52 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 3
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %56, align 8
  %58 = icmp ne %struct.TYPE_9__* %57, null
  br i1 %58, label %68, label %59

59:                                               ; preds = %43
  %60 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %62, align 8
  %64 = call i32 @kfree(%struct.TYPE_9__* %63)
  %65 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %67, align 8
  br label %68

68:                                               ; preds = %59, %43
  br label %69

69:                                               ; preds = %68, %28
  %70 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %72, align 8
  %74 = icmp ne %struct.TYPE_9__* %73, null
  br i1 %74, label %79, label %75

75:                                               ; preds = %69
  %76 = call i32 @E(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %77 = load i32, i32* @ENOMEM, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %4, align 4
  br label %257

79:                                               ; preds = %69
  %80 = load i64, i64* %6, align 8
  %81 = load i64, i64* %7, align 8
  %82 = load i32, i32* @MEMREMAP_WB, align 4
  %83 = load i32, i32* @MEMREMAP_WT, align 4
  %84 = or i32 %82, %83
  %85 = load i32, i32* @MEMREMAP_WC, align 4
  %86 = or i32 %84, %85
  %87 = call i32 @memremap(i64 %80, i64 %81, i32 %86)
  %88 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 3
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %92, align 8
  %94 = bitcast %struct.TYPE_9__* %93 to %struct.TYPE_7__*
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 1
  store i32 %87, i32* %95, align 4
  %96 = icmp ne i32 %87, 0
  br i1 %96, label %101, label %97

97:                                               ; preds = %79
  %98 = call i32 @E(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %99 = load i32, i32* @EIO, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %4, align 4
  br label %257

101:                                              ; preds = %79
  %102 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 3
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %106, align 8
  %108 = bitcast %struct.TYPE_9__* %107 to %struct.TYPE_7__*
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = sext i32 %110 to i64
  %112 = load i64, i64* %7, align 8
  %113 = add i64 %111, %112
  %114 = trunc i64 %113 to i32
  %115 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 3
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %119, align 8
  %121 = bitcast %struct.TYPE_9__* %120 to %struct.TYPE_7__*
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 0
  store i32 %114, i32* %122, align 4
  %123 = load i8*, i8** %5, align 8
  %124 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 0
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 0
  store i8* %123, i8** %128, align 8
  %129 = load i64, i64* %7, align 8
  %130 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 0
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 1
  store i64 %129, i64* %134, align 8
  %135 = load i32, i32* @MTD_CAP_RAM, align 4
  %136 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 0
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 12
  store i32 %135, i32* %140, align 8
  %141 = load i32, i32* @slram_erase, align 4
  %142 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 0
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 11
  store i32 %141, i32* %146, align 4
  %147 = load i32, i32* @slram_point, align 4
  %148 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 0
  %151 = load %struct.TYPE_9__*, %struct.TYPE_9__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 10
  store i32 %147, i32* %152, align 8
  %153 = load i32, i32* @slram_unpoint, align 4
  %154 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  %155 = load %struct.TYPE_8__*, %struct.TYPE_8__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 0
  %157 = load %struct.TYPE_9__*, %struct.TYPE_9__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 9
  store i32 %153, i32* %158, align 4
  %159 = load i32, i32* @slram_read, align 4
  %160 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  %161 = load %struct.TYPE_8__*, %struct.TYPE_8__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 0
  %163 = load %struct.TYPE_9__*, %struct.TYPE_9__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %163, i32 0, i32 8
  store i32 %159, i32* %164, align 8
  %165 = load i32, i32* @slram_write, align 4
  %166 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  %167 = load %struct.TYPE_8__*, %struct.TYPE_8__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 0
  %169 = load %struct.TYPE_9__*, %struct.TYPE_9__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i32 0, i32 7
  store i32 %165, i32* %170, align 4
  %171 = load i32, i32* @THIS_MODULE, align 4
  %172 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  %173 = load %struct.TYPE_8__*, %struct.TYPE_8__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i32 0, i32 0
  %175 = load %struct.TYPE_9__*, %struct.TYPE_9__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %175, i32 0, i32 6
  store i32 %171, i32* %176, align 8
  %177 = load i32, i32* @MTD_RAM, align 4
  %178 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  %179 = load %struct.TYPE_8__*, %struct.TYPE_8__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %179, i32 0, i32 0
  %181 = load %struct.TYPE_9__*, %struct.TYPE_9__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %181, i32 0, i32 5
  store i32 %177, i32* %182, align 4
  %183 = load i32, i32* @SLRAM_BLK_SZ, align 4
  %184 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  %185 = load %struct.TYPE_8__*, %struct.TYPE_8__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i32 0, i32 0
  %187 = load %struct.TYPE_9__*, %struct.TYPE_9__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %187, i32 0, i32 4
  store i32 %183, i32* %188, align 8
  %189 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  %190 = load %struct.TYPE_8__*, %struct.TYPE_8__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %190, i32 0, i32 0
  %192 = load %struct.TYPE_9__*, %struct.TYPE_9__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %192, i32 0, i32 2
  store i32 1, i32* %193, align 8
  %194 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  %195 = load %struct.TYPE_8__*, %struct.TYPE_8__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %195, i32 0, i32 0
  %197 = load %struct.TYPE_9__*, %struct.TYPE_9__** %196, align 8
  %198 = call i64 @mtd_device_register(%struct.TYPE_9__* %197, i32* null, i32 0)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %226

200:                                              ; preds = %101
  %201 = call i32 @E(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %202 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  %203 = load %struct.TYPE_8__*, %struct.TYPE_8__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %203, i32 0, i32 0
  %205 = load %struct.TYPE_9__*, %struct.TYPE_9__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %205, i32 0, i32 3
  %207 = load %struct.TYPE_9__*, %struct.TYPE_9__** %206, align 8
  %208 = bitcast %struct.TYPE_9__* %207 to %struct.TYPE_7__*
  %209 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = call i32 @memunmap(i32 %210)
  %212 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  %213 = load %struct.TYPE_8__*, %struct.TYPE_8__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %213, i32 0, i32 0
  %215 = load %struct.TYPE_9__*, %struct.TYPE_9__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %215, i32 0, i32 3
  %217 = load %struct.TYPE_9__*, %struct.TYPE_9__** %216, align 8
  %218 = call i32 @kfree(%struct.TYPE_9__* %217)
  %219 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  %220 = load %struct.TYPE_8__*, %struct.TYPE_8__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %220, i32 0, i32 0
  %222 = load %struct.TYPE_9__*, %struct.TYPE_9__** %221, align 8
  %223 = call i32 @kfree(%struct.TYPE_9__* %222)
  %224 = load i32, i32* @EAGAIN, align 4
  %225 = sub nsw i32 0, %224
  store i32 %225, i32* %4, align 4
  br label %257

226:                                              ; preds = %101
  %227 = load i8*, i8** %5, align 8
  %228 = load i64, i64* %6, align 8
  %229 = udiv i64 %228, 1024
  %230 = load i64, i64* %6, align 8
  %231 = load i64, i64* %7, align 8
  %232 = add i64 %230, %231
  %233 = udiv i64 %232, 1024
  %234 = call i32 (i8*, i8*, i64, ...) @T(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0), i8* %227, i64 %229, i64 %233)
  %235 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  %236 = load %struct.TYPE_8__*, %struct.TYPE_8__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %236, i32 0, i32 0
  %238 = load %struct.TYPE_9__*, %struct.TYPE_9__** %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %238, i32 0, i32 3
  %240 = load %struct.TYPE_9__*, %struct.TYPE_9__** %239, align 8
  %241 = bitcast %struct.TYPE_9__* %240 to %struct.TYPE_7__*
  %242 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %241, i32 0, i32 1
  %243 = load i32, i32* %242, align 4
  %244 = sext i32 %243 to i64
  %245 = inttoptr i64 %244 to i8*
  %246 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  %247 = load %struct.TYPE_8__*, %struct.TYPE_8__** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %247, i32 0, i32 0
  %249 = load %struct.TYPE_9__*, %struct.TYPE_9__** %248, align 8
  %250 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %249, i32 0, i32 3
  %251 = load %struct.TYPE_9__*, %struct.TYPE_9__** %250, align 8
  %252 = bitcast %struct.TYPE_9__* %251 to %struct.TYPE_7__*
  %253 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 4
  %255 = sext i32 %254 to i64
  %256 = call i32 (i8*, i8*, i64, ...) @T(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i8* %245, i64 %255)
  store i32 0, i32* %4, align 4
  br label %257

257:                                              ; preds = %226, %200, %97, %75, %24
  %258 = load i32, i32* %4, align 4
  ret i32 %258
}

declare dso_local %struct.TYPE_8__* @kmalloc(i32, i32) #1

declare dso_local i32 @E(i8*) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.TYPE_9__*) #1

declare dso_local i32 @memremap(i64, i64, i32) #1

declare dso_local i64 @mtd_device_register(%struct.TYPE_9__*, i32*, i32) #1

declare dso_local i32 @memunmap(i32) #1

declare dso_local i32 @T(i8*, i8*, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
