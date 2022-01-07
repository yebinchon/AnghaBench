; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3vf/extr_hclgevf_main.c_hclgevf_get_regs_len.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3vf/extr_hclgevf_main.c_hclgevf_get_regs_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hnae3_handle = type { i32 }
%struct.hclgevf_dev = type { i32, i32 }

@REG_LEN_PER_LINE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hnae3_handle*)* @hclgevf_get_regs_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclgevf_get_regs_len(%struct.hnae3_handle* %0) #0 {
  %2 = alloca %struct.hnae3_handle*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.hclgevf_dev*, align 8
  store %struct.hnae3_handle* %0, %struct.hnae3_handle** %2, align 8
  %8 = load %struct.hnae3_handle*, %struct.hnae3_handle** %2, align 8
  %9 = call %struct.hclgevf_dev* @hclgevf_ae_get_hdev(%struct.hnae3_handle* %8)
  store %struct.hclgevf_dev* %9, %struct.hclgevf_dev** %7, align 8
  %10 = load i32, i32* @REG_LEN_PER_LINE, align 4
  %11 = sext i32 %10 to i64
  %12 = udiv i64 4, %11
  %13 = add i64 %12, 1
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* @REG_LEN_PER_LINE, align 4
  %16 = sext i32 %15 to i64
  %17 = udiv i64 4, %16
  %18 = add i64 %17, 1
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* @REG_LEN_PER_LINE, align 4
  %21 = sext i32 %20 to i64
  %22 = udiv i64 4, %21
  %23 = add i64 %22, 1
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* @REG_LEN_PER_LINE, align 4
  %26 = sext i32 %25 to i64
  %27 = udiv i64 4, %26
  %28 = add i64 %27, 1
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* %4, align 4
  %32 = add nsw i32 %30, %31
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %7, align 8
  %35 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = mul nsw i32 %33, %36
  %38 = add nsw i32 %32, %37
  %39 = load i32, i32* %6, align 4
  %40 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %7, align 8
  %41 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = sub nsw i32 %42, 1
  %44 = mul nsw i32 %39, %43
  %45 = add nsw i32 %38, %44
  %46 = load i32, i32* @REG_LEN_PER_LINE, align 4
  %47 = mul nsw i32 %45, %46
  ret i32 %47
}

declare dso_local %struct.hclgevf_dev* @hclgevf_ae_get_hdev(%struct.hnae3_handle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
