; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_tc90522.c_tc90522_set_if_agc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_tc90522.c_tc90522_set_if_agc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_2__, %struct.tc90522_state* }
%struct.TYPE_2__ = type { i64* }
%struct.tc90522_state = type { i32 }
%struct.reg_val = type { i32, i32, i32 }

@SYS_ISDBS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32)* @tc90522_set_if_agc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tc90522_set_if_agc(%struct.dvb_frontend* %0, i32 %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [4 x %struct.reg_val], align 16
  %6 = alloca [3 x %struct.reg_val], align 16
  %7 = alloca %struct.tc90522_state*, align 8
  %8 = alloca %struct.reg_val*, align 8
  %9 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = bitcast [4 x %struct.reg_val]* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %10, i8 0, i64 48, i1 false)
  %11 = bitcast i8* %10 to [4 x %struct.reg_val]*
  %12 = getelementptr inbounds [4 x %struct.reg_val], [4 x %struct.reg_val]* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.reg_val, %struct.reg_val* %12, i32 0, i32 0
  store i32 10, i32* %13, align 16
  %14 = getelementptr inbounds [4 x %struct.reg_val], [4 x %struct.reg_val]* %11, i32 0, i32 1
  %15 = getelementptr inbounds %struct.reg_val, %struct.reg_val* %14, i32 0, i32 0
  store i32 16, i32* %15, align 4
  %16 = getelementptr inbounds %struct.reg_val, %struct.reg_val* %14, i32 0, i32 1
  store i32 48, i32* %16, align 4
  %17 = getelementptr inbounds [4 x %struct.reg_val], [4 x %struct.reg_val]* %11, i32 0, i32 2
  %18 = getelementptr inbounds %struct.reg_val, %struct.reg_val* %17, i32 0, i32 0
  store i32 17, i32* %18, align 8
  %19 = getelementptr inbounds [4 x %struct.reg_val], [4 x %struct.reg_val]* %11, i32 0, i32 3
  %20 = getelementptr inbounds %struct.reg_val, %struct.reg_val* %19, i32 0, i32 0
  store i32 3, i32* %20, align 4
  %21 = getelementptr inbounds %struct.reg_val, %struct.reg_val* %19, i32 0, i32 1
  store i32 1, i32* %21, align 4
  %22 = bitcast [3 x %struct.reg_val]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %22, i8 0, i64 36, i1 false)
  %23 = bitcast i8* %22 to [3 x %struct.reg_val]*
  %24 = getelementptr inbounds [3 x %struct.reg_val], [3 x %struct.reg_val]* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.reg_val, %struct.reg_val* %24, i32 0, i32 0
  store i32 37, i32* %25, align 16
  %26 = getelementptr inbounds [3 x %struct.reg_val], [3 x %struct.reg_val]* %23, i32 0, i32 1
  %27 = getelementptr inbounds %struct.reg_val, %struct.reg_val* %26, i32 0, i32 0
  store i32 35, i32* %27, align 4
  %28 = getelementptr inbounds %struct.reg_val, %struct.reg_val* %26, i32 0, i32 1
  store i32 76, i32* %28, align 4
  %29 = getelementptr inbounds [3 x %struct.reg_val], [3 x %struct.reg_val]* %23, i32 0, i32 2
  %30 = getelementptr inbounds %struct.reg_val, %struct.reg_val* %29, i32 0, i32 0
  store i32 1, i32* %30, align 8
  %31 = getelementptr inbounds %struct.reg_val, %struct.reg_val* %29, i32 0, i32 1
  store i32 64, i32* %31, align 4
  %32 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %33 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %32, i32 0, i32 1
  %34 = load %struct.tc90522_state*, %struct.tc90522_state** %33, align 8
  store %struct.tc90522_state* %34, %struct.tc90522_state** %7, align 8
  %35 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %36 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64*, i64** %37, align 8
  %39 = getelementptr inbounds i64, i64* %38, i64 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @SYS_ISDBS, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %73

