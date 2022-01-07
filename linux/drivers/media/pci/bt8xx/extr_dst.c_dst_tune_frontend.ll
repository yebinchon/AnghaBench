; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_dst.c_dst_tune_frontend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_dst.c_dst_tune_frontend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dtv_frontend_properties, %struct.dst_state* }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32 }
%struct.dst_state = type { i64, i32 }

@.str = private unnamed_addr constant [20 x i8] c"Set Frequency=[%d]\0A\00", align 1
@DST_TYPE_IS_SAT = common dso_local global i64 0, align 8
@DST_TYPE_HAS_OBS_REGS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Set Symbolrate=[%d]\0A\00", align 1
@DST_TYPE_IS_TERR = common dso_local global i64 0, align 8
@DST_TYPE_IS_CABLE = common dso_local global i64 0, align 8
@FE_TUNE_MODE_ONESHOT = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32, i32, i32*, i32*)* @dst_tune_frontend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dst_tune_frontend(%struct.dvb_frontend* %0, i32 %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.dvb_frontend*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.dst_state*, align 8
  %12 = alloca %struct.dtv_frontend_properties*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %13 = load %struct.dvb_frontend*, %struct.dvb_frontend** %6, align 8
  %14 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %13, i32 0, i32 1
  %15 = load %struct.dst_state*, %struct.dst_state** %14, align 8
  store %struct.dst_state* %15, %struct.dst_state** %11, align 8
  %16 = load %struct.dvb_frontend*, %struct.dvb_frontend** %6, align 8
  %17 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %16, i32 0, i32 0
  store %struct.dtv_frontend_properties* %17, %struct.dtv_frontend_properties** %12, align 8
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %104

20:                                               ; preds = %5
  %21 = load %struct.dst_state*, %struct.dst_state** %11, align 8
  %22 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %12, align 8
  %23 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @dst_set_freq(%struct.dst_state* %21, i32 %24)
  %26 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %12, align 8
  %27 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @dprintk(i32 3, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load %struct.dst_state*, %struct.dst_state** %11, align 8
  %31 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @DST_TYPE_IS_SAT, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %65

35:                                               ; preds = %20
  %36 = load %struct.dst_state*, %struct.dst_state** %11, align 8
  %37 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @DST_TYPE_HAS_OBS_REGS, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %35
  %43 = load %struct.dst_state*, %struct.dst_state** %11, align 8
  %44 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %12, align 8
  %45 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @dst_set_inversion(%struct.dst_state* %43, i32 %46)
  br label %48

48:                                               ; preds = %42, %35
  %49 = load %struct.dst_state*, %struct.dst_state** %11, align 8
  %50 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %12, align 8
  %51 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @dst_set_fec(%struct.dst_state* %49, i32 %52)
  %54 = load %struct.dst_state*, %struct.dst_state** %11, align 8
  %55 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %12, align 8
  %56 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @dst_set_symbolrate(%struct.dst_state* %54, i32 %57)
  %59 = load %struct.dst_state*, %struct.dst_state** %11, align 8
  %60 = call i32 @dst_set_polarization(%struct.dst_state* %59)
  %61 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %12, align 8
  %62 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @dprintk(i32 3, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %63)
  br label %101

65:                                               ; preds = %20
  %66 = load %struct.dst_state*, %struct.dst_state** %11, align 8
  %67 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @DST_TYPE_IS_TERR, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %77

71:                                               ; preds = %65
  %72 = load %struct.dst_state*, %struct.dst_state** %11, align 8
  %73 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %12, align 8
  %74 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @dst_set_bandwidth(%struct.dst_state* %72, i32 %75)
  br label %100

77:                                               ; preds = %65
  %78 = load %struct.dst_state*, %struct.dst_state** %11, align 8
  %79 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @DST_TYPE_IS_CABLE, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %99

83:                                               ; preds = %77
  %84 = load %struct.dst_state*, %struct.dst_state** %11, align 8
  %85 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %12, align 8
  %86 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @dst_set_fec(%struct.dst_state* %84, i32 %87)
  %89 = load %struct.dst_state*, %struct.dst_state** %11, align 8
  %90 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %12, align 8
  %91 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @dst_set_symbolrate(%struct.dst_state* %89, i32 %92)
  %94 = load %struct.dst_state*, %struct.dst_state** %11, align 8
  %95 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %12, align 8
  %96 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @dst_set_modulation(%struct.dst_state* %94, i32 %97)
  br label %99

99:                                               ; preds = %83, %77
  br label %100

100:                                              ; preds = %99, %71
  br label %101

101:                                              ; preds = %100, %48
  %102 = load %struct.dvb_frontend*, %struct.dvb_frontend** %6, align 8
  %103 = call i32 @dst_write_tuna(%struct.dvb_frontend* %102)
  br label %104

104:                                              ; preds = %101, %5
  %105 = load i32, i32* %8, align 4
  %106 = load i32, i32* @FE_TUNE_MODE_ONESHOT, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %113, label %109

109:                                              ; preds = %104
  %110 = load %struct.dvb_frontend*, %struct.dvb_frontend** %6, align 8
  %111 = load i32*, i32** %10, align 8
  %112 = call i32 @dst_read_status(%struct.dvb_frontend* %110, i32* %111)
  br label %113

113:                                              ; preds = %109, %104
  %114 = load i32, i32* @HZ, align 4
  %115 = sdiv i32 %114, 10
  %116 = load i32*, i32** %9, align 8
  store i32 %115, i32* %116, align 4
  ret i32 0
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

declare dso_local i32 @dst_read_status(%struct.dvb_frontend*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
