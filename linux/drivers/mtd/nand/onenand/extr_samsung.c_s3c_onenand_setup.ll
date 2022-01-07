; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/onenand/extr_samsung.c_s3c_onenand_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/onenand/extr_samsung.c_s3c_onenand_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i8*, i32, %struct.mtd_info* }
%struct.mtd_info = type { %struct.onenand_chip* }
%struct.onenand_chip = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@onenand = common dso_local global %struct.TYPE_2__* null, align 8
@TYPE_S3C6400 = common dso_local global i64 0, align 8
@s3c6400_mem_addr = common dso_local global i32 0, align 4
@s3c64xx_cmd_map = common dso_local global i8* null, align 8
@TYPE_S3C6410 = common dso_local global i64 0, align 8
@s3c6410_mem_addr = common dso_local global i32 0, align 4
@TYPE_S5PC110 = common dso_local global i64 0, align 8
@s5pc110_read_bufferram = common dso_local global i32 0, align 4
@s5pc110_chip_probe = common dso_local global i32 0, align 4
@s3c_onenand_readw = common dso_local global i32 0, align 4
@s3c_onenand_writew = common dso_local global i32 0, align 4
@s3c_onenand_wait = common dso_local global i32 0, align 4
@s3c_onenand_bbt_wait = common dso_local global i32 0, align 4
@s3c_unlock_all = common dso_local global i32 0, align 4
@s3c_onenand_command = common dso_local global i32 0, align 4
@onenand_read_bufferram = common dso_local global i32 0, align 4
@onenand_write_bufferram = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtd_info*)* @s3c_onenand_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s3c_onenand_setup(%struct.mtd_info* %0) #0 {
  %2 = alloca %struct.mtd_info*, align 8
  %3 = alloca %struct.onenand_chip*, align 8
  store %struct.mtd_info* %0, %struct.mtd_info** %2, align 8
  %4 = load %struct.mtd_info*, %struct.mtd_info** %2, align 8
  %5 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %4, i32 0, i32 0
  %6 = load %struct.onenand_chip*, %struct.onenand_chip** %5, align 8
  store %struct.onenand_chip* %6, %struct.onenand_chip** %3, align 8
  %7 = load %struct.mtd_info*, %struct.mtd_info** %2, align 8
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @onenand, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 3
  store %struct.mtd_info* %7, %struct.mtd_info** %9, align 8
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @onenand, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @TYPE_S3C6400, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %22

15:                                               ; preds = %1
  %16 = load i32, i32* @s3c6400_mem_addr, align 4
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @onenand, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 2
  store i32 %16, i32* %18, align 8
  %19 = load i8*, i8** @s3c64xx_cmd_map, align 8
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @onenand, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  store i8* %19, i8** %21, align 8
  br label %52

22:                                               ; preds = %1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @onenand, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @TYPE_S3C6410, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %22
  %29 = load i32, i32* @s3c6410_mem_addr, align 4
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @onenand, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 8
  %32 = load i8*, i8** @s3c64xx_cmd_map, align 8
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @onenand, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  store i8* %32, i8** %34, align 8
  br label %51

35:                                               ; preds = %22
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @onenand, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @TYPE_S5PC110, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %35
  %42 = load i32, i32* @s5pc110_read_bufferram, align 4
  %43 = load %struct.onenand_chip*, %struct.onenand_chip** %3, align 8
  %44 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* @s5pc110_chip_probe, align 4
  %46 = load %struct.onenand_chip*, %struct.onenand_chip** %3, align 8
  %47 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %46, i32 0, i32 8
  store i32 %45, i32* %47, align 4
  br label %77

48:                                               ; preds = %35
  %49 = call i32 (...) @BUG()
  br label %50

50:                                               ; preds = %48
  br label %51

51:                                               ; preds = %50, %28
  br label %52

52:                                               ; preds = %51, %15
  %53 = load i32, i32* @s3c_onenand_readw, align 4
  %54 = load %struct.onenand_chip*, %struct.onenand_chip** %3, align 8
  %55 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %54, i32 0, i32 7
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* @s3c_onenand_writew, align 4
  %57 = load %struct.onenand_chip*, %struct.onenand_chip** %3, align 8
  %58 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %57, i32 0, i32 6
  store i32 %56, i32* %58, align 4
  %59 = load i32, i32* @s3c_onenand_wait, align 4
  %60 = load %struct.onenand_chip*, %struct.onenand_chip** %3, align 8
  %61 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %60, i32 0, i32 5
  store i32 %59, i32* %61, align 4
  %62 = load i32, i32* @s3c_onenand_bbt_wait, align 4
  %63 = load %struct.onenand_chip*, %struct.onenand_chip** %3, align 8
  %64 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %63, i32 0, i32 4
  store i32 %62, i32* %64, align 4
  %65 = load i32, i32* @s3c_unlock_all, align 4
  %66 = load %struct.onenand_chip*, %struct.onenand_chip** %3, align 8
  %67 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %66, i32 0, i32 3
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* @s3c_onenand_command, align 4
  %69 = load %struct.onenand_chip*, %struct.onenand_chip** %3, align 8
  %70 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 4
  %71 = load i32, i32* @onenand_read_bufferram, align 4
  %72 = load %struct.onenand_chip*, %struct.onenand_chip** %3, align 8
  %73 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 4
  %74 = load i32, i32* @onenand_write_bufferram, align 4
  %75 = load %struct.onenand_chip*, %struct.onenand_chip** %3, align 8
  %76 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 4
  br label %77

77:                                               ; preds = %52, %41
  ret void
}

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
