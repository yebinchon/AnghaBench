; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_cafe_nand.c_cafe_nand_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_cafe_nand.c_cafe_nand_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i32, i32 }
%struct.pci_device_id = type { i32 }
%struct.mtd_info = type { i8*, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32* }
%struct.cafe_priv = type { i32, %struct.TYPE_11__, i64, %struct.pci_dev*, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__, i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_8__, i32, i64, i8*, i8*, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32* }

@PCI_CLASS_MEMORY_FLASH = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"failed to iomap\0A\00", align 1
@cafe_mul = common dso_local global i32 0, align 4
@cafe_nand_cmdfunc = common dso_local global i32 0, align 4
@cafe_device_ready = common dso_local global i32 0, align 4
@cafe_read_byte = common dso_local global i32 0, align 4
@cafe_read_buf = common dso_local global i32 0, align 4
@cafe_write_buf = common dso_local global i32 0, align 4
@cafe_select_chip = common dso_local global i32 0, align 4
@nand_get_set_features_notsupp = common dso_local global i8* null, align 8
@NAND_BBT_USE_FLASH = common dso_local global i32 0, align 4
@skipbbt = common dso_local global i64 0, align 8
@NAND_SKIP_BBTSCAN = common dso_local global i32 0, align 4
@cafe_nand_block_bad = common dso_local global i32 0, align 4
@numtimings = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [65 x i8] c"%d timing register values ignored; precisely three are required\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"Using provided timings (%08x %08x %08x)\0A\00", align 1
@timing = common dso_local global i32* null, align 8
@NAND_TIMING1 = common dso_local global i32 0, align 4
@NAND_TIMING2 = common dso_local global i32 0, align 4
@NAND_TIMING3 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [47 x i8] c"Timing registers already set (%08x %08x %08x)\0A\00", align 1
@.str.4 = private unnamed_addr constant [58 x i8] c"Timing registers unset; using most conservative defaults\0A\00", align 1
@NAND_RESET = common dso_local global i32 0, align 4
@NAND_IRQ_MASK = common dso_local global i32 0, align 4
@cafe_nand_interrupt = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [10 x i8] c"CAFE NAND\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"Could not register IRQ %d\0A\00", align 1
@GLOBAL_CTRL = common dso_local global i32 0, align 4
@NAND_DMA_CTRL = common dso_local global i32 0, align 4
@GLOBAL_IRQ_MASK = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [25 x i8] c"Control %x, IRQ mask %x\0A\00", align 1
@cafe_nand_controller_ops = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [10 x i8] c"cafe_nand\00", align 1
@part_probes = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @cafe_nand_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cafe_nand_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.mtd_info*, align 8
  %7 = alloca %struct.cafe_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %11 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = ashr i32 %12, 8
  %14 = load i32, i32* @PCI_CLASS_MEMORY_FLASH, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %365

