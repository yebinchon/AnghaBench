; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-core.c_ddb_ports_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-core.c_ddb_ports_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ddb = type { i32, i32, %struct.ddb_port* }
%struct.ddb_port = type { i64 }

@.str = private unnamed_addr constant [64 x i8] c"Registering adapters failed. Check DVB_MAX_ADAPTERS in config.\0A\00", align 1
@DDB_PORT_NONE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [43 x i8] c"All connected ports failed to initialise!\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [48 x i8] c"%d of %d connected ports failed to initialise!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ddb_ports_attach(%struct.ddb* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ddb*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ddb_port*, align 8
  store %struct.ddb* %0, %struct.ddb** %3, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %9 = load %struct.ddb*, %struct.ddb** %3, align 8
  %10 = getelementptr inbounds %struct.ddb, %struct.ddb* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %25

13:                                               ; preds = %1
  %14 = load %struct.ddb*, %struct.ddb** %3, align 8
  %15 = call i32 @dvb_register_adapters(%struct.ddb* %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %13
  %19 = load %struct.ddb*, %struct.ddb** %3, align 8
  %20 = getelementptr inbounds %struct.ddb, %struct.ddb* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @dev_err(i32 %21, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* %7, align 4
  store i32 %23, i32* %2, align 4
  br label %85

24:                                               ; preds = %13
  br label %25

25:                                               ; preds = %24, %1
  %26 = load %struct.ddb*, %struct.ddb** %3, align 8
  %27 = getelementptr inbounds %struct.ddb, %struct.ddb* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %29

29:                                               ; preds = %60, %25
  %30 = load i32, i32* %4, align 4
  %31 = load %struct.ddb*, %struct.ddb** %3, align 8
  %32 = getelementptr inbounds %struct.ddb, %struct.ddb* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %63

35:                                               ; preds = %29
  %36 = load %struct.ddb*, %struct.ddb** %3, align 8
  %37 = getelementptr inbounds %struct.ddb, %struct.ddb* %36, i32 0, i32 2
  %38 = load %struct.ddb_port*, %struct.ddb_port** %37, align 8
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %38, i64 %40
  store %struct.ddb_port* %41, %struct.ddb_port** %8, align 8
  %42 = load %struct.ddb_port*, %struct.ddb_port** %8, align 8
  %43 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @DDB_PORT_NONE, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %56

47:                                               ; preds = %35
  %48 = load %struct.ddb_port*, %struct.ddb_port** %8, align 8
  %49 = call i32 @ddb_port_attach(%struct.ddb_port* %48)
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %6, align 4
  br label %55

55:                                               ; preds = %52, %47
  br label %59

56:                                               ; preds = %35
  %57 = load i32, i32* %5, align 4
  %58 = add nsw i32 %57, -1
  store i32 %58, i32* %5, align 4
  br label %59

59:                                               ; preds = %56, %55
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %4, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %4, align 4
  br label %29

63:                                               ; preds = %29
  %64 = load i32, i32* %6, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %84

66:                                               ; preds = %63
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* %5, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %77

70:                                               ; preds = %66
  %71 = load %struct.ddb*, %struct.ddb** %3, align 8
  %72 = getelementptr inbounds %struct.ddb, %struct.ddb* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @dev_err(i32 %73, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %75 = load i32, i32* @ENODEV, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %2, align 4
  br label %85

77:                                               ; preds = %66
  %78 = load %struct.ddb*, %struct.ddb** %3, align 8
  %79 = getelementptr inbounds %struct.ddb, %struct.ddb* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* %5, align 4
  %83 = call i32 @dev_warn(i32 %80, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %81, i32 %82)
  br label %84

84:                                               ; preds = %77, %63
  store i32 0, i32* %2, align 4
  br label %85

85:                                               ; preds = %84, %70, %18
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local i32 @dvb_register_adapters(%struct.ddb*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @ddb_port_attach(%struct.ddb_port*) #1

declare dso_local i32 @dev_warn(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
