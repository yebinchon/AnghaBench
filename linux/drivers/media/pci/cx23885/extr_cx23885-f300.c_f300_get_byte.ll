; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx23885/extr_cx23885-f300.c_f300_get_byte.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx23885/extr_cx23885-f300.c_f300_get_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx23885_dev = type { i32 }

@F300_CLK = common dso_local global i32 0, align 4
@F300_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cx23885_dev*)* @f300_get_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @f300_get_byte(%struct.cx23885_dev* %0) #0 {
  %2 = alloca %struct.cx23885_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.cx23885_dev* %0, %struct.cx23885_dev** %2, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %24, %1
  %6 = load i32, i32* %3, align 4
  %7 = icmp slt i32 %6, 8
  br i1 %7, label %8, label %27

8:                                                ; preds = %5
  %9 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %10 = load i32, i32* @F300_CLK, align 4
  %11 = call i32 @f300_set_line(%struct.cx23885_dev* %9, i32 %10, i32 0)
  %12 = call i32 @udelay(i32 30)
  %13 = load i32, i32* %4, align 4
  %14 = shl i32 %13, 1
  store i32 %14, i32* %4, align 4
  %15 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %16 = load i32, i32* @F300_CLK, align 4
  %17 = call i32 @f300_set_line(%struct.cx23885_dev* %15, i32 %16, i32 1)
  %18 = call i32 @udelay(i32 30)
  %19 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %20 = load i32, i32* @F300_DATA, align 4
  %21 = call i32 @f300_get_line(%struct.cx23885_dev* %19, i32 %20)
  %22 = load i32, i32* %4, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %4, align 4
  br label %24

24:                                               ; preds = %8
  %25 = load i32, i32* %3, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %3, align 4
  br label %5

27:                                               ; preds = %5
  %28 = load i32, i32* %4, align 4
  ret i32 %28
}

declare dso_local i32 @f300_set_line(%struct.cx23885_dev*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @f300_get_line(%struct.cx23885_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
