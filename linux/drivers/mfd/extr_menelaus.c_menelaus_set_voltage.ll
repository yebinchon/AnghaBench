; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_menelaus.c_menelaus_set_voltage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_menelaus.c_menelaus_set_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }
%struct.menelaus_vtg = type { i32, i32, i32, i32, i32 }

@the_menelaus = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [55 x i8] c"Setting voltage '%s'to %d mV (reg 0x%02x, val 0x%02x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.menelaus_vtg*, i32, i32, i32)* @menelaus_set_voltage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @menelaus_set_voltage(%struct.menelaus_vtg* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.menelaus_vtg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.i2c_client*, align 8
  store %struct.menelaus_vtg* %0, %struct.menelaus_vtg** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_menelaus, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load %struct.i2c_client*, %struct.i2c_client** %13, align 8
  store %struct.i2c_client* %14, %struct.i2c_client** %11, align 8
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_menelaus, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load %struct.menelaus_vtg*, %struct.menelaus_vtg** %5, align 8
  %19 = getelementptr inbounds %struct.menelaus_vtg, %struct.menelaus_vtg* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @menelaus_read_reg(i32 %20)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %4
  br label %70

25:                                               ; preds = %4
  %26 = load i32, i32* %10, align 4
  %27 = load %struct.menelaus_vtg*, %struct.menelaus_vtg** %5, align 8
  %28 = getelementptr inbounds %struct.menelaus_vtg, %struct.menelaus_vtg* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = shl i32 1, %29
  %31 = sub nsw i32 %30, 1
  %32 = load %struct.menelaus_vtg*, %struct.menelaus_vtg** %5, align 8
  %33 = getelementptr inbounds %struct.menelaus_vtg, %struct.menelaus_vtg* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = shl i32 %31, %34
  %36 = xor i32 %35, -1
  %37 = and i32 %26, %36
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.menelaus_vtg*, %struct.menelaus_vtg** %5, align 8
  %40 = getelementptr inbounds %struct.menelaus_vtg, %struct.menelaus_vtg* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = shl i32 %38, %41
  %43 = load i32, i32* %9, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %9, align 4
  %45 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %46 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %45, i32 0, i32 0
  %47 = load %struct.menelaus_vtg*, %struct.menelaus_vtg** %5, align 8
  %48 = getelementptr inbounds %struct.menelaus_vtg, %struct.menelaus_vtg* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %6, align 4
  %51 = load %struct.menelaus_vtg*, %struct.menelaus_vtg** %5, align 8
  %52 = getelementptr inbounds %struct.menelaus_vtg, %struct.menelaus_vtg* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @dev_dbg(i32* %46, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %49, i32 %50, i32 %53, i32 %54)
  %56 = load %struct.menelaus_vtg*, %struct.menelaus_vtg** %5, align 8
  %57 = getelementptr inbounds %struct.menelaus_vtg, %struct.menelaus_vtg* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @menelaus_write_reg(i32 %58, i32 %59)
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* %10, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %25
  br label %70

64:                                               ; preds = %25
  %65 = load %struct.menelaus_vtg*, %struct.menelaus_vtg** %5, align 8
  %66 = getelementptr inbounds %struct.menelaus_vtg, %struct.menelaus_vtg* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @menelaus_write_reg(i32 %67, i32 %68)
  store i32 %69, i32* %10, align 4
  br label %70

70:                                               ; preds = %64, %63, %24
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_menelaus, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = call i32 @mutex_unlock(i32* %72)
  %74 = load i32, i32* %10, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %70
  %77 = call i32 @msleep(i32 1)
  br label %78

78:                                               ; preds = %76, %70
  %79 = load i32, i32* %10, align 4
  ret i32 %79
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @menelaus_read_reg(i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @menelaus_write_reg(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
