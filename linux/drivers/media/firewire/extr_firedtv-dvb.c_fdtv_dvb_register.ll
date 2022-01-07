; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/firewire/extr_firedtv-dvb.c_fdtv_dvb_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/firewire/extr_firedtv-dvb.c_fdtv_dvb_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.firedtv = type { i32, i32, %struct.TYPE_13__, %struct.TYPE_16__, %struct.TYPE_15__, i32, i32 }
%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_14__, i32*, i32, i32, %struct.firedtv* }
%struct.TYPE_14__ = type { i32 (%struct.TYPE_14__*, %struct.TYPE_15__*)*, i32 (%struct.TYPE_14__*, %struct.TYPE_15__*)*, i32 (%struct.TYPE_14__*, %struct.TYPE_15__*)*, i32 (%struct.TYPE_14__*)*, i64 }
%struct.TYPE_16__ = type { i32, i64, %struct.TYPE_14__* }
%struct.TYPE_15__ = type { i32 }

@THIS_MODULE = common dso_local global i32 0, align 4
@adapter_nr = common dso_local global i32 0, align 4
@fdtv_start_feed = common dso_local global i32 0, align 4
@fdtv_stop_feed = common dso_local global i32 0, align 4
@DMX_FRONTEND_0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Conditional Access Module not enabled\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"DVB initialization failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fdtv_dvb_register(%struct.firedtv* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.firedtv*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.firedtv* %0, %struct.firedtv** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.firedtv*, %struct.firedtv** %4, align 8
  %8 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %7, i32 0, i32 1
  %9 = load i8*, i8** %5, align 8
  %10 = load i32, i32* @THIS_MODULE, align 4
  %11 = load %struct.firedtv*, %struct.firedtv** %4, align 8
  %12 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @adapter_nr, align 4
  %15 = call i32 @dvb_register_adapter(i32* %8, i8* %9, i32 %10, i32 %13, i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %179

19:                                               ; preds = %2
  %20 = load %struct.firedtv*, %struct.firedtv** %4, align 8
  %21 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 4
  store i64 0, i64* %23, align 8
  %24 = load %struct.firedtv*, %struct.firedtv** %4, align 8
  %25 = load %struct.firedtv*, %struct.firedtv** %4, align 8
  %26 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 6
  store %struct.firedtv* %24, %struct.firedtv** %27, align 8
  %28 = load %struct.firedtv*, %struct.firedtv** %4, align 8
  %29 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 0
  store i32 16, i32* %30, align 8
  %31 = load %struct.firedtv*, %struct.firedtv** %4, align 8
  %32 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 1
  store i32 16, i32* %33, align 4
  %34 = load i32, i32* @fdtv_start_feed, align 4
  %35 = load %struct.firedtv*, %struct.firedtv** %4, align 8
  %36 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 5
  store i32 %34, i32* %37, align 4
  %38 = load i32, i32* @fdtv_stop_feed, align 4
  %39 = load %struct.firedtv*, %struct.firedtv** %4, align 8
  %40 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 4
  store i32 %38, i32* %41, align 8
  %42 = load %struct.firedtv*, %struct.firedtv** %4, align 8
  %43 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 3
  store i32* null, i32** %44, align 8
  %45 = load %struct.firedtv*, %struct.firedtv** %4, align 8
  %46 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %45, i32 0, i32 2
  %47 = call i32 @dvb_dmx_init(%struct.TYPE_13__* %46)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %19
  br label %175

51:                                               ; preds = %19
  %52 = load %struct.firedtv*, %struct.firedtv** %4, align 8
  %53 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 0
  store i32 16, i32* %54, align 8
  %55 = load %struct.firedtv*, %struct.firedtv** %4, align 8
  %56 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 2
  %58 = load %struct.firedtv*, %struct.firedtv** %4, align 8
  %59 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 2
  store %struct.TYPE_14__* %57, %struct.TYPE_14__** %60, align 8
  %61 = load %struct.firedtv*, %struct.firedtv** %4, align 8
  %62 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 1
  store i64 0, i64* %63, align 8
  %64 = load %struct.firedtv*, %struct.firedtv** %4, align 8
  %65 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %64, i32 0, i32 3
  %66 = load %struct.firedtv*, %struct.firedtv** %4, align 8
  %67 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %66, i32 0, i32 1
  %68 = call i32 @dvb_dmxdev_init(%struct.TYPE_16__* %65, i32* %67)
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* %6, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %51
  br label %171

72:                                               ; preds = %51
  %73 = load i32, i32* @DMX_FRONTEND_0, align 4
  %74 = load %struct.firedtv*, %struct.firedtv** %4, align 8
  %75 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %74, i32 0, i32 4
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 0
  store i32 %73, i32* %76, align 8
  %77 = load %struct.firedtv*, %struct.firedtv** %4, align 8
  %78 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 0
  %81 = load i32 (%struct.TYPE_14__*, %struct.TYPE_15__*)*, i32 (%struct.TYPE_14__*, %struct.TYPE_15__*)** %80, align 8
  %82 = load %struct.firedtv*, %struct.firedtv** %4, align 8
  %83 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 2
  %85 = load %struct.firedtv*, %struct.firedtv** %4, align 8
  %86 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %85, i32 0, i32 4
  %87 = call i32 %81(%struct.TYPE_14__* %84, %struct.TYPE_15__* %86)
  store i32 %87, i32* %6, align 4
  %88 = load i32, i32* %6, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %72
  br label %167

91:                                               ; preds = %72
  %92 = load %struct.firedtv*, %struct.firedtv** %4, align 8
  %93 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 1
  %96 = load i32 (%struct.TYPE_14__*, %struct.TYPE_15__*)*, i32 (%struct.TYPE_14__*, %struct.TYPE_15__*)** %95, align 8
  %97 = load %struct.firedtv*, %struct.firedtv** %4, align 8
  %98 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 2
  %100 = load %struct.firedtv*, %struct.firedtv** %4, align 8
  %101 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %100, i32 0, i32 4
  %102 = call i32 %96(%struct.TYPE_14__* %99, %struct.TYPE_15__* %101)
  store i32 %102, i32* %6, align 4
  %103 = load i32, i32* %6, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %91
  br label %155

106:                                              ; preds = %91
  %107 = load %struct.firedtv*, %struct.firedtv** %4, align 8
  %108 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %107, i32 0, i32 1
  %109 = load %struct.firedtv*, %struct.firedtv** %4, align 8
  %110 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %109, i32 0, i32 5
  %111 = load %struct.firedtv*, %struct.firedtv** %4, align 8
  %112 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 2
  %114 = call i32 @dvb_net_init(i32* %108, i32* %110, %struct.TYPE_14__* %113)
  store i32 %114, i32* %6, align 4
  %115 = load i32, i32* %6, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %106
  br label %145

118:                                              ; preds = %106
  %119 = load %struct.firedtv*, %struct.firedtv** %4, align 8
  %120 = load i8*, i8** %5, align 8
  %121 = call i32 @fdtv_frontend_init(%struct.firedtv* %119, i8* %120)
  %122 = load %struct.firedtv*, %struct.firedtv** %4, align 8
  %123 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %122, i32 0, i32 1
  %124 = load %struct.firedtv*, %struct.firedtv** %4, align 8
  %125 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %124, i32 0, i32 6
  %126 = call i32 @dvb_register_frontend(i32* %123, i32* %125)
  store i32 %126, i32* %6, align 4
  %127 = load i32, i32* %6, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %118
  br label %141

130:                                              ; preds = %118
  %131 = load %struct.firedtv*, %struct.firedtv** %4, align 8
  %132 = call i32 @fdtv_ca_register(%struct.firedtv* %131)
  store i32 %132, i32* %6, align 4
  %133 = load i32, i32* %6, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %140

135:                                              ; preds = %130
  %136 = load %struct.firedtv*, %struct.firedtv** %4, align 8
  %137 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @dev_info(i32 %138, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %140

140:                                              ; preds = %135, %130
  store i32 0, i32* %3, align 4
  br label %185

141:                                              ; preds = %129
  %142 = load %struct.firedtv*, %struct.firedtv** %4, align 8
  %143 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %142, i32 0, i32 5
  %144 = call i32 @dvb_net_release(i32* %143)
  br label %145

145:                                              ; preds = %141, %117
  %146 = load %struct.firedtv*, %struct.firedtv** %4, align 8
  %147 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %146, i32 0, i32 2
  %148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %147, i32 0, i32 2
  %149 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %148, i32 0, i32 3
  %150 = load i32 (%struct.TYPE_14__*)*, i32 (%struct.TYPE_14__*)** %149, align 8
  %151 = load %struct.firedtv*, %struct.firedtv** %4, align 8
  %152 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %151, i32 0, i32 2
  %153 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %152, i32 0, i32 2
  %154 = call i32 %150(%struct.TYPE_14__* %153)
  br label %155

155:                                              ; preds = %145, %105
  %156 = load %struct.firedtv*, %struct.firedtv** %4, align 8
  %157 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %156, i32 0, i32 2
  %158 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %157, i32 0, i32 2
  %159 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %158, i32 0, i32 2
  %160 = load i32 (%struct.TYPE_14__*, %struct.TYPE_15__*)*, i32 (%struct.TYPE_14__*, %struct.TYPE_15__*)** %159, align 8
  %161 = load %struct.firedtv*, %struct.firedtv** %4, align 8
  %162 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %161, i32 0, i32 2
  %163 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %162, i32 0, i32 2
  %164 = load %struct.firedtv*, %struct.firedtv** %4, align 8
  %165 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %164, i32 0, i32 4
  %166 = call i32 %160(%struct.TYPE_14__* %163, %struct.TYPE_15__* %165)
  br label %167

167:                                              ; preds = %155, %90
  %168 = load %struct.firedtv*, %struct.firedtv** %4, align 8
  %169 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %168, i32 0, i32 3
  %170 = call i32 @dvb_dmxdev_release(%struct.TYPE_16__* %169)
  br label %171

171:                                              ; preds = %167, %71
  %172 = load %struct.firedtv*, %struct.firedtv** %4, align 8
  %173 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %172, i32 0, i32 2
  %174 = call i32 @dvb_dmx_release(%struct.TYPE_13__* %173)
  br label %175

175:                                              ; preds = %171, %50
  %176 = load %struct.firedtv*, %struct.firedtv** %4, align 8
  %177 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %176, i32 0, i32 1
  %178 = call i32 @dvb_unregister_adapter(i32* %177)
  br label %179

179:                                              ; preds = %175, %18
  %180 = load %struct.firedtv*, %struct.firedtv** %4, align 8
  %181 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = call i32 @dev_err(i32 %182, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %184 = load i32, i32* %6, align 4
  store i32 %184, i32* %3, align 4
  br label %185

185:                                              ; preds = %179, %140
  %186 = load i32, i32* %3, align 4
  ret i32 %186
}

declare dso_local i32 @dvb_register_adapter(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @dvb_dmx_init(%struct.TYPE_13__*) #1

declare dso_local i32 @dvb_dmxdev_init(%struct.TYPE_16__*, i32*) #1

declare dso_local i32 @dvb_net_init(i32*, i32*, %struct.TYPE_14__*) #1

declare dso_local i32 @fdtv_frontend_init(%struct.firedtv*, i8*) #1

declare dso_local i32 @dvb_register_frontend(i32*, i32*) #1

declare dso_local i32 @fdtv_ca_register(%struct.firedtv*) #1

declare dso_local i32 @dev_info(i32, i8*) #1

declare dso_local i32 @dvb_net_release(i32*) #1

declare dso_local i32 @dvb_dmxdev_release(%struct.TYPE_16__*) #1

declare dso_local i32 @dvb_dmx_release(%struct.TYPE_13__*) #1

declare dso_local i32 @dvb_unregister_adapter(i32*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
