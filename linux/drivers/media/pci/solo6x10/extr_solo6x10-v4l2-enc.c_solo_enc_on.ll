; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/solo6x10/extr_solo6x10-v4l2-enc.c_solo_enc_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/solo6x10/extr_solo6x10-v4l2-enc.c_solo_enc_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.solo_enc_dev = type { i32, i64, i64, i32, i32, i32, i32, i64, i64, %struct.solo_dev* }
%struct.solo_dev = type { i64 }

@EBUSY = common dso_local global i32 0, align 4
@SOLO_ENC_TYPE_EXT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.solo_enc_dev*)* @solo_enc_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @solo_enc_on(%struct.solo_enc_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.solo_enc_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.solo_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.solo_enc_dev* %0, %struct.solo_enc_dev** %3, align 8
  %7 = load %struct.solo_enc_dev*, %struct.solo_enc_dev** %3, align 8
  %8 = getelementptr inbounds %struct.solo_enc_dev, %struct.solo_enc_dev* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %4, align 4
  %10 = load %struct.solo_enc_dev*, %struct.solo_enc_dev** %3, align 8
  %11 = getelementptr inbounds %struct.solo_enc_dev, %struct.solo_enc_dev* %10, i32 0, i32 9
  %12 = load %struct.solo_dev*, %struct.solo_dev** %11, align 8
  store %struct.solo_dev* %12, %struct.solo_dev** %5, align 8
  %13 = load %struct.solo_enc_dev*, %struct.solo_enc_dev** %3, align 8
  %14 = call i32 @solo_update_mode(%struct.solo_enc_dev* %13)
  %15 = load %struct.solo_enc_dev*, %struct.solo_enc_dev** %3, align 8
  %16 = getelementptr inbounds %struct.solo_enc_dev, %struct.solo_enc_dev* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.solo_dev*, %struct.solo_dev** %5, align 8
  %19 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp sgt i64 %17, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %1
  %23 = load i32, i32* @EBUSY, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %119

25:                                               ; preds = %1
  %26 = load %struct.solo_enc_dev*, %struct.solo_enc_dev** %3, align 8
  %27 = getelementptr inbounds %struct.solo_enc_dev, %struct.solo_enc_dev* %26, i32 0, i32 8
  store i64 0, i64* %27, align 8
  %28 = load %struct.solo_enc_dev*, %struct.solo_enc_dev** %3, align 8
  %29 = getelementptr inbounds %struct.solo_enc_dev, %struct.solo_enc_dev* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.solo_dev*, %struct.solo_dev** %5, align 8
  %32 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = sub nsw i64 %33, %30
  store i64 %34, i64* %32, align 8
  %35 = load %struct.solo_enc_dev*, %struct.solo_enc_dev** %3, align 8
  %36 = getelementptr inbounds %struct.solo_enc_dev, %struct.solo_enc_dev* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @SOLO_ENC_TYPE_EXT, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %25
  %41 = load %struct.solo_dev*, %struct.solo_dev** %5, align 8
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @SOLO_CAP_CH_COMP_ENA_E(i32 %42)
  %44 = call i32 @solo_reg_write(%struct.solo_dev* %41, i32 %43, i32 1)
  br label %45

45:                                               ; preds = %40, %25
  %46 = load %struct.solo_dev*, %struct.solo_dev** %5, align 8
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @SOLO_CAP_CH_SCALE(i32 %47)
  %49 = call i32 @solo_reg_write(%struct.solo_dev* %46, i32 %48, i32 0)
  %50 = load %struct.solo_dev*, %struct.solo_dev** %5, align 8
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @SOLO_VE_CH_INTL(i32 %51)
  %53 = load %struct.solo_enc_dev*, %struct.solo_enc_dev** %3, align 8
  %54 = getelementptr inbounds %struct.solo_enc_dev, %struct.solo_enc_dev* %53, i32 0, i32 7
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i32 1, i32 0
  %59 = call i32 @solo_reg_write(%struct.solo_dev* %50, i32 %52, i32 %58)
  %60 = load %struct.solo_enc_dev*, %struct.solo_enc_dev** %3, align 8
  %61 = getelementptr inbounds %struct.solo_enc_dev, %struct.solo_enc_dev* %60, i32 0, i32 7
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %45
  %65 = load %struct.solo_enc_dev*, %struct.solo_enc_dev** %3, align 8
  %66 = getelementptr inbounds %struct.solo_enc_dev, %struct.solo_enc_dev* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = sub nsw i32 %67, 1
  store i32 %68, i32* %6, align 4
  br label %73

69:                                               ; preds = %45
  %70 = load %struct.solo_enc_dev*, %struct.solo_enc_dev** %3, align 8
  %71 = getelementptr inbounds %struct.solo_enc_dev, %struct.solo_enc_dev* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  store i32 %72, i32* %6, align 4
  br label %73

73:                                               ; preds = %69, %64
  %74 = load %struct.solo_dev*, %struct.solo_dev** %5, align 8
  %75 = load i32, i32* %4, align 4
  %76 = call i32 @SOLO_VE_CH_GOP(i32 %75)
  %77 = load %struct.solo_enc_dev*, %struct.solo_enc_dev** %3, align 8
  %78 = getelementptr inbounds %struct.solo_enc_dev, %struct.solo_enc_dev* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @solo_reg_write(%struct.solo_dev* %74, i32 %76, i32 %79)
  %81 = load %struct.solo_dev*, %struct.solo_dev** %5, align 8
  %82 = load i32, i32* %4, align 4
  %83 = call i32 @SOLO_VE_CH_QP(i32 %82)
  %84 = load %struct.solo_enc_dev*, %struct.solo_enc_dev** %3, align 8
  %85 = getelementptr inbounds %struct.solo_enc_dev, %struct.solo_enc_dev* %84, i32 0, i32 5
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @solo_reg_write(%struct.solo_dev* %81, i32 %83, i32 %86)
  %88 = load %struct.solo_dev*, %struct.solo_dev** %5, align 8
  %89 = load i32, i32* %4, align 4
  %90 = call i32 @SOLO_CAP_CH_INTV(i32 %89)
  %91 = load i32, i32* %6, align 4
  %92 = call i32 @solo_reg_write(%struct.solo_dev* %88, i32 %90, i32 %91)
  %93 = load %struct.solo_dev*, %struct.solo_dev** %5, align 8
  %94 = load i32, i32* %4, align 4
  %95 = call i32 @SOLO_VE_CH_GOP_E(i32 %94)
  %96 = load %struct.solo_enc_dev*, %struct.solo_enc_dev** %3, align 8
  %97 = getelementptr inbounds %struct.solo_enc_dev, %struct.solo_enc_dev* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @solo_reg_write(%struct.solo_dev* %93, i32 %95, i32 %98)
  %100 = load %struct.solo_dev*, %struct.solo_dev** %5, align 8
  %101 = load i32, i32* %4, align 4
  %102 = call i32 @SOLO_VE_CH_QP_E(i32 %101)
  %103 = load %struct.solo_enc_dev*, %struct.solo_enc_dev** %3, align 8
  %104 = getelementptr inbounds %struct.solo_enc_dev, %struct.solo_enc_dev* %103, i32 0, i32 5
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @solo_reg_write(%struct.solo_dev* %100, i32 %102, i32 %105)
  %107 = load %struct.solo_dev*, %struct.solo_dev** %5, align 8
  %108 = load i32, i32* %4, align 4
  %109 = call i32 @SOLO_CAP_CH_INTV_E(i32 %108)
  %110 = load i32, i32* %6, align 4
  %111 = call i32 @solo_reg_write(%struct.solo_dev* %107, i32 %109, i32 %110)
  %112 = load %struct.solo_dev*, %struct.solo_dev** %5, align 8
  %113 = load i32, i32* %4, align 4
  %114 = call i32 @SOLO_CAP_CH_SCALE(i32 %113)
  %115 = load %struct.solo_enc_dev*, %struct.solo_enc_dev** %3, align 8
  %116 = getelementptr inbounds %struct.solo_enc_dev, %struct.solo_enc_dev* %115, i32 0, i32 6
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @solo_reg_write(%struct.solo_dev* %112, i32 %114, i32 %117)
  store i32 0, i32* %2, align 4
  br label %119

119:                                              ; preds = %73, %22
  %120 = load i32, i32* %2, align 4
  ret i32 %120
}

declare dso_local i32 @solo_update_mode(%struct.solo_enc_dev*) #1

declare dso_local i32 @solo_reg_write(%struct.solo_dev*, i32, i32) #1

declare dso_local i32 @SOLO_CAP_CH_COMP_ENA_E(i32) #1

declare dso_local i32 @SOLO_CAP_CH_SCALE(i32) #1

declare dso_local i32 @SOLO_VE_CH_INTL(i32) #1

declare dso_local i32 @SOLO_VE_CH_GOP(i32) #1

declare dso_local i32 @SOLO_VE_CH_QP(i32) #1

declare dso_local i32 @SOLO_CAP_CH_INTV(i32) #1

declare dso_local i32 @SOLO_VE_CH_GOP_E(i32) #1

declare dso_local i32 @SOLO_VE_CH_QP_E(i32) #1

declare dso_local i32 @SOLO_CAP_CH_INTV_E(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
