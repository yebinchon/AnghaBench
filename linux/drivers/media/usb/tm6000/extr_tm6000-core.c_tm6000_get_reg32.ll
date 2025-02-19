; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/tm6000/extr_tm6000-core.c_tm6000_get_reg32.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/tm6000/extr_tm6000-core.c_tm6000_get_reg32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm6000_core = type { i32 }

@USB_DIR_IN = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tm6000_get_reg32(%struct.tm6000_core* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tm6000_core*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [4 x i32], align 16
  store %struct.tm6000_core* %0, %struct.tm6000_core** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.tm6000_core*, %struct.tm6000_core** %6, align 8
  %13 = load i32, i32* @USB_DIR_IN, align 4
  %14 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* %9, align 4
  %19 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %20 = call i32 @tm6000_read_write_usb(%struct.tm6000_core* %12, i32 %15, i32 %16, i32 %17, i32 %18, i32* %19, i32 4)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i32, i32* %10, align 4
  store i32 %24, i32* %5, align 4
  br label %40

25:                                               ; preds = %4
  %26 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 3
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 2
  %29 = load i32, i32* %28, align 8
  %30 = shl i32 %29, 8
  %31 = or i32 %27, %30
  %32 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 1
  %33 = load i32, i32* %32, align 4
  %34 = shl i32 %33, 16
  %35 = or i32 %31, %34
  %36 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %37 = load i32, i32* %36, align 16
  %38 = shl i32 %37, 24
  %39 = or i32 %35, %38
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %25, %23
  %41 = load i32, i32* %5, align 4
  ret i32 %41
}

declare dso_local i32 @tm6000_read_write_usb(%struct.tm6000_core*, i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
