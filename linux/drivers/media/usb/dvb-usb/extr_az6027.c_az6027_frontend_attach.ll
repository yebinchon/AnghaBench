; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_az6027.c_az6027_frontend_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_az6027.c_az6027_frontend_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.dvb_usb_adapter = type { %struct.TYPE_12__*, %struct.TYPE_10__* }
%struct.TYPE_12__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"adap = %p, dev = %p\0A\00", align 1
@az6027_stb0899_config = common dso_local global %struct.TYPE_15__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"found STB0899 DVB-S/DVB-S2 frontend @0x%02x\00", align 1
@az6027_stb6100_config = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"found STB6100 DVB-S/DVB-S2 frontend @0x%02x\00", align 1
@az6027_set_voltage = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"no front-end attached\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_adapter*)* @az6027_frontend_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @az6027_frontend_attach(%struct.dvb_usb_adapter* %0) #0 {
  %2 = alloca %struct.dvb_usb_adapter*, align 8
  store %struct.dvb_usb_adapter* %0, %struct.dvb_usb_adapter** %2, align 8
  %3 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %4 = call i32 @az6027_frontend_poweron(%struct.dvb_usb_adapter* %3)
  %5 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %6 = call i32 @az6027_frontend_reset(%struct.dvb_usb_adapter* %5)
  %7 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %8 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %9 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %8, i32 0, i32 1
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %11 = call i32 (i8*, %struct.dvb_usb_adapter*, ...) @deb_info(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), %struct.dvb_usb_adapter* %7, %struct.TYPE_10__* %10)
  %12 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %13 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %12, i32 0, i32 1
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = call %struct.TYPE_13__* @stb0899_attach(%struct.TYPE_15__* @az6027_stb0899_config, i32* %15)
  %17 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %18 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %17, i32 0, i32 0
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i64 0
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  store %struct.TYPE_13__* %16, %struct.TYPE_13__** %21, align 8
  %22 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %23 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %22, i32 0, i32 0
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i64 0
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %26, align 8
  %28 = icmp ne %struct.TYPE_13__* %27, null
  br i1 %28, label %29, label %69

29:                                               ; preds = %1
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @az6027_stb0899_config, i32 0, i32 0), align 4
  %31 = sext i32 %30 to i64
  %32 = inttoptr i64 %31 to %struct.dvb_usb_adapter*
  %33 = call i32 (i8*, %struct.dvb_usb_adapter*, ...) @deb_info(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), %struct.dvb_usb_adapter* %32)
  %34 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %35 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %34, i32 0, i32 0
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i64 0
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %38, align 8
  %40 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %41 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %40, i32 0, i32 1
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = call i64 @stb6100_attach(%struct.TYPE_13__* %39, %struct.TYPE_14__* @az6027_stb6100_config, i32* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %62

46:                                               ; preds = %29
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @az6027_stb6100_config, i32 0, i32 0), align 4
  %48 = sext i32 %47 to i64
  %49 = inttoptr i64 %48 to %struct.dvb_usb_adapter*
  %50 = call i32 (i8*, %struct.dvb_usb_adapter*, ...) @deb_info(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), %struct.dvb_usb_adapter* %49)
  %51 = load i32, i32* @az6027_set_voltage, align 4
  %52 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %53 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %52, i32 0, i32 0
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i64 0
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 0
  store i32 %51, i32* %59, align 4
  %60 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %61 = call i32 @az6027_ci_init(%struct.dvb_usb_adapter* %60)
  br label %68

62:                                               ; preds = %29
  %63 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %64 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %63, i32 0, i32 0
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i64 0
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 0
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %67, align 8
  br label %68

68:                                               ; preds = %62, %46
  br label %71

69:                                               ; preds = %1
  %70 = call i32 @warn(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  br label %71

71:                                               ; preds = %69, %68
  %72 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %73 = call i32 @az6027_frontend_tsbypass(%struct.dvb_usb_adapter* %72, i32 0)
  ret i32 0
}

declare dso_local i32 @az6027_frontend_poweron(%struct.dvb_usb_adapter*) #1

declare dso_local i32 @az6027_frontend_reset(%struct.dvb_usb_adapter*) #1

declare dso_local i32 @deb_info(i8*, %struct.dvb_usb_adapter*, ...) #1

declare dso_local %struct.TYPE_13__* @stb0899_attach(%struct.TYPE_15__*, i32*) #1

declare dso_local i64 @stb6100_attach(%struct.TYPE_13__*, %struct.TYPE_14__*, i32*) #1

declare dso_local i32 @az6027_ci_init(%struct.dvb_usb_adapter*) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i32 @az6027_frontend_tsbypass(%struct.dvb_usb_adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
