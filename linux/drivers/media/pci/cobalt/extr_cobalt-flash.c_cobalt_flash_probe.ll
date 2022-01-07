; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cobalt/extr_cobalt-flash.c_cobalt_flash_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cobalt/extr_cobalt-flash.c_cobalt_flash_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.map_info = type { i32, i32, i32, i32, i32, i32 }
%struct.cobalt = type { %struct.TYPE_4__*, %struct.mtd_info*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.mtd_info = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32* }

@cobalt_flash_map = common dso_local global %struct.map_info zeroinitializer, align 4
@flash_read16 = common dso_local global i32 0, align 4
@flash_write16 = common dso_local global i32 0, align 4
@flash_copy_from = common dso_local global i32 0, align 4
@flash_copy_to = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"cfi_probe\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Probe CFI flash failed!\0A\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cobalt_flash_probe(%struct.cobalt* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cobalt*, align 8
  %4 = alloca %struct.map_info*, align 8
  %5 = alloca %struct.mtd_info*, align 8
  store %struct.cobalt* %0, %struct.cobalt** %3, align 8
  store %struct.map_info* @cobalt_flash_map, %struct.map_info** %4, align 8
  %6 = load %struct.map_info*, %struct.map_info** %4, align 8
  %7 = getelementptr inbounds %struct.map_info, %struct.map_info* %6, i32 0, i32 5
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @map_bankwidth_supported(i32 %8)
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i32 @BUG_ON(i32 %12)
  %14 = load %struct.cobalt*, %struct.cobalt** %3, align 8
  %15 = getelementptr inbounds %struct.cobalt, %struct.cobalt* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.map_info*, %struct.map_info** %4, align 8
  %18 = getelementptr inbounds %struct.map_info, %struct.map_info* %17, i32 0, i32 4
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* @flash_read16, align 4
  %20 = load %struct.map_info*, %struct.map_info** %4, align 8
  %21 = getelementptr inbounds %struct.map_info, %struct.map_info* %20, i32 0, i32 3
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* @flash_write16, align 4
  %23 = load %struct.map_info*, %struct.map_info** %4, align 8
  %24 = getelementptr inbounds %struct.map_info, %struct.map_info* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* @flash_copy_from, align 4
  %26 = load %struct.map_info*, %struct.map_info** %4, align 8
  %27 = getelementptr inbounds %struct.map_info, %struct.map_info* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* @flash_copy_to, align 4
  %29 = load %struct.map_info*, %struct.map_info** %4, align 8
  %30 = getelementptr inbounds %struct.map_info, %struct.map_info* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load %struct.map_info*, %struct.map_info** %4, align 8
  %32 = call %struct.mtd_info* @do_map_probe(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), %struct.map_info* %31)
  store %struct.mtd_info* %32, %struct.mtd_info** %5, align 8
  %33 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %34 = load %struct.cobalt*, %struct.cobalt** %3, align 8
  %35 = getelementptr inbounds %struct.cobalt, %struct.cobalt* %34, i32 0, i32 1
  store %struct.mtd_info* %33, %struct.mtd_info** %35, align 8
  %36 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %37 = icmp ne %struct.mtd_info* %36, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %1
  %39 = call i32 @cobalt_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %53

40:                                               ; preds = %1
  %41 = load i32, i32* @THIS_MODULE, align 4
  %42 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %43 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 8
  %44 = load %struct.cobalt*, %struct.cobalt** %3, align 8
  %45 = getelementptr inbounds %struct.cobalt, %struct.cobalt* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %49 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  store i32* %47, i32** %50, align 8
  %51 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %52 = call i32 @mtd_device_register(%struct.mtd_info* %51, i32* null, i32 0)
  store i32 0, i32* %2, align 4
  br label %53

53:                                               ; preds = %40, %38
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @map_bankwidth_supported(i32) #1

declare dso_local %struct.mtd_info* @do_map_probe(i8*, %struct.map_info*) #1

declare dso_local i32 @cobalt_err(i8*) #1

declare dso_local i32 @mtd_device_register(%struct.mtd_info*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
