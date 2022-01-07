; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_debugfs.c_mmu_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_debugfs.c_mmu_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.hl_debugfs_entry* }
%struct.hl_debugfs_entry = type { %struct.hl_dbg_device_entry* }
%struct.hl_dbg_device_entry = type { i64, i64, %struct.hl_device* }
%struct.hl_device = type { i32, %struct.TYPE_2__*, %struct.hl_ctx*, %struct.hl_ctx*, i32 }
%struct.TYPE_2__ = type { i64 (%struct.hl_device*, i64)* }
%struct.hl_ctx = type { i32 }

@HL_KERNEL_ASID_ID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"no ctx available\0A\00", align 1
@ULLONG_MAX = common dso_local global i64 0, align 8
@LAST_MASK = common dso_local global i64 0, align 8
@PAGE_PRESENT_MASK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"asid: %u, virt_addr: 0x%llx\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"hop0_addr: 0x%llx\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"hop0_pte_addr: 0x%llx\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"hop0_pte: 0x%llx\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"hop1_addr: 0x%llx\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"hop1_pte_addr: 0x%llx\0A\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"hop1_pte: 0x%llx\0A\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"hop2_addr: 0x%llx\0A\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"hop2_pte_addr: 0x%llx\0A\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"hop2_pte: 0x%llx\0A\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"hop3_addr: 0x%llx\0A\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"hop3_pte_addr: 0x%llx\0A\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"hop3_pte: 0x%llx\0A\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"hop4_addr: 0x%llx\0A\00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"hop4_pte_addr: 0x%llx\0A\00", align 1
@.str.16 = private unnamed_addr constant [18 x i8] c"hop4_pte: 0x%llx\0A\00", align 1
@.str.17 = private unnamed_addr constant [45 x i8] c"virt addr 0x%llx is not mapped to phys addr\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @mmu_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmu_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.hl_debugfs_entry*, align 8
  %7 = alloca %struct.hl_dbg_device_entry*, align 8
  %8 = alloca %struct.hl_device*, align 8
  %9 = alloca %struct.hl_ctx*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i8* %1, i8** %5, align 8
  %26 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %27 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %26, i32 0, i32 0
  %28 = load %struct.hl_debugfs_entry*, %struct.hl_debugfs_entry** %27, align 8
  store %struct.hl_debugfs_entry* %28, %struct.hl_debugfs_entry** %6, align 8
  %29 = load %struct.hl_debugfs_entry*, %struct.hl_debugfs_entry** %6, align 8
  %30 = getelementptr inbounds %struct.hl_debugfs_entry, %struct.hl_debugfs_entry* %29, i32 0, i32 0
  %31 = load %struct.hl_dbg_device_entry*, %struct.hl_dbg_device_entry** %30, align 8
  store %struct.hl_dbg_device_entry* %31, %struct.hl_dbg_device_entry** %7, align 8
  %32 = load %struct.hl_dbg_device_entry*, %struct.hl_dbg_device_entry** %7, align 8
  %33 = getelementptr inbounds %struct.hl_dbg_device_entry, %struct.hl_dbg_device_entry* %32, i32 0, i32 2
  %34 = load %struct.hl_device*, %struct.hl_device** %33, align 8
  store %struct.hl_device* %34, %struct.hl_device** %8, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  store i64 0, i64* %14, align 8
  store i64 0, i64* %15, align 8
  store i64 0, i64* %16, align 8
  store i64 0, i64* %17, align 8
  store i64 0, i64* %18, align 8
  store i64 0, i64* %19, align 8
  store i64 0, i64* %20, align 8
  store i64 0, i64* %21, align 8
  store i64 0, i64* %22, align 8
  store i64 0, i64* %23, align 8
  store i64 0, i64* %24, align 8
  %35 = load %struct.hl_dbg_device_entry*, %struct.hl_dbg_device_entry** %7, align 8
  %36 = getelementptr inbounds %struct.hl_dbg_device_entry, %struct.hl_dbg_device_entry* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %25, align 8
  %38 = load %struct.hl_device*, %struct.hl_device** %8, align 8
  %39 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %247

43:                                               ; preds = %2
  %44 = load %struct.hl_dbg_device_entry*, %struct.hl_dbg_device_entry** %7, align 8
  %45 = getelementptr inbounds %struct.hl_dbg_device_entry, %struct.hl_dbg_device_entry* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @HL_KERNEL_ASID_ID, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %43
  %50 = load %struct.hl_device*, %struct.hl_device** %8, align 8
  %51 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %50, i32 0, i32 3
  %52 = load %struct.hl_ctx*, %struct.hl_ctx** %51, align 8
  store %struct.hl_ctx* %52, %struct.hl_ctx** %9, align 8
  br label %57

