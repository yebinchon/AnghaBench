; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ttpci/extr_budget-patch.c_alps_bsrv2_tuner_set_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ttpci/extr_budget-patch.c_alps_bsrv2_tuner_set_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_4__, %struct.TYPE_3__*, %struct.dtv_frontend_properties }
%struct.TYPE_4__ = type { i32 (%struct.dvb_frontend.0*, i32)* }
%struct.dvb_frontend.0 = type opaque
%struct.TYPE_3__ = type { i64 }
%struct.dtv_frontend_properties = type { i32 }
%struct.budget_patch = type { i32 }
%struct.i2c_msg = type { i32, i32*, i32, i32 }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @alps_bsrv2_tuner_set_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alps_bsrv2_tuner_set_params(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.dtv_frontend_properties*, align 8
  %5 = alloca %struct.budget_patch*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [4 x i32], align 16
  %8 = alloca %struct.i2c_msg, align 8
  %9 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  %10 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %11 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %10, i32 0, i32 2
  store %struct.dtv_frontend_properties* %11, %struct.dtv_frontend_properties** %4, align 8
  %12 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %13 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %12, i32 0, i32 1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.budget_patch*
  store %struct.budget_patch* %17, %struct.budget_patch** %5, align 8
  store i32 0, i32* %6, align 4
  %18 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %8, i32 0, i32 0
  store i32 97, i32* %18, align 8
  %19 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %8, i32 0, i32 1
  %20 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  store i32* %20, i32** %19, align 8
  %21 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %8, i32 0, i32 2
  store i32 16, i32* %21, align 8
  %22 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %8, i32 0, i32 3
  store i32 0, i32* %22, align 4
  %23 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %24 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %25, 479500
  %27 = sdiv i32 %26, 125
  store i32 %27, i32* %9, align 4
  %28 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %29 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp sgt i32 %30, 2000000
  br i1 %31, label %32, label %33

32:                                               ; preds = %1
  store i32 3, i32* %6, align 4
  br label %62

33:                                               ; preds = %1
  %34 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %35 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp sgt i32 %36, 1800000
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  store i32 2, i32* %6, align 4
  br label %61

39:                                               ; preds = %33
  %40 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %41 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp sgt i32 %42, 1600000
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  store i32 1, i32* %6, align 4
  br label %60

45:                                               ; preds = %39
  %46 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %47 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp sgt i32 %48, 1200000
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  store i32 0, i32* %6, align 4
  br label %59

51:                                               ; preds = %45
  %52 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %53 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp sge i32 %54, 1100000
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  store i32 1, i32* %6, align 4
  br label %58

57:                                               ; preds = %51
  store i32 2, i32* %6, align 4
  br label %58

58:                                               ; preds = %57, %56
  br label %59

59:                                               ; preds = %58, %50
  br label %60

60:                                               ; preds = %59, %44
  br label %61

61:                                               ; preds = %60, %38
  br label %62

62:                                               ; preds = %61, %32
  %63 = load i32, i32* %9, align 4
  %64 = ashr i32 %63, 8
  %65 = and i32 %64, 127
  %66 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  store i32 %65, i32* %66, align 16
  %67 = load i32, i32* %9, align 4
  %68 = and i32 %67, 255
  %69 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 1
  store i32 %68, i32* %69, align 4
  %70 = load i32, i32* %9, align 4
  %71 = and i32 %70, 98304
  %72 = ashr i32 %71, 10
  %73 = or i32 %72, 149
  %74 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 2
  store i32 %73, i32* %74, align 8
  %75 = load i32, i32* %6, align 4
  %76 = shl i32 %75, 6
  %77 = or i32 %76, 48
  %78 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 3
  store i32 %77, i32* %78, align 4
  %79 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %80 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %81, align 8
  %83 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %82, null
  br i1 %83, label %84, label %92

84:                                               ; preds = %62
  %85 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %86 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %87, align 8
  %89 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %90 = bitcast %struct.dvb_frontend* %89 to %struct.dvb_frontend.0*
  %91 = call i32 %88(%struct.dvb_frontend.0* %90, i32 1)
  br label %92

92:                                               ; preds = %84, %62
  %93 = load %struct.budget_patch*, %struct.budget_patch** %5, align 8
  %94 = getelementptr inbounds %struct.budget_patch, %struct.budget_patch* %93, i32 0, i32 0
  %95 = call i32 @i2c_transfer(i32* %94, %struct.i2c_msg* %8, i32 1)
  %96 = icmp ne i32 %95, 1
  br i1 %96, label %97, label %100

97:                                               ; preds = %92
  %98 = load i32, i32* @EIO, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %2, align 4
  br label %101

100:                                              ; preds = %92
  store i32 0, i32* %2, align 4
  br label %101

101:                                              ; preds = %100, %97
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

declare dso_local i32 @i2c_transfer(i32*, %struct.i2c_msg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
