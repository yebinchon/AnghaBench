; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/chips/extr_map_ram.c_map_ram_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/chips/extr_map_ram.c_map_ram_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i32, i32, i32, %struct.map_info* }
%struct.map_info = type { i32, i32, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@mapram_chipdrv = common dso_local global i32 0, align 4
@MTD_RAM = common dso_local global i32 0, align 4
@mapram_erase = common dso_local global i32 0, align 4
@mapram_read = common dso_local global i32 0, align 4
@mapram_write = common dso_local global i8* null, align 8
@mapram_point = common dso_local global i32 0, align 4
@mapram_nop = common dso_local global i32 0, align 4
@mapram_unpoint = common dso_local global i32 0, align 4
@MTD_CAP_RAM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mtd_info* (%struct.map_info*)* @map_ram_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mtd_info* @map_ram_probe(%struct.map_info* %0) #0 {
  %2 = alloca %struct.mtd_info*, align 8
  %3 = alloca %struct.map_info*, align 8
  %4 = alloca %struct.mtd_info*, align 8
  store %struct.map_info* %0, %struct.map_info** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.mtd_info* @kzalloc(i32 72, i32 %5)
  store %struct.mtd_info* %6, %struct.mtd_info** %4, align 8
  %7 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %8 = icmp ne %struct.mtd_info* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store %struct.mtd_info* null, %struct.mtd_info** %2, align 8
  br label %77

10:                                               ; preds = %1
  %11 = load %struct.map_info*, %struct.map_info** %3, align 8
  %12 = getelementptr inbounds %struct.map_info, %struct.map_info* %11, i32 0, i32 2
  store i32* @mapram_chipdrv, i32** %12, align 8
  %13 = load %struct.map_info*, %struct.map_info** %3, align 8
  %14 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %15 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %14, i32 0, i32 13
  store %struct.map_info* %13, %struct.map_info** %15, align 8
  %16 = load %struct.map_info*, %struct.map_info** %3, align 8
  %17 = getelementptr inbounds %struct.map_info, %struct.map_info* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %20 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %19, i32 0, i32 12
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @MTD_RAM, align 4
  %22 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %23 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %22, i32 0, i32 11
  store i32 %21, i32* %23, align 8
  %24 = load %struct.map_info*, %struct.map_info** %3, align 8
  %25 = getelementptr inbounds %struct.map_info, %struct.map_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %28 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load i32, i32* @mapram_erase, align 4
  %30 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %31 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %30, i32 0, i32 10
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* @mapram_read, align 4
  %33 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %34 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %33, i32 0, i32 9
  store i32 %32, i32* %34, align 8
  %35 = load i8*, i8** @mapram_write, align 8
  %36 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %37 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %36, i32 0, i32 8
  store i8* %35, i8** %37, align 8
  %38 = load i8*, i8** @mapram_write, align 8
  %39 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %40 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %39, i32 0, i32 7
  store i8* %38, i8** %40, align 8
  %41 = load i32, i32* @mapram_point, align 4
  %42 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %43 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %42, i32 0, i32 6
  store i32 %41, i32* %43, align 8
  %44 = load i32, i32* @mapram_nop, align 4
  %45 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %46 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %45, i32 0, i32 5
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* @mapram_unpoint, align 4
  %48 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %49 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %48, i32 0, i32 4
  store i32 %47, i32* %49, align 8
  %50 = load i32, i32* @MTD_CAP_RAM, align 4
  %51 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %52 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %51, i32 0, i32 3
  store i32 %50, i32* %52, align 4
  %53 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %54 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %53, i32 0, i32 1
  store i32 1, i32* %54, align 4
  %55 = load i32, i32* @PAGE_SIZE, align 4
  %56 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %57 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 8
  br label %58

58:                                               ; preds = %68, %10
  %59 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %60 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %63 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = sub nsw i32 %64, 1
  %66 = and i32 %61, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %58
  %69 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %70 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = ashr i32 %71, 1
  store i32 %72, i32* %70, align 8
  br label %58

73:                                               ; preds = %58
  %74 = load i32, i32* @THIS_MODULE, align 4
  %75 = call i32 @__module_get(i32 %74)
  %76 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  store %struct.mtd_info* %76, %struct.mtd_info** %2, align 8
  br label %77

77:                                               ; preds = %73, %9
  %78 = load %struct.mtd_info*, %struct.mtd_info** %2, align 8
  ret %struct.mtd_info* %78
}

declare dso_local %struct.mtd_info* @kzalloc(i32, i32) #1

declare dso_local i32 @__module_get(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