19:                                               ; preds = %2
  %20 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %21 = call i32 @pci_enable_device(%struct.pci_dev* %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* %9, align 4
  store i32 %25, i32* %3, align 4
  br label %365

26:                                               ; preds = %19
  %27 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %28 = call i32 @pci_set_master(%struct.pci_dev* %27)
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call %struct.cafe_priv* @kzalloc(i32 104, i32 %29)
  store %struct.cafe_priv* %30, %struct.cafe_priv** %7, align 8
  %31 = load %struct.cafe_priv*, %struct.cafe_priv** %7, align 8
  %32 = icmp ne %struct.cafe_priv* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %26
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %365

36:                                               ; preds = %26
  %37 = load %struct.cafe_priv*, %struct.cafe_priv** %7, align 8
  %38 = getelementptr inbounds %struct.cafe_priv, %struct.cafe_priv* %37, i32 0, i32 1
  %39 = call %struct.mtd_info* @nand_to_mtd(%struct.TYPE_11__* %38)
  store %struct.mtd_info* %39, %struct.mtd_info** %6, align 8
  %40 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %41 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %40, i32 0, i32 2
  %42 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %43 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  store i32* %41, i32** %44, align 8
  %45 = load %struct.cafe_priv*, %struct.cafe_priv** %7, align 8
  %46 = getelementptr inbounds %struct.cafe_priv, %struct.cafe_priv* %45, i32 0, i32 1
  %47 = load %struct.cafe_priv*, %struct.cafe_priv** %7, align 8
  %48 = call i32 @nand_set_controller_data(%struct.TYPE_11__* %46, %struct.cafe_priv* %47)
  %49 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %50 = load %struct.cafe_priv*, %struct.cafe_priv** %7, align 8
  %51 = getelementptr inbounds %struct.cafe_priv, %struct.cafe_priv* %50, i32 0, i32 3
  store %struct.pci_dev* %49, %struct.pci_dev** %51, align 8
  %52 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %53 = call i32 @pci_iomap(%struct.pci_dev* %52, i32 0, i32 0)
  %54 = load %struct.cafe_priv*, %struct.cafe_priv** %7, align 8
  %55 = getelementptr inbounds %struct.cafe_priv, %struct.cafe_priv* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = load %struct.cafe_priv*, %struct.cafe_priv** %7, align 8
  %57 = getelementptr inbounds %struct.cafe_priv, %struct.cafe_priv* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %66, label %60

60:                                               ; preds = %36
  %61 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %62 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %61, i32 0, i32 2
  %63 = call i32 (i32*, i8*, ...) @dev_warn(i32* %62, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %64 = load i32, i32* @ENOMEM, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %9, align 4
  br label %360

66:                                               ; preds = %36
  %67 = call i32 @init_rs_non_canonical(i32 12, i32* @cafe_mul, i32 0, i32 1, i32 8)
  %68 = load %struct.cafe_priv*, %struct.cafe_priv** %7, align 8
  %69 = getelementptr inbounds %struct.cafe_priv, %struct.cafe_priv* %68, i32 0, i32 4
  store i32 %67, i32* %69, align 8
  %70 = load %struct.cafe_priv*, %struct.cafe_priv** %7, align 8
  %71 = getelementptr inbounds %struct.cafe_priv, %struct.cafe_priv* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 8
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %66
  %75 = load i32, i32* @ENOMEM, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %9, align 4
  br label %354

77:                                               ; preds = %66
  %78 = load i32, i32* @cafe_nand_cmdfunc, align 4
  %79 = load %struct.cafe_priv*, %struct.cafe_priv** %7, align 8
  %80 = getelementptr inbounds %struct.cafe_priv, %struct.cafe_priv* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 10
  store i32 %78, i32* %82, align 4
  %83 = load i32, i32* @cafe_device_ready, align 4
  %84 = load %struct.cafe_priv*, %struct.cafe_priv** %7, align 8
  %85 = getelementptr inbounds %struct.cafe_priv, %struct.cafe_priv* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 9
  store i32 %83, i32* %87, align 8
  %88 = load i32, i32* @cafe_read_byte, align 4
  %89 = load %struct.cafe_priv*, %struct.cafe_priv** %7, align 8
  %90 = getelementptr inbounds %struct.cafe_priv, %struct.cafe_priv* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 8
  store i32 %88, i32* %92, align 4
  %93 = load i32, i32* @cafe_read_buf, align 4
  %94 = load %struct.cafe_priv*, %struct.cafe_priv** %7, align 8
  %95 = getelementptr inbounds %struct.cafe_priv, %struct.cafe_priv* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 7
  store i32 %93, i32* %97, align 8
  %98 = load i32, i32* @cafe_write_buf, align 4
  %99 = load %struct.cafe_priv*, %struct.cafe_priv** %7, align 8
  %100 = getelementptr inbounds %struct.cafe_priv, %struct.cafe_priv* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 6
  store i32 %98, i32* %102, align 4
  %103 = load i32, i32* @cafe_select_chip, align 4
  %104 = load %struct.cafe_priv*, %struct.cafe_priv** %7, align 8
  %105 = getelementptr inbounds %struct.cafe_priv, %struct.cafe_priv* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 5
  store i32 %103, i32* %107, align 8
  %108 = load i8*, i8** @nand_get_set_features_notsupp, align 8
  %109 = load %struct.cafe_priv*, %struct.cafe_priv** %7, align 8
  %110 = getelementptr inbounds %struct.cafe_priv, %struct.cafe_priv* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 4
  store i8* %108, i8** %112, align 8
  %113 = load i8*, i8** @nand_get_set_features_notsupp, align 8
  %114 = load %struct.cafe_priv*, %struct.cafe_priv** %7, align 8
  %115 = getelementptr inbounds %struct.cafe_priv, %struct.cafe_priv* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 3
  store i8* %113, i8** %117, align 8
  %118 = load %struct.cafe_priv*, %struct.cafe_priv** %7, align 8
  %119 = getelementptr inbounds %struct.cafe_priv, %struct.cafe_priv* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 2
  store i64 0, i64* %121, align 8
  %122 = load i32, i32* @NAND_BBT_USE_FLASH, align 4
  %123 = load %struct.cafe_priv*, %struct.cafe_priv** %7, align 8
  %124 = getelementptr inbounds %struct.cafe_priv, %struct.cafe_priv* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 2
  store i32 %122, i32* %125, align 4
  %126 = load i64, i64* @skipbbt, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %140

128:                                              ; preds = %77
  %129 = load i32, i32* @NAND_SKIP_BBTSCAN, align 4
  %130 = load %struct.cafe_priv*, %struct.cafe_priv** %7, align 8
  %131 = getelementptr inbounds %struct.cafe_priv, %struct.cafe_priv* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = or i32 %133, %129
  store i32 %134, i32* %132, align 8
  %135 = load i32, i32* @cafe_nand_block_bad, align 4
  %136 = load %struct.cafe_priv*, %struct.cafe_priv** %7, align 8
  %137 = getelementptr inbounds %struct.cafe_priv, %struct.cafe_priv* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 1
  store i32 %135, i32* %139, align 8
  br label %140

140:                                              ; preds = %128, %77
  %141 = load i32, i32* @numtimings, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %153

143:                                              ; preds = %140
  %144 = load i32, i32* @numtimings, align 4
  %145 = icmp ne i32 %144, 3
  br i1 %145, label %146, label %153

146:                                              ; preds = %143
  %147 = load %struct.cafe_priv*, %struct.cafe_priv** %7, align 8
  %148 = getelementptr inbounds %struct.cafe_priv, %struct.cafe_priv* %147, i32 0, i32 3
  %149 = load %struct.pci_dev*, %struct.pci_dev** %148, align 8
  %150 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %149, i32 0, i32 2
  %151 = load i32, i32* @numtimings, align 4
  %152 = call i32 (i32*, i8*, ...) @dev_warn(i32* %150, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0), i32 %151)
  br label %153

153:                                              ; preds = %146, %143, %140
  %154 = load i32, i32* @numtimings, align 4
  %155 = icmp eq i32 %154, 3
  br i1 %155, label %156, label %171

156:                                              ; preds = %153
  %157 = load %struct.cafe_priv*, %struct.cafe_priv** %7, align 8
  %158 = getelementptr inbounds %struct.cafe_priv, %struct.cafe_priv* %157, i32 0, i32 3
  %159 = load %struct.pci_dev*, %struct.pci_dev** %158, align 8
  %160 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %159, i32 0, i32 2
  %161 = load i32*, i32** @timing, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 0
  %163 = load i32, i32* %162, align 4
  %164 = load i32*, i32** @timing, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 1
  %166 = load i32, i32* %165, align 4
  %167 = load i32*, i32** @timing, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 2
  %169 = load i32, i32* %168, align 4
  %170 = call i32 (i32*, i8*, i32, i32, ...) @cafe_dev_dbg(i32* %160, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %163, i32 %166, i32 %169)
  br label %227

171:                                              ; preds = %153
  %172 = load %struct.cafe_priv*, %struct.cafe_priv** %7, align 8
  %173 = load i32, i32* @NAND_TIMING1, align 4
  %174 = call i32 @cafe_readl(%struct.cafe_priv* %172, i32 %173)
  %175 = load i32*, i32** @timing, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 0
  store i32 %174, i32* %176, align 4
  %177 = load %struct.cafe_priv*, %struct.cafe_priv** %7, align 8
  %178 = load i32, i32* @NAND_TIMING2, align 4
  %179 = call i32 @cafe_readl(%struct.cafe_priv* %177, i32 %178)
  %180 = load i32*, i32** @timing, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 1
  store i32 %179, i32* %181, align 4
  %182 = load %struct.cafe_priv*, %struct.cafe_priv** %7, align 8
  %183 = load i32, i32* @NAND_TIMING3, align 4
  %184 = call i32 @cafe_readl(%struct.cafe_priv* %182, i32 %183)
  %185 = load i32*, i32** @timing, align 8
  %186 = getelementptr inbounds i32, i32* %185, i64 2
  store i32 %184, i32* %186, align 4
  %187 = load i32*, i32** @timing, align 8
  %188 = getelementptr inbounds i32, i32* %187, i64 0
  %189 = load i32, i32* %188, align 4
  %190 = load i32*, i32** @timing, align 8
  %191 = getelementptr inbounds i32, i32* %190, i64 1
  %192 = load i32, i32* %191, align 4
  %193 = or i32 %189, %192
  %194 = load i32*, i32** @timing, align 8
  %195 = getelementptr inbounds i32, i32* %194, i64 2
  %196 = load i32, i32* %195, align 4
  %197 = or i32 %193, %196
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %214

199:                                              ; preds = %171
  %200 = load %struct.cafe_priv*, %struct.cafe_priv** %7, align 8
  %201 = getelementptr inbounds %struct.cafe_priv, %struct.cafe_priv* %200, i32 0, i32 3
  %202 = load %struct.pci_dev*, %struct.pci_dev** %201, align 8
  %203 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %202, i32 0, i32 2
  %204 = load i32*, i32** @timing, align 8
  %205 = getelementptr inbounds i32, i32* %204, i64 0
  %206 = load i32, i32* %205, align 4
  %207 = load i32*, i32** @timing, align 8
  %208 = getelementptr inbounds i32, i32* %207, i64 1
  %209 = load i32, i32* %208, align 4
  %210 = load i32*, i32** @timing, align 8
  %211 = getelementptr inbounds i32, i32* %210, i64 2
  %212 = load i32, i32* %211, align 4
  %213 = call i32 (i32*, i8*, i32, i32, ...) @cafe_dev_dbg(i32* %203, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i32 %206, i32 %209, i32 %212)
  br label %226

214:                                              ; preds = %171
  %215 = load %struct.cafe_priv*, %struct.cafe_priv** %7, align 8
  %216 = getelementptr inbounds %struct.cafe_priv, %struct.cafe_priv* %215, i32 0, i32 3
  %217 = load %struct.pci_dev*, %struct.pci_dev** %216, align 8
  %218 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %217, i32 0, i32 2
  %219 = call i32 (i32*, i8*, ...) @dev_warn(i32* %218, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.4, i64 0, i64 0))
  %220 = load i32*, i32** @timing, align 8
  %221 = getelementptr inbounds i32, i32* %220, i64 2
  store i32 -1, i32* %221, align 4
  %222 = load i32*, i32** @timing, align 8
  %223 = getelementptr inbounds i32, i32* %222, i64 1
  store i32 -1, i32* %223, align 4
  %224 = load i32*, i32** @timing, align 8
  %225 = getelementptr inbounds i32, i32* %224, i64 0
  store i32 -1, i32* %225, align 4
  br label %226

