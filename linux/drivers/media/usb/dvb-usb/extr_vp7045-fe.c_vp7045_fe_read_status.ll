; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_vp7045-fe.c_vp7045_fe_read_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_vp7045-fe.c_vp7045_fe_read_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.vp7045_fe_state* }
%struct.vp7045_fe_state = type { i32 }

@FE_HAS_CARRIER = common dso_local global i32 0, align 4
@FE_HAS_VITERBI = common dso_local global i32 0, align 4
@FE_HAS_LOCK = common dso_local global i32 0, align 4
@FE_HAS_SYNC = common dso_local global i32 0, align 4
@FE_HAS_SIGNAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32*)* @vp7045_fe_read_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vp7045_fe_read_status(%struct.dvb_frontend* %0, i32* %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.vp7045_fe_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %10 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %9, i32 0, i32 0
  %11 = load %struct.vp7045_fe_state*, %struct.vp7045_fe_state** %10, align 8
  store %struct.vp7045_fe_state* %11, %struct.vp7045_fe_state** %5, align 8
  %12 = load %struct.vp7045_fe_state*, %struct.vp7045_fe_state** %5, align 8
  %13 = getelementptr inbounds %struct.vp7045_fe_state, %struct.vp7045_fe_state* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @vp7045_read_reg(i32 %14, i32 0)
  store i32 %15, i32* %6, align 4
  %16 = load %struct.vp7045_fe_state*, %struct.vp7045_fe_state** %5, align 8
  %17 = getelementptr inbounds %struct.vp7045_fe_state, %struct.vp7045_fe_state* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @vp7045_read_reg(i32 %18, i32 1)
  store i32 %19, i32* %7, align 4
  %20 = load %struct.vp7045_fe_state*, %struct.vp7045_fe_state** %5, align 8
  %21 = getelementptr inbounds %struct.vp7045_fe_state, %struct.vp7045_fe_state* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @vp7045_read_reg(i32 %22, i32 3)
  store i32 %23, i32* %8, align 4
  %24 = load i32*, i32** %4, align 8
  store i32 0, i32* %24, align 4
  %25 = load i32, i32* %6, align 4
  %26 = and i32 %25, 16
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %2
  %29 = load i32, i32* @FE_HAS_CARRIER, align 4
  %30 = load i32*, i32** %4, align 8
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, %29
  store i32 %32, i32* %30, align 4
  br label %33

33:                                               ; preds = %28, %2
  %34 = load i32, i32* %6, align 4
  %35 = and i32 %34, 2
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %33
  %38 = load i32, i32* @FE_HAS_VITERBI, align 4
  %39 = load i32*, i32** %4, align 8
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %38
  store i32 %41, i32* %39, align 4
  br label %42

42:                                               ; preds = %37, %33
  %43 = load i32, i32* %6, align 4
  %44 = and i32 %43, 32
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %42
  %47 = load i32, i32* @FE_HAS_LOCK, align 4
  %48 = load i32*, i32** %4, align 8
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %47
  store i32 %50, i32* %48, align 4
  br label %51

51:                                               ; preds = %46, %42
  %52 = load i32, i32* %7, align 4
  %53 = and i32 %52, 2
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %51
  %56 = load i32, i32* @FE_HAS_SYNC, align 4
  %57 = load i32*, i32** %4, align 8
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %56
  store i32 %59, i32* %57, align 4
  br label %60

60:                                               ; preds = %55, %51
  %61 = load i32, i32* %8, align 4
  %62 = and i32 %61, 64
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %60
  %65 = load i32, i32* @FE_HAS_SIGNAL, align 4
  %66 = load i32*, i32** %4, align 8
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %67, %65
  store i32 %68, i32* %66, align 4
  br label %69

69:                                               ; preds = %64, %60
  %70 = load i32*, i32** %4, align 8
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @FE_HAS_CARRIER, align 4
  %73 = load i32, i32* @FE_HAS_VITERBI, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* @FE_HAS_SYNC, align 4
  %76 = or i32 %74, %75
  %77 = and i32 %71, %76
  %78 = load i32, i32* @FE_HAS_CARRIER, align 4
  %79 = load i32, i32* @FE_HAS_VITERBI, align 4
  %80 = or i32 %78, %79
  %81 = load i32, i32* @FE_HAS_SYNC, align 4
  %82 = or i32 %80, %81
  %83 = icmp ne i32 %77, %82
  br i1 %83, label %84, label %90

84:                                               ; preds = %69
  %85 = load i32, i32* @FE_HAS_LOCK, align 4
  %86 = xor i32 %85, -1
  %87 = load i32*, i32** %4, align 8
  %88 = load i32, i32* %87, align 4
  %89 = and i32 %88, %86
  store i32 %89, i32* %87, align 4
  br label %90

90:                                               ; preds = %84, %69
  ret i32 0
}

declare dso_local i32 @vp7045_read_reg(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
