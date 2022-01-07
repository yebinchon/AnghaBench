; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-go7007.c_saa7134_go7007_write_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-go7007.c_saa7134_go7007_write_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.go7007 = type { %struct.saa7134_go7007* }
%struct.saa7134_go7007 = type { %struct.saa7134_dev* }
%struct.saa7134_dev = type { i32 }

@HPI_ADDR_INTR_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"saa7134-go7007: device is hung, status reg = 0x%04x\0A\00", align 1
@HPI_ADDR_INTR_WR_PARAM = common dso_local global i32 0, align 4
@HPI_ADDR_INTR_WR_INDEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.go7007*, i32, i32)* @saa7134_go7007_write_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @saa7134_go7007_write_interrupt(%struct.go7007* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.go7007*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.saa7134_go7007*, align 8
  %9 = alloca %struct.saa7134_dev*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.go7007* %0, %struct.go7007** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.go7007*, %struct.go7007** %5, align 8
  %13 = getelementptr inbounds %struct.go7007, %struct.go7007* %12, i32 0, i32 0
  %14 = load %struct.saa7134_go7007*, %struct.saa7134_go7007** %13, align 8
  store %struct.saa7134_go7007* %14, %struct.saa7134_go7007** %8, align 8
  %15 = load %struct.saa7134_go7007*, %struct.saa7134_go7007** %8, align 8
  %16 = getelementptr inbounds %struct.saa7134_go7007, %struct.saa7134_go7007* %15, i32 0, i32 0
  %17 = load %struct.saa7134_dev*, %struct.saa7134_dev** %16, align 8
  store %struct.saa7134_dev* %17, %struct.saa7134_dev** %9, align 8
  store i32 0, i32* %10, align 4
  br label %18

18:                                               ; preds = %31, %3
  %19 = load i32, i32* %10, align 4
  %20 = icmp slt i32 %19, 100
  br i1 %20, label %21, label %34

21:                                               ; preds = %18
  %22 = load %struct.saa7134_dev*, %struct.saa7134_dev** %9, align 8
  %23 = load i32, i32* @HPI_ADDR_INTR_STATUS, align 4
  %24 = call i32 @gpio_read(%struct.saa7134_dev* %22, i32 %23, i32* %11)
  %25 = load i32, i32* %11, align 4
  %26 = and i32 %25, 16
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %21
  br label %34

29:                                               ; preds = %21
  %30 = call i32 @msleep(i32 10)
  br label %31

31:                                               ; preds = %29
  %32 = load i32, i32* %10, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %10, align 4
  br label %18

34:                                               ; preds = %28, %18
  %35 = load i32, i32* %10, align 4
  %36 = icmp eq i32 %35, 100
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load i32, i32* %11, align 4
  %39 = call i32 @pr_err(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %38)
  store i32 -1, i32* %4, align 4
  br label %49

40:                                               ; preds = %34
  %41 = load %struct.saa7134_dev*, %struct.saa7134_dev** %9, align 8
  %42 = load i32, i32* @HPI_ADDR_INTR_WR_PARAM, align 4
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @gpio_write(%struct.saa7134_dev* %41, i32 %42, i32 %43)
  %45 = load %struct.saa7134_dev*, %struct.saa7134_dev** %9, align 8
  %46 = load i32, i32* @HPI_ADDR_INTR_WR_INDEX, align 4
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @gpio_write(%struct.saa7134_dev* %45, i32 %46, i32 %47)
  store i32 0, i32* %4, align 4
  br label %49

49:                                               ; preds = %40, %37
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i32 @gpio_read(%struct.saa7134_dev*, i32, i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @gpio_write(%struct.saa7134_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
