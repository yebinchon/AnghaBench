; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_rtl8366rb.c_rtl8366rb_get_mib_counter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_rtl8366rb.c_rtl8366rb_get_mib_counter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.realtek_smi = type { i32 }
%struct.rtl8366_mib_counter = type { i32, i64 }

@RTL8366RB_MIB_COUNTER_BASE = common dso_local global i32 0, align 4
@RTL8366RB_MIB_COUNTER_PORT_OFFSET = common dso_local global i32 0, align 4
@RTL8366RB_MIB_CTRL_REG = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@RTL8366RB_MIB_CTRL_BUSY_MASK = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@RTL8366RB_MIB_CTRL_RESET_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.realtek_smi*, i32, %struct.rtl8366_mib_counter*, i32*)* @rtl8366rb_get_mib_counter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8366rb_get_mib_counter(%struct.realtek_smi* %0, i32 %1, %struct.rtl8366_mib_counter* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.realtek_smi*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.rtl8366_mib_counter*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.realtek_smi* %0, %struct.realtek_smi** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.rtl8366_mib_counter* %2, %struct.rtl8366_mib_counter** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load i32, i32* @RTL8366RB_MIB_COUNTER_BASE, align 4
  %15 = load i32, i32* @RTL8366RB_MIB_COUNTER_PORT_OFFSET, align 4
  %16 = load i32, i32* %7, align 4
  %17 = mul nsw i32 %15, %16
  %18 = add nsw i32 %14, %17
  %19 = sext i32 %18 to i64
  %20 = load %struct.rtl8366_mib_counter*, %struct.rtl8366_mib_counter** %8, align 8
  %21 = getelementptr inbounds %struct.rtl8366_mib_counter, %struct.rtl8366_mib_counter* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %19, %22
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %10, align 4
  %25 = load %struct.realtek_smi*, %struct.realtek_smi** %6, align 8
  %26 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %10, align 4
  %29 = call i32 @regmap_write(i32 %27, i32 %28, i32 0)
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %4
  %33 = load i32, i32* %12, align 4
  store i32 %33, i32* %5, align 4
  br label %94

34:                                               ; preds = %4
  %35 = load %struct.realtek_smi*, %struct.realtek_smi** %6, align 8
  %36 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @RTL8366RB_MIB_CTRL_REG, align 4
  %39 = call i32 @regmap_read(i32 %37, i32 %38, i32* %11)
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %12, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %34
  %43 = load i32, i32* @EIO, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %5, align 4
  br label %94

45:                                               ; preds = %34
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* @RTL8366RB_MIB_CTRL_BUSY_MASK, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load i32, i32* @EBUSY, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %5, align 4
  br label %94

53:                                               ; preds = %45
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* @RTL8366RB_MIB_CTRL_RESET_MASK, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load i32, i32* @EIO, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %5, align 4
  br label %94

61:                                               ; preds = %53
  %62 = load i32*, i32** %9, align 8
  store i32 0, i32* %62, align 4
  %63 = load %struct.rtl8366_mib_counter*, %struct.rtl8366_mib_counter** %8, align 8
  %64 = getelementptr inbounds %struct.rtl8366_mib_counter, %struct.rtl8366_mib_counter* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  store i32 %65, i32* %13, align 4
  br label %66

66:                                               ; preds = %90, %61
  %67 = load i32, i32* %13, align 4
  %68 = icmp sgt i32 %67, 0
  br i1 %68, label %69, label %93

69:                                               ; preds = %66
  %70 = load %struct.realtek_smi*, %struct.realtek_smi** %6, align 8
  %71 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* %13, align 4
  %75 = sub nsw i32 %74, 1
  %76 = add nsw i32 %73, %75
  %77 = call i32 @regmap_read(i32 %72, i32 %76, i32* %11)
  store i32 %77, i32* %12, align 4
  %78 = load i32, i32* %12, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %69
  %81 = load i32, i32* %12, align 4
  store i32 %81, i32* %5, align 4
  br label %94

82:                                               ; preds = %69
  %83 = load i32*, i32** %9, align 8
  %84 = load i32, i32* %83, align 4
  %85 = shl i32 %84, 16
  %86 = load i32, i32* %11, align 4
  %87 = and i32 %86, 65535
  %88 = or i32 %85, %87
  %89 = load i32*, i32** %9, align 8
  store i32 %88, i32* %89, align 4
  br label %90

90:                                               ; preds = %82
  %91 = load i32, i32* %13, align 4
  %92 = add nsw i32 %91, -1
  store i32 %92, i32* %13, align 4
  br label %66

93:                                               ; preds = %66
  store i32 0, i32* %5, align 4
  br label %94

94:                                               ; preds = %93, %80, %58, %50, %42, %32
  %95 = load i32, i32* %5, align 4
  ret i32 %95
}

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
