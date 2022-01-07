; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/onenand/extr_samsung.c_s3c_onenand_bbt_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/onenand/extr_samsung.c_s3c_onenand_bbt_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32 }

@INT_ACT = common dso_local global i32 0, align 4
@LOAD_CMP = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@INT_ERR_STAT_OFFSET = common dso_local global i32 0, align 4
@INT_ERR_ACK_OFFSET = common dso_local global i32 0, align 4
@LD_FAIL_ECC_ERR = common dso_local global i32 0, align 4
@ONENAND_BBT_READ_ERROR = common dso_local global i32 0, align 4
@ECC_ERR_STAT_OFFSET = common dso_local global i32 0, align 4
@ONENAND_ECC_4BIT_UNCORRECTABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, i32)* @s3c_onenand_bbt_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c_onenand_bbt_wait(%struct.mtd_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mtd_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* @INT_ACT, align 4
  %11 = load i32, i32* @LOAD_CMP, align 4
  %12 = or i32 %10, %11
  store i32 %12, i32* %6, align 4
  %13 = load i64, i64* @jiffies, align 8
  %14 = call i64 @msecs_to_jiffies(i32 20)
  %15 = add i64 %13, %14
  store i64 %15, i64* %8, align 8
  br label %16

16:                                               ; preds = %30, %2
  %17 = load i64, i64* @jiffies, align 8
  %18 = load i64, i64* %8, align 8
  %19 = call i64 @time_before(i64 %17, i64 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %16
  %22 = load i32, i32* @INT_ERR_STAT_OFFSET, align 4
  %23 = call i8* @s3c_read_reg(i32 %22)
  %24 = ptrtoint i8* %23 to i32
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %6, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  br label %31

30:                                               ; preds = %21
  br label %16

31:                                               ; preds = %29, %16
  %32 = load i32, i32* @INT_ERR_STAT_OFFSET, align 4
  %33 = call i8* @s3c_read_reg(i32 %32)
  %34 = ptrtoint i8* %33 to i32
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @INT_ERR_ACK_OFFSET, align 4
  %37 = call i32 @s3c_write_reg(i32 %35, i32 %36)
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @LD_FAIL_ECC_ERR, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %31
  %43 = call i32 (...) @s3c_onenand_reset()
  %44 = load i32, i32* @ONENAND_BBT_READ_ERROR, align 4
  store i32 %44, i32* %3, align 4
  br label %63

45:                                               ; preds = %31
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @LOAD_CMP, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %62

50:                                               ; preds = %45
  %51 = load i32, i32* @ECC_ERR_STAT_OFFSET, align 4
  %52 = call i8* @s3c_read_reg(i32 %51)
  %53 = ptrtoint i8* %52 to i32
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* @ONENAND_ECC_4BIT_UNCORRECTABLE, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %50
  %59 = call i32 (...) @s3c_onenand_reset()
  %60 = load i32, i32* @ONENAND_BBT_READ_ERROR, align 4
  store i32 %60, i32* %3, align 4
  br label %63

61:                                               ; preds = %50
  br label %62

62:                                               ; preds = %61, %45
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %62, %58, %42
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i8* @s3c_read_reg(i32) #1

declare dso_local i32 @s3c_write_reg(i32, i32) #1

declare dso_local i32 @s3c_onenand_reset(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