226:                                              ; preds = %214, %199
  br label %227

227:                                              ; preds = %226, %156
  %228 = load %struct.cafe_priv*, %struct.cafe_priv** %7, align 8
  %229 = load i32, i32* @NAND_RESET, align 4
  %230 = call i32 @cafe_writel(%struct.cafe_priv* %228, i32 1, i32 %229)
  %231 = load %struct.cafe_priv*, %struct.cafe_priv** %7, align 8
  %232 = load i32, i32* @NAND_RESET, align 4
  %233 = call i32 @cafe_writel(%struct.cafe_priv* %231, i32 0, i32 %232)
  %234 = load %struct.cafe_priv*, %struct.cafe_priv** %7, align 8
  %235 = load i32*, i32** @timing, align 8
  %236 = getelementptr inbounds i32, i32* %235, i64 0
  %237 = load i32, i32* %236, align 4
  %238 = load i32, i32* @NAND_TIMING1, align 4
  %239 = call i32 @cafe_writel(%struct.cafe_priv* %234, i32 %237, i32 %238)
  %240 = load %struct.cafe_priv*, %struct.cafe_priv** %7, align 8
  %241 = load i32*, i32** @timing, align 8
  %242 = getelementptr inbounds i32, i32* %241, i64 1
  %243 = load i32, i32* %242, align 4
  %244 = load i32, i32* @NAND_TIMING2, align 4
  %245 = call i32 @cafe_writel(%struct.cafe_priv* %240, i32 %243, i32 %244)
  %246 = load %struct.cafe_priv*, %struct.cafe_priv** %7, align 8
  %247 = load i32*, i32** @timing, align 8
  %248 = getelementptr inbounds i32, i32* %247, i64 2
  %249 = load i32, i32* %248, align 4
  %250 = load i32, i32* @NAND_TIMING3, align 4
  %251 = call i32 @cafe_writel(%struct.cafe_priv* %246, i32 %249, i32 %250)
  %252 = load %struct.cafe_priv*, %struct.cafe_priv** %7, align 8
  %253 = load i32, i32* @NAND_IRQ_MASK, align 4
  %254 = call i32 @cafe_writel(%struct.cafe_priv* %252, i32 -1, i32 %253)
  %255 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %256 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %255, i32 0, i32 1
  %257 = load i32, i32* %256, align 4
  %258 = load i32, i32* @IRQF_SHARED, align 4
  %259 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %260 = call i32 @request_irq(i32 %257, i32* @cafe_nand_interrupt, i32 %258, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), %struct.mtd_info* %259)
  store i32 %260, i32* %9, align 4
  %261 = load i32, i32* %9, align 4
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %270

