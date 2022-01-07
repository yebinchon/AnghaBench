; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_flex_pipe.c_ice_download_pkg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_flex_pipe.c_ice_download_pkg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_hw = type { i32 }
%struct.ice_seg = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct.ice_buf_table = type { i32, i32 }

@ICE_DBG_PKG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Segment version: %d.%d.%d.%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Seg: type 0x%X, size %d, name %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Seg buf count: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ice_hw*, %struct.ice_seg*)* @ice_download_pkg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ice_download_pkg(%struct.ice_hw* %0, %struct.ice_seg* %1) #0 {
  %3 = alloca %struct.ice_hw*, align 8
  %4 = alloca %struct.ice_seg*, align 8
  %5 = alloca %struct.ice_buf_table*, align 8
  store %struct.ice_hw* %0, %struct.ice_hw** %3, align 8
  store %struct.ice_seg* %1, %struct.ice_seg** %4, align 8
  %6 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %7 = load i32, i32* @ICE_DBG_PKG, align 4
  %8 = load %struct.ice_seg*, %struct.ice_seg** %4, align 8
  %9 = getelementptr inbounds %struct.ice_seg, %struct.ice_seg* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.ice_seg*, %struct.ice_seg** %4, align 8
  %14 = getelementptr inbounds %struct.ice_seg, %struct.ice_seg* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.ice_seg*, %struct.ice_seg** %4, align 8
  %19 = getelementptr inbounds %struct.ice_seg, %struct.ice_seg* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.ice_seg*, %struct.ice_seg** %4, align 8
  %24 = getelementptr inbounds %struct.ice_seg, %struct.ice_seg* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 (%struct.ice_hw*, i32, i8*, i32, ...) @ice_debug(%struct.ice_hw* %6, i32 %7, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %17, i32 %22, i32 %27)
  %29 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %30 = load i32, i32* @ICE_DBG_PKG, align 4
  %31 = load %struct.ice_seg*, %struct.ice_seg** %4, align 8
  %32 = getelementptr inbounds %struct.ice_seg, %struct.ice_seg* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @le32_to_cpu(i32 %34)
  %36 = load %struct.ice_seg*, %struct.ice_seg** %4, align 8
  %37 = getelementptr inbounds %struct.ice_seg, %struct.ice_seg* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @le32_to_cpu(i32 %39)
  %41 = load %struct.ice_seg*, %struct.ice_seg** %4, align 8
  %42 = getelementptr inbounds %struct.ice_seg, %struct.ice_seg* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 (%struct.ice_hw*, i32, i8*, i32, ...) @ice_debug(%struct.ice_hw* %29, i32 %30, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %35, i32 %40, i32 %44)
  %46 = load %struct.ice_seg*, %struct.ice_seg** %4, align 8
  %47 = call %struct.ice_buf_table* @ice_find_buf_table(%struct.ice_seg* %46)
  store %struct.ice_buf_table* %47, %struct.ice_buf_table** %5, align 8
  %48 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %49 = load i32, i32* @ICE_DBG_PKG, align 4
  %50 = load %struct.ice_buf_table*, %struct.ice_buf_table** %5, align 8
  %51 = getelementptr inbounds %struct.ice_buf_table, %struct.ice_buf_table* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @le32_to_cpu(i32 %52)
  %54 = call i32 (%struct.ice_hw*, i32, i8*, i32, ...) @ice_debug(%struct.ice_hw* %48, i32 %49, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %53)
  %55 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %56 = load %struct.ice_buf_table*, %struct.ice_buf_table** %5, align 8
  %57 = getelementptr inbounds %struct.ice_buf_table, %struct.ice_buf_table* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.ice_buf_table*, %struct.ice_buf_table** %5, align 8
  %60 = getelementptr inbounds %struct.ice_buf_table, %struct.ice_buf_table* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @le32_to_cpu(i32 %61)
  %63 = call i32 @ice_dwnld_cfg_bufs(%struct.ice_hw* %55, i32 %58, i32 %62)
  ret i32 %63
}

declare dso_local i32 @ice_debug(%struct.ice_hw*, i32, i8*, i32, ...) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local %struct.ice_buf_table* @ice_find_buf_table(%struct.ice_seg*) #1

declare dso_local i32 @ice_dwnld_cfg_bufs(%struct.ice_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
