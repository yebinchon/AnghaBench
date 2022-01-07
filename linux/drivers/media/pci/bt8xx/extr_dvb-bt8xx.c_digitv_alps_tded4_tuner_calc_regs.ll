; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_dvb-bt8xx.c_digitv_alps_tded4_tuner_calc_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_dvb-bt8xx.c_digitv_alps_tded4_tuner_calc_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dtv_frontend_properties }
%struct.dtv_frontend_properties = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@IF_FREQUENCYx6 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"frequency %u, div %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32*, i32)* @digitv_alps_tded4_tuner_calc_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @digitv_alps_tded4_tuner_calc_regs(%struct.dvb_frontend* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dvb_frontend*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.dtv_frontend_properties*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %11 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %10, i32 0, i32 0
  store %struct.dtv_frontend_properties* %11, %struct.dtv_frontend_properties** %9, align 8
  %12 = load i32, i32* %7, align 4
  %13 = icmp slt i32 %12, 5
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %74

17:                                               ; preds = %3
  %18 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %9, align 8
  %19 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %20, 83333
  %22 = mul nsw i32 %21, 3
  %23 = sdiv i32 %22, 500000
  %24 = load i32, i32* @IF_FREQUENCYx6, align 4
  %25 = add nsw i32 %23, %24
  store i32 %25, i32* %8, align 4
  %26 = load i32*, i32** %6, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  store i32 97, i32* %27, align 4
  %28 = load i32, i32* %8, align 4
  %29 = ashr i32 %28, 8
  %30 = and i32 %29, 127
  %31 = load i32*, i32** %6, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* %8, align 4
  %34 = and i32 %33, 255
  %35 = load i32*, i32** %6, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 2
  store i32 %34, i32* %36, align 4
  %37 = load i32*, i32** %6, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 3
  store i32 133, i32* %38, align 4
  %39 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %9, align 8
  %40 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @dprintk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %42)
  %44 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %9, align 8
  %45 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp slt i32 %46, 470000000
  br i1 %47, label %48, label %51

48:                                               ; preds = %17
  %49 = load i32*, i32** %6, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 4
  store i32 2, i32* %50, align 4
  br label %63

51:                                               ; preds = %17
  %52 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %9, align 8
  %53 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp sgt i32 %54, 823000000
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load i32*, i32** %6, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 4
  store i32 136, i32* %58, align 4
  br label %62

59:                                               ; preds = %51
  %60 = load i32*, i32** %6, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 4
  store i32 8, i32* %61, align 4
  br label %62

62:                                               ; preds = %59, %56
  br label %63

63:                                               ; preds = %62, %48
  %64 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %9, align 8
  %65 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = icmp eq i32 %66, 8000000
  br i1 %67, label %68, label %73

68:                                               ; preds = %63
  %69 = load i32*, i32** %6, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 4
  %71 = load i32, i32* %70, align 4
  %72 = or i32 %71, 4
  store i32 %72, i32* %70, align 4
  br label %73

73:                                               ; preds = %68, %63
  store i32 5, i32* %4, align 4
  br label %74

74:                                               ; preds = %73, %14
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local i32 @dprintk(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
