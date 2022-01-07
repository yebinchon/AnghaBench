; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/onenand/extr_samsung.c_s3c_onenand_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/onenand/extr_samsung.c_s3c_onenand_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ONENAND_MEM_RESET_COLD = common dso_local global i32 0, align 4
@MEM_RESET_OFFSET = common dso_local global i32 0, align 4
@INT_ERR_STAT_OFFSET = common dso_local global i32 0, align 4
@RST_CMP = common dso_local global i32 0, align 4
@INT_ERR_ACK_OFFSET = common dso_local global i32 0, align 4
@ECC_ERR_STAT_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @s3c_onenand_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s3c_onenand_reset() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  store i64 65536, i64* %1, align 8
  %3 = load i32, i32* @ONENAND_MEM_RESET_COLD, align 4
  %4 = load i32, i32* @MEM_RESET_OFFSET, align 4
  %5 = call i32 @s3c_write_reg(i32 %3, i32 %4)
  br label %6

6:                                                ; preds = %18, %0
  %7 = load i64, i64* %1, align 8
  %8 = add i64 %7, -1
  store i64 %8, i64* %1, align 8
  %9 = icmp ne i64 %7, 0
  br i1 %9, label %10, label %19

10:                                               ; preds = %6
  %11 = load i32, i32* @INT_ERR_STAT_OFFSET, align 4
  %12 = call i32 @s3c_read_reg(i32 %11)
  store i32 %12, i32* %2, align 4
  %13 = load i32, i32* %2, align 4
  %14 = load i32, i32* @RST_CMP, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %10
  br label %19

18:                                               ; preds = %10
  br label %6

19:                                               ; preds = %17, %6
  %20 = load i32, i32* @INT_ERR_STAT_OFFSET, align 4
  %21 = call i32 @s3c_read_reg(i32 %20)
  store i32 %21, i32* %2, align 4
  %22 = load i32, i32* %2, align 4
  %23 = load i32, i32* @INT_ERR_ACK_OFFSET, align 4
  %24 = call i32 @s3c_write_reg(i32 %22, i32 %23)
  %25 = load i32, i32* @INT_ERR_ACK_OFFSET, align 4
  %26 = call i32 @s3c_write_reg(i32 0, i32 %25)
  %27 = load i32, i32* @ECC_ERR_STAT_OFFSET, align 4
  %28 = call i32 @s3c_write_reg(i32 0, i32 %27)
  ret void
}

declare dso_local i32 @s3c_write_reg(i32, i32) #1

declare dso_local i32 @s3c_read_reg(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
