; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/microchip/extr_ksz8795.c_ksz8795_r_mib_cnt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/microchip/extr_ksz8795.c_ksz8795_r_mib_cnt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ksz_device = type { i32 }

@SWITCH_COUNTER_NUM = common dso_local global i32 0, align 4
@TABLE_MIB = common dso_local global i32 0, align 4
@TABLE_READ = common dso_local global i32 0, align 4
@REG_IND_CTRL_0 = common dso_local global i32 0, align 4
@REG_IND_MIB_CHECK = common dso_local global i32 0, align 4
@MIB_COUNTER_VALID = common dso_local global i32 0, align 4
@REG_IND_DATA_LO = common dso_local global i32 0, align 4
@MIB_COUNTER_OVERFLOW = common dso_local global i32 0, align 4
@MIB_COUNTER_VALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ksz_device*, i32, i64, i32*)* @ksz8795_r_mib_cnt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ksz8795_r_mib_cnt(%struct.ksz_device* %0, i32 %1, i64 %2, i32* %3) #0 {
  %5 = alloca %struct.ksz_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ksz_device* %0, %struct.ksz_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i32* %3, i32** %8, align 8
  %13 = load i64, i64* %7, align 8
  %14 = load i32, i32* @SWITCH_COUNTER_NUM, align 4
  %15 = load i32, i32* %6, align 4
  %16 = mul nsw i32 %14, %15
  %17 = sext i32 %16 to i64
  %18 = add nsw i64 %13, %17
  store i64 %18, i64* %9, align 8
  %19 = load i32, i32* @TABLE_MIB, align 4
  %20 = load i32, i32* @TABLE_READ, align 4
  %21 = or i32 %19, %20
  %22 = call i64 @IND_ACC_TABLE(i32 %21)
  %23 = load i64, i64* %9, align 8
  %24 = or i64 %23, %22
  store i64 %24, i64* %9, align 8
  %25 = load %struct.ksz_device*, %struct.ksz_device** %5, align 8
  %26 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %25, i32 0, i32 0
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load %struct.ksz_device*, %struct.ksz_device** %5, align 8
  %29 = load i32, i32* @REG_IND_CTRL_0, align 4
  %30 = load i64, i64* %9, align 8
  %31 = call i32 @ksz_write16(%struct.ksz_device* %28, i32 %29, i64 %30)
  store i32 2, i32* %12, align 4
  br label %32

32:                                               ; preds = %65, %4
  %33 = load i32, i32* %12, align 4
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %68

35:                                               ; preds = %32
  %36 = load %struct.ksz_device*, %struct.ksz_device** %5, align 8
  %37 = load i32, i32* @REG_IND_MIB_CHECK, align 4
  %38 = call i32 @ksz_read8(%struct.ksz_device* %36, i32 %37, i32* %11)
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* @MIB_COUNTER_VALID, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %64

43:                                               ; preds = %35
  %44 = load %struct.ksz_device*, %struct.ksz_device** %5, align 8
  %45 = load i32, i32* @REG_IND_DATA_LO, align 4
  %46 = call i32 @ksz_read32(%struct.ksz_device* %44, i32 %45, i32* %10)
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* @MIB_COUNTER_OVERFLOW, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %43
  %52 = load i32, i32* @MIB_COUNTER_VALUE, align 4
  %53 = add nsw i32 %52, 1
  %54 = load i32*, i32** %8, align 8
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, %53
  store i32 %56, i32* %54, align 4
  br label %57

57:                                               ; preds = %51, %43
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* @MIB_COUNTER_VALUE, align 4
  %60 = and i32 %58, %59
  %61 = load i32*, i32** %8, align 8
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %62, %60
  store i32 %63, i32* %61, align 4
  br label %68

64:                                               ; preds = %35
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %12, align 4
  %67 = add nsw i32 %66, -1
  store i32 %67, i32* %12, align 4
  br label %32

68:                                               ; preds = %57, %32
  %69 = load %struct.ksz_device*, %struct.ksz_device** %5, align 8
  %70 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %69, i32 0, i32 0
  %71 = call i32 @mutex_unlock(i32* %70)
  ret void
}

declare dso_local i64 @IND_ACC_TABLE(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ksz_write16(%struct.ksz_device*, i32, i64) #1

declare dso_local i32 @ksz_read8(%struct.ksz_device*, i32, i32*) #1

declare dso_local i32 @ksz_read32(%struct.ksz_device*, i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
