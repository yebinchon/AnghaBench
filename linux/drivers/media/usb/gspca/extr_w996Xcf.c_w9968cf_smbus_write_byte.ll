; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_w996Xcf.c_w9968cf_smbus_write_byte.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_w996Xcf.c_w9968cf_smbus_write_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sd = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sd*, i32)* @w9968cf_smbus_write_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @w9968cf_smbus_write_byte(%struct.sd* %0, i32 %1) #0 {
  %3 = alloca %struct.sd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.sd* %0, %struct.sd** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %30, %2
  %8 = load i32, i32* %5, align 4
  %9 = icmp slt i32 %8, 8
  br i1 %9, label %10, label %33

10:                                               ; preds = %7
  %11 = load i32, i32* %4, align 4
  %12 = and i32 %11, 128
  %13 = icmp ne i32 %12, 0
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, i32 2, i32 0
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %4, align 4
  %17 = shl i32 %16, 1
  store i32 %17, i32* %4, align 4
  %18 = load %struct.sd*, %struct.sd** %3, align 8
  %19 = load i32, i32* %6, align 4
  %20 = or i32 16, %19
  %21 = call i32 @w9968cf_write_sb(%struct.sd* %18, i32 %20)
  %22 = load %struct.sd*, %struct.sd** %3, align 8
  %23 = load i32, i32* %6, align 4
  %24 = or i32 17, %23
  %25 = call i32 @w9968cf_write_sb(%struct.sd* %22, i32 %24)
  %26 = load %struct.sd*, %struct.sd** %3, align 8
  %27 = load i32, i32* %6, align 4
  %28 = or i32 16, %27
  %29 = call i32 @w9968cf_write_sb(%struct.sd* %26, i32 %28)
  br label %30

30:                                               ; preds = %10
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %5, align 4
  br label %7

33:                                               ; preds = %7
  ret void
}

declare dso_local i32 @w9968cf_write_sb(%struct.sd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
