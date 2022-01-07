; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/solo6x10/extr_solo6x10-v4l2-enc.c_solo_handle_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/solo6x10/extr_solo6x10-v4l2-enc.c_solo_handle_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.solo_dev = type { i64, i32, i32, %struct.TYPE_2__*, %struct.solo_enc_dev** }
%struct.TYPE_2__ = type { i32 }
%struct.solo_enc_dev = type { i32 }
%struct.solo_enc_buf = type { i32, i32, i32 }

@MP4_QS = common dso_local global i32 0, align 4
@SOLO_MAX_CHANNELS = common dso_local global i64 0, align 8
@SOLO_ENC_TYPE_EXT = common dso_local global i32 0, align 4
@SOLO_ENC_TYPE_STD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Got spurious packet for channel %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.solo_dev*)* @solo_handle_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @solo_handle_ring(%struct.solo_dev* %0) #0 {
  %2 = alloca %struct.solo_dev*, align 8
  %3 = alloca %struct.solo_enc_dev*, align 8
  %4 = alloca %struct.solo_enc_buf, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.solo_dev* %0, %struct.solo_dev** %2, align 8
  br label %9

9:                                                ; preds = %103, %94, %79, %64, %1
  %10 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %11 = call i32 @SOLO_VE_STATE(i32 11)
  %12 = call i32 @solo_reg_read(%struct.solo_dev* %10, i32 %11)
  %13 = and i32 %12, 255
  %14 = sext i32 %13 to i64
  store i64 %14, i64* %8, align 8
  %15 = load i64, i64* %8, align 8
  %16 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %17 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %15, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %9
  br label %106

21:                                               ; preds = %9
  %22 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %23 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %24 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @SOLO_VE_MPEG4_QUE(i64 %25)
  %27 = call i32 @solo_reg_read(%struct.solo_dev* %22, i32 %26)
  store i32 %27, i32* %5, align 4
  %28 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %29 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = add i64 %30, 1
  %32 = load i32, i32* @MP4_QS, align 4
  %33 = sext i32 %32 to i64
  %34 = urem i64 %31, %33
  %35 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %36 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  %37 = load i32, i32* %5, align 4
  %38 = ashr i32 %37, 24
  %39 = and i32 %38, 31
  %40 = sext i32 %39 to i64
  store i64 %40, i64* %7, align 8
  %41 = load i32, i32* %5, align 4
  %42 = and i32 %41, 16777215
  store i32 %42, i32* %6, align 4
  %43 = load i64, i64* %7, align 8
  %44 = load i64, i64* @SOLO_MAX_CHANNELS, align 8
  %45 = icmp uge i64 %43, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %21
  %47 = load i64, i64* @SOLO_MAX_CHANNELS, align 8
  %48 = load i64, i64* %7, align 8
  %49 = sub i64 %48, %47
  store i64 %49, i64* %7, align 8
  %50 = load i32, i32* @SOLO_ENC_TYPE_EXT, align 4
  %51 = getelementptr inbounds %struct.solo_enc_buf, %struct.solo_enc_buf* %4, i32 0, i32 2
  store i32 %50, i32* %51, align 4
  br label %55

52:                                               ; preds = %21
  %53 = load i32, i32* @SOLO_ENC_TYPE_STD, align 4
  %54 = getelementptr inbounds %struct.solo_enc_buf, %struct.solo_enc_buf* %4, i32 0, i32 2
  store i32 %53, i32* %54, align 4
  br label %55

55:                                               ; preds = %52, %46
  %56 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %57 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %56, i32 0, i32 4
  %58 = load %struct.solo_enc_dev**, %struct.solo_enc_dev*** %57, align 8
  %59 = load i64, i64* %7, align 8
  %60 = getelementptr inbounds %struct.solo_enc_dev*, %struct.solo_enc_dev** %58, i64 %59
  %61 = load %struct.solo_enc_dev*, %struct.solo_enc_dev** %60, align 8
  store %struct.solo_enc_dev* %61, %struct.solo_enc_dev** %3, align 8
  %62 = load %struct.solo_enc_dev*, %struct.solo_enc_dev** %3, align 8
  %63 = icmp eq %struct.solo_enc_dev* %62, null
  br i1 %63, label %64, label %71

64:                                               ; preds = %55
  %65 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %66 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %65, i32 0, i32 3
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i64, i64* %7, align 8
  %70 = call i32 @dev_err(i32* %68, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %69)
  br label %9

71:                                               ; preds = %55
  %72 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %73 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %74 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %6, align 4
  %77 = call i64 @enc_get_mpeg_dma(%struct.solo_dev* %72, i32 %75, i32 %76, i32 4)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %71
  br label %9

80:                                               ; preds = %71
  %81 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %82 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = getelementptr inbounds %struct.solo_enc_buf, %struct.solo_enc_buf* %4, i32 0, i32 1
  store i32 %83, i32* %84, align 4
  %85 = getelementptr inbounds %struct.solo_enc_buf, %struct.solo_enc_buf* %4, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i64 @vop_mpeg_offset(i32 %86)
  %88 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %89 = call i64 @SOLO_MP4E_EXT_ADDR(%struct.solo_dev* %88)
  %90 = load i32, i32* %6, align 4
  %91 = sext i32 %90 to i64
  %92 = add nsw i64 %89, %91
  %93 = icmp ne i64 %87, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %80
  br label %9

95:                                               ; preds = %80
  %96 = load %struct.solo_enc_dev*, %struct.solo_enc_dev** %3, align 8
  %97 = call i64 @solo_motion_detected(%struct.solo_enc_dev* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %95
  %100 = getelementptr inbounds %struct.solo_enc_buf, %struct.solo_enc_buf* %4, i32 0, i32 0
  store i32 1, i32* %100, align 4
  br label %103

101:                                              ; preds = %95
  %102 = getelementptr inbounds %struct.solo_enc_buf, %struct.solo_enc_buf* %4, i32 0, i32 0
  store i32 0, i32* %102, align 4
  br label %103

103:                                              ; preds = %101, %99
  %104 = load %struct.solo_enc_dev*, %struct.solo_enc_dev** %3, align 8
  %105 = call i32 @solo_enc_handle_one(%struct.solo_enc_dev* %104, %struct.solo_enc_buf* %4)
  br label %9

106:                                              ; preds = %20
  ret void
}

declare dso_local i32 @solo_reg_read(%struct.solo_dev*, i32) #1

declare dso_local i32 @SOLO_VE_STATE(i32) #1

declare dso_local i32 @SOLO_VE_MPEG4_QUE(i64) #1

declare dso_local i32 @dev_err(i32*, i8*, i64) #1

declare dso_local i64 @enc_get_mpeg_dma(%struct.solo_dev*, i32, i32, i32) #1

declare dso_local i64 @vop_mpeg_offset(i32) #1

declare dso_local i64 @SOLO_MP4E_EXT_ADDR(%struct.solo_dev*) #1

declare dso_local i64 @solo_motion_detected(%struct.solo_enc_dev*) #1

declare dso_local i32 @solo_enc_handle_one(%struct.solo_enc_dev*, %struct.solo_enc_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
