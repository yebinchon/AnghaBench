; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/onenand/extr_samsung.c_s3c_unlock_all.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/onenand/extr_samsung.c_s3c_unlock_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { %struct.onenand_chip* }
%struct.onenand_chip = type { i64, i32, i32 (%struct.mtd_info.0*, i32)*, i32 (%struct.mtd_info.1*, i32, i32, i32)* }
%struct.mtd_info.0 = type opaque
%struct.mtd_info.1 = type opaque

@ONENAND_HAS_UNLOCK_ALL = common dso_local global i32 0, align 4
@ONENAND_CMD_UNLOCK_ALL = common dso_local global i32 0, align 4
@FL_LOCKING = common dso_local global i32 0, align 4
@ONENAND_CMD_UNLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtd_info*)* @s3c_unlock_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s3c_unlock_all(%struct.mtd_info* %0) #0 {
  %2 = alloca %struct.mtd_info*, align 8
  %3 = alloca %struct.onenand_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.mtd_info* %0, %struct.mtd_info** %2, align 8
  %6 = load %struct.mtd_info*, %struct.mtd_info** %2, align 8
  %7 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %6, i32 0, i32 0
  %8 = load %struct.onenand_chip*, %struct.onenand_chip** %7, align 8
  store %struct.onenand_chip* %8, %struct.onenand_chip** %3, align 8
  store i32 0, i32* %4, align 4
  %9 = load %struct.onenand_chip*, %struct.onenand_chip** %3, align 8
  %10 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %5, align 8
  %12 = load %struct.onenand_chip*, %struct.onenand_chip** %3, align 8
  %13 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @ONENAND_HAS_UNLOCK_ALL, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %49

18:                                               ; preds = %1
  %19 = load %struct.onenand_chip*, %struct.onenand_chip** %3, align 8
  %20 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %19, i32 0, i32 3
  %21 = load i32 (%struct.mtd_info.1*, i32, i32, i32)*, i32 (%struct.mtd_info.1*, i32, i32, i32)** %20, align 8
  %22 = load %struct.mtd_info*, %struct.mtd_info** %2, align 8
  %23 = bitcast %struct.mtd_info* %22 to %struct.mtd_info.1*
  %24 = load i32, i32* @ONENAND_CMD_UNLOCK_ALL, align 4
  %25 = call i32 %21(%struct.mtd_info.1* %23, i32 %24, i32 0, i32 0)
  %26 = load %struct.onenand_chip*, %struct.onenand_chip** %3, align 8
  %27 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %26, i32 0, i32 2
  %28 = load i32 (%struct.mtd_info.0*, i32)*, i32 (%struct.mtd_info.0*, i32)** %27, align 8
  %29 = load %struct.mtd_info*, %struct.mtd_info** %2, align 8
  %30 = bitcast %struct.mtd_info* %29 to %struct.mtd_info.0*
  %31 = load i32, i32* @FL_LOCKING, align 4
  %32 = call i32 %28(%struct.mtd_info.0* %30, i32 %31)
  %33 = load %struct.onenand_chip*, %struct.onenand_chip** %3, align 8
  %34 = call i32 @ONENAND_IS_DDP(%struct.onenand_chip* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %18
  %37 = load %struct.mtd_info*, %struct.mtd_info** %2, align 8
  %38 = call i32 @s3c_onenand_check_lock_status(%struct.mtd_info* %37)
  br label %57

39:                                               ; preds = %18
  %40 = load %struct.onenand_chip*, %struct.onenand_chip** %3, align 8
  %41 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = lshr i64 %42, 1
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %4, align 4
  %45 = load %struct.onenand_chip*, %struct.onenand_chip** %3, align 8
  %46 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = lshr i64 %47, 1
  store i64 %48, i64* %5, align 8
  br label %49

49:                                               ; preds = %39, %1
  %50 = load %struct.mtd_info*, %struct.mtd_info** %2, align 8
  %51 = load i32, i32* %4, align 4
  %52 = load i64, i64* %5, align 8
  %53 = load i32, i32* @ONENAND_CMD_UNLOCK, align 4
  %54 = call i32 @s3c_onenand_do_lock_cmd(%struct.mtd_info* %50, i32 %51, i64 %52, i32 %53)
  %55 = load %struct.mtd_info*, %struct.mtd_info** %2, align 8
  %56 = call i32 @s3c_onenand_check_lock_status(%struct.mtd_info* %55)
  br label %57

57:                                               ; preds = %49, %36
  ret void
}

declare dso_local i32 @ONENAND_IS_DDP(%struct.onenand_chip*) #1

declare dso_local i32 @s3c_onenand_check_lock_status(%struct.mtd_info*) #1

declare dso_local i32 @s3c_onenand_do_lock_cmd(%struct.mtd_info*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