263:                                              ; preds = %227
  %264 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %265 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %264, i32 0, i32 2
  %266 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %267 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %266, i32 0, i32 1
  %268 = load i32, i32* %267, align 4
  %269 = call i32 (i32*, i8*, ...) @dev_warn(i32* %265, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i32 %268)
  br label %354

270:                                              ; preds = %227
  %271 = load %struct.cafe_priv*, %struct.cafe_priv** %7, align 8
  %272 = load i32, i32* @GLOBAL_CTRL, align 4
  %273 = call i32 @cafe_readl(%struct.cafe_priv* %271, i32 %272)
  store i32 %273, i32* %8, align 4
  %274 = load i32, i32* %8, align 4
  %275 = and i32 %274, -4112
  store i32 %275, i32* %8, align 4
  %276 = load i32, i32* %8, align 4
  %277 = or i32 %276, 28672
  store i32 %277, i32* %8, align 4
  %278 = load %struct.cafe_priv*, %struct.cafe_priv** %7, align 8
  %279 = load i32, i32* %8, align 4
  %280 = or i32 %279, 5
  %281 = load i32, i32* @GLOBAL_CTRL, align 4
  %282 = call i32 @cafe_writel(%struct.cafe_priv* %278, i32 %280, i32 %281)
  %283 = load %struct.cafe_priv*, %struct.cafe_priv** %7, align 8
  %284 = load i32, i32* %8, align 4
  %285 = or i32 %284, 10
  %286 = load i32, i32* @GLOBAL_CTRL, align 4
  %287 = call i32 @cafe_writel(%struct.cafe_priv* %283, i32 %285, i32 %286)
  %288 = load %struct.cafe_priv*, %struct.cafe_priv** %7, align 8
  %289 = load i32, i32* @NAND_DMA_CTRL, align 4
  %290 = call i32 @cafe_writel(%struct.cafe_priv* %288, i32 0, i32 %289)
  %291 = load %struct.cafe_priv*, %struct.cafe_priv** %7, align 8
  %292 = load i32, i32* @GLOBAL_CTRL, align 4
  %293 = call i32 @cafe_writel(%struct.cafe_priv* %291, i32 28678, i32 %292)
  %294 = load %struct.cafe_priv*, %struct.cafe_priv** %7, align 8
  %295 = load i32, i32* @GLOBAL_CTRL, align 4
  %296 = call i32 @cafe_writel(%struct.cafe_priv* %294, i32 28682, i32 %295)
  %297 = load %struct.cafe_priv*, %struct.cafe_priv** %7, align 8
  %298 = load i32, i32* @GLOBAL_IRQ_MASK, align 4
  %299 = call i32 @cafe_writel(%struct.cafe_priv* %297, i32 -2147483641, i32 %298)
  %300 = load %struct.cafe_priv*, %struct.cafe_priv** %7, align 8
  %301 = getelementptr inbounds %struct.cafe_priv, %struct.cafe_priv* %300, i32 0, i32 3
  %302 = load %struct.pci_dev*, %struct.pci_dev** %301, align 8
  %303 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %302, i32 0, i32 2
  %304 = load %struct.cafe_priv*, %struct.cafe_priv** %7, align 8
  %305 = load i32, i32* @GLOBAL_CTRL, align 4
  %306 = call i32 @cafe_readl(%struct.cafe_priv* %304, i32 %305)
  %307 = load %struct.cafe_priv*, %struct.cafe_priv** %7, align 8
  %308 = load i32, i32* @GLOBAL_IRQ_MASK, align 4
  %309 = call i32 @cafe_readl(%struct.cafe_priv* %307, i32 %308)
  %310 = call i32 (i32*, i8*, i32, i32, ...) @cafe_dev_dbg(i32* %303, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i32 %306, i32 %309)
  %311 = load %struct.cafe_priv*, %struct.cafe_priv** %7, align 8
  %312 = getelementptr inbounds %struct.cafe_priv, %struct.cafe_priv* %311, i32 0, i32 2
  store i64 0, i64* %312, align 8
  %313 = load %struct.cafe_priv*, %struct.cafe_priv** %7, align 8
  %314 = getelementptr inbounds %struct.cafe_priv, %struct.cafe_priv* %313, i32 0, i32 1
  %315 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %314, i32 0, i32 0
  %316 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %315, i32 0, i32 0
  %317 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %316, i32 0, i32 0
  store i32* @cafe_nand_controller_ops, i32** %317, align 8
  %318 = load %struct.cafe_priv*, %struct.cafe_priv** %7, align 8
  %319 = getelementptr inbounds %struct.cafe_priv, %struct.cafe_priv* %318, i32 0, i32 1
  %320 = call i32 @nand_scan(%struct.TYPE_11__* %319, i32 2)
  store i32 %320, i32* %9, align 4
  %321 = load i32, i32* %9, align 4
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %323, label %324

