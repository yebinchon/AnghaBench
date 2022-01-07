; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_dst.c_dst_set_tone.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_dst.c_dst_set_tone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dst_state* }
%struct.dst_state = type { i32, i64, i32, i32* }

@DST_TYPE_IS_SAT = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@DST_TYPE_HAS_OBS_REGS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32)* @dst_set_tone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dst_set_tone(%struct.dvb_frontend* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dst_state*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %8 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %7, i32 0, i32 0
  %9 = load %struct.dst_state*, %struct.dst_state** %8, align 8
  store %struct.dst_state* %9, %struct.dst_state** %6, align 8
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.dst_state*, %struct.dst_state** %6, align 8
  %12 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 8
  %13 = load %struct.dst_state*, %struct.dst_state** %6, align 8
  %14 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @DST_TYPE_IS_SAT, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @EOPNOTSUPP, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %52

21:                                               ; preds = %2
  %22 = load i32, i32* %5, align 4
  switch i32 %22, label %46 [
    i32 129, label %23
    i32 128, label %41
  ]

23:                                               ; preds = %21
  %24 = load %struct.dst_state*, %struct.dst_state** %6, align 8
  %25 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @DST_TYPE_HAS_OBS_REGS, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %23
  %31 = load %struct.dst_state*, %struct.dst_state** %6, align 8
  %32 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %31, i32 0, i32 3
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 2
  store i32 0, i32* %34, align 4
  br label %40

35:                                               ; preds = %23
  %36 = load %struct.dst_state*, %struct.dst_state** %6, align 8
  %37 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %36, i32 0, i32 3
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 2
  store i32 255, i32* %39, align 4
  br label %40

40:                                               ; preds = %35, %30
  br label %49

41:                                               ; preds = %21
  %42 = load %struct.dst_state*, %struct.dst_state** %6, align 8
  %43 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %42, i32 0, i32 3
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 2
  store i32 2, i32* %45, align 4
  br label %49

46:                                               ; preds = %21
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %52

49:                                               ; preds = %41, %40
  %50 = load %struct.dst_state*, %struct.dst_state** %6, align 8
  %51 = call i32 @dst_tone_power_cmd(%struct.dst_state* %50)
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %49, %46, %18
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @dst_tone_power_cmd(%struct.dst_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
