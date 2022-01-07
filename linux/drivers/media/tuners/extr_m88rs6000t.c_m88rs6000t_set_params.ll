; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_m88rs6000t.c_m88rs6000t_set_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_m88rs6000t.c_m88rs6000t_set_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dtv_frontend_properties, %struct.m88rs6000t_dev* }
%struct.dtv_frontend_properties = type { i32, i32 }
%struct.m88rs6000t_dev = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"frequency=%d symbol_rate=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"failed=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @m88rs6000t_set_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m88rs6000t_set_params(%struct.dvb_frontend* %0) #0 {
  %2 = alloca %struct.dvb_frontend*, align 8
  %3 = alloca %struct.m88rs6000t_dev*, align 8
  %4 = alloca %struct.dtv_frontend_properties*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %2, align 8
  %9 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %10 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %9, i32 0, i32 1
  %11 = load %struct.m88rs6000t_dev*, %struct.m88rs6000t_dev** %10, align 8
  store %struct.m88rs6000t_dev* %11, %struct.m88rs6000t_dev** %3, align 8
  %12 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %13 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %12, i32 0, i32 0
  store %struct.dtv_frontend_properties* %13, %struct.dtv_frontend_properties** %4, align 8
  %14 = load %struct.m88rs6000t_dev*, %struct.m88rs6000t_dev** %3, align 8
  %15 = getelementptr inbounds %struct.m88rs6000t_dev, %struct.m88rs6000t_dev* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %19 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %22 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %17, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %23)
  %25 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %26 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp slt i32 %27, 5000000
  br i1 %28, label %29, label %30

29:                                               ; preds = %1
  store i32 3000, i32* %6, align 4
  br label %31

30:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %31

31:                                               ; preds = %30, %29
  %32 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %33 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %6, align 4
  %36 = add nsw i32 %34, %35
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %37, 500
  %39 = sdiv i32 %38, 1000
  store i32 %39, i32* %8, align 4
  %40 = load %struct.m88rs6000t_dev*, %struct.m88rs6000t_dev** %3, align 8
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @m88rs6000t_set_pll_freq(%struct.m88rs6000t_dev* %40, i32 %41)
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %31
  br label %76

46:                                               ; preds = %31
  %47 = load %struct.m88rs6000t_dev*, %struct.m88rs6000t_dev** %3, align 8
  %48 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %49 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = sdiv i32 %50, 1000
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @m88rs6000t_set_bb(%struct.m88rs6000t_dev* %47, i32 %51, i32 %52)
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %5, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %46
  br label %76

57:                                               ; preds = %46
  %58 = load %struct.m88rs6000t_dev*, %struct.m88rs6000t_dev** %3, align 8
  %59 = getelementptr inbounds %struct.m88rs6000t_dev, %struct.m88rs6000t_dev* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @regmap_write(i32 %60, i32 0, i32 1)
  store i32 %61, i32* %5, align 4
  %62 = load i32, i32* %5, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %57
  br label %76

65:                                               ; preds = %57
  %66 = load %struct.m88rs6000t_dev*, %struct.m88rs6000t_dev** %3, align 8
  %67 = getelementptr inbounds %struct.m88rs6000t_dev, %struct.m88rs6000t_dev* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @regmap_write(i32 %68, i32 0, i32 0)
  store i32 %69, i32* %5, align 4
  %70 = load i32, i32* %5, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %65
  br label %76

73:                                               ; preds = %65
  %74 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %75 = call i32 @m88rs6000t_set_demod_mclk(%struct.dvb_frontend* %74)
  store i32 %75, i32* %5, align 4
  br label %76

76:                                               ; preds = %73, %72, %64, %56, %45
  %77 = load i32, i32* %5, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %76
  %80 = load %struct.m88rs6000t_dev*, %struct.m88rs6000t_dev** %3, align 8
  %81 = getelementptr inbounds %struct.m88rs6000t_dev, %struct.m88rs6000t_dev* %80, i32 0, i32 0
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i32, i32* %5, align 4
  %85 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %83, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %84)
  br label %86

86:                                               ; preds = %79, %76
  %87 = load i32, i32* %5, align 4
  ret i32 %87
}

declare dso_local i32 @dev_dbg(i32*, i8*, i32, ...) #1

declare dso_local i32 @m88rs6000t_set_pll_freq(%struct.m88rs6000t_dev*, i32) #1

declare dso_local i32 @m88rs6000t_set_bb(%struct.m88rs6000t_dev*, i32, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @m88rs6000t_set_demod_mclk(%struct.dvb_frontend*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
