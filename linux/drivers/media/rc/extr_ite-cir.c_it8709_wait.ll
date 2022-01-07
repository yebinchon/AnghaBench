; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_ite-cir.c_it8709_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_ite-cir.c_it8709_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ite_dev = type { i32 }

@IT8709_MODE = common dso_local global i32 0, align 4
@IT8709_IDLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ite_dev*)* @it8709_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @it8709_wait(%struct.ite_dev* %0) #0 {
  %2 = alloca %struct.ite_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.ite_dev* %0, %struct.ite_dev** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %16, %1
  %5 = load i32, i32* %3, align 4
  %6 = icmp slt i32 %5, 15000
  br i1 %6, label %7, label %19

7:                                                ; preds = %4
  %8 = call i32 @udelay(i32 2)
  %9 = load %struct.ite_dev*, %struct.ite_dev** %2, align 8
  %10 = load i32, i32* @IT8709_MODE, align 4
  %11 = call i64 @it8709_rm(%struct.ite_dev* %9, i32 %10)
  %12 = load i64, i64* @IT8709_IDLE, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %7
  br label %19

15:                                               ; preds = %7
  br label %16

16:                                               ; preds = %15
  %17 = load i32, i32* %3, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %3, align 4
  br label %4

19:                                               ; preds = %14, %4
  ret void
}

declare dso_local i32 @udelay(i32) #1

declare dso_local i64 @it8709_rm(%struct.ite_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
