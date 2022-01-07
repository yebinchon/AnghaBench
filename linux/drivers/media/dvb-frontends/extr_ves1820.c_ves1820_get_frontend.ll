; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_ves1820.c_ves1820_get_frontend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_ves1820.c_ves1820_get_frontend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.ves1820_state* }
%struct.ves1820_state = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.dtv_frontend_properties = type { i32, i64, i32, i64, i8* }

@verbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"ves1820: AFC (%d) %dHz\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"ves1820: [AFC (%d) %dHz]\0A\00", align 1
@INVERSION_ON = common dso_local global i8* null, align 8
@INVERSION_OFF = common dso_local global i8* null, align 8
@QAM_16 = common dso_local global i64 0, align 8
@FEC_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.dtv_frontend_properties*)* @ves1820_get_frontend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ves1820_get_frontend(%struct.dvb_frontend* %0, %struct.dtv_frontend_properties* %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.dtv_frontend_properties*, align 8
  %5 = alloca %struct.ves1820_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store %struct.dtv_frontend_properties* %1, %struct.dtv_frontend_properties** %4, align 8
  %8 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %9 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %8, i32 0, i32 0
  %10 = load %struct.ves1820_state*, %struct.ves1820_state** %9, align 8
  store %struct.ves1820_state* %10, %struct.ves1820_state** %5, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.ves1820_state*, %struct.ves1820_state** %5, align 8
  %12 = call i32 @ves1820_readreg(%struct.ves1820_state* %11, i32 17)
  store i32 %12, i32* %6, align 4
  %13 = load %struct.ves1820_state*, %struct.ves1820_state** %5, align 8
  %14 = call i32 @ves1820_readreg(%struct.ves1820_state* %13, i32 25)
  store i32 %14, i32* %7, align 4
  %15 = load i64, i64* @verbose, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %33

17:                                               ; preds = %2
  %18 = load i32, i32* %6, align 4
  %19 = and i32 %18, 2
  %20 = icmp ne i32 %19, 0
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0)
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %25 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = trunc i64 %26 to i32
  %28 = load i32, i32* %7, align 4
  %29 = mul nsw i32 %27, %28
  %30 = sub nsw i32 0, %29
  %31 = ashr i32 %30, 10
  %32 = call i32 @printk(i8* %22, i32 %23, i32 %31)
  br label %33

33:                                               ; preds = %17, %2
  %34 = load %struct.ves1820_state*, %struct.ves1820_state** %5, align 8
  %35 = getelementptr inbounds %struct.ves1820_state, %struct.ves1820_state* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %54, label %40

40:                                               ; preds = %33
  %41 = load %struct.ves1820_state*, %struct.ves1820_state** %5, align 8
  %42 = getelementptr inbounds %struct.ves1820_state, %struct.ves1820_state* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = and i32 %43, 32
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = load i8*, i8** @INVERSION_ON, align 8
  br label %50

48:                                               ; preds = %40
  %49 = load i8*, i8** @INVERSION_OFF, align 8
  br label %50

50:                                               ; preds = %48, %46
  %51 = phi i8* [ %47, %46 ], [ %49, %48 ]
  %52 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %53 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %52, i32 0, i32 4
  store i8* %51, i8** %53, align 8
  br label %68

54:                                               ; preds = %33
  %55 = load %struct.ves1820_state*, %struct.ves1820_state** %5, align 8
  %56 = getelementptr inbounds %struct.ves1820_state, %struct.ves1820_state* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = and i32 %57, 32
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %54
  %61 = load i8*, i8** @INVERSION_ON, align 8
  br label %64

62:                                               ; preds = %54
  %63 = load i8*, i8** @INVERSION_OFF, align 8
  br label %64

64:                                               ; preds = %62, %60
  %65 = phi i8* [ %61, %60 ], [ %63, %62 ]
  %66 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %67 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %66, i32 0, i32 4
  store i8* %65, i8** %67, align 8
  br label %68

68:                                               ; preds = %64, %50
  %69 = load %struct.ves1820_state*, %struct.ves1820_state** %5, align 8
  %70 = getelementptr inbounds %struct.ves1820_state, %struct.ves1820_state* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = ashr i32 %71, 2
  %73 = and i32 %72, 7
  %74 = sext i32 %73 to i64
  %75 = load i64, i64* @QAM_16, align 8
  %76 = add nsw i64 %74, %75
  %77 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %78 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %77, i32 0, i32 3
  store i64 %76, i64* %78, align 8
  %79 = load i32, i32* @FEC_NONE, align 4
  %80 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %81 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %80, i32 0, i32 2
  store i32 %79, i32* %81, align 8
  %82 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %83 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = add nsw i32 %84, 31250
  %86 = sdiv i32 %85, 62500
  %87 = mul nsw i32 %86, 62500
  %88 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %89 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 8
  %90 = load i32, i32* %6, align 4
  %91 = and i32 %90, 2
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %105

93:                                               ; preds = %68
  %94 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %95 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = trunc i64 %96 to i32
  %98 = load i32, i32* %7, align 4
  %99 = mul nsw i32 %97, %98
  %100 = ashr i32 %99, 10
  %101 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %102 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = sub nsw i32 %103, %100
  store i32 %104, i32* %102, align 8
  br label %105

105:                                              ; preds = %93, %68
  ret i32 0
}

declare dso_local i32 @ves1820_readreg(%struct.ves1820_state*, i32) #1

declare dso_local i32 @printk(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
