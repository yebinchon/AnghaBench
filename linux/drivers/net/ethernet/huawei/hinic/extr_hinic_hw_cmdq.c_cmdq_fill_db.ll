; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_cmdq.c_cmdq_fill_db.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_cmdq.c_cmdq_fill_db.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HI_PROD_IDX = common dso_local global i32 0, align 4
@HINIC_CTRL_PATH = common dso_local global i32 0, align 4
@PATH = common dso_local global i32 0, align 4
@CMDQ_TYPE = common dso_local global i32 0, align 4
@HINIC_DB_CMDQ_TYPE = common dso_local global i32 0, align 4
@DB_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32)* @cmdq_fill_db to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cmdq_fill_db(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @UPPER_8_BITS(i32 %7)
  %9 = load i32, i32* @HI_PROD_IDX, align 4
  %10 = call i32 @HINIC_CMDQ_DB_INFO_SET(i32 %8, i32 %9)
  %11 = load i32, i32* @HINIC_CTRL_PATH, align 4
  %12 = load i32, i32* @PATH, align 4
  %13 = call i32 @HINIC_CMDQ_DB_INFO_SET(i32 %11, i32 %12)
  %14 = or i32 %10, %13
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @CMDQ_TYPE, align 4
  %17 = call i32 @HINIC_CMDQ_DB_INFO_SET(i32 %15, i32 %16)
  %18 = or i32 %14, %17
  %19 = load i32, i32* @HINIC_DB_CMDQ_TYPE, align 4
  %20 = load i32, i32* @DB_TYPE, align 4
  %21 = call i32 @HINIC_CMDQ_DB_INFO_SET(i32 %19, i32 %20)
  %22 = or i32 %18, %21
  %23 = load i32*, i32** %4, align 8
  store i32 %22, i32* %23, align 4
  ret void
}

declare dso_local i32 @HINIC_CMDQ_DB_INFO_SET(i32, i32) #1

declare dso_local i32 @UPPER_8_BITS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
