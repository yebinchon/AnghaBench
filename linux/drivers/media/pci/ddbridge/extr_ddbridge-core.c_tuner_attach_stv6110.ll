; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-core.c_tuner_attach_stv6110.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-core.c_tuner_attach_stv6110.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stv090x_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.stv6110x_config = type { i32 }
%struct.ddb_input = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, %struct.ddb_dvb*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.ddb_dvb = type { i32 }
%struct.TYPE_4__ = type { %struct.i2c_adapter }
%struct.i2c_adapter = type { i32 }
%struct.stv6110x_devctl = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@stv0900_aa = common dso_local global %struct.stv090x_config zeroinitializer, align 4
@stv0900 = common dso_local global %struct.stv090x_config zeroinitializer, align 4
@stv6110b = common dso_local global %struct.stv6110x_config zeroinitializer, align 4
@stv6110a = common dso_local global %struct.stv6110x_config zeroinitializer, align 4
@stv6110x_attach = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"No STV6110X found!\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"attach tuner input %d adr %02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ddb_input*, i32)* @tuner_attach_stv6110 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tuner_attach_stv6110(%struct.ddb_input* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ddb_input*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.i2c_adapter*, align 8
  %7 = alloca %struct.ddb_dvb*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.stv090x_config*, align 8
  %10 = alloca %struct.stv6110x_config*, align 8
  %11 = alloca %struct.stv6110x_devctl*, align 8
  store %struct.ddb_input* %0, %struct.ddb_input** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.ddb_input*, %struct.ddb_input** %4, align 8
  %13 = getelementptr inbounds %struct.ddb_input, %struct.ddb_input* %12, i32 0, i32 1
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 2
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  store %struct.i2c_adapter* %17, %struct.i2c_adapter** %6, align 8
  %18 = load %struct.ddb_input*, %struct.ddb_input** %4, align 8
  %19 = getelementptr inbounds %struct.ddb_input, %struct.ddb_input* %18, i32 0, i32 1
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %22 = load %struct.ddb_dvb*, %struct.ddb_dvb** %21, align 8
  %23 = load %struct.ddb_input*, %struct.ddb_input** %4, align 8
  %24 = getelementptr inbounds %struct.ddb_input, %struct.ddb_input* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = and i32 %25, 1
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %22, i64 %27
  store %struct.ddb_dvb* %28, %struct.ddb_dvb** %7, align 8
  %29 = load %struct.ddb_input*, %struct.ddb_input** %4, align 8
  %30 = getelementptr inbounds %struct.ddb_input, %struct.ddb_input* %29, i32 0, i32 1
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load %struct.device*, %struct.device** %34, align 8
  store %struct.device* %35, %struct.device** %8, align 8
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %36, 0
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, %struct.stv090x_config* @stv0900_aa, %struct.stv090x_config* @stv0900
  store %struct.stv090x_config* %39, %struct.stv090x_config** %9, align 8
  %40 = load %struct.ddb_input*, %struct.ddb_input** %4, align 8
  %41 = getelementptr inbounds %struct.ddb_input, %struct.ddb_input* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = and i32 %42, 1
  %44 = icmp ne i32 %43, 0
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, %struct.stv6110x_config* @stv6110b, %struct.stv6110x_config* @stv6110a
  store %struct.stv6110x_config* %46, %struct.stv6110x_config** %10, align 8
  %47 = load i32, i32* @stv6110x_attach, align 4
  %48 = load %struct.ddb_dvb*, %struct.ddb_dvb** %7, align 8
  %49 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.stv6110x_config*, %struct.stv6110x_config** %10, align 8
  %52 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %53 = call %struct.stv6110x_devctl* @dvb_attach(i32 %47, i32 %50, %struct.stv6110x_config* %51, %struct.i2c_adapter* %52)
  store %struct.stv6110x_devctl* %53, %struct.stv6110x_devctl** %11, align 8
  %54 = load %struct.stv6110x_devctl*, %struct.stv6110x_devctl** %11, align 8
  %55 = icmp ne %struct.stv6110x_devctl* %54, null
  br i1 %55, label %61, label %56

56:                                               ; preds = %2
  %57 = load %struct.device*, %struct.device** %8, align 8
  %58 = call i32 @dev_err(%struct.device* %57, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %59 = load i32, i32* @ENODEV, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %3, align 4
  br label %125

61:                                               ; preds = %2
  %62 = load %struct.device*, %struct.device** %8, align 8
  %63 = load %struct.ddb_input*, %struct.ddb_input** %4, align 8
  %64 = getelementptr inbounds %struct.ddb_input, %struct.ddb_input* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.stv6110x_config*, %struct.stv6110x_config** %10, align 8
  %67 = getelementptr inbounds %struct.stv6110x_config, %struct.stv6110x_config* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @dev_info(%struct.device* %62, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %65, i32 %68)
  %70 = load %struct.stv6110x_devctl*, %struct.stv6110x_devctl** %11, align 8
  %71 = getelementptr inbounds %struct.stv6110x_devctl, %struct.stv6110x_devctl* %70, i32 0, i32 10
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.stv090x_config*, %struct.stv090x_config** %9, align 8
  %74 = getelementptr inbounds %struct.stv090x_config, %struct.stv090x_config* %73, i32 0, i32 10
  store i32 %72, i32* %74, align 4
  %75 = load %struct.stv6110x_devctl*, %struct.stv6110x_devctl** %11, align 8
  %76 = getelementptr inbounds %struct.stv6110x_devctl, %struct.stv6110x_devctl* %75, i32 0, i32 9
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.stv090x_config*, %struct.stv090x_config** %9, align 8
  %79 = getelementptr inbounds %struct.stv090x_config, %struct.stv090x_config* %78, i32 0, i32 9
  store i32 %77, i32* %79, align 4
  %80 = load %struct.stv6110x_devctl*, %struct.stv6110x_devctl** %11, align 8
  %81 = getelementptr inbounds %struct.stv6110x_devctl, %struct.stv6110x_devctl* %80, i32 0, i32 8
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.stv090x_config*, %struct.stv090x_config** %9, align 8
  %84 = getelementptr inbounds %struct.stv090x_config, %struct.stv090x_config* %83, i32 0, i32 8
  store i32 %82, i32* %84, align 4
  %85 = load %struct.stv6110x_devctl*, %struct.stv6110x_devctl** %11, align 8
  %86 = getelementptr inbounds %struct.stv6110x_devctl, %struct.stv6110x_devctl* %85, i32 0, i32 7
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.stv090x_config*, %struct.stv090x_config** %9, align 8
  %89 = getelementptr inbounds %struct.stv090x_config, %struct.stv090x_config* %88, i32 0, i32 7
  store i32 %87, i32* %89, align 4
  %90 = load %struct.stv6110x_devctl*, %struct.stv6110x_devctl** %11, align 8
  %91 = getelementptr inbounds %struct.stv6110x_devctl, %struct.stv6110x_devctl* %90, i32 0, i32 6
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.stv090x_config*, %struct.stv090x_config** %9, align 8
  %94 = getelementptr inbounds %struct.stv090x_config, %struct.stv090x_config* %93, i32 0, i32 6
  store i32 %92, i32* %94, align 4
  %95 = load %struct.stv6110x_devctl*, %struct.stv6110x_devctl** %11, align 8
  %96 = getelementptr inbounds %struct.stv6110x_devctl, %struct.stv6110x_devctl* %95, i32 0, i32 5
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.stv090x_config*, %struct.stv090x_config** %9, align 8
  %99 = getelementptr inbounds %struct.stv090x_config, %struct.stv090x_config* %98, i32 0, i32 5
  store i32 %97, i32* %99, align 4
  %100 = load %struct.stv6110x_devctl*, %struct.stv6110x_devctl** %11, align 8
  %101 = getelementptr inbounds %struct.stv6110x_devctl, %struct.stv6110x_devctl* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.stv090x_config*, %struct.stv090x_config** %9, align 8
  %104 = getelementptr inbounds %struct.stv090x_config, %struct.stv090x_config* %103, i32 0, i32 4
  store i32 %102, i32* %104, align 4
  %105 = load %struct.stv6110x_devctl*, %struct.stv6110x_devctl** %11, align 8
  %106 = getelementptr inbounds %struct.stv6110x_devctl, %struct.stv6110x_devctl* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.stv090x_config*, %struct.stv090x_config** %9, align 8
  %109 = getelementptr inbounds %struct.stv090x_config, %struct.stv090x_config* %108, i32 0, i32 3
  store i32 %107, i32* %109, align 4
  %110 = load %struct.stv6110x_devctl*, %struct.stv6110x_devctl** %11, align 8
  %111 = getelementptr inbounds %struct.stv6110x_devctl, %struct.stv6110x_devctl* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.stv090x_config*, %struct.stv090x_config** %9, align 8
  %114 = getelementptr inbounds %struct.stv090x_config, %struct.stv090x_config* %113, i32 0, i32 2
  store i32 %112, i32* %114, align 4
  %115 = load %struct.stv6110x_devctl*, %struct.stv6110x_devctl** %11, align 8
  %116 = getelementptr inbounds %struct.stv6110x_devctl, %struct.stv6110x_devctl* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.stv090x_config*, %struct.stv090x_config** %9, align 8
  %119 = getelementptr inbounds %struct.stv090x_config, %struct.stv090x_config* %118, i32 0, i32 1
  store i32 %117, i32* %119, align 4
  %120 = load %struct.stv6110x_devctl*, %struct.stv6110x_devctl** %11, align 8
  %121 = getelementptr inbounds %struct.stv6110x_devctl, %struct.stv6110x_devctl* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.stv090x_config*, %struct.stv090x_config** %9, align 8
  %124 = getelementptr inbounds %struct.stv090x_config, %struct.stv090x_config* %123, i32 0, i32 0
  store i32 %122, i32* %124, align 4
  store i32 0, i32* %3, align 4
  br label %125

125:                                              ; preds = %61, %56
  %126 = load i32, i32* %3, align 4
  ret i32 %126
}

declare dso_local %struct.stv6110x_devctl* @dvb_attach(i32, i32, %struct.stv6110x_config*, %struct.i2c_adapter*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
