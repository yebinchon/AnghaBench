; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-core.c_tempmon_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-core.c_tempmon_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ddb_link = type { i32, i32, %struct.ddb*, %struct.TYPE_2__*, i32, i32 }
%struct.ddb = type { i32 }
%struct.TYPE_2__ = type { i32 }

@tempmon_init.temperature_table = internal global [11 x i32] [i32 30, i32 35, i32 40, i32 45, i32 50, i32 55, i32 60, i32 65, i32 70, i32 75, i32 80], align 16
@temp_handler = common dso_local global i32 0, align 4
@TEMPMON_CONTROL_OVERTEMP = common dso_local global i32 0, align 4
@TEMPMON_CONTROL_AUTOSCAN = common dso_local global i32 0, align 4
@TEMPMON_CONTROL_INTENABLE = common dso_local global i32 0, align 4
@TEMPMON_CONTROL = common dso_local global i32 0, align 4
@TEMPMON_FANCONTROL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Over temperature condition\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ddb_link*, i32)* @tempmon_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tempmon_init(%struct.ddb_link* %0, i32 %1) #0 {
  %3 = alloca %struct.ddb_link*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ddb*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ddb_link* %0, %struct.ddb_link** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.ddb_link*, %struct.ddb_link** %3, align 8
  %9 = getelementptr inbounds %struct.ddb_link, %struct.ddb_link* %8, i32 0, i32 2
  %10 = load %struct.ddb*, %struct.ddb** %9, align 8
  store %struct.ddb* %10, %struct.ddb** %5, align 8
  store i32 0, i32* %6, align 4
  %11 = load %struct.ddb_link*, %struct.ddb_link** %3, align 8
  %12 = getelementptr inbounds %struct.ddb_link, %struct.ddb_link* %11, i32 0, i32 5
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %7, align 4
  %14 = load %struct.ddb_link*, %struct.ddb_link** %3, align 8
  %15 = getelementptr inbounds %struct.ddb_link, %struct.ddb_link* %14, i32 0, i32 1
  %16 = call i32 @spin_lock_irq(i32* %15)
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %2
  %20 = load %struct.ddb_link*, %struct.ddb_link** %3, align 8
  %21 = getelementptr inbounds %struct.ddb_link, %struct.ddb_link* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @memcpy(i32 %22, i32* getelementptr inbounds ([11 x i32], [11 x i32]* @tempmon_init.temperature_table, i64 0, i64 0), i32 44)
  br label %24

24:                                               ; preds = %19, %2
  %25 = load %struct.ddb*, %struct.ddb** %5, align 8
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.ddb_link*, %struct.ddb_link** %3, align 8
  %28 = getelementptr inbounds %struct.ddb_link, %struct.ddb_link* %27, i32 0, i32 3
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @temp_handler, align 4
  %33 = load %struct.ddb_link*, %struct.ddb_link** %3, align 8
  %34 = call i32 @ddb_irq_set(%struct.ddb* %25, i32 %26, i32 %31, i32 %32, %struct.ddb_link* %33)
  %35 = load %struct.ddb_link*, %struct.ddb_link** %3, align 8
  %36 = load i32, i32* @TEMPMON_CONTROL_OVERTEMP, align 4
  %37 = load i32, i32* @TEMPMON_CONTROL_AUTOSCAN, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @TEMPMON_CONTROL_INTENABLE, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @TEMPMON_CONTROL, align 4
  %42 = call i32 @ddblwritel(%struct.ddb_link* %35, i32 %40, i32 %41)
  %43 = load %struct.ddb_link*, %struct.ddb_link** %3, align 8
  %44 = load i32, i32* @TEMPMON_FANCONTROL, align 4
  %45 = call i32 @ddblwritel(%struct.ddb_link* %43, i32 768, i32 %44)
  %46 = load %struct.ddb_link*, %struct.ddb_link** %3, align 8
  %47 = load i32, i32* @TEMPMON_CONTROL, align 4
  %48 = call i32 @ddblreadl(%struct.ddb_link* %46, i32 %47)
  %49 = load i32, i32* @TEMPMON_CONTROL_OVERTEMP, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  %52 = zext i1 %51 to i32
  %53 = load %struct.ddb_link*, %struct.ddb_link** %3, align 8
  %54 = getelementptr inbounds %struct.ddb_link, %struct.ddb_link* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load %struct.ddb_link*, %struct.ddb_link** %3, align 8
  %56 = getelementptr inbounds %struct.ddb_link, %struct.ddb_link* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %24
  %60 = load %struct.ddb_link*, %struct.ddb_link** %3, align 8
  %61 = getelementptr inbounds %struct.ddb_link, %struct.ddb_link* %60, i32 0, i32 2
  %62 = load %struct.ddb*, %struct.ddb** %61, align 8
  %63 = getelementptr inbounds %struct.ddb, %struct.ddb* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @dev_info(i32 %64, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %66

66:                                               ; preds = %59, %24
  %67 = load %struct.ddb_link*, %struct.ddb_link** %3, align 8
  %68 = call i32 @tempmon_setfan(%struct.ddb_link* %67)
  %69 = load %struct.ddb_link*, %struct.ddb_link** %3, align 8
  %70 = getelementptr inbounds %struct.ddb_link, %struct.ddb_link* %69, i32 0, i32 1
  %71 = call i32 @spin_unlock_irq(i32* %70)
  %72 = load i32, i32* %6, align 4
  ret i32 %72
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @ddb_irq_set(%struct.ddb*, i32, i32, i32, %struct.ddb_link*) #1

declare dso_local i32 @ddblwritel(%struct.ddb_link*, i32, i32) #1

declare dso_local i32 @ddblreadl(%struct.ddb_link*, i32) #1

declare dso_local i32 @dev_info(i32, i8*) #1

declare dso_local i32 @tempmon_setfan(%struct.ddb_link*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
