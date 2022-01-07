; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_wm5102-tables.c_wm5102_patch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_wm5102-tables.c_wm5102_patch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reg_sequence = type { i32 }
%struct.arizona = type { i32, i32 }

@wm5102_reva_patch = common dso_local global %struct.reg_sequence* null, align 8
@wm5102_revb_patch = common dso_local global %struct.reg_sequence* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wm5102_patch(%struct.arizona* %0) #0 {
  %2 = alloca %struct.arizona*, align 8
  %3 = alloca %struct.reg_sequence*, align 8
  %4 = alloca i32, align 4
  store %struct.arizona* %0, %struct.arizona** %2, align 8
  %5 = load %struct.arizona*, %struct.arizona** %2, align 8
  %6 = getelementptr inbounds %struct.arizona, %struct.arizona* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %12 [
    i32 0, label %8
  ]

8:                                                ; preds = %1
  %9 = load %struct.reg_sequence*, %struct.reg_sequence** @wm5102_reva_patch, align 8
  store %struct.reg_sequence* %9, %struct.reg_sequence** %3, align 8
  %10 = load %struct.reg_sequence*, %struct.reg_sequence** @wm5102_reva_patch, align 8
  %11 = call i32 @ARRAY_SIZE(%struct.reg_sequence* %10)
  store i32 %11, i32* %4, align 4
  br label %16

12:                                               ; preds = %1
  %13 = load %struct.reg_sequence*, %struct.reg_sequence** @wm5102_revb_patch, align 8
  store %struct.reg_sequence* %13, %struct.reg_sequence** %3, align 8
  %14 = load %struct.reg_sequence*, %struct.reg_sequence** @wm5102_revb_patch, align 8
  %15 = call i32 @ARRAY_SIZE(%struct.reg_sequence* %14)
  store i32 %15, i32* %4, align 4
  br label %16

16:                                               ; preds = %12, %8
  %17 = load %struct.arizona*, %struct.arizona** %2, align 8
  %18 = getelementptr inbounds %struct.arizona, %struct.arizona* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.reg_sequence*, %struct.reg_sequence** %3, align 8
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @regmap_multi_reg_write_bypassed(i32 %19, %struct.reg_sequence* %20, i32 %21)
  ret i32 %22
}

declare dso_local i32 @ARRAY_SIZE(%struct.reg_sequence*) #1

declare dso_local i32 @regmap_multi_reg_write_bypassed(i32, %struct.reg_sequence*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
