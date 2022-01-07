; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ngene/extr_ngene-cards.c_tuner_attach_stv6110.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ngene/extr_ngene-cards.c_tuner_attach_stv6110.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ngene_channel = type { i64, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i64*, i64* }
%struct.TYPE_4__ = type { %struct.device }
%struct.device = type { i32 }
%struct.i2c_adapter = type { i32 }
%struct.stv090x_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.stv6110x_config = type { i32 }
%struct.stv6110x_devctl = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@stv6110x_attach = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"No STV6110X found!\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ngene_channel*)* @tuner_attach_stv6110 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tuner_attach_stv6110(%struct.ngene_channel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ngene_channel*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.stv090x_config*, align 8
  %7 = alloca %struct.stv6110x_config*, align 8
  %8 = alloca %struct.stv6110x_devctl*, align 8
  store %struct.ngene_channel* %0, %struct.ngene_channel** %3, align 8
  %9 = load %struct.ngene_channel*, %struct.ngene_channel** %3, align 8
  %10 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %9, i32 0, i32 2
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  store %struct.device* %14, %struct.device** %4, align 8
  %15 = load %struct.ngene_channel*, %struct.ngene_channel** %3, align 8
  %16 = call %struct.i2c_adapter* @i2c_adapter_from_chan(%struct.ngene_channel* %15)
  store %struct.i2c_adapter* %16, %struct.i2c_adapter** %5, align 8
  %17 = load %struct.ngene_channel*, %struct.ngene_channel** %3, align 8
  %18 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %17, i32 0, i32 2
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %23 = load i64*, i64** %22, align 8
  %24 = load %struct.ngene_channel*, %struct.ngene_channel** %3, align 8
  %25 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds i64, i64* %23, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to %struct.stv090x_config*
  store %struct.stv090x_config* %29, %struct.stv090x_config** %6, align 8
  %30 = load %struct.ngene_channel*, %struct.ngene_channel** %3, align 8
  %31 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %30, i32 0, i32 2
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i64*, i64** %35, align 8
  %37 = load %struct.ngene_channel*, %struct.ngene_channel** %3, align 8
  %38 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds i64, i64* %36, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = inttoptr i64 %41 to %struct.stv6110x_config*
  store %struct.stv6110x_config* %42, %struct.stv6110x_config** %7, align 8
  %43 = load i32, i32* @stv6110x_attach, align 4
  %44 = load %struct.ngene_channel*, %struct.ngene_channel** %3, align 8
  %45 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.stv6110x_config*, %struct.stv6110x_config** %7, align 8
  %48 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %49 = call %struct.stv6110x_devctl* @dvb_attach(i32 %43, i32 %46, %struct.stv6110x_config* %47, %struct.i2c_adapter* %48)
  store %struct.stv6110x_devctl* %49, %struct.stv6110x_devctl** %8, align 8
  %50 = load %struct.stv6110x_devctl*, %struct.stv6110x_devctl** %8, align 8
  %51 = icmp eq %struct.stv6110x_devctl* %50, null
  br i1 %51, label %52, label %57

