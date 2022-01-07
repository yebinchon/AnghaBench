; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx18/extr_cx18-av-core.c_cx18_av_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx18/extr_cx18-av-core.c_cx18_av_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx18 = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx18_av_write(%struct.cx18* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.cx18*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.cx18* %0, %struct.cx18** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %11 = load i32, i32* %5, align 4
  %12 = and i32 %11, -4
  %13 = add nsw i32 12845056, %12
  store i32 %13, i32* %7, align 4
  store i32 255, i32* %8, align 4
  %14 = load i32, i32* %5, align 4
  %15 = and i32 %14, 3
  %16 = mul nsw i32 %15, 8
  store i32 %16, i32* %9, align 4
  %17 = load %struct.cx18*, %struct.cx18** %4, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @cx18_read_reg(%struct.cx18* %17, i32 %18)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* %9, align 4
  %23 = shl i32 %21, %22
  %24 = xor i32 %23, -1
  %25 = and i32 %20, %24
  %26 = load i64, i64* %6, align 8
  %27 = trunc i64 %26 to i32
  %28 = load i32, i32* %9, align 4
  %29 = shl i32 %27, %28
  %30 = or i32 %25, %29
  store i32 %30, i32* %10, align 4
  %31 = load %struct.cx18*, %struct.cx18** %4, align 8
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @cx18_write_reg(%struct.cx18* %31, i32 %32, i32 %33)
  ret i32 0
}

declare dso_local i32 @cx18_read_reg(%struct.cx18*, i32) #1

declare dso_local i32 @cx18_write_reg(%struct.cx18*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
