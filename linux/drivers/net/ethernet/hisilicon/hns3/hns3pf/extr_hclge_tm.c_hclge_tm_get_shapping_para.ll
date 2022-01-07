; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_tm.c_hclge_tm_get_shapping_para.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_tm.c_hclge_tm_get_shapping_para.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IR_B = common dso_local global i32 0, align 4
@IR_U = common dso_local global i32 0, align 4
@IR_S = common dso_local global i32 0, align 4
@BS_B = common dso_local global i32 0, align 4
@BS_S = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32)* @hclge_tm_get_shapping_para to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclge_tm_get_shapping_para(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @IR_B, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @hclge_tm_set_field(i32 %12, i32 %13, i32 %14)
  %16 = load i32, i32* %11, align 4
  %17 = load i32, i32* @IR_U, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @hclge_tm_set_field(i32 %16, i32 %17, i32 %18)
  %20 = load i32, i32* %11, align 4
  %21 = load i32, i32* @IR_S, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @hclge_tm_set_field(i32 %20, i32 %21, i32 %22)
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* @BS_B, align 4
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @hclge_tm_set_field(i32 %24, i32 %25, i32 %26)
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* @BS_S, align 4
  %30 = load i32, i32* %10, align 4
  %31 = call i32 @hclge_tm_set_field(i32 %28, i32 %29, i32 %30)
  %32 = load i32, i32* %11, align 4
  ret i32 %32
}

declare dso_local i32 @hclge_tm_set_field(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