52:                                               ; preds = %1
  %53 = load %struct.device*, %struct.device** %4, align 8
  %54 = call i32 @dev_err(%struct.device* %53, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %55 = load i32, i32* @ENODEV, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %2, align 4
  br label %113

57:                                               ; preds = %1
  %58 = load %struct.stv6110x_devctl*, %struct.stv6110x_devctl** %8, align 8
  %59 = getelementptr inbounds %struct.stv6110x_devctl, %struct.stv6110x_devctl* %58, i32 0, i32 10
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.stv090x_config*, %struct.stv090x_config** %6, align 8
  %62 = getelementptr inbounds %struct.stv090x_config, %struct.stv090x_config* %61, i32 0, i32 10
  store i32 %60, i32* %62, align 4
  %63 = load %struct.stv6110x_devctl*, %struct.stv6110x_devctl** %8, align 8
  %64 = getelementptr inbounds %struct.stv6110x_devctl, %struct.stv6110x_devctl* %63, i32 0, i32 9
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.stv090x_config*, %struct.stv090x_config** %6, align 8
  %67 = getelementptr inbounds %struct.stv090x_config, %struct.stv090x_config* %66, i32 0, i32 9
  store i32 %65, i32* %67, align 4
  %68 = load %struct.stv6110x_devctl*, %struct.stv6110x_devctl** %8, align 8
  %69 = getelementptr inbounds %struct.stv6110x_devctl, %struct.stv6110x_devctl* %68, i32 0, i32 8
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.stv090x_config*, %struct.stv090x_config** %6, align 8
  %72 = getelementptr inbounds %struct.stv090x_config, %struct.stv090x_config* %71, i32 0, i32 8
  store i32 %70, i32* %72, align 4
  %73 = load %struct.stv6110x_devctl*, %struct.stv6110x_devctl** %8, align 8
  %74 = getelementptr inbounds %struct.stv6110x_devctl, %struct.stv6110x_devctl* %73, i32 0, i32 7
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.stv090x_config*, %struct.stv090x_config** %6, align 8
  %77 = getelementptr inbounds %struct.stv090x_config, %struct.stv090x_config* %76, i32 0, i32 7
  store i32 %75, i32* %77, align 4
  %78 = load %struct.stv6110x_devctl*, %struct.stv6110x_devctl** %8, align 8
  %79 = getelementptr inbounds %struct.stv6110x_devctl, %struct.stv6110x_devctl* %78, i32 0, i32 6
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.stv090x_config*, %struct.stv090x_config** %6, align 8
  %82 = getelementptr inbounds %struct.stv090x_config, %struct.stv090x_config* %81, i32 0, i32 6
  store i32 %80, i32* %82, align 4
  %83 = load %struct.stv6110x_devctl*, %struct.stv6110x_devctl** %8, align 8
  %84 = getelementptr inbounds %struct.stv6110x_devctl, %struct.stv6110x_devctl* %83, i32 0, i32 5
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.stv090x_config*, %struct.stv090x_config** %6, align 8
  %87 = getelementptr inbounds %struct.stv090x_config, %struct.stv090x_config* %86, i32 0, i32 5
  store i32 %85, i32* %87, align 4
  %88 = load %struct.stv6110x_devctl*, %struct.stv6110x_devctl** %8, align 8
  %89 = getelementptr inbounds %struct.stv6110x_devctl, %struct.stv6110x_devctl* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.stv090x_config*, %struct.stv090x_config** %6, align 8
  %92 = getelementptr inbounds %struct.stv090x_config, %struct.stv090x_config* %91, i32 0, i32 4
  store i32 %90, i32* %92, align 4
  %93 = load %struct.stv6110x_devctl*, %struct.stv6110x_devctl** %8, align 8
  %94 = getelementptr inbounds %struct.stv6110x_devctl, %struct.stv6110x_devctl* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.stv090x_config*, %struct.stv090x_config** %6, align 8
  %97 = getelementptr inbounds %struct.stv090x_config, %struct.stv090x_config* %96, i32 0, i32 3
  store i32 %95, i32* %97, align 4
  %98 = load %struct.stv6110x_devctl*, %struct.stv6110x_devctl** %8, align 8
  %99 = getelementptr inbounds %struct.stv6110x_devctl, %struct.stv6110x_devctl* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.stv090x_config*, %struct.stv090x_config** %6, align 8
  %102 = getelementptr inbounds %struct.stv090x_config, %struct.stv090x_config* %101, i32 0, i32 2
  store i32 %100, i32* %102, align 4
  %103 = load %struct.stv6110x_devctl*, %struct.stv6110x_devctl** %8, align 8
  %104 = getelementptr inbounds %struct.stv6110x_devctl, %struct.stv6110x_devctl* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.stv090x_config*, %struct.stv090x_config** %6, align 8
  %107 = getelementptr inbounds %struct.stv090x_config, %struct.stv090x_config* %106, i32 0, i32 1
  store i32 %105, i32* %107, align 4
  %108 = load %struct.stv6110x_devctl*, %struct.stv6110x_devctl** %8, align 8
  %109 = getelementptr inbounds %struct.stv6110x_devctl, %struct.stv6110x_devctl* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.stv090x_config*, %struct.stv090x_config** %6, align 8
  %112 = getelementptr inbounds %struct.stv090x_config, %struct.stv090x_config* %111, i32 0, i32 0
  store i32 %110, i32* %112, align 4
  store i32 0, i32* %2, align 4
  br label %113

113:                                              ; preds = %57, %52
  %114 = load i32, i32* %2, align 4
  ret i32 %114
}

declare dso_local %struct.i2c_adapter* @i2c_adapter_from_chan(%struct.ngene_channel*) #1

declare dso_local %struct.stv6110x_devctl* @dvb_attach(i32, i32, %struct.stv6110x_config*, %struct.i2c_adapter*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
