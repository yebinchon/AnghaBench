; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/maps/extr_physmap-versatile.c_versatile_flash_set_vpp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/maps/extr_physmap-versatile.c_versatile_flash_set_vpp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.map_info = type { i32 }

@syscon_regmap = common dso_local global i32 0, align 4
@VERSATILE_SYS_FLASH_OFFSET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"error setting Versatile VPP\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.map_info*, i32)* @versatile_flash_set_vpp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @versatile_flash_set_vpp(%struct.map_info* %0, i32 %1) #0 {
  %3 = alloca %struct.map_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.map_info* %0, %struct.map_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @syscon_regmap, align 4
  %7 = load i32, i32* @VERSATILE_SYS_FLASH_OFFSET, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i32 @regmap_update_bits(i32 %6, i32 %7, i32 1, i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = call i32 @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %2
  ret void
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
