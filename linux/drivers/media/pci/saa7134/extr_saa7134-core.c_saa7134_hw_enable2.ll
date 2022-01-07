; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-core.c_saa7134_hw_enable2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-core.c_saa7134_hw_enable2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7134_dev = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@SAA7134_IRQ2_INTE_DEC3 = common dso_local global i32 0, align 4
@SAA7134_IRQ2_INTE_DEC2 = common dso_local global i32 0, align 4
@SAA7134_IRQ2_INTE_DEC1 = common dso_local global i32 0, align 4
@SAA7134_IRQ2_INTE_DEC0 = common dso_local global i32 0, align 4
@SAA7134_IRQ2_INTE_PE = common dso_local global i32 0, align 4
@SAA7134_IRQ2_INTE_AR = common dso_local global i32 0, align 4
@SAA7134_REMOTE_GPIO = common dso_local global i64 0, align 8
@SAA7134_IRQ2_INTE_GPIO16_N = common dso_local global i32 0, align 4
@SAA7134_IRQ2_INTE_GPIO18_P = common dso_local global i32 0, align 4
@SAA7134_IRQ2_INTE_GPIO18_N = common dso_local global i32 0, align 4
@SAA7134_REMOTE_I2C = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"ir-kbd-i2c\00", align 1
@SAA7134_IRQ1 = common dso_local global i32 0, align 4
@SAA7134_IRQ2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.saa7134_dev*)* @saa7134_hw_enable2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @saa7134_hw_enable2(%struct.saa7134_dev* %0) #0 {
  %2 = alloca %struct.saa7134_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.saa7134_dev* %0, %struct.saa7134_dev** %2, align 8
  %4 = load i32, i32* @SAA7134_IRQ2_INTE_DEC3, align 4
  %5 = load i32, i32* @SAA7134_IRQ2_INTE_DEC2, align 4
  %6 = or i32 %4, %5
  %7 = load i32, i32* @SAA7134_IRQ2_INTE_DEC1, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @SAA7134_IRQ2_INTE_DEC0, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @SAA7134_IRQ2_INTE_PE, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @SAA7134_IRQ2_INTE_AR, align 4
  %14 = or i32 %12, %13
  store i32 %14, i32* %3, align 4
  %15 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %16 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @SAA7134_REMOTE_GPIO, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %63

20:                                               ; preds = %1
  %21 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %22 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = icmp ne %struct.TYPE_2__* %23, null
  br i1 %24, label %25, label %63

25:                                               ; preds = %20
  %26 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %27 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, 65536
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %25
  %34 = load i32, i32* @SAA7134_IRQ2_INTE_GPIO16_N, align 4
  %35 = load i32, i32* %3, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %3, align 4
  br label %62

37:                                               ; preds = %25
  %38 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %39 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %42, 262144
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %37
  %46 = load i32, i32* @SAA7134_IRQ2_INTE_GPIO18_P, align 4
  %47 = load i32, i32* %3, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %45, %37
  %50 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %51 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %50, i32 0, i32 1
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = and i32 %54, 262144
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %49
  %58 = load i32, i32* @SAA7134_IRQ2_INTE_GPIO18_N, align 4
  %59 = load i32, i32* %3, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %57, %49
  br label %62

62:                                               ; preds = %61, %33
  br label %63

63:                                               ; preds = %62, %20, %1
  %64 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %65 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @SAA7134_REMOTE_I2C, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %63
  %70 = call i32 @request_module(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  br label %71

71:                                               ; preds = %69, %63
  %72 = load i32, i32* @SAA7134_IRQ1, align 4
  %73 = call i32 @saa_writel(i32 %72, i32 0)
  %74 = load i32, i32* @SAA7134_IRQ2, align 4
  %75 = load i32, i32* %3, align 4
  %76 = call i32 @saa_writel(i32 %74, i32 %75)
  ret i32 0
}

declare dso_local i32 @request_module(i8*) #1

declare dso_local i32 @saa_writel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
