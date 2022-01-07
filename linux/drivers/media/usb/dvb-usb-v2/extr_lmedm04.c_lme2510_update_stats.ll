; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_lmedm04.c_lme2510_update_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_lmedm04.c_lme2510_update_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_adapter = type { %struct.dvb_frontend** }
%struct.dvb_frontend = type { %struct.dtv_frontend_properties }
%struct.dtv_frontend_properties = type { %struct.TYPE_15__, %struct.TYPE_13__, %struct.TYPE_23__, %struct.TYPE_21__, %struct.TYPE_19__, %struct.TYPE_17__ }
%struct.TYPE_15__ = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i8*, i8* }
%struct.TYPE_13__ = type { i32, %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i8*, i8* }
%struct.TYPE_23__ = type { i32, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i8* }
%struct.TYPE_21__ = type { i32, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i8* }
%struct.TYPE_19__ = type { i32, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i8* }
%struct.TYPE_17__ = type { i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i8* }
%struct.lme2510_state = type { i32, i32, i32, i64 }

@FE_SCALE_NOT_AVAILABLE = common dso_local global i8* null, align 8
@FE_SCALE_RELATIVE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dvb_usb_adapter*)* @lme2510_update_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lme2510_update_stats(%struct.dvb_usb_adapter* %0) #0 {
  %2 = alloca %struct.dvb_usb_adapter*, align 8
  %3 = alloca %struct.lme2510_state*, align 8
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca %struct.dtv_frontend_properties*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dvb_usb_adapter* %0, %struct.dvb_usb_adapter** %2, align 8
  %8 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %9 = call %struct.lme2510_state* @adap_to_priv(%struct.dvb_usb_adapter* %8)
  store %struct.lme2510_state* %9, %struct.lme2510_state** %3, align 8
  %10 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %11 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %10, i32 0, i32 0
  %12 = load %struct.dvb_frontend**, %struct.dvb_frontend*** %11, align 8
  %13 = getelementptr inbounds %struct.dvb_frontend*, %struct.dvb_frontend** %12, i64 0
  %14 = load %struct.dvb_frontend*, %struct.dvb_frontend** %13, align 8
  store %struct.dvb_frontend* %14, %struct.dvb_frontend** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %15 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %16 = icmp ne %struct.dvb_frontend* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  br label %165

18:                                               ; preds = %1
  %19 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %20 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %19, i32 0, i32 0
  store %struct.dtv_frontend_properties* %20, %struct.dtv_frontend_properties** %5, align 8
  %21 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %22 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %21, i32 0, i32 5
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 0
  store i32 1, i32* %23, align 8
  %24 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %25 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %26 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %25, i32 0, i32 5
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i64 0
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 0
  store i8* %24, i8** %30, align 8
  %31 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %32 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %31, i32 0, i32 4
  %33 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %32, i32 0, i32 0
  store i32 1, i32* %33, align 8
  %34 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %35 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %36 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %35, i32 0, i32 4
  %37 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i64 0
  %40 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %39, i32 0, i32 0
  store i8* %34, i8** %40, align 8
  %41 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %42 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %42, i32 0, i32 0
  store i32 1, i32* %43, align 8
  %44 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %45 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %46 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %48, i64 0
  %50 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %49, i32 0, i32 0
  store i8* %44, i8** %50, align 8
  %51 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %52 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %52, i32 0, i32 0
  store i32 1, i32* %53, align 8
  %54 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %55 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %56 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_22__*, %struct.TYPE_22__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %58, i64 0
  %60 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %59, i32 0, i32 0
  store i8* %54, i8** %60, align 8
  %61 = load %struct.lme2510_state*, %struct.lme2510_state** %3, align 8
  %62 = getelementptr inbounds %struct.lme2510_state, %struct.lme2510_state* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %86

65:                                               ; preds = %18
  %66 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %67 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 0
  store i32 1, i32* %68, align 8
  %69 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %70 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %71 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_24__*, %struct.TYPE_24__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %73, i64 0
  %75 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %74, i32 0, i32 1
  store i8* %69, i8** %75, align 8
  %76 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %77 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 0
  store i32 1, i32* %78, align 8
  %79 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %80 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %81 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i64 0
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 1
  store i8* %79, i8** %85, align 8
  br label %165

