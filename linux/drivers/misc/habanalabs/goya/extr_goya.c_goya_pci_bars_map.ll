; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/goya/extr_goya.c_goya_pci_bars_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/goya/extr_goya.c_goya_pci_bars_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_device = type { i64*, i64 }

@goya_pci_bars_map.name = internal constant [3 x i8*] [i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [9 x i8] c"SRAM_CFG\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"MSIX\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"DDR\00", align 1
@__const.goya_pci_bars_map.is_wc = private unnamed_addr constant [3 x i32] [i32 0, i32 0, i32 1], align 4
@SRAM_CFG_BAR_ID = common dso_local global i64 0, align 8
@CFG_BASE = common dso_local global i64 0, align 8
@SRAM_BASE_ADDR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hl_device*)* @goya_pci_bars_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @goya_pci_bars_map(%struct.hl_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hl_device*, align 8
  %4 = alloca [3 x i32], align 4
  %5 = alloca i32, align 4
  store %struct.hl_device* %0, %struct.hl_device** %3, align 8
  %6 = bitcast [3 x i32]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %6, i8* align 4 bitcast ([3 x i32]* @__const.goya_pci_bars_map.is_wc to i8*), i64 12, i1 false)
  %7 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %8 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %9 = call i32 @hl_pci_bars_map(%struct.hl_device* %7, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @goya_pci_bars_map.name, i64 0, i64 0), i32* %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %5, align 4
  store i32 %13, i32* %2, align 4
  br label %27

14:                                               ; preds = %1
  %15 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %16 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %15, i32 0, i32 0
  %17 = load i64*, i64** %16, align 8
  %18 = load i64, i64* @SRAM_CFG_BAR_ID, align 8
  %19 = getelementptr inbounds i64, i64* %17, i64 %18
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @CFG_BASE, align 8
  %22 = load i64, i64* @SRAM_BASE_ADDR, align 8
  %23 = sub nsw i64 %21, %22
  %24 = add nsw i64 %20, %23
  %25 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %26 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %25, i32 0, i32 1
  store i64 %24, i64* %26, align 8
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %14, %12
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @hl_pci_bars_map(%struct.hl_device*, i8**, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
