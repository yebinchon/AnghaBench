; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_dst.c_dst_set_voltage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_dst.c_dst_set_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dst_state* }
%struct.dst_state = type { i32, i64, i32, i32* }

@DST_TYPE_IS_SAT = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@HAS_POWER = common dso_local global i32 0, align 4
@HAS_LOCK = common dso_local global i32 0, align 4
@ATTEMPT_TUNE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32)* @dst_set_voltage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dst_set_voltage(%struct.dvb_frontend* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.dst_state*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %9 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %10 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %9, i32 0, i32 0
  %11 = load %struct.dst_state*, %struct.dst_state** %10, align 8
  store %struct.dst_state* %11, %struct.dst_state** %8, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.dst_state*, %struct.dst_state** %8, align 8
  %14 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 8
  %15 = load %struct.dst_state*, %struct.dst_state** %8, align 8
  %16 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @DST_TYPE_IS_SAT, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @EOPNOTSUPP, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %69

23:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  %24 = load i32, i32* %5, align 4
  switch i32 %24, label %58 [
    i32 130, label %25
    i32 129, label %25
    i32 128, label %43
  ]

25:                                               ; preds = %23, %23
  %26 = load %struct.dst_state*, %struct.dst_state** %8, align 8
  %27 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @HAS_POWER, align 4
  %30 = and i32 %28, %29
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  store i32 1, i32* %6, align 4
  br label %33

33:                                               ; preds = %32, %25
  %34 = load i32, i32* @HAS_POWER, align 4
  %35 = load %struct.dst_state*, %struct.dst_state** %8, align 8
  %36 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 8
  %39 = load %struct.dst_state*, %struct.dst_state** %8, align 8
  %40 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %39, i32 0, i32 3
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 4
  store i32 1, i32* %42, align 4
  br label %61

43:                                               ; preds = %23
  store i32 1, i32* %6, align 4
  %44 = load i32, i32* @HAS_POWER, align 4
  %45 = load i32, i32* @HAS_LOCK, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @ATTEMPT_TUNE, align 4
  %48 = or i32 %46, %47
  %49 = xor i32 %48, -1
  %50 = load %struct.dst_state*, %struct.dst_state** %8, align 8
  %51 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = and i32 %52, %49
  store i32 %53, i32* %51, align 8
  %54 = load %struct.dst_state*, %struct.dst_state** %8, align 8
  %55 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %54, i32 0, i32 3
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 4
  store i32 0, i32* %57, align 4
  br label %61

58:                                               ; preds = %23
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %3, align 4
  br label %69

61:                                               ; preds = %43, %33
  %62 = load i32, i32* %6, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = load %struct.dst_state*, %struct.dst_state** %8, align 8
  %66 = call i32 @dst_tone_power_cmd(%struct.dst_state* %65)
  store i32 %66, i32* %7, align 4
  br label %67

67:                                               ; preds = %64, %61
  %68 = load i32, i32* %7, align 4
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %67, %58, %20
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i32 @dst_tone_power_cmd(%struct.dst_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
