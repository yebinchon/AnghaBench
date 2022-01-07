; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-core.c_init_xo2_ci.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-core.c_init_xo2_ci.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ddb_port = type { i64, i32, %struct.ddb*, %struct.TYPE_4__* }
%struct.ddb = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { %struct.i2c_adapter }
%struct.i2c_adapter = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"Port %d: invalid XO2 CI %02x\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Port %d: DuoFlex CI %u.%u\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"Setting continuous clock for DuoFlex CI\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ddb_port*)* @init_xo2_ci to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_xo2_ci(%struct.ddb_port* %0) #0 {
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
  br label %93

23:                                               ; preds = %1
  %24 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp sgt i32 %25, 1
  br i1 %26, label %27, label %37

27:                                               ; preds = %23
  %28 = load %struct.ddb*, %struct.ddb** %5, align 8
  %29 = getelementptr inbounds %struct.ddb, %struct.ddb* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.ddb_port*, %struct.ddb_port** %3, align 8
  %32 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 (i32, i8*, ...) @dev_info(i32 %30, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %35)
  store i32 -1, i32* %2, align 4
  br label %93

37:                                               ; preds = %23
  %38 = load %struct.ddb*, %struct.ddb** %5, align 8
  %39 = getelementptr inbounds %struct.ddb, %struct.ddb* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.ddb_port*, %struct.ddb_port** %3, align 8
  %42 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 (i32, i8*, ...) @dev_info(i32 %40, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %43, i32 %45, i32 %47)
  %49 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %50 = call i32 @i2c_read_reg(%struct.i2c_adapter* %49, i32 16, i32 8, i32* %6)
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %37
  %54 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %55 = call i32 @i2c_write_reg(%struct.i2c_adapter* %54, i32 16, i32 8, i32 0)
  %56 = call i32 @msleep(i32 100)
  br label %57

57:                                               ; preds = %53, %37
  %58 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %59 = call i32 @i2c_write_reg(%struct.i2c_adapter* %58, i32 16, i32 8, i32 3)
  %60 = call i32 @usleep_range(i32 2000, i32 3000)
  %61 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %62 = call i32 @i2c_write_reg(%struct.i2c_adapter* %61, i32 16, i32 9, i32 1)
  %63 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %64 = call i32 @i2c_write_reg(%struct.i2c_adapter* %63, i32 16, i32 8, i32 131)
  %65 = call i32 @usleep_range(i32 2000, i32 3000)
  %66 = load %struct.ddb*, %struct.ddb** %5, align 8
  %67 = getelementptr inbounds %struct.ddb, %struct.ddb* %66, i32 0, i32 1
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %67, align 8
  %69 = load %struct.ddb_port*, %struct.ddb_port** %3, align 8
  %70 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %87

78:                                               ; preds = %57
  %79 = load %struct.ddb*, %struct.ddb** %5, align 8
  %80 = getelementptr inbounds %struct.ddb, %struct.ddb* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 (i32, i8*, ...) @dev_info(i32 %81, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %83 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %84 = call i32 @i2c_write_reg(%struct.i2c_adapter* %83, i32 16, i32 10, i32 3)
  %85 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %86 = call i32 @i2c_write_reg(%struct.i2c_adapter* %85, i32 16, i32 11, i32 3)
  br label %92

87:                                               ; preds = %57
  %88 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %89 = call i32 @i2c_write_reg(%struct.i2c_adapter* %88, i32 16, i32 10, i32 1)
  %90 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %91 = call i32 @i2c_write_reg(%struct.i2c_adapter* %90, i32 16, i32 11, i32 1)
  br label %92

92:                                               ; preds = %87, %78
  store i32 0, i32* %2, align 4
  br label %93

93:                                               ; preds = %92, %27, %21
  %94 = load i32, i32* %2, align 4
  ret i32 %94
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
