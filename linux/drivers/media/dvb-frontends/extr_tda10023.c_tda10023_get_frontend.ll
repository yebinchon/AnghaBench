; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_tda10023.c_tda10023_get_frontend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_tda10023.c_tda10023_get_frontend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.tda10023_state* }
%struct.tda10023_state = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.dtv_frontend_properties = type { i32, i32, i64, i32, i64 }

@verbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"DVB: TDA10023(%d): AFC (%d) %dHz\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"DVB: TDA10023(%d): [AFC (%d) %dHz]\0A\00", align 1
@QAM_16 = common dso_local global i64 0, align 8
@FEC_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.dtv_frontend_properties*)* @tda10023_get_frontend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tda10023_get_frontend(%struct.dvb_frontend* %0, %struct.dtv_frontend_properties* %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.dtv_frontend_properties*, align 8
  %5 = alloca %struct.tda10023_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store %struct.dtv_frontend_properties* %1, %struct.dtv_frontend_properties** %4, align 8
  %9 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %10 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %9, i32 0, i32 0
  %11 = load %struct.tda10023_state*, %struct.tda10023_state** %10, align 8
  store %struct.tda10023_state* %11, %struct.tda10023_state** %5, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.tda10023_state*, %struct.tda10023_state** %5, align 8
  %13 = call i32 @tda10023_readreg(%struct.tda10023_state* %12, i32 17)
  store i32 %13, i32* %6, align 4
  %14 = load %struct.tda10023_state*, %struct.tda10023_state** %5, align 8
  %15 = call i32 @tda10023_readreg(%struct.tda10023_state* %14, i32 25)
  store i32 %15, i32* %8, align 4
  %16 = load %struct.tda10023_state*, %struct.tda10023_state** %5, align 8
  %17 = call i32 @tda10023_readreg(%struct.tda10023_state* %16, i32 4)
  store i32 %17, i32* %7, align 4
  %18 = load i64, i64* @verbose, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %42

20:                                               ; preds = %2
  %21 = load i32, i32* %6, align 4
  %22 = and i32 %21, 2
  %23 = icmp ne i32 %22, 0
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0)
  %26 = load %struct.tda10023_state*, %struct.tda10023_state** %5, align 8
  %27 = getelementptr inbounds %struct.tda10023_state, %struct.tda10023_state* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %8, align 4
  %33 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %34 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = trunc i64 %35 to i32
  %37 = load i32, i32* %8, align 4
  %38 = mul nsw i32 %36, %37
  %39 = sub nsw i32 0, %38
  %40 = ashr i32 %39, 10
  %41 = call i32 @printk(i8* %25, i32 %31, i32 %32, i32 %40)
  br label %42

42:                                               ; preds = %20, %2
  %43 = load i32, i32* %7, align 4
  %44 = and i32 %43, 32
  %45 = icmp ne i32 %44, 0
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i32 0, i32 1
  %48 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %49 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load %struct.tda10023_state*, %struct.tda10023_state** %5, align 8
  %51 = getelementptr inbounds %struct.tda10023_state, %struct.tda10023_state* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = ashr i32 %52, 2
  %54 = and i32 %53, 7
  %55 = sext i32 %54 to i64
  %56 = load i64, i64* @QAM_16, align 8
  %57 = add nsw i64 %55, %56
  %58 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %59 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %58, i32 0, i32 4
  store i64 %57, i64* %59, align 8
  %60 = load i32, i32* @FEC_NONE, align 4
  %61 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %62 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %61, i32 0, i32 3
  store i32 %60, i32* %62, align 8
  %63 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %64 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %65, 31250
  %67 = sdiv i32 %66, 62500
  %68 = mul nsw i32 %67, 62500
  %69 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %70 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  %71 = load i32, i32* %6, align 4
  %72 = and i32 %71, 2
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %86

74:                                               ; preds = %42
  %75 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %76 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = trunc i64 %77 to i32
  %79 = load i32, i32* %8, align 4
  %80 = mul nsw i32 %78, %79
  %81 = ashr i32 %80, 10
  %82 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %83 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = sub nsw i32 %84, %81
  store i32 %85, i32* %83, align 4
  br label %86

86:                                               ; preds = %74, %42
  ret i32 0
}

declare dso_local i32 @tda10023_readreg(%struct.tda10023_state*, i32) #1

declare dso_local i32 @printk(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
