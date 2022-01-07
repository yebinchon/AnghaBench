; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/solo6x10/extr_solo6x10-i2c.c_solo_i2c_handle_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/solo6x10/extr_solo6x10-i2c.c_solo_i2c_handle_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.solo_dev = type { i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }

@I2C_M_NOSTART = common dso_local global i32 0, align 4
@I2C_M_RD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.solo_dev*)* @solo_i2c_handle_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @solo_i2c_handle_read(%struct.solo_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.solo_dev*, align 8
  store %struct.solo_dev* %0, %struct.solo_dev** %3, align 8
  br label %4

4:                                                ; preds = %56, %1
  %5 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %6 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %9 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %8, i32 0, i32 2
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %7, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %4
  %15 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %16 = call i32 @solo_i2c_flush(%struct.solo_dev* %15, i32 0)
  store i32 0, i32* %2, align 4
  br label %62

17:                                               ; preds = %4
  %18 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %19 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %18, i32 0, i32 0
  store i64 0, i64* %19, align 8
  %20 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %21 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %20, i32 0, i32 2
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 1
  store %struct.TYPE_2__* %23, %struct.TYPE_2__** %21, align 8
  %24 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %25 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %26, -1
  store i64 %27, i64* %25, align 8
  %28 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %29 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %17
  %33 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %34 = call i32 @solo_i2c_stop(%struct.solo_dev* %33)
  store i32 0, i32* %2, align 4
  br label %62

35:                                               ; preds = %17
  %36 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %37 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %36, i32 0, i32 2
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @I2C_M_NOSTART, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %35
  %45 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %46 = call i32 @solo_i2c_start(%struct.solo_dev* %45)
  br label %61

47:                                               ; preds = %35
  %48 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %49 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %48, i32 0, i32 2
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @I2C_M_RD, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %47
  br label %4

57:                                               ; preds = %47
  %58 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %59 = call i32 @solo_i2c_stop(%struct.solo_dev* %58)
  br label %60

60:                                               ; preds = %57
  br label %61

61:                                               ; preds = %60, %44
  store i32 0, i32* %2, align 4
  br label %62

62:                                               ; preds = %61, %32, %14
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i32 @solo_i2c_flush(%struct.solo_dev*, i32) #1

declare dso_local i32 @solo_i2c_stop(%struct.solo_dev*) #1

declare dso_local i32 @solo_i2c_start(%struct.solo_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