86:                                               ; preds = %18
  %87 = load %struct.lme2510_state*, %struct.lme2510_state** %3, align 8
  %88 = getelementptr inbounds %struct.lme2510_state, %struct.lme2510_state* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  switch i32 %89, label %126 [
    i32 131, label %90
    i32 128, label %101
    i32 129, label %101
    i32 130, label %117
  ]

90:                                               ; preds = %86
  %91 = load %struct.lme2510_state*, %struct.lme2510_state** %3, align 8
  %92 = getelementptr inbounds %struct.lme2510_state, %struct.lme2510_state* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = sub nsw i32 255, %93
  %95 = call i32 @reg_to_16bits(i32 %94)
  store i32 %95, i32* %6, align 4
  %96 = load %struct.lme2510_state*, %struct.lme2510_state** %3, align 8
  %97 = getelementptr inbounds %struct.lme2510_state, %struct.lme2510_state* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = sub nsw i32 255, %98
  %100 = call i32 @reg_to_16bits(i32 %99)
  store i32 %100, i32* %7, align 4
  br label %126

101:                                              ; preds = %86, %86
  %102 = load %struct.lme2510_state*, %struct.lme2510_state** %3, align 8
  %103 = getelementptr inbounds %struct.lme2510_state, %struct.lme2510_state* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = mul nsw i32 %104, 2
  %106 = shl i32 %105, 8
  %107 = mul nsw i32 %106, 5
  %108 = sdiv i32 %107, 4
  %109 = sub nsw i32 65535, %108
  store i32 %109, i32* %6, align 4
  %110 = load %struct.lme2510_state*, %struct.lme2510_state** %3, align 8
  %111 = getelementptr inbounds %struct.lme2510_state, %struct.lme2510_state* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = sub nsw i32 255, %112
  %114 = sub nsw i32 %113, 161
  %115 = mul nsw i32 %114, 3
  %116 = call i32 @reg_to_16bits(i32 %115)
  store i32 %116, i32* %7, align 4
  br label %126

117:                                              ; preds = %86
  %118 = load %struct.lme2510_state*, %struct.lme2510_state** %3, align 8
  %119 = getelementptr inbounds %struct.lme2510_state, %struct.lme2510_state* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @reg_to_16bits(i32 %120)
  store i32 %121, i32* %6, align 4
  %122 = load %struct.lme2510_state*, %struct.lme2510_state** %3, align 8
  %123 = getelementptr inbounds %struct.lme2510_state, %struct.lme2510_state* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @reg_to_16bits(i32 %124)
  store i32 %125, i32* %7, align 4
  br label %126

126:                                              ; preds = %117, %86, %101, %90
  %127 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %128 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i32 0, i32 0
  store i32 1, i32* %129, align 8
  %130 = load i8*, i8** @FE_SCALE_RELATIVE, align 8
  %131 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %132 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i32 0, i32 1
  %134 = load %struct.TYPE_24__*, %struct.TYPE_24__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %134, i64 0
  %136 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %135, i32 0, i32 1
  store i8* %130, i8** %136, align 8
  %137 = load i32, i32* %6, align 4
  %138 = sext i32 %137 to i64
  %139 = inttoptr i64 %138 to i8*
  %140 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %141 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %141, i32 0, i32 1
  %143 = load %struct.TYPE_24__*, %struct.TYPE_24__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %143, i64 0
  %145 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %144, i32 0, i32 0
  store i8* %139, i8** %145, align 8
  %146 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %147 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %147, i32 0, i32 0
  store i32 1, i32* %148, align 8
  %149 = load i8*, i8** @FE_SCALE_RELATIVE, align 8
  %150 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %151 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %151, i32 0, i32 1
  %153 = load %struct.TYPE_14__*, %struct.TYPE_14__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %153, i64 0
  %155 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %154, i32 0, i32 1
  store i8* %149, i8** %155, align 8
  %156 = load i32, i32* %7, align 4
  %157 = sext i32 %156 to i64
  %158 = inttoptr i64 %157 to i8*
  %159 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %160 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %160, i32 0, i32 1
  %162 = load %struct.TYPE_14__*, %struct.TYPE_14__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %162, i64 0
  %164 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %163, i32 0, i32 0
  store i8* %158, i8** %164, align 8
  br label %165

165:                                              ; preds = %126, %65, %17
  ret void
}

declare dso_local %struct.lme2510_state* @adap_to_priv(%struct.dvb_usb_adapter*) #1

declare dso_local i32 @reg_to_16bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