323:                                              ; preds = %270
  br label %341

324:                                              ; preds = %270
  %325 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %326 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %327 = call i32 @pci_set_drvdata(%struct.pci_dev* %325, %struct.mtd_info* %326)
  %328 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %329 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %328, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8** %329, align 8
  %330 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %331 = load i32, i32* @part_probes, align 4
  %332 = call i32 @mtd_device_parse_register(%struct.mtd_info* %330, i32 %331, i32* null, i32* null, i32 0)
  store i32 %332, i32* %9, align 4
  %333 = load i32, i32* %9, align 4
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %335, label %336

335:                                              ; preds = %324
  br label %337

336:                                              ; preds = %324
  br label %363

337:                                              ; preds = %335
  %338 = load %struct.cafe_priv*, %struct.cafe_priv** %7, align 8
  %339 = getelementptr inbounds %struct.cafe_priv, %struct.cafe_priv* %338, i32 0, i32 1
  %340 = call i32 @nand_cleanup(%struct.TYPE_11__* %339)
  br label %341

341:                                              ; preds = %337, %323
  %342 = load %struct.cafe_priv*, %struct.cafe_priv** %7, align 8
  %343 = load %struct.cafe_priv*, %struct.cafe_priv** %7, align 8
  %344 = load i32, i32* @GLOBAL_IRQ_MASK, align 4
  %345 = call i32 @cafe_readl(%struct.cafe_priv* %343, i32 %344)
  %346 = and i32 -2, %345
  %347 = load i32, i32* @GLOBAL_IRQ_MASK, align 4
  %348 = call i32 @cafe_writel(%struct.cafe_priv* %342, i32 %346, i32 %347)
  %349 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %350 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %349, i32 0, i32 1
  %351 = load i32, i32* %350, align 4
  %352 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %353 = call i32 @free_irq(i32 %351, %struct.mtd_info* %352)
  br label %354

