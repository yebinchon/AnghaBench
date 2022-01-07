; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-cadet.c_cadet_gettune.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-cadet.c_cadet_gettune.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cadet = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cadet*)* @cadet_gettune to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cadet_gettune(%struct.cadet* %0) #0 {
  %2 = alloca %struct.cadet*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.cadet* %0, %struct.cadet** %2, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.cadet*, %struct.cadet** %2, align 8
  %7 = getelementptr inbounds %struct.cadet, %struct.cadet* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = call i32 @outb(i32 7, i64 %8)
  %10 = load %struct.cadet*, %struct.cadet** %2, align 8
  %11 = getelementptr inbounds %struct.cadet, %struct.cadet* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = add nsw i64 %12, 1
  %14 = call i32 @inb(i64 %13)
  store i32 %14, i32* %3, align 4
  %15 = load %struct.cadet*, %struct.cadet** %2, align 8
  %16 = getelementptr inbounds %struct.cadet, %struct.cadet* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %17, 1
  %19 = call i32 @outb(i32 0, i64 %18)
  %20 = load %struct.cadet*, %struct.cadet** %2, align 8
  %21 = getelementptr inbounds %struct.cadet, %struct.cadet* %20, i32 0, i32 0
  store i32 65535, i32* %21, align 8
  store i32 0, i32* %4, align 4
  br label %22

22:                                               ; preds = %59, %1
  %23 = load i32, i32* %4, align 4
  %24 = icmp slt i32 %23, 25
  br i1 %24, label %25, label %62

25:                                               ; preds = %22
  %26 = load i32, i32* %5, align 4
  %27 = shl i32 %26, 1
  %28 = load %struct.cadet*, %struct.cadet** %2, align 8
  %29 = getelementptr inbounds %struct.cadet, %struct.cadet* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %30, 1
  %32 = call i32 @inb(i64 %31)
  %33 = ashr i32 %32, 7
  %34 = and i32 %33, 1
  %35 = or i32 %27, %34
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %4, align 4
  %37 = icmp slt i32 %36, 24
  br i1 %37, label %38, label %58

38:                                               ; preds = %25
  %39 = load %struct.cadet*, %struct.cadet** %2, align 8
  %40 = getelementptr inbounds %struct.cadet, %struct.cadet* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %41, 1
  %43 = call i32 @outb(i32 1, i64 %42)
  %44 = load %struct.cadet*, %struct.cadet** %2, align 8
  %45 = getelementptr inbounds %struct.cadet, %struct.cadet* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %46, 1
  %48 = call i32 @inb(i64 %47)
  %49 = load %struct.cadet*, %struct.cadet** %2, align 8
  %50 = getelementptr inbounds %struct.cadet, %struct.cadet* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = and i32 %51, %48
  store i32 %52, i32* %50, align 8
  %53 = load %struct.cadet*, %struct.cadet** %2, align 8
  %54 = getelementptr inbounds %struct.cadet, %struct.cadet* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 %55, 1
  %57 = call i32 @outb(i32 0, i64 %56)
  br label %58

58:                                               ; preds = %38, %25
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %4, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %4, align 4
  br label %22

62:                                               ; preds = %22
  %63 = load i32, i32* %3, align 4
  %64 = load %struct.cadet*, %struct.cadet** %2, align 8
  %65 = getelementptr inbounds %struct.cadet, %struct.cadet* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = add nsw i64 %66, 1
  %68 = call i32 @outb(i32 %63, i64 %67)
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @inb(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
