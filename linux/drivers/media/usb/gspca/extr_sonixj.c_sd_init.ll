; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_sonixj.c_sd_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_sonixj.c_sd_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32*, i64, i64 }
%struct.sd = type { i32, i32, i32 }

@__const.sd_init.regGpio = private unnamed_addr constant [2 x i32] [i32 41, i32 112], align 4
@D_PROBE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Sonix chip id: %02x\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@sn_tb = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*)* @sd_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_init(%struct.gspca_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gspca_dev*, align 8
  %4 = alloca %struct.sd*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca [2 x i32], align 4
  %7 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %3, align 8
  %8 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %9 = bitcast %struct.gspca_dev* %8 to %struct.sd*
  store %struct.sd* %9, %struct.sd** %4, align 8
  %10 = bitcast [2 x i32]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 bitcast ([2 x i32]* @__const.sd_init.regGpio to i8*), i64 8, i1 false)
  %11 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %12 = call i32 @reg_w1(%struct.gspca_dev* %11, i32 241, i32 1)
  %13 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %14 = call i32 @reg_r(%struct.gspca_dev* %13, i32 0, i32 1)
  %15 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %16 = call i32 @reg_w1(%struct.gspca_dev* %15, i32 241, i32 0)
  %17 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %18 = call i32 @reg_r(%struct.gspca_dev* %17, i32 0, i32 1)
  %19 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %20 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %7, align 4
  %24 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %25 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %1
  %29 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %30 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %2, align 4
  br label %112

33:                                               ; preds = %1
  %34 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %35 = load i32, i32* @D_PROBE, align 4
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @gspca_dbg(%struct.gspca_dev* %34, i32 %35, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %39 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %33
  %43 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, 4
  store i32 %45, i32* %43, align 4
  br label %46

46:                                               ; preds = %42, %33
  %47 = load %struct.sd*, %struct.sd** %4, align 8
  %48 = getelementptr inbounds %struct.sd, %struct.sd* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  switch i32 %49, label %57 [
    i32 133, label %50
    i32 132, label %50
  ]

50:                                               ; preds = %46, %46
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 17
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load i32, i32* @ENODEV, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %2, align 4
  br label %112

56:                                               ; preds = %50
  br label %64

57:                                               ; preds = %46
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %58, 18
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load i32, i32* @ENODEV, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %2, align 4
  br label %112

63:                                               ; preds = %57
  br label %64

64:                                               ; preds = %63, %56
  %65 = load %struct.sd*, %struct.sd** %4, align 8
  %66 = getelementptr inbounds %struct.sd, %struct.sd* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  switch i32 %67, label %80 [
    i32 131, label %68
    i32 130, label %71
    i32 129, label %74
    i32 128, label %77
  ]

68:                                               ; preds = %64
  %69 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %70 = call i32 @mi0360_probe(%struct.gspca_dev* %69)
  br label %80

71:                                               ; preds = %64
  %72 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %73 = call i32 @ov7630_probe(%struct.gspca_dev* %72)
  br label %80

74:                                               ; preds = %64
  %75 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %76 = call i32 @ov7648_probe(%struct.gspca_dev* %75)
  br label %80

77:                                               ; preds = %64
  %78 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %79 = call i32 @po2030n_probe(%struct.gspca_dev* %78)
  br label %80

80:                                               ; preds = %64, %77, %74, %71, %68
  %81 = load %struct.sd*, %struct.sd** %4, align 8
  %82 = getelementptr inbounds %struct.sd, %struct.sd* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  switch i32 %83, label %89 [
    i32 133, label %84
  ]

84:                                               ; preds = %80
  %85 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %86 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @reg_w1(%struct.gspca_dev* %85, i32 2, i32 %87)
  br label %93

89:                                               ; preds = %80
  %90 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %91 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %92 = call i32 @reg_w(%struct.gspca_dev* %90, i32 1, i32* %91, i32 2)
  br label %93

93:                                               ; preds = %89, %84
  %94 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %95 = call i32 @reg_w1(%struct.gspca_dev* %94, i32 241, i32 0)
  %96 = load i32**, i32*** @sn_tb, align 8
  %97 = load %struct.sd*, %struct.sd** %4, align 8
  %98 = getelementptr inbounds %struct.sd, %struct.sd* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32*, i32** %96, i64 %100
  %102 = load i32*, i32** %101, align 8
  store i32* %102, i32** %5, align 8
  %103 = load i32*, i32** %5, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 9
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.sd*, %struct.sd** %4, align 8
  %107 = getelementptr inbounds %struct.sd, %struct.sd* %106, i32 0, i32 2
  store i32 %105, i32* %107, align 4
  %108 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %109 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = trunc i64 %110 to i32
  store i32 %111, i32* %2, align 4
  br label %112

112:                                              ; preds = %93, %60, %53, %28
  %113 = load i32, i32* %2, align 4
  ret i32 %113
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @reg_w1(%struct.gspca_dev*, i32, i32) #2

declare dso_local i32 @reg_r(%struct.gspca_dev*, i32, i32) #2

declare dso_local i32 @gspca_dbg(%struct.gspca_dev*, i32, i8*, i32) #2

declare dso_local i32 @mi0360_probe(%struct.gspca_dev*) #2

declare dso_local i32 @ov7630_probe(%struct.gspca_dev*) #2

declare dso_local i32 @ov7648_probe(%struct.gspca_dev*) #2

declare dso_local i32 @po2030n_probe(%struct.gspca_dev*) #2

declare dso_local i32 @reg_w(%struct.gspca_dev*, i32, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
