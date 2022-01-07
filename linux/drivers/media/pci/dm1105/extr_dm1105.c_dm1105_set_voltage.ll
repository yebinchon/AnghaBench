; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/dm1105/extr_dm1105.c_dm1105_set_voltage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/dm1105/extr_dm1105.c_dm1105_set_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct.dvb_frontend = type { i32 }
%struct.dm1105_dev = type { i64 }

@dm1105_boards = common dso_local global %struct.TYPE_4__* null, align 8
@SEC_VOLTAGE_18 = common dso_local global i32 0, align 4
@SEC_VOLTAGE_13 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32)* @dm1105_set_voltage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dm1105_set_voltage(%struct.dvb_frontend* %0, i32 %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dm1105_dev*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %7 = call %struct.dm1105_dev* @frontend_to_dm1105_dev(%struct.dvb_frontend* %6)
  store %struct.dm1105_dev* %7, %struct.dm1105_dev** %5, align 8
  %8 = load %struct.dm1105_dev*, %struct.dm1105_dev** %5, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dm1105_boards, align 8
  %10 = load %struct.dm1105_dev*, %struct.dm1105_dev** %5, align 8
  %11 = getelementptr inbounds %struct.dm1105_dev, %struct.dm1105_dev* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @dm1105_gpio_enable(%struct.dm1105_dev* %8, i32 %16, i32 1)
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @SEC_VOLTAGE_18, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %40

21:                                               ; preds = %2
  %22 = load %struct.dm1105_dev*, %struct.dm1105_dev** %5, align 8
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dm1105_boards, align 8
  %24 = load %struct.dm1105_dev*, %struct.dm1105_dev** %5, align 8
  %25 = getelementptr inbounds %struct.dm1105_dev, %struct.dm1105_dev* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dm1105_boards, align 8
  %32 = load %struct.dm1105_dev*, %struct.dm1105_dev** %5, align 8
  %33 = getelementptr inbounds %struct.dm1105_dev, %struct.dm1105_dev* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @dm1105_gpio_andor(%struct.dm1105_dev* %22, i32 %30, i32 %38)
  br label %83

40:                                               ; preds = %2
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @SEC_VOLTAGE_13, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %63

44:                                               ; preds = %40
  %45 = load %struct.dm1105_dev*, %struct.dm1105_dev** %5, align 8
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dm1105_boards, align 8
  %47 = load %struct.dm1105_dev*, %struct.dm1105_dev** %5, align 8
  %48 = getelementptr inbounds %struct.dm1105_dev, %struct.dm1105_dev* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dm1105_boards, align 8
  %55 = load %struct.dm1105_dev*, %struct.dm1105_dev** %5, align 8
  %56 = getelementptr inbounds %struct.dm1105_dev, %struct.dm1105_dev* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @dm1105_gpio_andor(%struct.dm1105_dev* %45, i32 %53, i32 %61)
  br label %82

63:                                               ; preds = %40
  %64 = load %struct.dm1105_dev*, %struct.dm1105_dev** %5, align 8
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dm1105_boards, align 8
  %66 = load %struct.dm1105_dev*, %struct.dm1105_dev** %5, align 8
  %67 = getelementptr inbounds %struct.dm1105_dev, %struct.dm1105_dev* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dm1105_boards, align 8
  %74 = load %struct.dm1105_dev*, %struct.dm1105_dev** %5, align 8
  %75 = getelementptr inbounds %struct.dm1105_dev, %struct.dm1105_dev* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @dm1105_gpio_andor(%struct.dm1105_dev* %64, i32 %72, i32 %80)
  br label %82

82:                                               ; preds = %63, %44
  br label %83

83:                                               ; preds = %82, %21
  ret i32 0
}

declare dso_local %struct.dm1105_dev* @frontend_to_dm1105_dev(%struct.dvb_frontend*) #1

declare dso_local i32 @dm1105_gpio_enable(%struct.dm1105_dev*, i32, i32) #1

declare dso_local i32 @dm1105_gpio_andor(%struct.dm1105_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
