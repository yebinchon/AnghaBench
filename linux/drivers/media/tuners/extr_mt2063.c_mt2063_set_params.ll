; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_mt2063.c_mt2063_set_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_mt2063.c_mt2063_set_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.mt2063_state*, %struct.dtv_frontend_properties }
%struct.mt2063_state = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MT2063_OFFAIR_COFDM = common dso_local global i32 0, align 4
@MT2063_CABLE_QAM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"Tuning to frequency: %d, bandwidth %d, foffset %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @mt2063_set_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt2063_set_params(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.dtv_frontend_properties*, align 8
  %5 = alloca %struct.mt2063_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  %12 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %13 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %12, i32 0, i32 1
  store %struct.dtv_frontend_properties* %13, %struct.dtv_frontend_properties** %4, align 8
  %14 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %15 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %14, i32 0, i32 0
  %16 = load %struct.mt2063_state*, %struct.mt2063_state** %15, align 8
  store %struct.mt2063_state* %16, %struct.mt2063_state** %5, align 8
  %17 = load %struct.mt2063_state*, %struct.mt2063_state** %5, align 8
  %18 = getelementptr inbounds %struct.mt2063_state, %struct.mt2063_state* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %1
  %22 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %23 = call i32 @mt2063_init(%struct.dvb_frontend* %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %2, align 4
  br label %122

28:                                               ; preds = %21
  br label %29

29:                                               ; preds = %28, %1
  %30 = call i32 (i32, i8*, ...) @dprintk(i32 2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %32 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %122

38:                                               ; preds = %29
  %39 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %40 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp sle i32 %41, 6000000
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  store i32 6000000, i32* %9, align 4
  br label %52

44:                                               ; preds = %38
  %45 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %46 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp sle i32 %47, 7000000
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  store i32 7000000, i32* %9, align 4
  br label %51

50:                                               ; preds = %44
  store i32 8000000, i32* %9, align 4
  br label %51

51:                                               ; preds = %50, %49
  br label %52

52:                                               ; preds = %51, %43
  %53 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %54 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  switch i32 %55, label %66 [
    i32 128, label %56
    i32 130, label %61
    i32 129, label %61
  ]

56:                                               ; preds = %52
  %57 = load i32, i32* @MT2063_OFFAIR_COFDM, align 4
  store i32 %57, i32* %11, align 4
  store i32 36125000, i32* %7, align 4
  %58 = load i32, i32* %9, align 4
  %59 = sdiv i32 %58, 2
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %8, align 4
  br label %69

61:                                               ; preds = %52, %52
  %62 = load i32, i32* @MT2063_CABLE_QAM, align 4
  store i32 %62, i32* %11, align 4
  store i32 36125000, i32* %7, align 4
  %63 = load i32, i32* %9, align 4
  %64 = sdiv i32 %63, 2
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %8, align 4
  br label %69

66:                                               ; preds = %52
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %2, align 4
  br label %122

69:                                               ; preds = %61, %56
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* %9, align 4
  %73 = sdiv i32 %72, 2
  %74 = add nsw i32 %71, %73
  %75 = sub nsw i32 %70, %74
  store i32 %75, i32* %10, align 4
  %76 = load %struct.mt2063_state*, %struct.mt2063_state** %5, align 8
  %77 = getelementptr inbounds %struct.mt2063_state, %struct.mt2063_state* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  store i32 125000, i32* %78, align 4
  %79 = load i32, i32* %10, align 4
  %80 = load %struct.mt2063_state*, %struct.mt2063_state** %5, align 8
  %81 = getelementptr inbounds %struct.mt2063_state, %struct.mt2063_state* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 1
  store i32 %79, i32* %82, align 4
  %83 = load i32, i32* %9, align 4
  %84 = add nsw i32 %83, 750000
  %85 = load %struct.mt2063_state*, %struct.mt2063_state** %5, align 8
  %86 = getelementptr inbounds %struct.mt2063_state, %struct.mt2063_state* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 2
  store i32 %84, i32* %87, align 4
  %88 = load %struct.mt2063_state*, %struct.mt2063_state** %5, align 8
  %89 = load i32, i32* %11, align 4
  %90 = call i32 @MT2063_SetReceiverMode(%struct.mt2063_state* %88, i32 %89)
  store i32 %90, i32* %6, align 4
  %91 = load i32, i32* %6, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %69
  %94 = load i32, i32* %6, align 4
  store i32 %94, i32* %2, align 4
  br label %122

95:                                               ; preds = %69
  %96 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %97 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %9, align 4
  %100 = load i32, i32* %8, align 4
  %101 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %98, i32 %99, i32 %100)
  %102 = load %struct.mt2063_state*, %struct.mt2063_state** %5, align 8
  %103 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %104 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %8, align 4
  %107 = load i32, i32* %9, align 4
  %108 = sdiv i32 %107, 2
  %109 = add nsw i32 %106, %108
  %110 = add nsw i32 %105, %109
  %111 = call i32 @MT2063_Tune(%struct.mt2063_state* %102, i32 %110)
  store i32 %111, i32* %6, align 4
  %112 = load i32, i32* %6, align 4
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %95
  %115 = load i32, i32* %6, align 4
  store i32 %115, i32* %2, align 4
  br label %122

116:                                              ; preds = %95
  %117 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %118 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.mt2063_state*, %struct.mt2063_state** %5, align 8
  %121 = getelementptr inbounds %struct.mt2063_state, %struct.mt2063_state* %120, i32 0, i32 0
  store i32 %119, i32* %121, align 4
  store i32 0, i32* %2, align 4
  br label %122

122:                                              ; preds = %116, %114, %93, %66, %35, %26
  %123 = load i32, i32* %2, align 4
  ret i32 %123
}

declare dso_local i32 @mt2063_init(%struct.dvb_frontend*) #1

declare dso_local i32 @dprintk(i32, i8*, ...) #1

declare dso_local i32 @MT2063_SetReceiverMode(%struct.mt2063_state*, i32) #1

declare dso_local i32 @MT2063_Tune(%struct.mt2063_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
