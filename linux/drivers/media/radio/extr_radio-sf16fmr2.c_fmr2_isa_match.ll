; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-sf16fmr2.c_fmr2_isa_match.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-sf16fmr2.c_fmr2_isa_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fmr2 = type { i32 }
%struct.device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@FMR2_PORT = common dso_local global i32 0, align 4
@fmr2_cards = common dso_local global %struct.fmr2** null, align 8
@num_fmr2_cards = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32)* @fmr2_isa_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fmr2_isa_match(%struct.device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.fmr2*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.fmr2* @kzalloc(i32 4, i32 %7)
  store %struct.fmr2* %8, %struct.fmr2** %6, align 8
  %9 = load %struct.fmr2*, %struct.fmr2** %6, align 8
  %10 = icmp ne %struct.fmr2* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %31

12:                                               ; preds = %2
  %13 = load %struct.fmr2*, %struct.fmr2** %6, align 8
  %14 = load %struct.device*, %struct.device** %4, align 8
  %15 = load i32, i32* @FMR2_PORT, align 4
  %16 = call i64 @fmr2_probe(%struct.fmr2* %13, %struct.device* %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %12
  %19 = load %struct.fmr2*, %struct.fmr2** %6, align 8
  %20 = call i32 @kfree(%struct.fmr2* %19)
  store i32 0, i32* %3, align 4
  br label %31

21:                                               ; preds = %12
  %22 = load %struct.device*, %struct.device** %4, align 8
  %23 = load %struct.fmr2*, %struct.fmr2** %6, align 8
  %24 = call i32 @dev_set_drvdata(%struct.device* %22, %struct.fmr2* %23)
  %25 = load %struct.fmr2*, %struct.fmr2** %6, align 8
  %26 = load %struct.fmr2**, %struct.fmr2*** @fmr2_cards, align 8
  %27 = load i32, i32* @num_fmr2_cards, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* @num_fmr2_cards, align 4
  %29 = sext i32 %27 to i64
  %30 = getelementptr inbounds %struct.fmr2*, %struct.fmr2** %26, i64 %29
  store %struct.fmr2* %25, %struct.fmr2** %30, align 8
  store i32 1, i32* %3, align 4
  br label %31

31:                                               ; preds = %21, %18, %11
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local %struct.fmr2* @kzalloc(i32, i32) #1

declare dso_local i64 @fmr2_probe(%struct.fmr2*, %struct.device*, i32) #1

declare dso_local i32 @kfree(%struct.fmr2*) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.fmr2*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
