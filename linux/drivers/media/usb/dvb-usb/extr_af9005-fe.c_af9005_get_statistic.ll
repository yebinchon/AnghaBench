; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_af9005-fe.c_af9005_get_statistic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_af9005-fe.c_af9005_get_statistic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.af9005_fe_state* }
%struct.af9005_fe_state = type { i64, i32, i64, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [15 x i8] c"GET STATISTIC\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"fecmon not available\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @af9005_get_statistic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @af9005_get_statistic(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.af9005_fe_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  %9 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %10 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %9, i32 0, i32 0
  %11 = load %struct.af9005_fe_state*, %struct.af9005_fe_state** %10, align 8
  store %struct.af9005_fe_state* %11, %struct.af9005_fe_state** %4, align 8
  %12 = call i32 @deb_info(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %14 = call i32 @af9005_is_fecmon_available(%struct.dvb_frontend* %13, i32* %6)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* %5, align 4
  store i32 %18, i32* %2, align 4
  br label %88

19:                                               ; preds = %1
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %19
  %23 = call i32 @deb_info(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %88

24:                                               ; preds = %19
  %25 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %26 = load %struct.af9005_fe_state*, %struct.af9005_fe_state** %4, align 8
  %27 = getelementptr inbounds %struct.af9005_fe_state, %struct.af9005_fe_state* %26, i32 0, i32 6
  %28 = load %struct.af9005_fe_state*, %struct.af9005_fe_state** %4, align 8
  %29 = getelementptr inbounds %struct.af9005_fe_state, %struct.af9005_fe_state* %28, i32 0, i32 0
  %30 = call i32 @af9005_get_pre_vit_err_bit_count(%struct.dvb_frontend* %25, i64* %27, i64* %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %59

33:                                               ; preds = %24
  %34 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %35 = call i32 @af9005_reset_pre_viterbi(%struct.dvb_frontend* %34)
  %36 = load %struct.af9005_fe_state*, %struct.af9005_fe_state** %4, align 8
  %37 = getelementptr inbounds %struct.af9005_fe_state, %struct.af9005_fe_state* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp sgt i64 %38, 0
  br i1 %39, label %40, label %55

40:                                               ; preds = %33
  %41 = load %struct.af9005_fe_state*, %struct.af9005_fe_state** %4, align 8
  %42 = getelementptr inbounds %struct.af9005_fe_state, %struct.af9005_fe_state* %41, i32 0, i32 6
  %43 = load i64, i64* %42, align 8
  %44 = trunc i64 %43 to i32
  %45 = mul nsw i32 %44, 1000000000
  store i32 %45, i32* %7, align 4
  %46 = load %struct.af9005_fe_state*, %struct.af9005_fe_state** %4, align 8
  %47 = getelementptr inbounds %struct.af9005_fe_state, %struct.af9005_fe_state* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @do_div(i32 %50, i32 %51)
  %53 = load %struct.af9005_fe_state*, %struct.af9005_fe_state** %4, align 8
  %54 = getelementptr inbounds %struct.af9005_fe_state, %struct.af9005_fe_state* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 8
  br label %58

55:                                               ; preds = %33
  %56 = load %struct.af9005_fe_state*, %struct.af9005_fe_state** %4, align 8
  %57 = getelementptr inbounds %struct.af9005_fe_state, %struct.af9005_fe_state* %56, i32 0, i32 1
  store i32 -1, i32* %57, align 8
  br label %58

58:                                               ; preds = %55, %40
  br label %59

59:                                               ; preds = %58, %24
  %60 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %61 = load %struct.af9005_fe_state*, %struct.af9005_fe_state** %4, align 8
  %62 = getelementptr inbounds %struct.af9005_fe_state, %struct.af9005_fe_state* %61, i32 0, i32 5
  %63 = load %struct.af9005_fe_state*, %struct.af9005_fe_state** %4, align 8
  %64 = getelementptr inbounds %struct.af9005_fe_state, %struct.af9005_fe_state* %63, i32 0, i32 4
  %65 = load %struct.af9005_fe_state*, %struct.af9005_fe_state** %4, align 8
  %66 = getelementptr inbounds %struct.af9005_fe_state, %struct.af9005_fe_state* %65, i32 0, i32 2
  %67 = call i32 @af9005_get_post_vit_ber(%struct.dvb_frontend* %60, i32* %62, i32* %64, i64* %66)
  store i32 %67, i32* %5, align 4
  %68 = load i32, i32* %5, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %87

70:                                               ; preds = %59
  %71 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %72 = call i32 @af9005_reset_post_viterbi(%struct.dvb_frontend* %71)
  store i32 %72, i32* %5, align 4
  %73 = load %struct.af9005_fe_state*, %struct.af9005_fe_state** %4, align 8
  %74 = getelementptr inbounds %struct.af9005_fe_state, %struct.af9005_fe_state* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.af9005_fe_state*, %struct.af9005_fe_state** %4, align 8
  %77 = getelementptr inbounds %struct.af9005_fe_state, %struct.af9005_fe_state* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = sext i32 %78 to i64
  %80 = add nsw i64 %79, %75
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %77, align 8
  %82 = load i32, i32* %5, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %70
  %85 = load i32, i32* %5, align 4
  store i32 %85, i32* %2, align 4
  br label %88

86:                                               ; preds = %70
  br label %87

87:                                               ; preds = %86, %59
  store i32 0, i32* %2, align 4
  br label %88

88:                                               ; preds = %87, %84, %22, %17
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local i32 @deb_info(i8*) #1

declare dso_local i32 @af9005_is_fecmon_available(%struct.dvb_frontend*, i32*) #1

declare dso_local i32 @af9005_get_pre_vit_err_bit_count(%struct.dvb_frontend*, i64*, i64*) #1

declare dso_local i32 @af9005_reset_pre_viterbi(%struct.dvb_frontend*) #1

declare dso_local i32 @do_div(i32, i32) #1

declare dso_local i32 @af9005_get_post_vit_ber(%struct.dvb_frontend*, i32*, i32*, i64*) #1

declare dso_local i32 @af9005_reset_post_viterbi(%struct.dvb_frontend*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
