; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-core.c_ddb_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-core.c_ddb_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ddb = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, i32, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32 }

@no_init = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"Could not allocate buffer memory\0A\00", align 1
@GPIO_DIRECTION = common dso_local global i32 0, align 4
@GPIO_OUTPUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"fail3\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"fail2\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"fail1\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ddb_init(%struct.ddb* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ddb*, align 8
  store %struct.ddb* %0, %struct.ddb** %3, align 8
  %4 = load %struct.ddb*, %struct.ddb** %3, align 8
  %5 = getelementptr inbounds %struct.ddb, %struct.ddb* %4, i32 0, i32 1
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i64 0
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = call i32 @mutex_init(i32* %9)
  %11 = load %struct.ddb*, %struct.ddb** %3, align 8
  %12 = getelementptr inbounds %struct.ddb, %struct.ddb* %11, i32 0, i32 1
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i64 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  %16 = call i32 @mutex_init(i32* %15)
  %17 = load i64, i64* @no_init, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load %struct.ddb*, %struct.ddb** %3, align 8
  %21 = call i32 @ddb_device_create(%struct.ddb* %20)
  store i32 0, i32* %2, align 4
  br label %88

22:                                               ; preds = %1
  %23 = load %struct.ddb*, %struct.ddb** %3, align 8
  %24 = call i32 @ddb_init_boards(%struct.ddb* %23)
  %25 = load %struct.ddb*, %struct.ddb** %3, align 8
  %26 = call i64 @ddb_i2c_init(%struct.ddb* %25)
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  br label %83

29:                                               ; preds = %22
  %30 = load %struct.ddb*, %struct.ddb** %3, align 8
  %31 = call i32 @ddb_ports_init(%struct.ddb* %30)
  %32 = load %struct.ddb*, %struct.ddb** %3, align 8
  %33 = call i64 @ddb_buffers_alloc(%struct.ddb* %32)
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %29
  %36 = load %struct.ddb*, %struct.ddb** %3, align 8
  %37 = getelementptr inbounds %struct.ddb, %struct.ddb* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @dev_info(i32 %38, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %74

40:                                               ; preds = %29
  %41 = load %struct.ddb*, %struct.ddb** %3, align 8
  %42 = call i64 @ddb_ports_attach(%struct.ddb* %41)
  %43 = icmp slt i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  br label %65

45:                                               ; preds = %40
  %46 = load %struct.ddb*, %struct.ddb** %3, align 8
  %47 = call i32 @ddb_device_create(%struct.ddb* %46)
  %48 = load %struct.ddb*, %struct.ddb** %3, align 8
  %49 = getelementptr inbounds %struct.ddb, %struct.ddb* %48, i32 0, i32 1
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i64 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %45
  %58 = load %struct.ddb*, %struct.ddb** %3, align 8
  %59 = load i32, i32* @GPIO_DIRECTION, align 4
  %60 = call i32 @ddbwritel(%struct.ddb* %58, i32 1, i32 %59)
  %61 = load %struct.ddb*, %struct.ddb** %3, align 8
  %62 = load i32, i32* @GPIO_OUTPUT, align 4
  %63 = call i32 @ddbwritel(%struct.ddb* %61, i32 1, i32 %62)
  br label %64

64:                                               ; preds = %57, %45
  store i32 0, i32* %2, align 4
  br label %88

65:                                               ; preds = %44
  %66 = load %struct.ddb*, %struct.ddb** %3, align 8
  %67 = getelementptr inbounds %struct.ddb, %struct.ddb* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @dev_err(i32 %68, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %70 = load %struct.ddb*, %struct.ddb** %3, align 8
  %71 = call i32 @ddb_ports_detach(%struct.ddb* %70)
  %72 = load %struct.ddb*, %struct.ddb** %3, align 8
  %73 = call i32 @ddb_buffers_free(%struct.ddb* %72)
  br label %74

74:                                               ; preds = %65, %35
  %75 = load %struct.ddb*, %struct.ddb** %3, align 8
  %76 = getelementptr inbounds %struct.ddb, %struct.ddb* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @dev_err(i32 %77, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %79 = load %struct.ddb*, %struct.ddb** %3, align 8
  %80 = call i32 @ddb_ports_release(%struct.ddb* %79)
  %81 = load %struct.ddb*, %struct.ddb** %3, align 8
  %82 = call i32 @ddb_i2c_release(%struct.ddb* %81)
  br label %83

83:                                               ; preds = %74, %28
  %84 = load %struct.ddb*, %struct.ddb** %3, align 8
  %85 = getelementptr inbounds %struct.ddb, %struct.ddb* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @dev_err(i32 %86, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %88

88:                                               ; preds = %83, %64, %19
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @ddb_device_create(%struct.ddb*) #1

declare dso_local i32 @ddb_init_boards(%struct.ddb*) #1

declare dso_local i64 @ddb_i2c_init(%struct.ddb*) #1

declare dso_local i32 @ddb_ports_init(%struct.ddb*) #1

declare dso_local i64 @ddb_buffers_alloc(%struct.ddb*) #1

declare dso_local i32 @dev_info(i32, i8*) #1

declare dso_local i64 @ddb_ports_attach(%struct.ddb*) #1

declare dso_local i32 @ddbwritel(%struct.ddb*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @ddb_ports_detach(%struct.ddb*) #1

declare dso_local i32 @ddb_buffers_free(%struct.ddb*) #1

declare dso_local i32 @ddb_ports_release(%struct.ddb*) #1

declare dso_local i32 @ddb_i2c_release(%struct.ddb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
