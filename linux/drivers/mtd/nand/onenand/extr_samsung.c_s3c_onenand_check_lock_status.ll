; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/onenand/extr_samsung.c_s3c_onenand_check_lock_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/onenand/extr_samsung.c_s3c_onenand_check_lock_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 (i32, i32, i32)*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.device }
%struct.device = type { i32 }
%struct.mtd_info = type { %struct.onenand_chip* }
%struct.onenand_chip = type { i32, i32 }

@onenand = common dso_local global %struct.TYPE_5__* null, align 8
@INT_ERR_STAT_OFFSET = common dso_local global i32 0, align 4
@LOCKED_BLK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"block %d is write-protected!\0A\00", align 1
@INT_ERR_ACK_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtd_info*)* @s3c_onenand_check_lock_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s3c_onenand_check_lock_status(%struct.mtd_info* %0) #0 {
  %2 = alloca %struct.mtd_info*, align 8
  %3 = alloca %struct.onenand_chip*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %2, align 8
  %9 = load %struct.mtd_info*, %struct.mtd_info** %2, align 8
  %10 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %9, i32 0, i32 0
  %11 = load %struct.onenand_chip*, %struct.onenand_chip** %10, align 8
  store %struct.onenand_chip* %11, %struct.onenand_chip** %3, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** @onenand, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  store %struct.device* %15, %struct.device** %4, align 8
  %16 = load %struct.onenand_chip*, %struct.onenand_chip** %3, align 8
  %17 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.onenand_chip*, %struct.onenand_chip** %3, align 8
  %20 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = lshr i32 %18, %21
  store i32 %22, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %23

23:                                               ; preds = %50, %1
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ult i32 %24, %25
  br i1 %26, label %27, label %53

27:                                               ; preds = %23
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** @onenand, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i32 %30(i32 %31, i32 0, i32 0)
  store i32 %32, i32* %8, align 4
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** @onenand, align 8
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @CMD_MAP_01(%struct.TYPE_5__* %33, i32 %34)
  %36 = call i32 @s3c_read_cmd(i32 %35)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* @INT_ERR_STAT_OFFSET, align 4
  %38 = call i32 @s3c_read_reg(i32 %37)
  %39 = load i32, i32* @LOCKED_BLK, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %27
  %43 = load %struct.device*, %struct.device** %4, align 8
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @dev_err(%struct.device* %43, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* @LOCKED_BLK, align 4
  %47 = load i32, i32* @INT_ERR_ACK_OFFSET, align 4
  %48 = call i32 @s3c_write_reg(i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %42, %27
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %5, align 4
  %52 = add i32 %51, 1
  store i32 %52, i32* %5, align 4
  br label %23

53:                                               ; preds = %23
  ret void
}

declare dso_local i32 @s3c_read_cmd(i32) #1

declare dso_local i32 @CMD_MAP_01(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @s3c_read_reg(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @s3c_write_reg(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
