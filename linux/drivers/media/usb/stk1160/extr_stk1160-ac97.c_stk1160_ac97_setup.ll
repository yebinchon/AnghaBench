; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/stk1160/extr_stk1160-ac97.c_stk1160_ac97_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/stk1160/extr_stk1160-ac97.c_stk1160_ac97_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stk1160 = type { i32 }

@.str = private unnamed_addr constant [51 x i8] c"Device doesn't support audio, skipping AC97 setup.\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"Device uses internal 8-bit ADC, skipping AC97 setup.\00", align 1
@STK1160_AC97CTL_0 = common dso_local global i64 0, align 8
@STK1160_AC97CTL_1 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @stk1160_ac97_setup(%struct.stk1160* %0) #0 {
  %2 = alloca %struct.stk1160*, align 8
  store %struct.stk1160* %0, %struct.stk1160** %2, align 8
  %3 = load %struct.stk1160*, %struct.stk1160** %2, align 8
  %4 = call i32 @stk1160_has_audio(%struct.stk1160* %3)
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = call i32 @stk1160_info(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  br label %43

8:                                                ; preds = %1
  %9 = load %struct.stk1160*, %struct.stk1160** %2, align 8
  %10 = call i32 @stk1160_has_ac97(%struct.stk1160* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = call i32 @stk1160_info(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0))
  br label %43

14:                                               ; preds = %8
  %15 = load %struct.stk1160*, %struct.stk1160** %2, align 8
  %16 = load i64, i64* @STK1160_AC97CTL_0, align 8
  %17 = call i32 @stk1160_write_reg(%struct.stk1160* %15, i64 %16, i32 148)
  %18 = load %struct.stk1160*, %struct.stk1160** %2, align 8
  %19 = load i64, i64* @STK1160_AC97CTL_0, align 8
  %20 = call i32 @stk1160_write_reg(%struct.stk1160* %18, i64 %19, i32 140)
  %21 = load %struct.stk1160*, %struct.stk1160** %2, align 8
  %22 = load i64, i64* @STK1160_AC97CTL_1, align 8
  %23 = add nsw i64 %22, 2
  %24 = call i32 @stk1160_write_reg(%struct.stk1160* %21, i64 %23, i32 1)
  %25 = load %struct.stk1160*, %struct.stk1160** %2, align 8
  %26 = load i64, i64* @STK1160_AC97CTL_1, align 8
  %27 = add nsw i64 %26, 3
  %28 = call i32 @stk1160_write_reg(%struct.stk1160* %25, i64 %27, i32 0)
  %29 = load %struct.stk1160*, %struct.stk1160** %2, align 8
  %30 = call i32 @stk1160_write_ac97(%struct.stk1160* %29, i32 18, i32 34824)
  %31 = load %struct.stk1160*, %struct.stk1160** %2, align 8
  %32 = call i32 @stk1160_write_ac97(%struct.stk1160* %31, i32 16, i32 2056)
  %33 = load %struct.stk1160*, %struct.stk1160** %2, align 8
  %34 = call i32 @stk1160_write_ac97(%struct.stk1160* %33, i32 14, i32 8)
  %35 = load %struct.stk1160*, %struct.stk1160** %2, align 8
  %36 = call i32 @stk1160_write_ac97(%struct.stk1160* %35, i32 22, i32 2056)
  %37 = load %struct.stk1160*, %struct.stk1160** %2, align 8
  %38 = call i32 @stk1160_write_ac97(%struct.stk1160* %37, i32 26, i32 1028)
  %39 = load %struct.stk1160*, %struct.stk1160** %2, align 8
  %40 = call i32 @stk1160_write_ac97(%struct.stk1160* %39, i32 2, i32 0)
  %41 = load %struct.stk1160*, %struct.stk1160** %2, align 8
  %42 = call i32 @stk1160_write_ac97(%struct.stk1160* %41, i32 28, i32 2056)
  br label %43

43:                                               ; preds = %14, %12, %6
  ret void
}

declare dso_local i32 @stk1160_has_audio(%struct.stk1160*) #1

declare dso_local i32 @stk1160_info(i8*) #1

declare dso_local i32 @stk1160_has_ac97(%struct.stk1160*) #1

declare dso_local i32 @stk1160_write_reg(%struct.stk1160*, i64, i32) #1

declare dso_local i32 @stk1160_write_ac97(%struct.stk1160*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
