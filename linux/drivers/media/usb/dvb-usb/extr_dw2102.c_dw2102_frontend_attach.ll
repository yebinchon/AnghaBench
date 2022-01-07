; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_dw2102.c_dw2102_frontend_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_dw2102.c_dw2102_frontend_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32* }
%struct.dvb_usb_adapter = type { %struct.TYPE_8__*, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i8* }
%struct.TYPE_6__ = type { i32 }

@dw2102_properties = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@dw2102_serit_i2c_algo = common dso_local global i32 0, align 4
@si21xx_attach = common dso_local global i32 0, align 4
@serit_sp1511lhb_config = common dso_local global i32 0, align 4
@dw210x_set_voltage = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [17 x i8] c"Attached si21xx!\00", align 1
@dw2102_earda_i2c_algo = common dso_local global i32 0, align 4
@stv0288_attach = common dso_local global i32 0, align 4
@earda_config = common dso_local global i32 0, align 4
@stb6000_attach = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Attached stv0288!\00", align 1
@dw2102_i2c_algo = common dso_local global i32 0, align 4
@stv0299_attach = common dso_local global i32 0, align 4
@sharp_z0194a_config = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"Attached stv0299!\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_adapter*)* @dw2102_frontend_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dw2102_frontend_attach(%struct.dvb_usb_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_usb_adapter*, align 8
  store %struct.dvb_usb_adapter* %0, %struct.dvb_usb_adapter** %3, align 8
  %4 = load i32*, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @dw2102_properties, i32 0, i32 0), align 8
  %5 = icmp eq i32* %4, @dw2102_serit_i2c_algo
  br i1 %5, label %6, label %39

6:                                                ; preds = %1
  %7 = load i32, i32* @si21xx_attach, align 4
  %8 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %9 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %8, i32 0, i32 1
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = ptrtoint i32* %11 to i32
  %13 = call i8* (i32, %struct.TYPE_10__*, i32, ...) @dvb_attach(i32 %7, %struct.TYPE_10__* bitcast (i32* @serit_sp1511lhb_config to %struct.TYPE_10__*), i32 %12)
  %14 = bitcast i8* %13 to %struct.TYPE_10__*
  %15 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %16 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %15, i32 0, i32 0
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i64 0
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  store %struct.TYPE_10__* %14, %struct.TYPE_10__** %19, align 8
  %20 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %21 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %20, i32 0, i32 0
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i64 0
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %24, align 8
  %26 = icmp ne %struct.TYPE_10__* %25, null
  br i1 %26, label %27, label %38

27:                                               ; preds = %6
  %28 = load i8*, i8** @dw210x_set_voltage, align 8
  %29 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %30 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %29, i32 0, i32 0
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i64 0
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  store i8* %28, i8** %36, align 8
  %37 = call i32 @info(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %129

38:                                               ; preds = %6
  br label %39

39:                                               ; preds = %38, %1
  %40 = load i32*, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @dw2102_properties, i32 0, i32 0), align 8
  %41 = icmp eq i32* %40, @dw2102_earda_i2c_algo
  br i1 %41, label %42, label %90

42:                                               ; preds = %39
  %43 = load i32, i32* @stv0288_attach, align 4
  %44 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %45 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %44, i32 0, i32 1
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = ptrtoint i32* %47 to i32
  %49 = call i8* (i32, %struct.TYPE_10__*, i32, ...) @dvb_attach(i32 %43, %struct.TYPE_10__* bitcast (i32* @earda_config to %struct.TYPE_10__*), i32 %48)
  %50 = bitcast i8* %49 to %struct.TYPE_10__*
  %51 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %52 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %51, i32 0, i32 0
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i64 0
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  store %struct.TYPE_10__* %50, %struct.TYPE_10__** %55, align 8
  %56 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %57 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %56, i32 0, i32 0
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i64 0
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %60, align 8
  %62 = icmp ne %struct.TYPE_10__* %61, null
  br i1 %62, label %63, label %89

63:                                               ; preds = %42
  %64 = load i32, i32* @stb6000_attach, align 4
  %65 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %66 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %65, i32 0, i32 0
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i64 0
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %69, align 8
  %71 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %72 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %71, i32 0, i32 1
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = call i8* (i32, %struct.TYPE_10__*, i32, ...) @dvb_attach(i32 %64, %struct.TYPE_10__* %70, i32 97, i32* %74)
  %76 = icmp ne i8* %75, null
  br i1 %76, label %77, label %88

77:                                               ; preds = %63
  %78 = load i8*, i8** @dw210x_set_voltage, align 8
  %79 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %80 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %79, i32 0, i32 0
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i64 0
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  store i8* %78, i8** %86, align 8
  %87 = call i32 @info(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %129

88:                                               ; preds = %63
  br label %89

89:                                               ; preds = %88, %42
  br label %90

90:                                               ; preds = %89, %39
  %91 = load i32*, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @dw2102_properties, i32 0, i32 0), align 8
  %92 = icmp eq i32* %91, @dw2102_i2c_algo
  br i1 %92, label %93, label %126

93:                                               ; preds = %90
  %94 = load i32, i32* @stv0299_attach, align 4
  %95 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %96 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %95, i32 0, i32 1
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = ptrtoint i32* %98 to i32
  %100 = call i8* (i32, %struct.TYPE_10__*, i32, ...) @dvb_attach(i32 %94, %struct.TYPE_10__* bitcast (i32* @sharp_z0194a_config to %struct.TYPE_10__*), i32 %99)
  %101 = bitcast i8* %100 to %struct.TYPE_10__*
  %102 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %103 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %102, i32 0, i32 0
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i64 0
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 0
  store %struct.TYPE_10__* %101, %struct.TYPE_10__** %106, align 8
  %107 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %108 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %107, i32 0, i32 0
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i64 0
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %111, align 8
  %113 = icmp ne %struct.TYPE_10__* %112, null
  br i1 %113, label %114, label %125

114:                                              ; preds = %93
  %115 = load i8*, i8** @dw210x_set_voltage, align 8
  %116 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %117 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %116, i32 0, i32 0
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i64 0
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 0
  store i8* %115, i8** %123, align 8
  %124 = call i32 @info(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %129

125:                                              ; preds = %93
  br label %126

126:                                              ; preds = %125, %90
  %127 = load i32, i32* @EIO, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %2, align 4
  br label %129

129:                                              ; preds = %126, %114, %77, %27
  %130 = load i32, i32* %2, align 4
  ret i32 %130
}

declare dso_local i8* @dvb_attach(i32, %struct.TYPE_10__*, i32, ...) #1

declare dso_local i32 @info(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
