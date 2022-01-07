; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/tm6000/extr_tm6000-core.c_tm6000_set_reg_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/tm6000/extr_tm6000-core.c_tm6000_set_reg_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm6000_core = type { i32 }

@USB_DIR_IN = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tm6000_set_reg_mask(%struct.tm6000_core* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.tm6000_core*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [1 x i32], align 4
  %14 = alloca i32, align 4
  store %struct.tm6000_core* %0, %struct.tm6000_core** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load %struct.tm6000_core*, %struct.tm6000_core** %7, align 8
  %16 = load i32, i32* @USB_DIR_IN, align 4
  %17 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %9, align 4
  %21 = getelementptr inbounds [1 x i32], [1 x i32]* %13, i64 0, i64 0
  %22 = call i32 @tm6000_read_write_usb(%struct.tm6000_core* %15, i32 %18, i32 %19, i32 %20, i32 0, i32* %21, i32 1)
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %12, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %5
  %26 = load i32, i32* %12, align 4
  store i32 %26, i32* %6, align 4
  br label %51

27:                                               ; preds = %5
  %28 = getelementptr inbounds [1 x i32], [1 x i32]* %13, i64 0, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %11, align 4
  %31 = xor i32 %30, -1
  %32 = and i32 %29, %31
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* %11, align 4
  %35 = and i32 %33, %34
  %36 = or i32 %32, %35
  store i32 %36, i32* %14, align 4
  %37 = load i32, i32* %14, align 4
  %38 = getelementptr inbounds [1 x i32], [1 x i32]* %13, i64 0, i64 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp eq i32 %37, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %27
  store i32 0, i32* %6, align 4
  br label %51

42:                                               ; preds = %27
  %43 = load %struct.tm6000_core*, %struct.tm6000_core** %7, align 8
  %44 = load i32, i32* @USB_DIR_OUT, align 4
  %45 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* %14, align 4
  %50 = call i32 @tm6000_read_write_usb(%struct.tm6000_core* %43, i32 %46, i32 %47, i32 %48, i32 %49, i32* null, i32 0)
  store i32 %50, i32* %6, align 4
  br label %51

51:                                               ; preds = %42, %41, %25
  %52 = load i32, i32* %6, align 4
  ret i32 %52
}

declare dso_local i32 @tm6000_read_write_usb(%struct.tm6000_core*, i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
