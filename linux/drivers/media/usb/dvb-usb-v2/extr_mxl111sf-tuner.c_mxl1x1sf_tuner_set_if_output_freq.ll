; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_mxl111sf-tuner.c_mxl1x1sf_tuner_set_if_output_freq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_mxl111sf-tuner.c_mxl1x1sf_tuner_set_if_output_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxl111sf_tuner_state = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [37 x i8] c"(IF polarity = %d, IF freq = 0x%02x)\00", align 1
@V6_TUNER_IF_SEL_REG = common dso_local global i32 0, align 4
@V6_TUNER_IF_FCW_BYP_REG = common dso_local global i32 0, align 4
@V6_TUNER_IF_FCW_REG = common dso_local global i32 0, align 4
@MXL_IF_HI = common dso_local global i32 0, align 4
@MXL_IF_LO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mxl111sf_tuner_state*)* @mxl1x1sf_tuner_set_if_output_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxl1x1sf_tuner_set_if_output_freq(%struct.mxl111sf_tuner_state* %0) #0 {
  %2 = alloca %struct.mxl111sf_tuner_state*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.mxl111sf_tuner_state* %0, %struct.mxl111sf_tuner_state** %2, align 8
  %5 = load %struct.mxl111sf_tuner_state*, %struct.mxl111sf_tuner_state** %2, align 8
  %6 = getelementptr inbounds %struct.mxl111sf_tuner_state, %struct.mxl111sf_tuner_state* %5, i32 0, i32 1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.mxl111sf_tuner_state*, %struct.mxl111sf_tuner_state** %2, align 8
  %11 = getelementptr inbounds %struct.mxl111sf_tuner_state, %struct.mxl111sf_tuner_state* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @mxl_dbg(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %9, i32 %14)
  %16 = load %struct.mxl111sf_tuner_state*, %struct.mxl111sf_tuner_state** %2, align 8
  %17 = getelementptr inbounds %struct.mxl111sf_tuner_state, %struct.mxl111sf_tuner_state* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %4, align 4
  %21 = load %struct.mxl111sf_tuner_state*, %struct.mxl111sf_tuner_state** %2, align 8
  %22 = getelementptr inbounds %struct.mxl111sf_tuner_state, %struct.mxl111sf_tuner_state* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %4, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %4, align 4
  %28 = load %struct.mxl111sf_tuner_state*, %struct.mxl111sf_tuner_state** %2, align 8
  %29 = load i32, i32* @V6_TUNER_IF_SEL_REG, align 4
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @mxl111sf_tuner_write_reg(%struct.mxl111sf_tuner_state* %28, i32 %29, i32 %30)
  store i32 %31, i32* %3, align 4
  %32 = load i32, i32* %3, align 4
  %33 = call i64 @mxl_fail(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %1
  br label %74

36:                                               ; preds = %1
  %37 = load %struct.mxl111sf_tuner_state*, %struct.mxl111sf_tuner_state** %2, align 8
  %38 = load i32, i32* @V6_TUNER_IF_FCW_BYP_REG, align 4
  %39 = call i32 @mxl111sf_tuner_read_reg(%struct.mxl111sf_tuner_state* %37, i32 %38, i32* %4)
  store i32 %39, i32* %3, align 4
  %40 = load i32, i32* %3, align 4
  %41 = call i64 @mxl_fail(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  br label %74

44:                                               ; preds = %36
  %45 = load i32, i32* %4, align 4
  %46 = and i32 %45, 240
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* %4, align 4
  %48 = or i32 %47, 144
  store i32 %48, i32* %4, align 4
  %49 = load %struct.mxl111sf_tuner_state*, %struct.mxl111sf_tuner_state** %2, align 8
  %50 = load i32, i32* @V6_TUNER_IF_FCW_BYP_REG, align 4
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @mxl111sf_tuner_write_reg(%struct.mxl111sf_tuner_state* %49, i32 %50, i32 %51)
  store i32 %52, i32* %3, align 4
  %53 = load i32, i32* %3, align 4
  %54 = call i64 @mxl_fail(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %44
  br label %74

57:                                               ; preds = %44
  %58 = load %struct.mxl111sf_tuner_state*, %struct.mxl111sf_tuner_state** %2, align 8
  %59 = load i32, i32* @V6_TUNER_IF_FCW_REG, align 4
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @mxl111sf_tuner_write_reg(%struct.mxl111sf_tuner_state* %58, i32 %59, i32 %60)
  store i32 %61, i32* %3, align 4
  %62 = load i32, i32* %3, align 4
  %63 = call i64 @mxl_fail(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %57
  br label %74

66:                                               ; preds = %57
  %67 = load %struct.mxl111sf_tuner_state*, %struct.mxl111sf_tuner_state** %2, align 8
  %68 = getelementptr inbounds %struct.mxl111sf_tuner_state, %struct.mxl111sf_tuner_state* %67, i32 0, i32 1
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.mxl111sf_tuner_state*, %struct.mxl111sf_tuner_state** %2, align 8
  %73 = getelementptr inbounds %struct.mxl111sf_tuner_state, %struct.mxl111sf_tuner_state* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  br label %74

74:                                               ; preds = %66, %65, %56, %43, %35
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32 @mxl_dbg(i8*, i32, i32) #1

declare dso_local i32 @mxl111sf_tuner_write_reg(%struct.mxl111sf_tuner_state*, i32, i32) #1

declare dso_local i64 @mxl_fail(i32) #1

declare dso_local i32 @mxl111sf_tuner_read_reg(%struct.mxl111sf_tuner_state*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
