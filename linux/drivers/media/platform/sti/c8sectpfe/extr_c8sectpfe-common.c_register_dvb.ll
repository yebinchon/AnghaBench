; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sti/c8sectpfe/extr_c8sectpfe-common.c_register_dvb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sti/c8sectpfe/extr_c8sectpfe-common.c_register_dvb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stdemux = type { %struct.TYPE_16__, %struct.TYPE_15__, %struct.TYPE_18__, %struct.TYPE_18__, i64 }
%struct.TYPE_16__ = type { %struct.TYPE_17__, i8*, i32*, i8*, i8*, i8*, %struct.stdemux* }
%struct.TYPE_17__ = type { i32, i32 (%struct.TYPE_17__*, %struct.TYPE_18__*)*, i32 (%struct.TYPE_17__*, %struct.TYPE_18__*)*, i32 (%struct.TYPE_17__*, %struct.TYPE_18__*)* }
%struct.TYPE_15__ = type { i64, %struct.TYPE_17__*, i8* }
%struct.TYPE_18__ = type { i64 }
%struct.dvb_adapter = type { i32 }
%struct.c8sectpfei = type { i32 }

@DMX_TS_FILTERING = common dso_local global i32 0, align 4
@DMX_SECTION_FILTERING = common dso_local global i32 0, align 4
@DMX_MEMORY_BASED_FILTERING = common dso_local global i32 0, align 4
@C8SECTPFE_MAXCHANNEL = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [34 x i8] c"dvb_dmx_init failed (errno = %d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"dvb_dmxdev_init failed (errno = %d)\0A\00", align 1
@DMX_FRONTEND_0 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [34 x i8] c"add_frontend failed (errno = %d)\0A\00", align 1
@DMX_MEMORY_FE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [26 x i8] c"add_frontend failed (%d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"connect_frontend (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stdemux*, %struct.dvb_adapter*, i8*, i8*, %struct.c8sectpfei*)* @register_dvb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @register_dvb(%struct.stdemux* %0, %struct.dvb_adapter* %1, i8* %2, i8* %3, %struct.c8sectpfei* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.stdemux*, align 8
  %8 = alloca %struct.dvb_adapter*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.c8sectpfei*, align 8
  %12 = alloca i32, align 4
  store %struct.stdemux* %0, %struct.stdemux** %7, align 8
  store %struct.dvb_adapter* %1, %struct.dvb_adapter** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store %struct.c8sectpfei* %4, %struct.c8sectpfei** %11, align 8
  %13 = load i32, i32* @DMX_TS_FILTERING, align 4
  %14 = load i32, i32* @DMX_SECTION_FILTERING, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @DMX_MEMORY_BASED_FILTERING, align 4
  %17 = or i32 %15, %16
  %18 = load %struct.stdemux*, %struct.stdemux** %7, align 8
  %19 = getelementptr inbounds %struct.stdemux, %struct.stdemux* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 0
  store i32 %17, i32* %21, align 8
  %22 = load %struct.stdemux*, %struct.stdemux** %7, align 8
  %23 = load %struct.stdemux*, %struct.stdemux** %7, align 8
  %24 = getelementptr inbounds %struct.stdemux, %struct.stdemux* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 6
  store %struct.stdemux* %22, %struct.stdemux** %25, align 8
  %26 = load i8*, i8** @C8SECTPFE_MAXCHANNEL, align 8
  %27 = load %struct.stdemux*, %struct.stdemux** %7, align 8
  %28 = getelementptr inbounds %struct.stdemux, %struct.stdemux* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 1
  store i8* %26, i8** %29, align 8
  %30 = load i8*, i8** @C8SECTPFE_MAXCHANNEL, align 8
  %31 = load %struct.stdemux*, %struct.stdemux** %7, align 8
  %32 = getelementptr inbounds %struct.stdemux, %struct.stdemux* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 5
  store i8* %30, i8** %33, align 8
  %34 = load i8*, i8** %9, align 8
  %35 = load %struct.stdemux*, %struct.stdemux** %7, align 8
  %36 = getelementptr inbounds %struct.stdemux, %struct.stdemux* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 4
  store i8* %34, i8** %37, align 8
  %38 = load i8*, i8** %10, align 8
  %39 = load %struct.stdemux*, %struct.stdemux** %7, align 8
  %40 = getelementptr inbounds %struct.stdemux, %struct.stdemux* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 3
  store i8* %38, i8** %41, align 8
  %42 = load %struct.stdemux*, %struct.stdemux** %7, align 8
  %43 = getelementptr inbounds %struct.stdemux, %struct.stdemux* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 2
  store i32* null, i32** %44, align 8
  %45 = load %struct.stdemux*, %struct.stdemux** %7, align 8
  %46 = getelementptr inbounds %struct.stdemux, %struct.stdemux* %45, i32 0, i32 0
  %47 = call i32 @dvb_dmx_init(%struct.TYPE_16__* %46)
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* %12, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %5
  %51 = load %struct.c8sectpfei*, %struct.c8sectpfei** %11, align 8
  %52 = getelementptr inbounds %struct.c8sectpfei, %struct.c8sectpfei* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %12, align 4
  %55 = call i32 @dev_err(i32 %53, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %54)
  br label %190

56:                                               ; preds = %5
  %57 = load %struct.stdemux*, %struct.stdemux** %7, align 8
  %58 = getelementptr inbounds %struct.stdemux, %struct.stdemux* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 1
  %60 = load i8*, i8** %59, align 8
  %61 = load %struct.stdemux*, %struct.stdemux** %7, align 8
  %62 = getelementptr inbounds %struct.stdemux, %struct.stdemux* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 2
  store i8* %60, i8** %63, align 8
  %64 = load %struct.stdemux*, %struct.stdemux** %7, align 8
  %65 = getelementptr inbounds %struct.stdemux, %struct.stdemux* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 0
  %67 = load %struct.stdemux*, %struct.stdemux** %7, align 8
  %68 = getelementptr inbounds %struct.stdemux, %struct.stdemux* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 1
  store %struct.TYPE_17__* %66, %struct.TYPE_17__** %69, align 8
  %70 = load %struct.stdemux*, %struct.stdemux** %7, align 8
  %71 = getelementptr inbounds %struct.stdemux, %struct.stdemux* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 0
  store i64 0, i64* %72, align 8
  %73 = load %struct.stdemux*, %struct.stdemux** %7, align 8
  %74 = getelementptr inbounds %struct.stdemux, %struct.stdemux* %73, i32 0, i32 1
  %75 = load %struct.dvb_adapter*, %struct.dvb_adapter** %8, align 8
  %76 = call i32 @dvb_dmxdev_init(%struct.TYPE_15__* %74, %struct.dvb_adapter* %75)
  store i32 %76, i32* %12, align 4
  %77 = load i32, i32* %12, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %56
  %80 = load %struct.c8sectpfei*, %struct.c8sectpfei** %11, align 8
  %81 = getelementptr inbounds %struct.c8sectpfei, %struct.c8sectpfei* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %12, align 4
  %84 = call i32 @dev_err(i32 %82, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %83)
  br label %186

85:                                               ; preds = %56
  %86 = load i64, i64* @DMX_FRONTEND_0, align 8
  %87 = load %struct.stdemux*, %struct.stdemux** %7, align 8
  %88 = getelementptr inbounds %struct.stdemux, %struct.stdemux* %87, i32 0, i32 4
  %89 = load i64, i64* %88, align 8
  %90 = add nsw i64 %86, %89
  %91 = load %struct.stdemux*, %struct.stdemux** %7, align 8
  %92 = getelementptr inbounds %struct.stdemux, %struct.stdemux* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %92, i32 0, i32 0
  store i64 %90, i64* %93, align 8
  %94 = load %struct.stdemux*, %struct.stdemux** %7, align 8
  %95 = getelementptr inbounds %struct.stdemux, %struct.stdemux* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %96, i32 0, i32 1
  %98 = load i32 (%struct.TYPE_17__*, %struct.TYPE_18__*)*, i32 (%struct.TYPE_17__*, %struct.TYPE_18__*)** %97, align 8
  %99 = load %struct.stdemux*, %struct.stdemux** %7, align 8
  %100 = getelementptr inbounds %struct.stdemux, %struct.stdemux* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i32 0, i32 0
  %102 = load %struct.stdemux*, %struct.stdemux** %7, align 8
  %103 = getelementptr inbounds %struct.stdemux, %struct.stdemux* %102, i32 0, i32 2
  %104 = call i32 %98(%struct.TYPE_17__* %101, %struct.TYPE_18__* %103)
  store i32 %104, i32* %12, align 4
  %105 = load i32, i32* %12, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %85
  %108 = load %struct.c8sectpfei*, %struct.c8sectpfei** %11, align 8
  %109 = getelementptr inbounds %struct.c8sectpfei, %struct.c8sectpfei* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* %12, align 4
  %112 = call i32 @dev_err(i32 %110, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %111)
  br label %182

113:                                              ; preds = %85
  %114 = load i64, i64* @DMX_MEMORY_FE, align 8
  %115 = load %struct.stdemux*, %struct.stdemux** %7, align 8
  %116 = getelementptr inbounds %struct.stdemux, %struct.stdemux* %115, i32 0, i32 3
  %117 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %116, i32 0, i32 0
  store i64 %114, i64* %117, align 8
  %118 = load %struct.stdemux*, %struct.stdemux** %7, align 8
  %119 = getelementptr inbounds %struct.stdemux, %struct.stdemux* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %120, i32 0, i32 1
  %122 = load i32 (%struct.TYPE_17__*, %struct.TYPE_18__*)*, i32 (%struct.TYPE_17__*, %struct.TYPE_18__*)** %121, align 8
  %123 = load %struct.stdemux*, %struct.stdemux** %7, align 8
  %124 = getelementptr inbounds %struct.stdemux, %struct.stdemux* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %124, i32 0, i32 0
  %126 = load %struct.stdemux*, %struct.stdemux** %7, align 8
  %127 = getelementptr inbounds %struct.stdemux, %struct.stdemux* %126, i32 0, i32 3
  %128 = call i32 %122(%struct.TYPE_17__* %125, %struct.TYPE_18__* %127)
  store i32 %128, i32* %12, align 4
  %129 = load i32, i32* %12, align 4
  %130 = icmp slt i32 %129, 0
  br i1 %130, label %131, label %137

131:                                              ; preds = %113
  %132 = load %struct.c8sectpfei*, %struct.c8sectpfei** %11, align 8
  %133 = getelementptr inbounds %struct.c8sectpfei, %struct.c8sectpfei* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* %12, align 4
  %136 = call i32 @dev_err(i32 %134, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %135)
  br label %170

137:                                              ; preds = %113
  %138 = load %struct.stdemux*, %struct.stdemux** %7, align 8
  %139 = getelementptr inbounds %struct.stdemux, %struct.stdemux* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %140, i32 0, i32 2
  %142 = load i32 (%struct.TYPE_17__*, %struct.TYPE_18__*)*, i32 (%struct.TYPE_17__*, %struct.TYPE_18__*)** %141, align 8
  %143 = load %struct.stdemux*, %struct.stdemux** %7, align 8
  %144 = getelementptr inbounds %struct.stdemux, %struct.stdemux* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %144, i32 0, i32 0
  %146 = load %struct.stdemux*, %struct.stdemux** %7, align 8
  %147 = getelementptr inbounds %struct.stdemux, %struct.stdemux* %146, i32 0, i32 2
  %148 = call i32 %142(%struct.TYPE_17__* %145, %struct.TYPE_18__* %147)
  store i32 %148, i32* %12, align 4
  %149 = load i32, i32* %12, align 4
  %150 = icmp slt i32 %149, 0
  br i1 %150, label %151, label %157

151:                                              ; preds = %137
  %152 = load %struct.c8sectpfei*, %struct.c8sectpfei** %11, align 8
  %153 = getelementptr inbounds %struct.c8sectpfei, %struct.c8sectpfei* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* %12, align 4
  %156 = call i32 @dev_err(i32 %154, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %155)
  br label %158

157:                                              ; preds = %137
  store i32 0, i32* %6, align 4
  br label %192

158:                                              ; preds = %151
  %159 = load %struct.stdemux*, %struct.stdemux** %7, align 8
  %160 = getelementptr inbounds %struct.stdemux, %struct.stdemux* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %161, i32 0, i32 3
  %163 = load i32 (%struct.TYPE_17__*, %struct.TYPE_18__*)*, i32 (%struct.TYPE_17__*, %struct.TYPE_18__*)** %162, align 8
  %164 = load %struct.stdemux*, %struct.stdemux** %7, align 8
  %165 = getelementptr inbounds %struct.stdemux, %struct.stdemux* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %165, i32 0, i32 0
  %167 = load %struct.stdemux*, %struct.stdemux** %7, align 8
  %168 = getelementptr inbounds %struct.stdemux, %struct.stdemux* %167, i32 0, i32 3
  %169 = call i32 %163(%struct.TYPE_17__* %166, %struct.TYPE_18__* %168)
  br label %170

170:                                              ; preds = %158, %131
  %171 = load %struct.stdemux*, %struct.stdemux** %7, align 8
  %172 = getelementptr inbounds %struct.stdemux, %struct.stdemux* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %173, i32 0, i32 3
  %175 = load i32 (%struct.TYPE_17__*, %struct.TYPE_18__*)*, i32 (%struct.TYPE_17__*, %struct.TYPE_18__*)** %174, align 8
  %176 = load %struct.stdemux*, %struct.stdemux** %7, align 8
  %177 = getelementptr inbounds %struct.stdemux, %struct.stdemux* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %177, i32 0, i32 0
  %179 = load %struct.stdemux*, %struct.stdemux** %7, align 8
  %180 = getelementptr inbounds %struct.stdemux, %struct.stdemux* %179, i32 0, i32 2
  %181 = call i32 %175(%struct.TYPE_17__* %178, %struct.TYPE_18__* %180)
  br label %182

182:                                              ; preds = %170, %107
  %183 = load %struct.stdemux*, %struct.stdemux** %7, align 8
  %184 = getelementptr inbounds %struct.stdemux, %struct.stdemux* %183, i32 0, i32 1
  %185 = call i32 @dvb_dmxdev_release(%struct.TYPE_15__* %184)
  br label %186

186:                                              ; preds = %182, %79
  %187 = load %struct.stdemux*, %struct.stdemux** %7, align 8
  %188 = getelementptr inbounds %struct.stdemux, %struct.stdemux* %187, i32 0, i32 0
  %189 = call i32 @dvb_dmx_release(%struct.TYPE_16__* %188)
  br label %190

190:                                              ; preds = %186, %50
  %191 = load i32, i32* %12, align 4
  store i32 %191, i32* %6, align 4
  br label %192

192:                                              ; preds = %190, %157
  %193 = load i32, i32* %6, align 4
  ret i32 %193
}

declare dso_local i32 @dvb_dmx_init(%struct.TYPE_16__*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @dvb_dmxdev_init(%struct.TYPE_15__*, %struct.dvb_adapter*) #1

declare dso_local i32 @dvb_dmxdev_release(%struct.TYPE_15__*) #1

declare dso_local i32 @dvb_dmx_release(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