53:                                               ; preds = %43
  %54 = load %struct.hl_device*, %struct.hl_device** %8, align 8
  %55 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %54, i32 0, i32 2
  %56 = load %struct.hl_ctx*, %struct.hl_ctx** %55, align 8
  store %struct.hl_ctx* %56, %struct.hl_ctx** %9, align 8
  br label %57

57:                                               ; preds = %53, %49
  %58 = load %struct.hl_ctx*, %struct.hl_ctx** %9, align 8
  %59 = icmp ne %struct.hl_ctx* %58, null
  br i1 %59, label %65, label %60

60:                                               ; preds = %57
  %61 = load %struct.hl_device*, %struct.hl_device** %8, align 8
  %62 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 (i32, i8*, ...) @dev_err(i32 %63, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %247

65:                                               ; preds = %57
  %66 = load %struct.hl_ctx*, %struct.hl_ctx** %9, align 8
  %67 = getelementptr inbounds %struct.hl_ctx, %struct.hl_ctx* %66, i32 0, i32 0
  %68 = call i32 @mutex_lock(i32* %67)
  %69 = load %struct.hl_ctx*, %struct.hl_ctx** %9, align 8
  %70 = call i64 @get_hop0_addr(%struct.hl_ctx* %69)
  store i64 %70, i64* %10, align 8
  %71 = load %struct.hl_ctx*, %struct.hl_ctx** %9, align 8
  %72 = load i64, i64* %10, align 8
  %73 = load i64, i64* %25, align 8
  %74 = call i64 @get_hop0_pte_addr(%struct.hl_ctx* %71, i64 %72, i64 %73)
  store i64 %74, i64* %11, align 8
  %75 = load %struct.hl_device*, %struct.hl_device** %8, align 8
  %76 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %75, i32 0, i32 1
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i64 (%struct.hl_device*, i64)*, i64 (%struct.hl_device*, i64)** %78, align 8
  %80 = load %struct.hl_device*, %struct.hl_device** %8, align 8
  %81 = load i64, i64* %11, align 8
  %82 = call i64 %79(%struct.hl_device* %80, i64 %81)
  store i64 %82, i64* %12, align 8
  %83 = load i64, i64* %12, align 8
  %84 = call i64 @get_next_hop_addr(i64 %83)
  store i64 %84, i64* %13, align 8
  %85 = load i64, i64* %13, align 8
  %86 = load i64, i64* @ULLONG_MAX, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %65
  br label %237

89:                                               ; preds = %65
  %90 = load %struct.hl_ctx*, %struct.hl_ctx** %9, align 8
  %91 = load i64, i64* %13, align 8
  %92 = load i64, i64* %25, align 8
  %93 = call i64 @get_hop1_pte_addr(%struct.hl_ctx* %90, i64 %91, i64 %92)
  store i64 %93, i64* %14, align 8
  %94 = load %struct.hl_device*, %struct.hl_device** %8, align 8
  %95 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %94, i32 0, i32 1
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = load i64 (%struct.hl_device*, i64)*, i64 (%struct.hl_device*, i64)** %97, align 8
  %99 = load %struct.hl_device*, %struct.hl_device** %8, align 8
  %100 = load i64, i64* %14, align 8
  %101 = call i64 %98(%struct.hl_device* %99, i64 %100)
  store i64 %101, i64* %15, align 8
  %102 = load i64, i64* %15, align 8
  %103 = call i64 @get_next_hop_addr(i64 %102)
  store i64 %103, i64* %16, align 8
  %104 = load i64, i64* %16, align 8
  %105 = load i64, i64* @ULLONG_MAX, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %89
  br label %237

108:                                              ; preds = %89
  %109 = load %struct.hl_ctx*, %struct.hl_ctx** %9, align 8
  %110 = load i64, i64* %16, align 8
  %111 = load i64, i64* %25, align 8
  %112 = call i64 @get_hop2_pte_addr(%struct.hl_ctx* %109, i64 %110, i64 %111)
  store i64 %112, i64* %17, align 8
  %113 = load %struct.hl_device*, %struct.hl_device** %8, align 8
  %114 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %113, i32 0, i32 1
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 0
  %117 = load i64 (%struct.hl_device*, i64)*, i64 (%struct.hl_device*, i64)** %116, align 8
  %118 = load %struct.hl_device*, %struct.hl_device** %8, align 8
  %119 = load i64, i64* %17, align 8
  %120 = call i64 %117(%struct.hl_device* %118, i64 %119)
  store i64 %120, i64* %18, align 8
  %121 = load i64, i64* %18, align 8
  %122 = call i64 @get_next_hop_addr(i64 %121)
  store i64 %122, i64* %19, align 8
  %123 = load i64, i64* %19, align 8
  %124 = load i64, i64* @ULLONG_MAX, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %127

126:                                              ; preds = %108
  br label %237

127:                                              ; preds = %108
  %128 = load %struct.hl_ctx*, %struct.hl_ctx** %9, align 8
  %129 = load i64, i64* %19, align 8
  %130 = load i64, i64* %25, align 8
  %131 = call i64 @get_hop3_pte_addr(%struct.hl_ctx* %128, i64 %129, i64 %130)
  store i64 %131, i64* %20, align 8
  %132 = load %struct.hl_device*, %struct.hl_device** %8, align 8
  %133 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %132, i32 0, i32 1
  %134 = load %struct.TYPE_2__*, %struct.TYPE_2__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 0
  %136 = load i64 (%struct.hl_device*, i64)*, i64 (%struct.hl_device*, i64)** %135, align 8
  %137 = load %struct.hl_device*, %struct.hl_device** %8, align 8
  %138 = load i64, i64* %20, align 8
  %139 = call i64 %136(%struct.hl_device* %137, i64 %138)
  store i64 %139, i64* %21, align 8
  %140 = load i64, i64* %21, align 8
  %141 = load i64, i64* @LAST_MASK, align 8
  %142 = and i64 %140, %141
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %170, label %144

144:                                              ; preds = %127
  %145 = load i64, i64* %21, align 8
  %146 = call i64 @get_next_hop_addr(i64 %145)
  store i64 %146, i64* %22, align 8
  %147 = load i64, i64* %22, align 8
  %148 = load i64, i64* @ULLONG_MAX, align 8
  %149 = icmp eq i64 %147, %148
  br i1 %149, label %150, label %151

150:                                              ; preds = %144
  br label %237

151:                                              ; preds = %144
  %152 = load %struct.hl_ctx*, %struct.hl_ctx** %9, align 8
  %153 = load i64, i64* %22, align 8
  %154 = load i64, i64* %25, align 8
  %155 = call i64 @get_hop4_pte_addr(%struct.hl_ctx* %152, i64 %153, i64 %154)
  store i64 %155, i64* %23, align 8
  %156 = load %struct.hl_device*, %struct.hl_device** %8, align 8
  %157 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %156, i32 0, i32 1
  %158 = load %struct.TYPE_2__*, %struct.TYPE_2__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i32 0, i32 0
  %160 = load i64 (%struct.hl_device*, i64)*, i64 (%struct.hl_device*, i64)** %159, align 8
  %161 = load %struct.hl_device*, %struct.hl_device** %8, align 8
  %162 = load i64, i64* %23, align 8
  %163 = call i64 %160(%struct.hl_device* %161, i64 %162)
  store i64 %163, i64* %24, align 8
  %164 = load i64, i64* %24, align 8
  %165 = load i64, i64* @PAGE_PRESENT_MASK, align 8
  %166 = and i64 %164, %165
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %169, label %168

168:                                              ; preds = %151
  br label %237

169:                                              ; preds = %151
  br label %177

170:                                              ; preds = %127
  %171 = load i64, i64* %21, align 8
  %172 = load i64, i64* @PAGE_PRESENT_MASK, align 8
  %173 = and i64 %171, %172
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %176, label %175

175:                                              ; preds = %170
  br label %237

176:                                              ; preds = %170
  br label %177

177:                                              ; preds = %176, %169
  %178 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %179 = load %struct.hl_dbg_device_entry*, %struct.hl_dbg_device_entry** %7, align 8
  %180 = getelementptr inbounds %struct.hl_dbg_device_entry, %struct.hl_dbg_device_entry* %179, i32 0, i32 1
  %181 = load i64, i64* %180, align 8
  %182 = load %struct.hl_dbg_device_entry*, %struct.hl_dbg_device_entry** %7, align 8
  %183 = getelementptr inbounds %struct.hl_dbg_device_entry, %struct.hl_dbg_device_entry* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = call i32 (%struct.seq_file*, i8*, i64, ...) @seq_printf(%struct.seq_file* %178, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i64 %181, i64 %184)
  %186 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %187 = load i64, i64* %10, align 8
  %188 = call i32 (%struct.seq_file*, i8*, i64, ...) @seq_printf(%struct.seq_file* %186, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i64 %187)
  %189 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %190 = load i64, i64* %11, align 8
  %191 = call i32 (%struct.seq_file*, i8*, i64, ...) @seq_printf(%struct.seq_file* %189, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i64 %190)
  %192 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %193 = load i64, i64* %12, align 8
  %194 = call i32 (%struct.seq_file*, i8*, i64, ...) @seq_printf(%struct.seq_file* %192, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i64 %193)
  %195 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %196 = load i64, i64* %13, align 8
  %197 = call i32 (%struct.seq_file*, i8*, i64, ...) @seq_printf(%struct.seq_file* %195, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i64 %196)
  %198 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %199 = load i64, i64* %14, align 8
  %200 = call i32 (%struct.seq_file*, i8*, i64, ...) @seq_printf(%struct.seq_file* %198, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i64 %199)
  %201 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %202 = load i64, i64* %15, align 8
  %203 = call i32 (%struct.seq_file*, i8*, i64, ...) @seq_printf(%struct.seq_file* %201, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i64 %202)
  %204 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %205 = load i64, i64* %16, align 8
  %206 = call i32 (%struct.seq_file*, i8*, i64, ...) @seq_printf(%struct.seq_file* %204, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i64 %205)
  %207 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %208 = load i64, i64* %17, align 8
  %209 = call i32 (%struct.seq_file*, i8*, i64, ...) @seq_printf(%struct.seq_file* %207, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i64 %208)
  %210 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %211 = load i64, i64* %18, align 8
  %212 = call i32 (%struct.seq_file*, i8*, i64, ...) @seq_printf(%struct.seq_file* %210, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0), i64 %211)
  %213 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %214 = load i64, i64* %19, align 8
  %215 = call i32 (%struct.seq_file*, i8*, i64, ...) @seq_printf(%struct.seq_file* %213, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0), i64 %214)
  %216 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %217 = load i64, i64* %20, align 8
  %218 = call i32 (%struct.seq_file*, i8*, i64, ...) @seq_printf(%struct.seq_file* %216, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0), i64 %217)
  %219 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %220 = load i64, i64* %21, align 8
  %221 = call i32 (%struct.seq_file*, i8*, i64, ...) @seq_printf(%struct.seq_file* %219, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0), i64 %220)
  %222 = load i64, i64* %21, align 8
  %223 = load i64, i64* @LAST_MASK, align 8
  %224 = and i64 %222, %223
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %236, label %226

