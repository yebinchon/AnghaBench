; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/m5mols/extr_m5mols_controls.c_m5mols_set_wdr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/m5mols/extr_m5mols_controls.c_m5mols_set_wdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.m5mols_info = type { i32 }

@MON_TONE_CTL = common dso_local global i32 0, align 4
@REG_CAPTURE = common dso_local global i32 0, align 4
@CAPP_WDR_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.m5mols_info*, i32)* @m5mols_set_wdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m5mols_set_wdr(%struct.m5mols_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.m5mols_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.m5mols_info* %0, %struct.m5mols_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.m5mols_info*, %struct.m5mols_info** %4, align 8
  %8 = getelementptr inbounds %struct.m5mols_info, %struct.m5mols_info* %7, i32 0, i32 0
  %9 = load i32, i32* @MON_TONE_CTL, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  %12 = zext i1 %11 to i64
  %13 = select i1 %11, i32 9, i32 5
  %14 = call i32 @m5mols_write(i32* %8, i32 %9, i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %6, align 4
  store i32 %18, i32* %3, align 4
  br label %33

19:                                               ; preds = %2
  %20 = load %struct.m5mols_info*, %struct.m5mols_info** %4, align 8
  %21 = load i32, i32* @REG_CAPTURE, align 4
  %22 = call i32 @m5mols_set_mode(%struct.m5mols_info* %20, i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load i32, i32* %6, align 4
  store i32 %26, i32* %3, align 4
  br label %33

27:                                               ; preds = %19
  %28 = load %struct.m5mols_info*, %struct.m5mols_info** %4, align 8
  %29 = getelementptr inbounds %struct.m5mols_info, %struct.m5mols_info* %28, i32 0, i32 0
  %30 = load i32, i32* @CAPP_WDR_EN, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @m5mols_write(i32* %29, i32 %30, i32 %31)
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %27, %25, %17
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @m5mols_write(i32*, i32, i32) #1

declare dso_local i32 @m5mols_set_mode(%struct.m5mols_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
