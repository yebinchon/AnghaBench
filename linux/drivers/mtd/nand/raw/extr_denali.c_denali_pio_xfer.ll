; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_denali.c_denali_pio_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_denali.c_denali_pio_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.denali_controller = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.denali_controller*, i8*, i64, i32, i32)* @denali_pio_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @denali_pio_xfer(%struct.denali_controller* %0, i8* %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.denali_controller*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.denali_controller* %0, %struct.denali_controller** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %5
  %15 = load %struct.denali_controller*, %struct.denali_controller** %7, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = load i64, i64* %9, align 8
  %18 = load i32, i32* %10, align 4
  %19 = call i32 @denali_pio_write(%struct.denali_controller* %15, i8* %16, i64 %17, i32 %18)
  store i32 %19, i32* %6, align 4
  br label %26

20:                                               ; preds = %5
  %21 = load %struct.denali_controller*, %struct.denali_controller** %7, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = load i64, i64* %9, align 8
  %24 = load i32, i32* %10, align 4
  %25 = call i32 @denali_pio_read(%struct.denali_controller* %21, i8* %22, i64 %23, i32 %24)
  store i32 %25, i32* %6, align 4
  br label %26

26:                                               ; preds = %20, %14
  %27 = load i32, i32* %6, align 4
  ret i32 %27
}

declare dso_local i32 @denali_pio_write(%struct.denali_controller*, i8*, i64, i32) #1

declare dso_local i32 @denali_pio_read(%struct.denali_controller*, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
