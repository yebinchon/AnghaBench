; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/extr_e100.c_e100_eeprom_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/extr_e100.c_e100_eeprom_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nic = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@op_ewen = common dso_local global i32 0, align 4
@op_write = common dso_local global i32 0, align 4
@op_ewds = common dso_local global i32 0, align 4
@eecs = common dso_local global i32 0, align 4
@eesk = common dso_local global i32 0, align 4
@eedi = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nic*, i32, i32, i32)* @e100_eeprom_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e100_eeprom_write(%struct.nic* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.nic*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [3 x i32], align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.nic* %0, %struct.nic** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* @op_ewen, align 4
  %14 = load i32, i32* %6, align 4
  %15 = sub nsw i32 %14, 2
  %16 = shl i32 %13, %15
  %17 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  store i32 %16, i32* %17, align 4
  %18 = load i32, i32* @op_write, align 4
  %19 = load i32, i32* %6, align 4
  %20 = shl i32 %18, %19
  %21 = load i32, i32* %7, align 4
  %22 = or i32 %20, %21
  %23 = shl i32 %22, 16
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @le16_to_cpu(i32 %24)
  %26 = or i32 %23, %25
  %27 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 1
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* @op_ewds, align 4
  %29 = load i32, i32* %6, align 4
  %30 = sub nsw i32 %29, 2
  %31 = shl i32 %28, %30
  %32 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 2
  store i32 %31, i32* %32, align 4
  store i32 0, i32* %12, align 4
  br label %33

33:                                               ; preds = %101, %4
  %34 = load i32, i32* %12, align 4
  %35 = icmp slt i32 %34, 3
  br i1 %35, label %36, label %104

36:                                               ; preds = %33
  %37 = load i32, i32* @eecs, align 4
  %38 = load i32, i32* @eesk, align 4
  %39 = or i32 %37, %38
  %40 = load %struct.nic*, %struct.nic** %5, align 8
  %41 = getelementptr inbounds %struct.nic, %struct.nic* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = call i32 @iowrite8(i32 %39, i32* %43)
  %45 = load %struct.nic*, %struct.nic** %5, align 8
  %46 = call i32 @e100_write_flush(%struct.nic* %45)
  %47 = call i32 @udelay(i32 4)
  store i32 31, i32* %11, align 4
  br label %48

48:                                               ; preds = %88, %36
  %49 = load i32, i32* %11, align 4
  %50 = icmp sge i32 %49, 0
  br i1 %50, label %51, label %91

51:                                               ; preds = %48
  %52 = load i32, i32* %12, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %11, align 4
  %57 = shl i32 1, %56
  %58 = and i32 %55, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %51
  %61 = load i32, i32* @eecs, align 4
  %62 = load i32, i32* @eedi, align 4
  %63 = or i32 %61, %62
  br label %66

64:                                               ; preds = %51
  %65 = load i32, i32* @eecs, align 4
  br label %66

66:                                               ; preds = %64, %60
  %67 = phi i32 [ %63, %60 ], [ %65, %64 ]
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* %10, align 4
  %69 = load %struct.nic*, %struct.nic** %5, align 8
  %70 = getelementptr inbounds %struct.nic, %struct.nic* %69, i32 0, i32 0
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = call i32 @iowrite8(i32 %68, i32* %72)
  %74 = load %struct.nic*, %struct.nic** %5, align 8
  %75 = call i32 @e100_write_flush(%struct.nic* %74)
  %76 = call i32 @udelay(i32 4)
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* @eesk, align 4
  %79 = or i32 %77, %78
  %80 = load %struct.nic*, %struct.nic** %5, align 8
  %81 = getelementptr inbounds %struct.nic, %struct.nic* %80, i32 0, i32 0
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = call i32 @iowrite8(i32 %79, i32* %83)
  %85 = load %struct.nic*, %struct.nic** %5, align 8
  %86 = call i32 @e100_write_flush(%struct.nic* %85)
  %87 = call i32 @udelay(i32 4)
  br label %88

88:                                               ; preds = %66
  %89 = load i32, i32* %11, align 4
  %90 = add nsw i32 %89, -1
  store i32 %90, i32* %11, align 4
  br label %48

91:                                               ; preds = %48
  %92 = call i32 @msleep(i32 10)
  %93 = load %struct.nic*, %struct.nic** %5, align 8
  %94 = getelementptr inbounds %struct.nic, %struct.nic* %93, i32 0, i32 0
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = call i32 @iowrite8(i32 0, i32* %96)
  %98 = load %struct.nic*, %struct.nic** %5, align 8
  %99 = call i32 @e100_write_flush(%struct.nic* %98)
  %100 = call i32 @udelay(i32 4)
  br label %101

101:                                              ; preds = %91
  %102 = load i32, i32* %12, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %12, align 4
  br label %33

104:                                              ; preds = %33
  ret void
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @iowrite8(i32, i32*) #1

declare dso_local i32 @e100_write_flush(%struct.nic*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
