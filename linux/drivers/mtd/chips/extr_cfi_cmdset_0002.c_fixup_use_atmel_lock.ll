; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/chips/extr_cfi_cmdset_0002.c_fixup_use_atmel_lock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/chips/extr_cfi_cmdset_0002.c_fixup_use_atmel_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32, i32, i32 }

@cfi_atmel_lock = common dso_local global i32 0, align 4
@cfi_atmel_unlock = common dso_local global i32 0, align 4
@MTD_POWERUP_LOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtd_info*)* @fixup_use_atmel_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fixup_use_atmel_lock(%struct.mtd_info* %0) #0 {
  %2 = alloca %struct.mtd_info*, align 8
  store %struct.mtd_info* %0, %struct.mtd_info** %2, align 8
  %3 = load i32, i32* @cfi_atmel_lock, align 4
  %4 = load %struct.mtd_info*, %struct.mtd_info** %2, align 8
  %5 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %4, i32 0, i32 2
  store i32 %3, i32* %5, align 4
  %6 = load i32, i32* @cfi_atmel_unlock, align 4
  %7 = load %struct.mtd_info*, %struct.mtd_info** %2, align 8
  %8 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %7, i32 0, i32 1
  store i32 %6, i32* %8, align 4
  %9 = load i32, i32* @MTD_POWERUP_LOCK, align 4
  %10 = load %struct.mtd_info*, %struct.mtd_info** %2, align 8
  %11 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = or i32 %12, %9
  store i32 %13, i32* %11, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