226:                                              ; preds = %177
  %227 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %228 = load i64, i64* %22, align 8
  %229 = call i32 (%struct.seq_file*, i8*, i64, ...) @seq_printf(%struct.seq_file* %227, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i64 0, i64 0), i64 %228)
  %230 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %231 = load i64, i64* %23, align 8
  %232 = call i32 (%struct.seq_file*, i8*, i64, ...) @seq_printf(%struct.seq_file* %230, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i64 0, i64 0), i64 %231)
  %233 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %234 = load i64, i64* %24, align 8
  %235 = call i32 (%struct.seq_file*, i8*, i64, ...) @seq_printf(%struct.seq_file* %233, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i64 0, i64 0), i64 %234)
  br label %236

236:                                              ; preds = %226, %177
  br label %243

237:                                              ; preds = %175, %168, %150, %126, %107, %88
  %238 = load %struct.hl_device*, %struct.hl_device** %8, align 8
  %239 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = load i64, i64* %25, align 8
  %242 = call i32 (i32, i8*, ...) @dev_err(i32 %240, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.17, i64 0, i64 0), i64 %241)
  br label %243

243:                                              ; preds = %237, %236
  %244 = load %struct.hl_ctx*, %struct.hl_ctx** %9, align 8
  %245 = getelementptr inbounds %struct.hl_ctx, %struct.hl_ctx* %244, i32 0, i32 0
  %246 = call i32 @mutex_unlock(i32* %245)
  store i32 0, i32* %3, align 4
  br label %247

247:                                              ; preds = %243, %60, %42
  %248 = load i32, i32* %3, align 4
  ret i32 %248
}

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @get_hop0_addr(%struct.hl_ctx*) #1

declare dso_local i64 @get_hop0_pte_addr(%struct.hl_ctx*, i64, i64) #1

declare dso_local i64 @get_next_hop_addr(i64) #1

declare dso_local i64 @get_hop1_pte_addr(%struct.hl_ctx*, i64, i64) #1

declare dso_local i64 @get_hop2_pte_addr(%struct.hl_ctx*, i64, i64) #1

declare dso_local i64 @get_hop3_pte_addr(%struct.hl_ctx*, i64, i64) #1

declare dso_local i64 @get_hop4_pte_addr(%struct.hl_ctx*, i64, i64) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i64, ...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
