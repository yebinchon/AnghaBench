; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_dvb-bt8xx.c_thomson_dtt7579_tuner_calc_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_dvb-bt8xx.c_thomson_dtt7579_tuner_calc_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dtv_frontend_properties }
%struct.dtv_frontend_properties = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@IF_FREQUENCYx6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32*, i32)* @thomson_dtt7579_tuner_calc_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @thomson_dtt7579_tuner_calc_regs(%struct.dvb_frontend* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dvb_frontend*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dtv_frontend_properties*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %13 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %12, i32 0, i32 0
  store %struct.dtv_frontend_properties* %13, %struct.dtv_frontend_properties** %8, align 8
  store i8 0, i8* %10, align 1
  store i8 0, i8* %11, align 1
  %14 = load i32, i32* %7, align 4
  %15 = icmp slt i32 %14, 5
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %74

19:                                               ; preds = %3
  %20 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %21 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, 83333
  %24 = mul nsw i32 %23, 3
  %25 = sdiv i32 %24, 500000
  %26 = load i32, i32* @IF_FREQUENCYx6, align 4
  %27 = add nsw i32 %25, %26
  store i32 %27, i32* %9, align 4
  %28 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %29 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp slt i32 %30, 542000000
  br i1 %31, label %32, label %33

32:                                               ; preds = %19
  store i8 -76, i8* %11, align 1
  br label %41

33:                                               ; preds = %19
  %34 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %35 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp slt i32 %36, 771000000
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  store i8 -68, i8* %11, align 1
  br label %40

39:                                               ; preds = %33
  store i8 -12, i8* %11, align 1
  br label %40

40:                                               ; preds = %39, %38
  br label %41

41:                                               ; preds = %40, %32
  %42 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %43 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  store i8 3, i8* %10, align 1
  br label %55

47:                                               ; preds = %41
  %48 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %49 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp slt i32 %50, 443250000
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  store i8 2, i8* %10, align 1
  br label %54

53:                                               ; preds = %47
  store i8 8, i8* %10, align 1
  br label %54

54:                                               ; preds = %53, %52
  br label %55

55:                                               ; preds = %54, %46
  %56 = load i32*, i32** %6, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  store i32 96, i32* %57, align 4
  %58 = load i32, i32* %9, align 4
  %59 = ashr i32 %58, 8
  %60 = load i32*, i32** %6, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 1
  store i32 %59, i32* %61, align 4
  %62 = load i32, i32* %9, align 4
  %63 = and i32 %62, 255
  %64 = load i32*, i32** %6, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 2
  store i32 %63, i32* %65, align 4
  %66 = load i8, i8* %11, align 1
  %67 = zext i8 %66 to i32
  %68 = load i32*, i32** %6, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 3
  store i32 %67, i32* %69, align 4
  %70 = load i8, i8* %10, align 1
  %71 = zext i8 %70 to i32
  %72 = load i32*, i32** %6, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 4
  store i32 %71, i32* %73, align 4
  store i32 5, i32* %4, align 4
  br label %74

74:                                               ; preds = %55, %16
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
