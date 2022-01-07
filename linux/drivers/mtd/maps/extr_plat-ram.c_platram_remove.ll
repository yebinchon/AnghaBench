; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/maps/extr_plat-ram.c_platram_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/maps/extr_plat-ram.c_platram_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.platram_info = type { i64 }

@.str = private unnamed_addr constant [17 x i8] c"removing device\0A\00", align 1
@PLATRAM_RO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @platram_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @platram_remove(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.platram_info*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %6 = call %struct.platram_info* @to_platram_info(%struct.platform_device* %5)
  store %struct.platram_info* %6, %struct.platram_info** %4, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = call i32 @dev_dbg(i32* %8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.platram_info*, %struct.platram_info** %4, align 8
  %11 = icmp eq %struct.platram_info* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %33

13:                                               ; preds = %1
  %14 = load %struct.platram_info*, %struct.platram_info** %4, align 8
  %15 = getelementptr inbounds %struct.platram_info, %struct.platram_info* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %13
  %19 = load %struct.platram_info*, %struct.platram_info** %4, align 8
  %20 = getelementptr inbounds %struct.platram_info, %struct.platram_info* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @mtd_device_unregister(i64 %21)
  %23 = load %struct.platram_info*, %struct.platram_info** %4, align 8
  %24 = getelementptr inbounds %struct.platram_info, %struct.platram_info* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @map_destroy(i64 %25)
  br label %27

27:                                               ; preds = %18, %13
  %28 = load %struct.platram_info*, %struct.platram_info** %4, align 8
  %29 = load i32, i32* @PLATRAM_RO, align 4
  %30 = call i32 @platram_setrw(%struct.platram_info* %28, i32 %29)
  %31 = load %struct.platram_info*, %struct.platram_info** %4, align 8
  %32 = call i32 @kfree(%struct.platram_info* %31)
  store i32 0, i32* %2, align 4
  br label %33

33:                                               ; preds = %27, %12
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local %struct.platram_info* @to_platram_info(%struct.platform_device*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @mtd_device_unregister(i64) #1

declare dso_local i32 @map_destroy(i64) #1

declare dso_local i32 @platram_setrw(%struct.platram_info*, i32) #1

declare dso_local i32 @kfree(%struct.platram_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
