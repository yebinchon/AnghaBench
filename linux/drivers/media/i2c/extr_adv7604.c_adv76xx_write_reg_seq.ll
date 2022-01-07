; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7604.c_adv76xx_write_reg_seq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7604.c_adv76xx_write_reg_seq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.adv76xx_reg_seq = type { i64, i32 }

@ADV76XX_REG_SEQ_TERM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.v4l2_subdev*, %struct.adv76xx_reg_seq*)* @adv76xx_write_reg_seq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adv76xx_write_reg_seq(%struct.v4l2_subdev* %0, %struct.adv76xx_reg_seq* %1) #0 {
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca %struct.adv76xx_reg_seq*, align 8
  %5 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  store %struct.adv76xx_reg_seq* %1, %struct.adv76xx_reg_seq** %4, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %30, %2
  %7 = load %struct.adv76xx_reg_seq*, %struct.adv76xx_reg_seq** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds %struct.adv76xx_reg_seq, %struct.adv76xx_reg_seq* %7, i64 %9
  %11 = getelementptr inbounds %struct.adv76xx_reg_seq, %struct.adv76xx_reg_seq* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @ADV76XX_REG_SEQ_TERM, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %33

15:                                               ; preds = %6
  %16 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %17 = load %struct.adv76xx_reg_seq*, %struct.adv76xx_reg_seq** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.adv76xx_reg_seq, %struct.adv76xx_reg_seq* %17, i64 %19
  %21 = getelementptr inbounds %struct.adv76xx_reg_seq, %struct.adv76xx_reg_seq* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.adv76xx_reg_seq*, %struct.adv76xx_reg_seq** %4, align 8
  %24 = load i32, i32* %5, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.adv76xx_reg_seq, %struct.adv76xx_reg_seq* %23, i64 %25
  %27 = getelementptr inbounds %struct.adv76xx_reg_seq, %struct.adv76xx_reg_seq* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @adv76xx_write_reg(%struct.v4l2_subdev* %16, i64 %22, i32 %28)
  br label %30

30:                                               ; preds = %15
  %31 = load i32, i32* %5, align 4
  %32 = add i32 %31, 1
  store i32 %32, i32* %5, align 4
  br label %6

33:                                               ; preds = %6
  ret void
}

declare dso_local i32 @adv76xx_write_reg(%struct.v4l2_subdev*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
