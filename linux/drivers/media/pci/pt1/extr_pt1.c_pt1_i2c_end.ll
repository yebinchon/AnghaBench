; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/pt1/extr_pt1.c_pt1_i2c_end.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/pt1/extr_pt1.c_pt1_i2c_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt1 = type { i32 }

@current = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt1*, i32)* @pt1_i2c_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pt1_i2c_end(%struct.pt1* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pt1*, align 8
  %5 = alloca i32, align 4
  store %struct.pt1* %0, %struct.pt1** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.pt1*, %struct.pt1** %4, align 8
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = add nsw i32 %8, 1
  %10 = call i32 @pt1_i2c_emit(%struct.pt1* %6, i32 %7, i32 1, i32 0, i32 0, i32 0, i32 %9)
  %11 = load %struct.pt1*, %struct.pt1** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = add nsw i32 %12, 1
  %14 = load i32, i32* %5, align 4
  %15 = add nsw i32 %14, 2
  %16 = call i32 @pt1_i2c_emit(%struct.pt1* %11, i32 %13, i32 1, i32 0, i32 1, i32 0, i32 %15)
  %17 = load %struct.pt1*, %struct.pt1** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = add nsw i32 %18, 2
  %20 = call i32 @pt1_i2c_emit(%struct.pt1* %17, i32 %19, i32 1, i32 0, i32 1, i32 1, i32 0)
  %21 = load %struct.pt1*, %struct.pt1** %4, align 8
  %22 = call i32 @pt1_write_reg(%struct.pt1* %21, i32 0, i32 4)
  br label %23

23:                                               ; preds = %32, %2
  %24 = load i32, i32* @current, align 4
  %25 = call i64 @signal_pending(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load i32, i32* @EINTR, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %38

30:                                               ; preds = %23
  %31 = call i32 @usleep_range(i32 1000, i32 2000)
  br label %32

32:                                               ; preds = %30
  %33 = load %struct.pt1*, %struct.pt1** %4, align 8
  %34 = call i32 @pt1_read_reg(%struct.pt1* %33, i32 0)
  %35 = and i32 %34, 128
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %23, label %37

37:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %37, %27
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @pt1_i2c_emit(%struct.pt1*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @pt1_write_reg(%struct.pt1*, i32, i32) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @pt1_read_reg(%struct.pt1*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
