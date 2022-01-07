; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_tda10021.c_tda10021_get_frontend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_tda10021.c_tda10021_get_frontend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.tda10021_state* }
%struct.tda10021_state = type { i32, %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.dtv_frontend_properties = type { i32, i64, i32, i64, i32 }

@verbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"DVB: TDA10021(%d): AFC (%d) %dHz\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"DVB: TDA10021(%d): [AFC (%d) %dHz]\0A\00", align 1
@INVERSION_ON = common dso_local global i32 0, align 4
@INVERSION_OFF = common dso_local global i32 0, align 4
@QAM_16 = common dso_local global i64 0, align 8
@FEC_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.dtv_frontend_properties*)* @tda10021_get_frontend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tda10021_get_frontend(%struct.dvb_frontend* %0, %struct.dtv_frontend_properties* %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.dtv_frontend_properties*, align 8
  %5 = alloca %struct.tda10021_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store %struct.dtv_frontend_properties* %1, %struct.dtv_frontend_properties** %4, align 8
  %8 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %9 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %8, i32 0, i32 0
  %10 = load %struct.tda10021_state*, %struct.tda10021_state** %9, align 8
  store %struct.tda10021_state* %10, %struct.tda10021_state** %5, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.tda10021_state*, %struct.tda10021_state** %5, align 8
  %12 = call i32 @tda10021_readreg(%struct.tda10021_state* %11, i32 17)
  store i32 %12, i32* %6, align 4
  %13 = load %struct.tda10021_state*, %struct.tda10021_state** %5, align 8
  %14 = call i32 @tda10021_readreg(%struct.tda10021_state* %13, i32 25)
  store i32 %14, i32* %7, align 4
  %15 = load i64, i64* @verbose, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %39

17:                                               ; preds = %2
  %18 = load i32, i32* %6, align 4
  %19 = and i32 %18, 2
  %20 = icmp ne i32 %19, 0
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0)
  %23 = load %struct.tda10021_state*, %struct.tda10021_state** %5, align 8
  %24 = getelementptr inbounds %struct.tda10021_state, %struct.tda10021_state* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %31 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = trunc i64 %32 to i32
  %34 = load i32, i32* %7, align 4
  %35 = mul nsw i32 %33, %34
  %36 = sub nsw i32 0, %35
  %37 = ashr i32 %36, 10
  %38 = call i32 @printk(i8* %22, i32 %28, i32 %29, i32 %37)
  br label %39

39:                                               ; preds = %17, %2
  %40 = load %struct.tda10021_state*, %struct.tda10021_state** %5, align 8
  %41 = getelementptr inbounds %struct.tda10021_state, %struct.tda10021_state* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = and i32 %42, 32
  %44 = icmp eq i32 %43, 32
  %45 = zext i1 %44 to i32
  %46 = load %struct.tda10021_state*, %struct.tda10021_state** %5, align 8
  %47 = getelementptr inbounds %struct.tda10021_state, %struct.tda10021_state* %46, i32 0, i32 1
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  %52 = zext i1 %51 to i32
  %53 = xor i32 %45, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %39
  %56 = load i32, i32* @INVERSION_ON, align 4
  br label %59

57:                                               ; preds = %39
  %58 = load i32, i32* @INVERSION_OFF, align 4
  br label %59

59:                                               ; preds = %57, %55
  %60 = phi i32 [ %56, %55 ], [ %58, %57 ]
  %61 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %62 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %61, i32 0, i32 4
  store i32 %60, i32* %62, align 8
  %63 = load %struct.tda10021_state*, %struct.tda10021_state** %5, align 8
  %64 = getelementptr inbounds %struct.tda10021_state, %struct.tda10021_state* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = ashr i32 %65, 2
  %67 = and i32 %66, 7
  %68 = sext i32 %67 to i64
  %69 = load i64, i64* @QAM_16, align 8
  %70 = add nsw i64 %68, %69
  %71 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %72 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %71, i32 0, i32 3
  store i64 %70, i64* %72, align 8
  %73 = load i32, i32* @FEC_NONE, align 4
  %74 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %75 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %74, i32 0, i32 2
  store i32 %73, i32* %75, align 8
  %76 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %77 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = add nsw i32 %78, 31250
  %80 = sdiv i32 %79, 62500
  %81 = mul nsw i32 %80, 62500
  %82 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %83 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 8
  %84 = load i32, i32* %6, align 4
  %85 = and i32 %84, 2
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %99

87:                                               ; preds = %59
  %88 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %89 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = trunc i64 %90 to i32
  %92 = load i32, i32* %7, align 4
  %93 = mul nsw i32 %91, %92
  %94 = ashr i32 %93, 10
  %95 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %96 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = sub nsw i32 %97, %94
  store i32 %98, i32* %96, align 8
  br label %99

99:                                               ; preds = %87, %59
  ret i32 0
}

declare dso_local i32 @tda10021_readreg(%struct.tda10021_state*, i32) #1

declare dso_local i32 @printk(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
