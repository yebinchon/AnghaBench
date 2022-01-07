; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_phy_reset_chanpat.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_phy_reset_chanpat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tg3 = type { i32 }

@MII_TG3_DSP_ADDRESS = common dso_local global i32 0, align 4
@MII_TG3_DSP_CONTROL = common dso_local global i32 0, align 4
@MII_TG3_DSP_RW_PORT = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tg3*)* @tg3_phy_reset_chanpat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tg3_phy_reset_chanpat(%struct.tg3* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tg3*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.tg3* %0, %struct.tg3** %3, align 8
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %40, %1
  %7 = load i32, i32* %4, align 4
  %8 = icmp slt i32 %7, 4
  br i1 %8, label %9, label %43

9:                                                ; preds = %6
  %10 = load %struct.tg3*, %struct.tg3** %3, align 8
  %11 = load i32, i32* @MII_TG3_DSP_ADDRESS, align 4
  %12 = load i32, i32* %4, align 4
  %13 = mul nsw i32 %12, 8192
  %14 = or i32 %13, 512
  %15 = call i32 @tg3_writephy(%struct.tg3* %10, i32 %11, i32 %14)
  %16 = load %struct.tg3*, %struct.tg3** %3, align 8
  %17 = load i32, i32* @MII_TG3_DSP_CONTROL, align 4
  %18 = call i32 @tg3_writephy(%struct.tg3* %16, i32 %17, i32 2)
  store i32 0, i32* %5, align 4
  br label %19

19:                                               ; preds = %26, %9
  %20 = load i32, i32* %5, align 4
  %21 = icmp slt i32 %20, 6
  br i1 %21, label %22, label %29

22:                                               ; preds = %19
  %23 = load %struct.tg3*, %struct.tg3** %3, align 8
  %24 = load i32, i32* @MII_TG3_DSP_RW_PORT, align 4
  %25 = call i32 @tg3_writephy(%struct.tg3* %23, i32 %24, i32 0)
  br label %26

26:                                               ; preds = %22
  %27 = load i32, i32* %5, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %5, align 4
  br label %19

29:                                               ; preds = %19
  %30 = load %struct.tg3*, %struct.tg3** %3, align 8
  %31 = load i32, i32* @MII_TG3_DSP_CONTROL, align 4
  %32 = call i32 @tg3_writephy(%struct.tg3* %30, i32 %31, i32 514)
  %33 = load %struct.tg3*, %struct.tg3** %3, align 8
  %34 = call i64 @tg3_wait_macro_done(%struct.tg3* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  %37 = load i32, i32* @EBUSY, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %44

39:                                               ; preds = %29
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %4, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %4, align 4
  br label %6

43:                                               ; preds = %6
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %43, %36
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @tg3_writephy(%struct.tg3*, i32, i32) #1

declare dso_local i64 @tg3_wait_macro_done(%struct.tg3*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
