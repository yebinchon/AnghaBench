; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_clear_reset_cause.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_clear_reset_cause.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_dev = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@HCLGE_VECTOR0_IMPRESET_INT_B = common dso_local global i32 0, align 4
@HCLGE_VECTOR0_GLOBALRESET_INT_B = common dso_local global i32 0, align 4
@HCLGE_MISC_RESET_STS_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hclge_dev*)* @hclge_clear_reset_cause to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hclge_clear_reset_cause(%struct.hclge_dev* %0) #0 {
  %2 = alloca %struct.hclge_dev*, align 8
  %3 = alloca i64, align 8
  store %struct.hclge_dev* %0, %struct.hclge_dev** %2, align 8
  store i64 0, i64* %3, align 8
  %4 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %5 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  switch i32 %6, label %13 [
    i32 128, label %7
    i32 129, label %10
  ]

7:                                                ; preds = %1
  %8 = load i32, i32* @HCLGE_VECTOR0_IMPRESET_INT_B, align 4
  %9 = call i64 @BIT(i32 %8)
  store i64 %9, i64* %3, align 8
  br label %14

10:                                               ; preds = %1
  %11 = load i32, i32* @HCLGE_VECTOR0_GLOBALRESET_INT_B, align 4
  %12 = call i64 @BIT(i32 %11)
  store i64 %12, i64* %3, align 8
  br label %14

13:                                               ; preds = %1
  br label %14

14:                                               ; preds = %13, %10, %7
  %15 = load i64, i64* %3, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %14
  br label %35

18:                                               ; preds = %14
  %19 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %20 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %19, i32 0, i32 3
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, 32
  br i1 %24, label %25, label %31

25:                                               ; preds = %18
  %26 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %27 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %26, i32 0, i32 2
  %28 = load i32, i32* @HCLGE_MISC_RESET_STS_REG, align 4
  %29 = load i64, i64* %3, align 8
  %30 = call i32 @hclge_write_dev(i32* %27, i32 %28, i64 %29)
  br label %31

31:                                               ; preds = %25, %18
  %32 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %33 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %32, i32 0, i32 1
  %34 = call i32 @hclge_enable_vector(i32* %33, i32 1)
  br label %35

35:                                               ; preds = %31, %17
  ret void
}

declare dso_local i64 @BIT(i32) #1

declare dso_local i32 @hclge_write_dev(i32*, i32, i64) #1

declare dso_local i32 @hclge_enable_vector(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
