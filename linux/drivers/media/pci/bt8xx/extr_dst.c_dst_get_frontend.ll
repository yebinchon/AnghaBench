; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_dst.c_dst_get_frontend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_dst.c_dst_get_frontend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dst_state* }
%struct.dst_state = type { i64, i32, i32, i32, i32, i32 }
%struct.dtv_frontend_properties = type { i32, i8*, i32, i32, i32, i32 }

@DST_TYPE_IS_SAT = common dso_local global i64 0, align 8
@DST_TYPE_HAS_OBS_REGS = common dso_local global i32 0, align 4
@DST_TYPE_IS_TERR = common dso_local global i64 0, align 8
@DST_TYPE_IS_CABLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.dtv_frontend_properties*)* @dst_get_frontend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dst_get_frontend(%struct.dvb_frontend* %0, %struct.dtv_frontend_properties* %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.dtv_frontend_properties*, align 8
  %5 = alloca %struct.dst_state*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store %struct.dtv_frontend_properties* %1, %struct.dtv_frontend_properties** %4, align 8
  %6 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %7 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %6, i32 0, i32 0
  %8 = load %struct.dst_state*, %struct.dst_state** %7, align 8
  store %struct.dst_state* %8, %struct.dst_state** %5, align 8
  %9 = load %struct.dst_state*, %struct.dst_state** %5, align 8
  %10 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %9, i32 0, i32 5
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %13 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %12, i32 0, i32 5
  store i32 %11, i32* %13, align 4
  %14 = load %struct.dst_state*, %struct.dst_state** %5, align 8
  %15 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @DST_TYPE_IS_SAT, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %42

19:                                               ; preds = %2
  %20 = load %struct.dst_state*, %struct.dst_state** %5, align 8
  %21 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @DST_TYPE_HAS_OBS_REGS, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %19
  %27 = load %struct.dst_state*, %struct.dst_state** %5, align 8
  %28 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %31 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %30, i32 0, i32 4
  store i32 %29, i32* %31, align 8
  br label %32

32:                                               ; preds = %26, %19
  %33 = load %struct.dst_state*, %struct.dst_state** %5, align 8
  %34 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %37 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 8
  %38 = load %struct.dst_state*, %struct.dst_state** %5, align 8
  %39 = call i8* @dst_get_fec(%struct.dst_state* %38)
  %40 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %41 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %40, i32 0, i32 1
  store i8* %39, i8** %41, align 8
  br label %76

42:                                               ; preds = %2
  %43 = load %struct.dst_state*, %struct.dst_state** %5, align 8
  %44 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @DST_TYPE_IS_TERR, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %42
  %49 = load %struct.dst_state*, %struct.dst_state** %5, align 8
  %50 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %53 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %52, i32 0, i32 3
  store i32 %51, i32* %53, align 4
  br label %75

54:                                               ; preds = %42
  %55 = load %struct.dst_state*, %struct.dst_state** %5, align 8
  %56 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @DST_TYPE_IS_CABLE, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %74

60:                                               ; preds = %54
  %61 = load %struct.dst_state*, %struct.dst_state** %5, align 8
  %62 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %65 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 8
  %66 = load %struct.dst_state*, %struct.dst_state** %5, align 8
  %67 = call i8* @dst_get_fec(%struct.dst_state* %66)
  %68 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %69 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %68, i32 0, i32 1
  store i8* %67, i8** %69, align 8
  %70 = load %struct.dst_state*, %struct.dst_state** %5, align 8
  %71 = call i32 @dst_get_modulation(%struct.dst_state* %70)
  %72 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %73 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  br label %74

74:                                               ; preds = %60, %54
  br label %75

75:                                               ; preds = %74, %48
  br label %76

76:                                               ; preds = %75, %32
  ret i32 0
}

declare dso_local i8* @dst_get_fec(%struct.dst_state*) #1

declare dso_local i32 @dst_get_modulation(%struct.dst_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
