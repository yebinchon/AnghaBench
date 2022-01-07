; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/pt1/extr_pt1.c_pt1_reset_ram.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/pt1/extr_pt1.c_pt1_reset_ram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt1 = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"could not reset RAM\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt1*)* @pt1_reset_ram to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pt1_reset_ram(%struct.pt1* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pt1*, align 8
  %4 = alloca i32, align 4
  store %struct.pt1* %0, %struct.pt1** %3, align 8
  %5 = load %struct.pt1*, %struct.pt1** %3, align 8
  %6 = call i32 @pt1_write_reg(%struct.pt1* %5, i32 0, i32 33685504)
  %7 = load %struct.pt1*, %struct.pt1** %3, align 8
  %8 = call i32 @pt1_write_reg(%struct.pt1* %7, i32 0, i32 33554432)
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %20, %1
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %10, 10
  br i1 %11, label %12, label %23

12:                                               ; preds = %9
  %13 = load %struct.pt1*, %struct.pt1** %3, align 8
  %14 = call i32 @pt1_read_reg(%struct.pt1* %13, i32 0)
  %15 = and i32 %14, 2
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %31

18:                                               ; preds = %12
  %19 = call i32 @usleep_range(i32 1000, i32 2000)
  br label %20

20:                                               ; preds = %18
  %21 = load i32, i32* %4, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %4, align 4
  br label %9

23:                                               ; preds = %9
  %24 = load %struct.pt1*, %struct.pt1** %3, align 8
  %25 = getelementptr inbounds %struct.pt1, %struct.pt1* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = call i32 @dev_err(i32* %27, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @EIO, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %31

31:                                               ; preds = %23, %17
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @pt1_write_reg(%struct.pt1*, i32, i32) #1

declare dso_local i32 @pt1_read_reg(%struct.pt1*, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