43:                                               ; preds = %2
  %44 = load i32, i32* %4, align 4
  %45 = icmp ne i32 %44, 0
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i32 255, i32 0
  %48 = getelementptr inbounds [4 x %struct.reg_val], [4 x %struct.reg_val]* %5, i64 0, i64 0
  %49 = getelementptr inbounds %struct.reg_val, %struct.reg_val* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 8
  %50 = getelementptr inbounds [4 x %struct.reg_val], [4 x %struct.reg_val]* %5, i64 0, i64 1
  %51 = getelementptr inbounds %struct.reg_val, %struct.reg_val* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, 128
  store i32 %53, i32* %51, align 4
  %54 = load i32, i32* %4, align 4
  %55 = icmp ne i32 %54, 0
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i32 1, i32 0
  %58 = getelementptr inbounds [4 x %struct.reg_val], [4 x %struct.reg_val]* %5, i64 0, i64 1
  %59 = getelementptr inbounds %struct.reg_val, %struct.reg_val* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 4
  %62 = load i32, i32* %4, align 4
  %63 = icmp ne i32 %62, 0
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i32 64, i32 0
  %66 = getelementptr inbounds [4 x %struct.reg_val], [4 x %struct.reg_val]* %5, i64 0, i64 2
  %67 = getelementptr inbounds %struct.reg_val, %struct.reg_val* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = or i32 %68, %65
  store i32 %69, i32* %67, align 8
  %70 = getelementptr inbounds [4 x %struct.reg_val], [4 x %struct.reg_val]* %5, i64 0, i64 0
  store %struct.reg_val* %70, %struct.reg_val** %8, align 8
  %71 = getelementptr inbounds [4 x %struct.reg_val], [4 x %struct.reg_val]* %5, i64 0, i64 0
  %72 = call i32 @ARRAY_SIZE(%struct.reg_val* %71)
  store i32 %72, i32* %9, align 4
  br label %91

73:                                               ; preds = %2
  %74 = load i32, i32* %4, align 4
  %75 = icmp ne i32 %74, 0
  %76 = zext i1 %75 to i64
  %77 = select i1 %75, i32 64, i32 0
  %78 = getelementptr inbounds [3 x %struct.reg_val], [3 x %struct.reg_val]* %6, i64 0, i64 0
  %79 = getelementptr inbounds %struct.reg_val, %struct.reg_val* %78, i32 0, i32 2
  store i32 %77, i32* %79, align 8
  %80 = load i32, i32* %4, align 4
  %81 = icmp ne i32 %80, 0
  %82 = zext i1 %81 to i64
  %83 = select i1 %81, i32 0, i32 1
  %84 = getelementptr inbounds [3 x %struct.reg_val], [3 x %struct.reg_val]* %6, i64 0, i64 1
  %85 = getelementptr inbounds %struct.reg_val, %struct.reg_val* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = or i32 %86, %83
  store i32 %87, i32* %85, align 4
  %88 = getelementptr inbounds [3 x %struct.reg_val], [3 x %struct.reg_val]* %6, i64 0, i64 0
  store %struct.reg_val* %88, %struct.reg_val** %8, align 8
  %89 = getelementptr inbounds [3 x %struct.reg_val], [3 x %struct.reg_val]* %6, i64 0, i64 0
  %90 = call i32 @ARRAY_SIZE(%struct.reg_val* %89)
  store i32 %90, i32* %9, align 4
  br label %91

91:                                               ; preds = %73, %43
  %92 = load %struct.tc90522_state*, %struct.tc90522_state** %7, align 8
  %93 = load %struct.reg_val*, %struct.reg_val** %8, align 8
  %94 = load i32, i32* %9, align 4
  %95 = call i32 @reg_write(%struct.tc90522_state* %92, %struct.reg_val* %93, i32 %94)
  ret i32 %95
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ARRAY_SIZE(%struct.reg_val*) #2

declare dso_local i32 @reg_write(%struct.tc90522_state*, %struct.reg_val*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
