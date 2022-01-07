; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_twl4030-power.c_twl4030_write_script.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_twl4030-power.c_twl4030_write_script.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.twl4030_ins = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@END_OF_SCRIPT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.twl4030_ins*, i32)* @twl4030_write_script to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twl4030_write_script(i64 %0, %struct.twl4030_ins* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.twl4030_ins*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store %struct.twl4030_ins* %1, %struct.twl4030_ins** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* @EINVAL, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %7, align 4
  br label %10

10:                                               ; preds = %46, %3
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %53

13:                                               ; preds = %10
  %14 = load i32, i32* %6, align 4
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %30

16:                                               ; preds = %13
  %17 = load i64, i64* %4, align 8
  %18 = load %struct.twl4030_ins*, %struct.twl4030_ins** %5, align 8
  %19 = getelementptr inbounds %struct.twl4030_ins, %struct.twl4030_ins* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.twl4030_ins*, %struct.twl4030_ins** %5, align 8
  %22 = getelementptr inbounds %struct.twl4030_ins, %struct.twl4030_ins* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i64, i64* @END_OF_SCRIPT, align 8
  %25 = call i32 @twl4030_write_script_ins(i64 %17, i32 %20, i32 %23, i64 %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %16
  br label %53

29:                                               ; preds = %16
  br label %45

30:                                               ; preds = %13
  %31 = load i64, i64* %4, align 8
  %32 = load %struct.twl4030_ins*, %struct.twl4030_ins** %5, align 8
  %33 = getelementptr inbounds %struct.twl4030_ins, %struct.twl4030_ins* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.twl4030_ins*, %struct.twl4030_ins** %5, align 8
  %36 = getelementptr inbounds %struct.twl4030_ins, %struct.twl4030_ins* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i64, i64* %4, align 8
  %39 = add nsw i64 %38, 1
  %40 = call i32 @twl4030_write_script_ins(i64 %31, i32 %34, i32 %37, i64 %39)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %30
  br label %53

44:                                               ; preds = %30
  br label %45

45:                                               ; preds = %44, %29
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %47, -1
  store i32 %48, i32* %6, align 4
  %49 = load i64, i64* %4, align 8
  %50 = add nsw i64 %49, 1
  store i64 %50, i64* %4, align 8
  %51 = load %struct.twl4030_ins*, %struct.twl4030_ins** %5, align 8
  %52 = getelementptr inbounds %struct.twl4030_ins, %struct.twl4030_ins* %51, i32 1
  store %struct.twl4030_ins* %52, %struct.twl4030_ins** %5, align 8
  br label %10

53:                                               ; preds = %43, %28, %10
  %54 = load i32, i32* %7, align 4
  ret i32 %54
}

declare dso_local i32 @twl4030_write_script_ins(i64, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
