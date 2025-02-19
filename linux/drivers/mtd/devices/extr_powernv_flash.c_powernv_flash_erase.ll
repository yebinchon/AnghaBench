; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_powernv_flash.c_powernv_flash_erase.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_powernv_flash.c_powernv_flash_erase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32 }
%struct.erase_info = type { i32, i32, i32 }

@FLASH_OP_ERASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, %struct.erase_info*)* @powernv_flash_erase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @powernv_flash_erase(%struct.mtd_info* %0, %struct.erase_info* %1) #0 {
  %3 = alloca %struct.mtd_info*, align 8
  %4 = alloca %struct.erase_info*, align 8
  %5 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %3, align 8
  store %struct.erase_info* %1, %struct.erase_info** %4, align 8
  %6 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %7 = load i32, i32* @FLASH_OP_ERASE, align 4
  %8 = load %struct.erase_info*, %struct.erase_info** %4, align 8
  %9 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.erase_info*, %struct.erase_info** %4, align 8
  %12 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @powernv_flash_async_op(%struct.mtd_info* %6, i32 %7, i32 %10, i32 %13, i32* null, i32* null)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %2
  %18 = load %struct.erase_info*, %struct.erase_info** %4, align 8
  %19 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.erase_info*, %struct.erase_info** %4, align 8
  %22 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  br label %23

23:                                               ; preds = %17, %2
  %24 = load i32, i32* %5, align 4
  ret i32 %24
}

declare dso_local i32 @powernv_flash_async_op(%struct.mtd_info*, i32, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
