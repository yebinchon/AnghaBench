; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_max8997-irq.c_max8997_irq_sync_unlock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_max8997-irq.c_max8997_irq_sync_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.max8997_dev = type { i32, i32*, i32* }
%struct.i2c_client = type { i32 }

@MAX8997_IRQ_GROUP_NR = common dso_local global i32 0, align 4
@max8997_mask_reg = common dso_local global i64* null, align 8
@MAX8997_REG_INVALID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @max8997_irq_sync_unlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @max8997_irq_sync_unlock(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca %struct.max8997_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.i2c_client*, align 8
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %7 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %8 = call %struct.max8997_dev* @irq_data_get_irq_chip_data(%struct.irq_data* %7)
  store %struct.max8997_dev* %8, %struct.max8997_dev** %3, align 8
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %58, %1
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @MAX8997_IRQ_GROUP_NR, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %61

13:                                               ; preds = %9
  %14 = load i64*, i64** @max8997_mask_reg, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i64, i64* %14, i64 %16
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %5, align 8
  %19 = load %struct.max8997_dev*, %struct.max8997_dev** %3, align 8
  %20 = load i32, i32* %4, align 4
  %21 = call %struct.i2c_client* @get_i2c(%struct.max8997_dev* %19, i32 %20)
  store %struct.i2c_client* %21, %struct.i2c_client** %6, align 8
  %22 = load i64, i64* %5, align 8
  %23 = load i64, i64* @MAX8997_REG_INVALID, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %29, label %25

25:                                               ; preds = %13
  %26 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %27 = call i64 @IS_ERR_OR_NULL(%struct.i2c_client* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25, %13
  br label %58

30:                                               ; preds = %25
  %31 = load %struct.max8997_dev*, %struct.max8997_dev** %3, align 8
  %32 = getelementptr inbounds %struct.max8997_dev, %struct.max8997_dev* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.max8997_dev*, %struct.max8997_dev** %3, align 8
  %39 = getelementptr inbounds %struct.max8997_dev, %struct.max8997_dev* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  store i32 %37, i32* %43, align 4
  %44 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %45 = load i64*, i64** @max8997_mask_reg, align 8
  %46 = load i32, i32* %4, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i64, i64* %45, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.max8997_dev*, %struct.max8997_dev** %3, align 8
  %51 = getelementptr inbounds %struct.max8997_dev, %struct.max8997_dev* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %4, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @max8997_write_reg(%struct.i2c_client* %44, i64 %49, i32 %56)
  br label %58

58:                                               ; preds = %30, %29
  %59 = load i32, i32* %4, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %4, align 4
  br label %9

61:                                               ; preds = %9
  %62 = load %struct.max8997_dev*, %struct.max8997_dev** %3, align 8
  %63 = getelementptr inbounds %struct.max8997_dev, %struct.max8997_dev* %62, i32 0, i32 0
  %64 = call i32 @mutex_unlock(i32* %63)
  ret void
}

declare dso_local %struct.max8997_dev* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local %struct.i2c_client* @get_i2c(%struct.max8997_dev*, i32) #1

declare dso_local i64 @IS_ERR_OR_NULL(%struct.i2c_client*) #1

declare dso_local i32 @max8997_write_reg(%struct.i2c_client*, i64, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
