; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ngene/extr_ngene-cards.c_init_xo2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ngene/extr_ngene-cards.c_init_xo2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ngene_channel = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.device }
%struct.device = type { i32 }
%struct.i2c_adapter = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"Invalid XO2 on channel %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ngene_channel*, %struct.i2c_adapter*)* @init_xo2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_xo2(%struct.ngene_channel* %0, %struct.i2c_adapter* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ngene_channel*, align 8
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [2 x i32], align 4
  %10 = alloca i32, align 4
  store %struct.ngene_channel* %0, %struct.ngene_channel** %4, align 8
  store %struct.i2c_adapter* %1, %struct.i2c_adapter** %5, align 8
  %11 = load %struct.ngene_channel*, %struct.ngene_channel** %4, align 8
  %12 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %11, i32 0, i32 1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  store %struct.device* %16, %struct.device** %6, align 8
  store i32 16, i32* %7, align 4
  %17 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %18 = load i32, i32* %7, align 4
  %19 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %20 = call i32 @i2c_read_regs(%struct.i2c_adapter* %17, i32 %18, i32 4, i32* %19, i32 2)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* %10, align 4
  store i32 %24, i32* %3, align 4
  br label %67

25:                                               ; preds = %2
  %26 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 1
  br i1 %28, label %29, label %35

29:                                               ; preds = %25
  %30 = load %struct.device*, %struct.device** %6, align 8
  %31 = load %struct.ngene_channel*, %struct.ngene_channel** %4, align 8
  %32 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @dev_info(%struct.device* %30, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %33)
  store i32 -1, i32* %3, align 4
  br label %67

35:                                               ; preds = %25
  %36 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @i2c_read_reg(%struct.i2c_adapter* %36, i32 %37, i32 8, i32* %8)
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %35
  %42 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @i2c_write_reg(%struct.i2c_adapter* %42, i32 %43, i32 8, i32 0)
  %45 = call i32 @msleep(i32 100)
  br label %46

46:                                               ; preds = %41, %35
  %47 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @i2c_write_reg(%struct.i2c_adapter* %47, i32 %48, i32 8, i32 4)
  %50 = call i32 @usleep_range(i32 2000, i32 3000)
  %51 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @i2c_write_reg(%struct.i2c_adapter* %51, i32 %52, i32 8, i32 7)
  %54 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @i2c_write_reg(%struct.i2c_adapter* %54, i32 %55, i32 9, i32 1)
  %57 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @i2c_write_reg(%struct.i2c_adapter* %57, i32 %58, i32 10, i32 1)
  %60 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @i2c_write_reg(%struct.i2c_adapter* %60, i32 %61, i32 11, i32 1)
  %63 = call i32 @usleep_range(i32 2000, i32 3000)
  %64 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @i2c_write_reg(%struct.i2c_adapter* %64, i32 %65, i32 8, i32 135)
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %46, %29, %23
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @i2c_read_regs(%struct.i2c_adapter*, i32, i32, i32*, i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32) #1

declare dso_local i32 @i2c_read_reg(%struct.i2c_adapter*, i32, i32, i32*) #1

declare dso_local i32 @i2c_write_reg(%struct.i2c_adapter*, i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
