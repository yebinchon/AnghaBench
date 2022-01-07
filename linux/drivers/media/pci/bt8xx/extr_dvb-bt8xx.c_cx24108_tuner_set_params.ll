; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_dvb-bt8xx.c_cx24108_tuner_set_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_dvb-bt8xx.c_cx24108_tuner_set_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dtv_frontend_properties }
%struct.dtv_frontend_properties = type { i32 }

@__const.cx24108_tuner_set_params.osci = private unnamed_addr constant [11 x i32] [i32 950000, i32 1019000, i32 1075000, i32 1178000, i32 1296000, i32 1432000, i32 1576000, i32 1718000, i32 1856000, i32 2036000, i32 2150000], align 16
@__const.cx24108_tuner_set_params.bandsel = private unnamed_addr constant [11 x i32] [i32 0, i32 131072, i32 262144, i32 1050624, i32 1052672, i32 1056768, i32 1064960, i32 1081344, i32 1114112, i32 1179648, i32 1310720], align 16
@.str = private unnamed_addr constant [47 x i8] c"cx24108 debug: entering SetTunerFreq, freq=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"cx24108 debug: select vco #%d (f=%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"cx24108 debug: pump=%d, n=%d, a=%d\0A\00", align 1
@XTAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @cx24108_tuner_set_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx24108_tuner_set_params(%struct.dvb_frontend* %0) #0 {
  %2 = alloca %struct.dvb_frontend*, align 8
  %3 = alloca %struct.dtv_frontend_properties*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [11 x i32], align 16
  %12 = alloca [11 x i32], align 16
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %2, align 8
  %13 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %14 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %13, i32 0, i32 0
  store %struct.dtv_frontend_properties* %14, %struct.dtv_frontend_properties** %3, align 8
  %15 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %3, align 8
  %16 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %4, align 4
  %18 = bitcast [11 x i32]* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %18, i8* align 16 bitcast ([11 x i32]* @__const.cx24108_tuner_set_params.osci to i8*), i64 44, i1 false)
  %19 = bitcast [11 x i32]* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %19, i8* align 16 bitcast ([11 x i32]* @__const.cx24108_tuner_set_params.bandsel to i8*), i64 44, i1 false)
  %20 = load i32, i32* %4, align 4
  %21 = call i32 (i8*, i32, ...) @dprintk(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* %4, align 4
  %23 = icmp slt i32 %22, 950000
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  store i32 950000, i32* %4, align 4
  br label %30

25:                                               ; preds = %1
  %26 = load i32, i32* %4, align 4
  %27 = icmp sgt i32 %26, 2150000
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store i32 2150000, i32* %4, align 4
  br label %29

29:                                               ; preds = %28, %25
  br label %30

30:                                               ; preds = %29, %24
  store i32 1, i32* %5, align 4
  br label %31

31:                                               ; preds = %47, %30
  %32 = load i32, i32* %5, align 4
  %33 = getelementptr inbounds [11 x i32], [11 x i32]* %11, i64 0, i64 0
  %34 = call i32 @ARRAY_SIZE(i32* %33)
  %35 = sub nsw i32 %34, 1
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %31
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [11 x i32], [11 x i32]* %11, i64 0, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %4, align 4
  %43 = icmp slt i32 %41, %42
  br label %44

44:                                               ; preds = %37, %31
  %45 = phi i1 [ false, %31 ], [ %43, %37 ]
  br i1 %45, label %46, label %50

46:                                               ; preds = %44
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %5, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %5, align 4
  br label %31

50:                                               ; preds = %44
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* %4, align 4
  %53 = call i32 (i8*, i32, ...) @dprintk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %51, i32 %52)
  %54 = load i32, i32* %5, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [11 x i32], [11 x i32]* %12, i64 0, i64 %55
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %5, align 4
  %59 = icmp sle i32 %58, 2
  %60 = zext i1 %59 to i64
  %61 = select i1 %59, i32 2, i32 1
  %62 = load i32, i32* %4, align 4
  %63 = mul nsw i32 %61, %62
  %64 = sext i32 %63 to i64
  %65 = mul nsw i64 %64, 10
  %66 = sdiv i64 %65, 10111
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %7, align 4
  %69 = srem i32 %68, 32
  store i32 %69, i32* %6, align 4
  %70 = load i32, i32* %7, align 4
  %71 = sdiv i32 %70, 32
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* %6, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %50
  %75 = load i32, i32* %7, align 4
  %76 = add nsw i32 %75, -1
  store i32 %76, i32* %7, align 4
  br label %77

77:                                               ; preds = %74, %50
  %78 = load i32, i32* %4, align 4
  %79 = load i32, i32* %5, align 4
  %80 = sub nsw i32 %79, 1
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [11 x i32], [11 x i32]* %11, i64 0, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %5, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [11 x i32], [11 x i32]* %11, i64 0, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %83, %87
  %89 = sdiv i32 %88, 2
  %90 = icmp slt i32 %78, %89
  %91 = zext i1 %90 to i32
  store i32 %91, i32* %8, align 4
  %92 = load i32, i32* %8, align 4
  %93 = icmp ne i32 %92, 0
  %94 = zext i1 %93 to i64
  %95 = select i1 %93, i32 1, i32 2
  %96 = shl i32 %95, 25
  %97 = or i32 -134217728, %96
  %98 = load i32, i32* %7, align 4
  %99 = and i32 %98, 511
  %100 = shl i32 %99, 16
  %101 = or i32 %97, %100
  %102 = load i32, i32* %6, align 4
  %103 = and i32 %102, 31
  %104 = shl i32 %103, 11
  %105 = or i32 %101, %104
  store i32 %105, i32* %10, align 4
  %106 = load i32, i32* %8, align 4
  %107 = load i32, i32* %7, align 4
  %108 = load i32, i32* %6, align 4
  %109 = call i32 (i8*, i32, ...) @dprintk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %106, i32 %107, i32 %108)
  %110 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %111 = load i32, i32* %9, align 4
  %112 = call i32 @cx24110_pll_write(%struct.dvb_frontend* %110, i32 %111)
  %113 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %114 = call i32 @cx24110_pll_write(%struct.dvb_frontend* %113, i32 1342963712)
  %115 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %116 = call i32 @cx24110_pll_write(%struct.dvb_frontend* %115, i32 -2081294336)
  %117 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %118 = load i32, i32* %10, align 4
  %119 = call i32 @cx24110_pll_write(%struct.dvb_frontend* %117, i32 %118)
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @dprintk(i8*, i32, ...) #2

declare dso_local i32 @ARRAY_SIZE(i32*) #2

declare dso_local i32 @cx24110_pll_write(%struct.dvb_frontend*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
