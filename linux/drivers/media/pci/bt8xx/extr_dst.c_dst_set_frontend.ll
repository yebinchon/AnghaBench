; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_dst.c_dst_set_frontend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_dst.c_dst_set_frontend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dst_state*, %struct.dtv_frontend_properties }
%struct.dst_state = type { i64, i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Set Frequency=[%d]\0A\00", align 1
@DST_TYPE_IS_SAT = common dso_local global i64 0, align 8
@DST_TYPE_HAS_OBS_REGS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Set Symbolrate=[%d]\0A\00", align 1
@DST_TYPE_IS_TERR = common dso_local global i64 0, align 8
@DST_TYPE_IS_CABLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @dst_set_frontend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dst_set_frontend(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.dtv_frontend_properties*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dst_state*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  %7 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %8 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %7, i32 0, i32 1
  store %struct.dtv_frontend_properties* %8, %struct.dtv_frontend_properties** %4, align 8
  %9 = load i32, i32* @EINVAL, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %5, align 4
  %11 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %12 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %11, i32 0, i32 0
  %13 = load %struct.dst_state*, %struct.dst_state** %12, align 8
  store %struct.dst_state* %13, %struct.dst_state** %6, align 8
  %14 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %15 = icmp ne %struct.dtv_frontend_properties* %14, null
  br i1 %15, label %16, label %105

16:                                               ; preds = %1
  %17 = load %struct.dst_state*, %struct.dst_state** %6, align 8
  %18 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %19 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @dst_set_freq(%struct.dst_state* %17, i32 %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %16
  %25 = load i32, i32* %5, align 4
  store i32 %25, i32* %2, align 4
  br label %107

26:                                               ; preds = %16
  %27 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %28 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @dprintk(i32 3, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load %struct.dst_state*, %struct.dst_state** %6, align 8
  %32 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @DST_TYPE_IS_SAT, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %66

36:                                               ; preds = %26
  %37 = load %struct.dst_state*, %struct.dst_state** %6, align 8
  %38 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @DST_TYPE_HAS_OBS_REGS, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %36
  %44 = load %struct.dst_state*, %struct.dst_state** %6, align 8
  %45 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %46 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @dst_set_inversion(%struct.dst_state* %44, i32 %47)
  br label %49

49:                                               ; preds = %43, %36
  %50 = load %struct.dst_state*, %struct.dst_state** %6, align 8
  %51 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %52 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @dst_set_fec(%struct.dst_state* %50, i32 %53)
  %55 = load %struct.dst_state*, %struct.dst_state** %6, align 8
  %56 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %57 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @dst_set_symbolrate(%struct.dst_state* %55, i32 %58)
  %60 = load %struct.dst_state*, %struct.dst_state** %6, align 8
  %61 = call i32 @dst_set_polarization(%struct.dst_state* %60)
  %62 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %63 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @dprintk(i32 3, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %64)
  br label %102

66:                                               ; preds = %26
  %67 = load %struct.dst_state*, %struct.dst_state** %6, align 8
  %68 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @DST_TYPE_IS_TERR, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %78

72:                                               ; preds = %66
  %73 = load %struct.dst_state*, %struct.dst_state** %6, align 8
  %74 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %75 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @dst_set_bandwidth(%struct.dst_state* %73, i32 %76)
  br label %101

78:                                               ; preds = %66
  %79 = load %struct.dst_state*, %struct.dst_state** %6, align 8
  %80 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @DST_TYPE_IS_CABLE, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %100

84:                                               ; preds = %78
  %85 = load %struct.dst_state*, %struct.dst_state** %6, align 8
  %86 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %87 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @dst_set_fec(%struct.dst_state* %85, i32 %88)
  %90 = load %struct.dst_state*, %struct.dst_state** %6, align 8
  %91 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %92 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @dst_set_symbolrate(%struct.dst_state* %90, i32 %93)
  %95 = load %struct.dst_state*, %struct.dst_state** %6, align 8
  %96 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %97 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @dst_set_modulation(%struct.dst_state* %95, i32 %98)
  br label %100

100:                                              ; preds = %84, %78
  br label %101

101:                                              ; preds = %100, %72
  br label %102

102:                                              ; preds = %101, %49
  %103 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %104 = call i32 @dst_write_tuna(%struct.dvb_frontend* %103)
  store i32 %104, i32* %5, align 4
  br label %105

105:                                              ; preds = %102, %1
  %106 = load i32, i32* %5, align 4
  store i32 %106, i32* %2, align 4
  br label %107

107:                                              ; preds = %105, %24
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

declare dso_local i32 @dst_set_freq(%struct.dst_state*, i32) #1

declare dso_local i32 @dprintk(i32, i8*, i32) #1

declare dso_local i32 @dst_set_inversion(%struct.dst_state*, i32) #1

declare dso_local i32 @dst_set_fec(%struct.dst_state*, i32) #1

declare dso_local i32 @dst_set_symbolrate(%struct.dst_state*, i32) #1

declare dso_local i32 @dst_set_polarization(%struct.dst_state*) #1

declare dso_local i32 @dst_set_bandwidth(%struct.dst_state*, i32) #1

declare dso_local i32 @dst_set_modulation(%struct.dst_state*, i32) #1

declare dso_local i32 @dst_write_tuna(%struct.dvb_frontend*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