354:                                              ; preds = %341, %263, %74
  %355 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %356 = load %struct.cafe_priv*, %struct.cafe_priv** %7, align 8
  %357 = getelementptr inbounds %struct.cafe_priv, %struct.cafe_priv* %356, i32 0, i32 0
  %358 = load i32, i32* %357, align 8
  %359 = call i32 @pci_iounmap(%struct.pci_dev* %355, i32 %358)
  br label %360

360:                                              ; preds = %354, %60
  %361 = load %struct.cafe_priv*, %struct.cafe_priv** %7, align 8
  %362 = call i32 @kfree(%struct.cafe_priv* %361)
  br label %363

363:                                              ; preds = %360, %336
  %364 = load i32, i32* %9, align 4
  store i32 %364, i32* %3, align 4
  br label %365

365:                                              ; preds = %363, %33, %24, %16
  %366 = load i32, i32* %3, align 4
  ret i32 %366
}

declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local %struct.cafe_priv* @kzalloc(i32, i32) #1

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.TYPE_11__*) #1

declare dso_local i32 @nand_set_controller_data(%struct.TYPE_11__*, %struct.cafe_priv*) #1

declare dso_local i32 @pci_iomap(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, ...) #1

declare dso_local i32 @init_rs_non_canonical(i32, i32*, i32, i32, i32) #1

declare dso_local i32 @cafe_dev_dbg(i32*, i8*, i32, i32, ...) #1

declare dso_local i32 @cafe_readl(%struct.cafe_priv*, i32) #1

declare dso_local i32 @cafe_writel(%struct.cafe_priv*, i32, i32) #1

declare dso_local i32 @request_irq(i32, i32*, i32, i8*, %struct.mtd_info*) #1

declare dso_local i32 @nand_scan(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.mtd_info*) #1

declare dso_local i32 @mtd_device_parse_register(%struct.mtd_info*, i32, i32*, i32*, i32) #1

declare dso_local i32 @nand_cleanup(%struct.TYPE_11__*) #1

declare dso_local i32 @free_irq(i32, %struct.mtd_info*) #1

declare dso_local i32 @pci_iounmap(%struct.pci_dev*, i32) #1

declare dso_local i32 @kfree(%struct.cafe_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
