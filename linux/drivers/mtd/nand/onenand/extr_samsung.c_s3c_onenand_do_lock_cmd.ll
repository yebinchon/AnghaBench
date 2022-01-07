; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/onenand/extr_samsung.c_s3c_onenand_do_lock_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/onenand/extr_samsung.c_s3c_onenand_do_lock_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 (i32, i32, i32)* }
%struct.mtd_info = type { %struct.onenand_chip* }
%struct.onenand_chip = type { i32, i32 (%struct.mtd_info.0*, i32)* }
%struct.mtd_info.0 = type opaque

@onenand = common dso_local global %struct.TYPE_3__* null, align 8
@ONENAND_CMD_LOCK = common dso_local global i32 0, align 4
@ONENAND_LOCK_START = common dso_local global i32 0, align 4
@ONENAND_LOCK_END = common dso_local global i32 0, align 4
@ONENAND_UNLOCK_START = common dso_local global i32 0, align 4
@ONENAND_UNLOCK_END = common dso_local global i32 0, align 4
@FL_LOCKING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtd_info*, i32, i64, i32)* @s3c_onenand_do_lock_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s3c_onenand_do_lock_cmd(%struct.mtd_info* %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.mtd_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.onenand_chip*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %15 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %14, i32 0, i32 0
  %16 = load %struct.onenand_chip*, %struct.onenand_chip** %15, align 8
  store %struct.onenand_chip* %16, %struct.onenand_chip** %9, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.onenand_chip*, %struct.onenand_chip** %9, align 8
  %19 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = ashr i32 %17, %20
  store i32 %21, i32* %10, align 4
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** @onenand, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %23, align 8
  %25 = load i32, i32* %10, align 4
  %26 = call i32 %24(i32 %25, i32 0, i32 0)
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %10, align 4
  %28 = sext i32 %27 to i64
  %29 = load i64, i64* %7, align 8
  %30 = load %struct.onenand_chip*, %struct.onenand_chip** %9, align 8
  %31 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = zext i32 %32 to i64
  %34 = lshr i64 %29, %33
  %35 = add i64 %28, %34
  %36 = sub i64 %35, 1
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %11, align 4
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** @onenand, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %39, align 8
  %41 = load i32, i32* %11, align 4
  %42 = call i32 %40(i32 %41, i32 0, i32 0)
  store i32 %42, i32* %13, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @ONENAND_CMD_LOCK, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %57

46:                                               ; preds = %4
  %47 = load i32, i32* @ONENAND_LOCK_START, align 4
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** @onenand, align 8
  %49 = load i32, i32* %12, align 4
  %50 = call i32 @CMD_MAP_10(%struct.TYPE_3__* %48, i32 %49)
  %51 = call i32 @s3c_write_cmd(i32 %47, i32 %50)
  %52 = load i32, i32* @ONENAND_LOCK_END, align 4
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** @onenand, align 8
  %54 = load i32, i32* %13, align 4
  %55 = call i32 @CMD_MAP_10(%struct.TYPE_3__* %53, i32 %54)
  %56 = call i32 @s3c_write_cmd(i32 %52, i32 %55)
  br label %68

57:                                               ; preds = %4
  %58 = load i32, i32* @ONENAND_UNLOCK_START, align 4
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** @onenand, align 8
  %60 = load i32, i32* %12, align 4
  %61 = call i32 @CMD_MAP_10(%struct.TYPE_3__* %59, i32 %60)
  %62 = call i32 @s3c_write_cmd(i32 %58, i32 %61)
  %63 = load i32, i32* @ONENAND_UNLOCK_END, align 4
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** @onenand, align 8
  %65 = load i32, i32* %13, align 4
  %66 = call i32 @CMD_MAP_10(%struct.TYPE_3__* %64, i32 %65)
  %67 = call i32 @s3c_write_cmd(i32 %63, i32 %66)
  br label %68

68:                                               ; preds = %57, %46
  %69 = load %struct.onenand_chip*, %struct.onenand_chip** %9, align 8
  %70 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %69, i32 0, i32 1
  %71 = load i32 (%struct.mtd_info.0*, i32)*, i32 (%struct.mtd_info.0*, i32)** %70, align 8
  %72 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %73 = bitcast %struct.mtd_info* %72 to %struct.mtd_info.0*
  %74 = load i32, i32* @FL_LOCKING, align 4
  %75 = call i32 %71(%struct.mtd_info.0* %73, i32 %74)
  ret void
}

declare dso_local i32 @s3c_write_cmd(i32, i32) #1

declare dso_local i32 @CMD_MAP_10(%struct.TYPE_3__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
