; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_cinergyT2-fe.c_cinergyt2_fe_read_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_cinergyT2-fe.c_cinergyt2_fe_read_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.cinergyt2_fe_state* }
%struct.cinergyt2_fe_state = type { %struct.TYPE_2__, i32, i32*, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@CINERGYT2_EP1_GET_TUNER_STATUS = common dso_local global i32 0, align 4
@FE_HAS_SIGNAL = common dso_local global i32 0, align 4
@FE_HAS_LOCK = common dso_local global i32 0, align 4
@FE_HAS_SYNC = common dso_local global i32 0, align 4
@FE_HAS_CARRIER = common dso_local global i32 0, align 4
@FE_HAS_VITERBI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32*)* @cinergyt2_fe_read_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cinergyt2_fe_read_status(%struct.dvb_frontend* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.cinergyt2_fe_state*, align 8
  %7 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %9 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %8, i32 0, i32 0
  %10 = load %struct.cinergyt2_fe_state*, %struct.cinergyt2_fe_state** %9, align 8
  store %struct.cinergyt2_fe_state* %10, %struct.cinergyt2_fe_state** %6, align 8
  %11 = load %struct.cinergyt2_fe_state*, %struct.cinergyt2_fe_state** %6, align 8
  %12 = getelementptr inbounds %struct.cinergyt2_fe_state, %struct.cinergyt2_fe_state* %11, i32 0, i32 1
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load i32, i32* @CINERGYT2_EP1_GET_TUNER_STATUS, align 4
  %15 = load %struct.cinergyt2_fe_state*, %struct.cinergyt2_fe_state** %6, align 8
  %16 = getelementptr inbounds %struct.cinergyt2_fe_state, %struct.cinergyt2_fe_state* %15, i32 0, i32 2
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  store i32 %14, i32* %18, align 4
  %19 = load %struct.cinergyt2_fe_state*, %struct.cinergyt2_fe_state** %6, align 8
  %20 = getelementptr inbounds %struct.cinergyt2_fe_state, %struct.cinergyt2_fe_state* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.cinergyt2_fe_state*, %struct.cinergyt2_fe_state** %6, align 8
  %23 = getelementptr inbounds %struct.cinergyt2_fe_state, %struct.cinergyt2_fe_state* %22, i32 0, i32 2
  %24 = load i32*, i32** %23, align 8
  %25 = load %struct.cinergyt2_fe_state*, %struct.cinergyt2_fe_state** %6, align 8
  %26 = getelementptr inbounds %struct.cinergyt2_fe_state, %struct.cinergyt2_fe_state* %25, i32 0, i32 2
  %27 = load i32*, i32** %26, align 8
  %28 = call i32 @dvb_usb_generic_rw(i32 %21, i32* %24, i32 1, i32* %27, i32 8, i32 0)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %2
  %32 = load %struct.cinergyt2_fe_state*, %struct.cinergyt2_fe_state** %6, align 8
  %33 = getelementptr inbounds %struct.cinergyt2_fe_state, %struct.cinergyt2_fe_state* %32, i32 0, i32 0
  %34 = load %struct.cinergyt2_fe_state*, %struct.cinergyt2_fe_state** %6, align 8
  %35 = getelementptr inbounds %struct.cinergyt2_fe_state, %struct.cinergyt2_fe_state* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @memcpy(%struct.TYPE_2__* %33, i32* %36, i32 8)
  br label %38

38:                                               ; preds = %31, %2
  %39 = load %struct.cinergyt2_fe_state*, %struct.cinergyt2_fe_state** %6, align 8
  %40 = getelementptr inbounds %struct.cinergyt2_fe_state, %struct.cinergyt2_fe_state* %39, i32 0, i32 1
  %41 = call i32 @mutex_unlock(i32* %40)
  %42 = load i32, i32* %7, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = load i32, i32* %7, align 4
  store i32 %45, i32* %3, align 4
  br label %130

46:                                               ; preds = %38
  %47 = load i32*, i32** %5, align 8
  store i32 0, i32* %47, align 4
  %48 = load %struct.cinergyt2_fe_state*, %struct.cinergyt2_fe_state** %6, align 8
  %49 = getelementptr inbounds %struct.cinergyt2_fe_state, %struct.cinergyt2_fe_state* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @le16_to_cpu(i32 %51)
  %53 = sub nsw i32 65535, %52
  %54 = icmp sgt i32 %53, 30
  br i1 %54, label %55, label %60

55:                                               ; preds = %46
  %56 = load i32, i32* @FE_HAS_SIGNAL, align 4
  %57 = load i32*, i32** %5, align 8
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %56
  store i32 %59, i32* %57, align 4
  br label %60

60:                                               ; preds = %55, %46
  %61 = load %struct.cinergyt2_fe_state*, %struct.cinergyt2_fe_state** %6, align 8
  %62 = getelementptr inbounds %struct.cinergyt2_fe_state, %struct.cinergyt2_fe_state* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = and i32 %64, 64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %60
  %68 = load i32, i32* @FE_HAS_LOCK, align 4
  %69 = load i32*, i32** %5, align 8
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %70, %68
  store i32 %71, i32* %69, align 4
  br label %72

72:                                               ; preds = %67, %60
  %73 = load %struct.cinergyt2_fe_state*, %struct.cinergyt2_fe_state** %6, align 8
  %74 = getelementptr inbounds %struct.cinergyt2_fe_state, %struct.cinergyt2_fe_state* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = and i32 %76, 32
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %72
  %80 = load i32, i32* @FE_HAS_SYNC, align 4
  %81 = load i32*, i32** %5, align 8
  %82 = load i32, i32* %81, align 4
  %83 = or i32 %82, %80
  store i32 %83, i32* %81, align 4
  br label %84

84:                                               ; preds = %79, %72
  %85 = load %struct.cinergyt2_fe_state*, %struct.cinergyt2_fe_state** %6, align 8
  %86 = getelementptr inbounds %struct.cinergyt2_fe_state, %struct.cinergyt2_fe_state* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = and i32 %88, 16
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %84
  %92 = load i32, i32* @FE_HAS_CARRIER, align 4
  %93 = load i32*, i32** %5, align 8
  %94 = load i32, i32* %93, align 4
  %95 = or i32 %94, %92
  store i32 %95, i32* %93, align 4
  br label %96

96:                                               ; preds = %91, %84
  %97 = load %struct.cinergyt2_fe_state*, %struct.cinergyt2_fe_state** %6, align 8
  %98 = getelementptr inbounds %struct.cinergyt2_fe_state, %struct.cinergyt2_fe_state* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = and i32 %100, 2
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %96
  %104 = load i32, i32* @FE_HAS_VITERBI, align 4
  %105 = load i32*, i32** %5, align 8
  %106 = load i32, i32* %105, align 4
  %107 = or i32 %106, %104
  store i32 %107, i32* %105, align 4
  br label %108

108:                                              ; preds = %103, %96
  %109 = load i32*, i32** %5, align 8
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @FE_HAS_CARRIER, align 4
  %112 = load i32, i32* @FE_HAS_VITERBI, align 4
  %113 = or i32 %111, %112
  %114 = load i32, i32* @FE_HAS_SYNC, align 4
  %115 = or i32 %113, %114
  %116 = and i32 %110, %115
  %117 = load i32, i32* @FE_HAS_CARRIER, align 4
  %118 = load i32, i32* @FE_HAS_VITERBI, align 4
  %119 = or i32 %117, %118
  %120 = load i32, i32* @FE_HAS_SYNC, align 4
  %121 = or i32 %119, %120
  %122 = icmp ne i32 %116, %121
  br i1 %122, label %123, label %129

123:                                              ; preds = %108
  %124 = load i32, i32* @FE_HAS_LOCK, align 4
  %125 = xor i32 %124, -1
  %126 = load i32*, i32** %5, align 8
  %127 = load i32, i32* %126, align 4
  %128 = and i32 %127, %125
  store i32 %128, i32* %126, align 4
  br label %129

129:                                              ; preds = %123, %108
  store i32 0, i32* %3, align 4
  br label %130

130:                                              ; preds = %129, %44
  %131 = load i32, i32* %3, align 4
  ret i32 %131
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dvb_usb_generic_rw(i32, i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_2__*, i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
