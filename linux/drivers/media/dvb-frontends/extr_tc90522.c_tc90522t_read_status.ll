; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_tc90522.c_tc90522t_read_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_tc90522.c_tc90522t_read_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.tc90522_state* }
%struct.tc90522_state = type { i32 }

@FE_HAS_SIGNAL = common dso_local global i32 0, align 4
@FE_HAS_CARRIER = common dso_local global i32 0, align 4
@FE_HAS_VITERBI = common dso_local global i32 0, align 4
@FE_HAS_SYNC = common dso_local global i32 0, align 4
@FE_HAS_LOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32*)* @tc90522t_read_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tc90522t_read_status(%struct.dvb_frontend* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.tc90522_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %10 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %9, i32 0, i32 0
  %11 = load %struct.tc90522_state*, %struct.tc90522_state** %10, align 8
  store %struct.tc90522_state* %11, %struct.tc90522_state** %6, align 8
  %12 = load %struct.tc90522_state*, %struct.tc90522_state** %6, align 8
  %13 = call i32 @reg_read(%struct.tc90522_state* %12, i32 150, i32* %8, i32 1)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %7, align 4
  store i32 %17, i32* %3, align 4
  br label %73

18:                                               ; preds = %2
  %19 = load i32*, i32** %5, align 8
  store i32 0, i32* %19, align 4
  %20 = load i32, i32* %8, align 4
  %21 = and i32 %20, 224
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %18
  %24 = load i32, i32* @FE_HAS_SIGNAL, align 4
  %25 = load i32, i32* @FE_HAS_CARRIER, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @FE_HAS_VITERBI, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @FE_HAS_SYNC, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @FE_HAS_LOCK, align 4
  %32 = or i32 %30, %31
  %33 = load i32*, i32** %5, align 8
  store i32 %32, i32* %33, align 4
  store i32 0, i32* %3, align 4
  br label %73

34:                                               ; preds = %18
  %35 = load %struct.tc90522_state*, %struct.tc90522_state** %6, align 8
  %36 = call i32 @reg_read(%struct.tc90522_state* %35, i32 128, i32* %8, i32 1)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i32, i32* %7, align 4
  store i32 %40, i32* %3, align 4
  br label %73

41:                                               ; preds = %34
  %42 = load i32, i32* %8, align 4
  %43 = and i32 %42, 240
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  store i32 0, i32* %3, align 4
  br label %73

46:                                               ; preds = %41
  %47 = load i32, i32* @FE_HAS_SIGNAL, align 4
  %48 = load i32, i32* @FE_HAS_CARRIER, align 4
  %49 = or i32 %47, %48
  %50 = load i32*, i32** %5, align 8
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %51, %49
  store i32 %52, i32* %50, align 4
  %53 = load i32, i32* %8, align 4
  %54 = and i32 %53, 12
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %46
  store i32 0, i32* %3, align 4
  br label %73

57:                                               ; preds = %46
  %58 = load i32, i32* @FE_HAS_SYNC, align 4
  %59 = load i32, i32* @FE_HAS_VITERBI, align 4
  %60 = or i32 %58, %59
  %61 = load i32*, i32** %5, align 8
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %62, %60
  store i32 %63, i32* %61, align 4
  %64 = load i32, i32* %8, align 4
  %65 = and i32 %64, 2
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %57
  store i32 0, i32* %3, align 4
  br label %73

68:                                               ; preds = %57
  %69 = load i32, i32* @FE_HAS_LOCK, align 4
  %70 = load i32*, i32** %5, align 8
  %71 = load i32, i32* %70, align 4
  %72 = or i32 %71, %69
  store i32 %72, i32* %70, align 4
  store i32 0, i32* %3, align 4
  br label %73

73:                                               ; preds = %68, %67, %56, %45, %39, %23, %16
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @reg_read(%struct.tc90522_state*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
