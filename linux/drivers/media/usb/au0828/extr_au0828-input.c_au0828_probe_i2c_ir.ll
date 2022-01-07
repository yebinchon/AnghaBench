; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/au0828/extr_au0828-input.c_au0828_probe_i2c_ir.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/au0828/extr_au0828-input.c_au0828_probe_i2c_ir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.au0828_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@au0828_probe_i2c_ir.addr_list = internal constant [2 x i16] [i16 71, i16 128], align 2
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.au0828_dev*)* @au0828_probe_i2c_ir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @au0828_probe_i2c_ir(%struct.au0828_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.au0828_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.au0828_dev* %0, %struct.au0828_dev** %3, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %29, %1
  %6 = load i32, i32* %4, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [2 x i16], [2 x i16]* @au0828_probe_i2c_ir.addr_list, i64 0, i64 %7
  %9 = load i16, i16* %8, align 2
  %10 = zext i16 %9 to i32
  %11 = icmp ne i32 %10, 128
  br i1 %11, label %12, label %32

12:                                               ; preds = %5
  %13 = load %struct.au0828_dev*, %struct.au0828_dev** %3, align 8
  %14 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [2 x i16], [2 x i16]* @au0828_probe_i2c_ir.addr_list, i64 0, i64 %18
  %20 = load i16, i16* %19, align 2
  %21 = call i32 @i2c_probe_func_quick_read(i32 %16, i16 zeroext %20)
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %29

23:                                               ; preds = %12
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [2 x i16], [2 x i16]* @au0828_probe_i2c_ir.addr_list, i64 0, i64 %25
  %27 = load i16, i16* %26, align 2
  %28 = zext i16 %27 to i32
  store i32 %28, i32* %2, align 4
  br label %35

29:                                               ; preds = %12
  %30 = load i32, i32* %4, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %4, align 4
  br label %5

32:                                               ; preds = %5
  %33 = load i32, i32* @ENODEV, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %32, %23
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @i2c_probe_func_quick_read(i32, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
