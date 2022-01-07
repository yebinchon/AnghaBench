; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-go7007.c_saa7134_go7007_send_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-go7007.c_saa7134_go7007_send_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.go7007 = type { %struct.saa7134_go7007* }
%struct.saa7134_go7007 = type { %struct.saa7134_dev* }
%struct.saa7134_dev = type { i32 }

@SAA7134_GPIO_GPMODE0 = common dso_local global i32 0, align 4
@SAA7134_GPIO_GPSTATUS0 = common dso_local global i32 0, align 4
@HPI_ADDR_INIT_BUFFER = common dso_local global i32 0, align 4
@SAA7134_GPIO_GPSTATUS2 = common dso_local global i32 0, align 4
@GPIO_COMMAND_ADDR = common dso_local global i32 0, align 4
@GPIO_COMMAND_IDLE = common dso_local global i32 0, align 4
@GPIO_COMMAND_WRITE = common dso_local global i32 0, align 4
@HPI_ADDR_INTR_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"saa7134-go7007: device is hung, status reg = 0x%04x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.go7007*, i32*, i32)* @saa7134_go7007_send_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @saa7134_go7007_send_firmware(%struct.go7007* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.go7007*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.saa7134_go7007*, align 8
  %9 = alloca %struct.saa7134_dev*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.go7007* %0, %struct.go7007** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.go7007*, %struct.go7007** %5, align 8
  %13 = getelementptr inbounds %struct.go7007, %struct.go7007* %12, i32 0, i32 0
  %14 = load %struct.saa7134_go7007*, %struct.saa7134_go7007** %13, align 8
  store %struct.saa7134_go7007* %14, %struct.saa7134_go7007** %8, align 8
  %15 = load %struct.saa7134_go7007*, %struct.saa7134_go7007** %8, align 8
  %16 = getelementptr inbounds %struct.saa7134_go7007, %struct.saa7134_go7007* %15, i32 0, i32 0
  %17 = load %struct.saa7134_dev*, %struct.saa7134_dev** %16, align 8
  store %struct.saa7134_dev* %17, %struct.saa7134_dev** %9, align 8
  br label %18

18:                                               ; preds = %81, %3
  %19 = load i32, i32* %7, align 4
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %82

21:                                               ; preds = %18
  %22 = load i32, i32* %7, align 4
  %23 = icmp sgt i32 %22, 64
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  br label %27

25:                                               ; preds = %21
  %26 = load i32, i32* %7, align 4
  br label %27

27:                                               ; preds = %25, %24
  %28 = phi i32 [ 64, %24 ], [ %26, %25 ]
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* @SAA7134_GPIO_GPMODE0, align 4
  %30 = call i32 @saa_writeb(i32 %29, i32 255)
  %31 = load i32, i32* @SAA7134_GPIO_GPSTATUS0, align 4
  %32 = load i32, i32* @HPI_ADDR_INIT_BUFFER, align 4
  %33 = call i32 @saa_writeb(i32 %31, i32 %32)
  %34 = load i32, i32* @SAA7134_GPIO_GPSTATUS2, align 4
  %35 = load i32, i32* @GPIO_COMMAND_ADDR, align 4
  %36 = call i32 @saa_writeb(i32 %34, i32 %35)
  %37 = load i32, i32* @SAA7134_GPIO_GPSTATUS2, align 4
  %38 = load i32, i32* @GPIO_COMMAND_IDLE, align 4
  %39 = call i32 @saa_writeb(i32 %37, i32 %38)
  br label %40

40:                                               ; preds = %44, %27
  %41 = load i32, i32* %11, align 4
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* %11, align 4
  %43 = icmp sgt i32 %41, 0
  br i1 %43, label %44, label %59

44:                                               ; preds = %40
  %45 = load i32, i32* @SAA7134_GPIO_GPSTATUS0, align 4
  %46 = load i32*, i32** %6, align 8
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @saa_writeb(i32 %45, i32 %47)
  %49 = load i32, i32* @SAA7134_GPIO_GPSTATUS2, align 4
  %50 = load i32, i32* @GPIO_COMMAND_WRITE, align 4
  %51 = call i32 @saa_writeb(i32 %49, i32 %50)
  %52 = load i32, i32* @SAA7134_GPIO_GPSTATUS2, align 4
  %53 = load i32, i32* @GPIO_COMMAND_IDLE, align 4
  %54 = call i32 @saa_writeb(i32 %52, i32 %53)
  %55 = load i32*, i32** %6, align 8
  %56 = getelementptr inbounds i32, i32* %55, i32 1
  store i32* %56, i32** %6, align 8
  %57 = load i32, i32* %7, align 4
  %58 = add nsw i32 %57, -1
  store i32 %58, i32* %7, align 4
  br label %40

59:                                               ; preds = %40
  store i32 0, i32* %11, align 4
  br label %60

60:                                               ; preds = %72, %59
  %61 = load i32, i32* %11, align 4
  %62 = icmp slt i32 %61, 100
  br i1 %62, label %63, label %75

63:                                               ; preds = %60
  %64 = load %struct.saa7134_dev*, %struct.saa7134_dev** %9, align 8
  %65 = load i32, i32* @HPI_ADDR_INTR_STATUS, align 4
  %66 = call i32 @gpio_read(%struct.saa7134_dev* %64, i32 %65, i32* %10)
  %67 = load i32, i32* %10, align 4
  %68 = and i32 %67, 2
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %63
  br label %75

71:                                               ; preds = %63
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %11, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %11, align 4
  br label %60

75:                                               ; preds = %70, %60
  %76 = load i32, i32* %11, align 4
  %77 = icmp eq i32 %76, 100
  br i1 %77, label %78, label %81

78:                                               ; preds = %75
  %79 = load i32, i32* %10, align 4
  %80 = call i32 @pr_err(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %79)
  store i32 -1, i32* %4, align 4
  br label %83

81:                                               ; preds = %75
  br label %18

82:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %83

83:                                               ; preds = %82, %78
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local i32 @saa_writeb(i32, i32) #1

declare dso_local i32 @gpio_read(%struct.saa7134_dev*, i32, i32*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
