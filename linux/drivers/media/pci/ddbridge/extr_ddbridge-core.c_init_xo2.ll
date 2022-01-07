; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-core.c_init_xo2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-core.c_init_xo2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ddb_port = type { i64, i32, %struct.ddb*, %struct.TYPE_4__* }
%struct.ddb = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { %struct.i2c_adapter }
%struct.i2c_adapter = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"Port %d: invalid XO2\0A\00", align 1
@xo2_speed = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Setting continuous clock for XO2\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ddb_port*)* @init_xo2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_xo2(%struct.ddb_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ddb_port*, align 8
  %4 = alloca %struct.i2c_adapter*, align 8
  %5 = alloca %struct.ddb*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [2 x i32], align 4
  %8 = alloca i32, align 4
  store %struct.ddb_port* %0, %struct.ddb_port** %3, align 8
  %9 = load %struct.ddb_port*, %struct.ddb_port** %3, align 8
  %10 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %9, i32 0, i32 3
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  store %struct.i2c_adapter* %12, %struct.i2c_adapter** %4, align 8
  %13 = load %struct.ddb_port*, %struct.ddb_port** %3, align 8
  %14 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %13, i32 0, i32 2
  %15 = load %struct.ddb*, %struct.ddb** %14, align 8
  store %struct.ddb* %15, %struct.ddb** %5, align 8
  %16 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %17 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %18 = call i32 @i2c_read_regs(%struct.i2c_adapter* %16, i32 16, i32 4, i32* %17, i32 2)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i32, i32* %8, align 4
  store i32 %22, i32* %2, align 4
  br label %83

23:                                               ; preds = %1
  %24 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 1
  br i1 %26, label %27, label %35

27:                                               ; preds = %23
  %28 = load %struct.ddb*, %struct.ddb** %5, align 8
  %29 = getelementptr inbounds %struct.ddb, %struct.ddb* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.ddb_port*, %struct.ddb_port** %3, align 8
  %32 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i32 (i32, i8*, ...) @dev_info(i32 %30, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %33)
  store i32 -1, i32* %2, align 4
  br label %83

35:                                               ; preds = %23
  %36 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %37 = call i32 @i2c_read_reg(%struct.i2c_adapter* %36, i32 16, i32 8, i32* %6)
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %42 = call i32 @i2c_write_reg(%struct.i2c_adapter* %41, i32 16, i32 8, i32 0)
  %43 = call i32 @msleep(i32 100)
  br label %44

44:                                               ; preds = %40, %35
  %45 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %46 = call i32 @i2c_write_reg(%struct.i2c_adapter* %45, i32 16, i32 8, i32 4)
  %47 = call i32 @usleep_range(i32 2000, i32 3000)
  %48 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %49 = call i32 @i2c_write_reg(%struct.i2c_adapter* %48, i32 16, i32 8, i32 7)
  %50 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %51 = load i32, i32* @xo2_speed, align 4
  %52 = call i32 @i2c_write_reg(%struct.i2c_adapter* %50, i32 16, i32 9, i32 %51)
  %53 = load %struct.ddb*, %struct.ddb** %5, align 8
  %54 = getelementptr inbounds %struct.ddb, %struct.ddb* %53, i32 0, i32 1
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = load %struct.ddb_port*, %struct.ddb_port** %3, align 8
  %57 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %44
  %66 = load %struct.ddb*, %struct.ddb** %5, align 8
  %67 = getelementptr inbounds %struct.ddb, %struct.ddb* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 (i32, i8*, ...) @dev_info(i32 %68, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %70 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %71 = call i32 @i2c_write_reg(%struct.i2c_adapter* %70, i32 16, i32 10, i32 3)
  %72 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %73 = call i32 @i2c_write_reg(%struct.i2c_adapter* %72, i32 16, i32 11, i32 3)
  br label %79

74:                                               ; preds = %44
  %75 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %76 = call i32 @i2c_write_reg(%struct.i2c_adapter* %75, i32 16, i32 10, i32 1)
  %77 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %78 = call i32 @i2c_write_reg(%struct.i2c_adapter* %77, i32 16, i32 11, i32 1)
  br label %79

79:                                               ; preds = %74, %65
  %80 = call i32 @usleep_range(i32 2000, i32 3000)
  %81 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %82 = call i32 @i2c_write_reg(%struct.i2c_adapter* %81, i32 16, i32 8, i32 135)
  store i32 0, i32* %2, align 4
  br label %83

83:                                               ; preds = %79, %27, %21
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local i32 @i2c_read_regs(%struct.i2c_adapter*, i32, i32, i32*, i32) #1

declare dso_local i32 @dev_info(i32, i8*, ...) #1

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
