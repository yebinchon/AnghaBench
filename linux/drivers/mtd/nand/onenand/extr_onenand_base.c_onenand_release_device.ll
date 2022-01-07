; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/onenand/extr_onenand_base.c_onenand_release_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/onenand/extr_onenand_base.c_onenand_release_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { %struct.onenand_chip* }
%struct.onenand_chip = type { i64, i32, i32, i32 (%struct.mtd_info.0*)* }
%struct.mtd_info.0 = type opaque

@FL_PM_SUSPENDED = common dso_local global i64 0, align 8
@FL_READY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtd_info*)* @onenand_release_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @onenand_release_device(%struct.mtd_info* %0) #0 {
  %2 = alloca %struct.mtd_info*, align 8
  %3 = alloca %struct.onenand_chip*, align 8
  store %struct.mtd_info* %0, %struct.mtd_info** %2, align 8
  %4 = load %struct.mtd_info*, %struct.mtd_info** %2, align 8
  %5 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %4, i32 0, i32 0
  %6 = load %struct.onenand_chip*, %struct.onenand_chip** %5, align 8
  store %struct.onenand_chip* %6, %struct.onenand_chip** %3, align 8
  %7 = load %struct.onenand_chip*, %struct.onenand_chip** %3, align 8
  %8 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @FL_PM_SUSPENDED, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %24

12:                                               ; preds = %1
  %13 = load %struct.onenand_chip*, %struct.onenand_chip** %3, align 8
  %14 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %13, i32 0, i32 3
  %15 = load i32 (%struct.mtd_info.0*)*, i32 (%struct.mtd_info.0*)** %14, align 8
  %16 = icmp ne i32 (%struct.mtd_info.0*)* %15, null
  br i1 %16, label %17, label %24

17:                                               ; preds = %12
  %18 = load %struct.onenand_chip*, %struct.onenand_chip** %3, align 8
  %19 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %18, i32 0, i32 3
  %20 = load i32 (%struct.mtd_info.0*)*, i32 (%struct.mtd_info.0*)** %19, align 8
  %21 = load %struct.mtd_info*, %struct.mtd_info** %2, align 8
  %22 = bitcast %struct.mtd_info* %21 to %struct.mtd_info.0*
  %23 = call i32 %20(%struct.mtd_info.0* %22)
  br label %24

24:                                               ; preds = %17, %12, %1
  %25 = load %struct.onenand_chip*, %struct.onenand_chip** %3, align 8
  %26 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %25, i32 0, i32 1
  %27 = call i32 @spin_lock(i32* %26)
  %28 = load i64, i64* @FL_READY, align 8
  %29 = load %struct.onenand_chip*, %struct.onenand_chip** %3, align 8
  %30 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  %31 = load %struct.onenand_chip*, %struct.onenand_chip** %3, align 8
  %32 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %31, i32 0, i32 2
  %33 = call i32 @wake_up(i32* %32)
  %34 = load %struct.onenand_chip*, %struct.onenand_chip** %3, align 8
  %35 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %34, i32 0, i32 1
  %36 = call i32 @spin_unlock(i32* %35)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
