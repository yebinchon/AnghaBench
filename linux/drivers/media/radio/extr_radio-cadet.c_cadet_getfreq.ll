; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-cadet.c_cadet_getfreq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-cadet.c_cadet_getfreq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cadet = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cadet*)* @cadet_getfreq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cadet_getfreq(%struct.cadet* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cadet*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.cadet* %0, %struct.cadet** %3, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %8 = load %struct.cadet*, %struct.cadet** %3, align 8
  %9 = call i32 @cadet_gettune(%struct.cadet* %8)
  store i32 %9, i32* %7, align 4
  %10 = load %struct.cadet*, %struct.cadet** %3, align 8
  %11 = getelementptr inbounds %struct.cadet, %struct.cadet* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* %7, align 4
  %16 = and i32 %15, 32767
  %17 = sub i32 %16, 450
  %18 = mul i32 %17, 16
  store i32 %18, i32* %2, align 4
  br label %46

19:                                               ; preds = %1
  store i32 12500, i32* %6, align 4
  store i32 0, i32* %4, align 4
  br label %20

20:                                               ; preds = %36, %19
  %21 = load i32, i32* %4, align 4
  %22 = icmp slt i32 %21, 14
  br i1 %22, label %23, label %39

23:                                               ; preds = %20
  %24 = load i32, i32* %7, align 4
  %25 = and i32 %24, 1
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %5, align 4
  %30 = add i32 %29, %28
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %27, %23
  %32 = load i32, i32* %6, align 4
  %33 = shl i32 %32, 1
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %7, align 4
  %35 = lshr i32 %34, 1
  store i32 %35, i32* %7, align 4
  br label %36

36:                                               ; preds = %31
  %37 = load i32, i32* %4, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %4, align 4
  br label %20

39:                                               ; preds = %20
  %40 = load i32, i32* %5, align 4
  %41 = sub i32 %40, 10700000
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = mul i32 %42, 16
  %44 = udiv i32 %43, 1000
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %39, %14
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @cadet_gettune(%struct.cadet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
