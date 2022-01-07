; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_sunplus.c_sd_pkt_scan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_sunplus.c_sd_pkt_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }
%struct.sd = type { i32, i32* }

@sd_pkt_scan.ffd9 = internal global [2 x i32] [i32 255, i32 217], align 4
@SPCA533_OFFSET_DATA = common dso_local global i32 0, align 4
@SPCA536_OFFSET_DATA = common dso_local global i32 0, align 4
@SPCA50X_OFFSET_DATA = common dso_local global i32 0, align 4
@SPCA504_PCCAM600_OFFSET_DATA = common dso_local global i32 0, align 4
@LAST_PACKET = common dso_local global i32 0, align 4
@FIRST_PACKET = common dso_local global i32 0, align 4
@JPEG_HDR_SZ = common dso_local global i32 0, align 4
@INTER_PACKET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*, i32*, i32)* @sd_pkt_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sd_pkt_scan(%struct.gspca_dev* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.gspca_dev*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %11 = bitcast %struct.gspca_dev* %10 to %struct.sd*
  store %struct.sd* %11, %struct.sd** %7, align 8
  store i32 0, i32* %9, align 4
  %12 = load %struct.sd*, %struct.sd** %7, align 8
  %13 = getelementptr inbounds %struct.sd, %struct.sd* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  switch i32 %14, label %59 [
    i32 129, label %15
    i32 128, label %40
    i32 130, label %78
  ]

15:                                               ; preds = %3
  %16 = load i32*, i32** %5, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp eq i32 %18, 255
  br i1 %19, label %20, label %34

20:                                               ; preds = %15
  %21 = load i32*, i32** %5, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 1
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  br label %147

26:                                               ; preds = %20
  store i32 1, i32* %9, align 4
  %27 = load i32, i32* @SPCA533_OFFSET_DATA, align 4
  %28 = load i32*, i32** %5, align 8
  %29 = sext i32 %27 to i64
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  store i32* %30, i32** %5, align 8
  %31 = load i32, i32* @SPCA533_OFFSET_DATA, align 4
  %32 = load i32, i32* %6, align 4
  %33 = sub nsw i32 %32, %31
  store i32 %33, i32* %6, align 4
  br label %39

34:                                               ; preds = %15
  %35 = load i32*, i32** %5, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  store i32* %36, i32** %5, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sub nsw i32 %37, 1
  store i32 %38, i32* %6, align 4
  br label %39

39:                                               ; preds = %34, %26
  br label %97

40:                                               ; preds = %3
  %41 = load i32*, i32** %5, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %43, 255
  br i1 %44, label %45, label %53

45:                                               ; preds = %40
  store i32 1, i32* %9, align 4
  %46 = load i32, i32* @SPCA536_OFFSET_DATA, align 4
  %47 = load i32*, i32** %5, align 8
  %48 = sext i32 %46 to i64
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  store i32* %49, i32** %5, align 8
  %50 = load i32, i32* @SPCA536_OFFSET_DATA, align 4
  %51 = load i32, i32* %6, align 4
  %52 = sub nsw i32 %51, %50
  store i32 %52, i32* %6, align 4
  br label %58

53:                                               ; preds = %40
  %54 = load i32*, i32** %5, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 2
  store i32* %55, i32** %5, align 8
  %56 = load i32, i32* %6, align 4
  %57 = sub nsw i32 %56, 2
  store i32 %57, i32* %6, align 4
  br label %58

58:                                               ; preds = %53, %45
  br label %97

59:                                               ; preds = %3
  %60 = load i32*, i32** %5, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  %62 = load i32, i32* %61, align 4
  switch i32 %62, label %72 [
    i32 254, label %63
    i32 255, label %71
  ]

63:                                               ; preds = %59
  store i32 1, i32* %9, align 4
  %64 = load i32, i32* @SPCA50X_OFFSET_DATA, align 4
  %65 = load i32*, i32** %5, align 8
  %66 = sext i32 %64 to i64
  %67 = getelementptr inbounds i32, i32* %65, i64 %66
  store i32* %67, i32** %5, align 8
  %68 = load i32, i32* @SPCA50X_OFFSET_DATA, align 4
  %69 = load i32, i32* %6, align 4
  %70 = sub nsw i32 %69, %68
  store i32 %70, i32* %6, align 4
  br label %77

71:                                               ; preds = %59
  br label %147

72:                                               ; preds = %59
  %73 = load i32*, i32** %5, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 1
  store i32* %74, i32** %5, align 8
  %75 = load i32, i32* %6, align 4
  %76 = sub nsw i32 %75, 1
  store i32 %76, i32* %6, align 4
  br label %77

77:                                               ; preds = %72, %63
  br label %97

78:                                               ; preds = %3
  %79 = load i32*, i32** %5, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 0
  %81 = load i32, i32* %80, align 4
  switch i32 %81, label %91 [
    i32 254, label %82
    i32 255, label %90
  ]

82:                                               ; preds = %78
  store i32 1, i32* %9, align 4
  %83 = load i32, i32* @SPCA504_PCCAM600_OFFSET_DATA, align 4
  %84 = load i32*, i32** %5, align 8
  %85 = sext i32 %83 to i64
  %86 = getelementptr inbounds i32, i32* %84, i64 %85
  store i32* %86, i32** %5, align 8
  %87 = load i32, i32* @SPCA504_PCCAM600_OFFSET_DATA, align 4
  %88 = load i32, i32* %6, align 4
  %89 = sub nsw i32 %88, %87
  store i32 %89, i32* %6, align 4
  br label %96

90:                                               ; preds = %78
  br label %147

91:                                               ; preds = %78
  %92 = load i32*, i32** %5, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 1
  store i32* %93, i32** %5, align 8
  %94 = load i32, i32* %6, align 4
  %95 = sub nsw i32 %94, 1
  store i32 %95, i32* %6, align 4
  br label %96

96:                                               ; preds = %91, %82
  br label %97

97:                                               ; preds = %96, %77, %58, %39
  %98 = load i32, i32* %9, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %111

100:                                              ; preds = %97
  %101 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %102 = load i32, i32* @LAST_PACKET, align 4
  %103 = call i32 @gspca_frame_add(%struct.gspca_dev* %101, i32 %102, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @sd_pkt_scan.ffd9, i64 0, i64 0), i32 2)
  %104 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %105 = load i32, i32* @FIRST_PACKET, align 4
  %106 = load %struct.sd*, %struct.sd** %7, align 8
  %107 = getelementptr inbounds %struct.sd, %struct.sd* %106, i32 0, i32 1
  %108 = load i32*, i32** %107, align 8
  %109 = load i32, i32* @JPEG_HDR_SZ, align 4
  %110 = call i32 @gspca_frame_add(%struct.gspca_dev* %104, i32 %105, i32* %108, i32 %109)
  br label %111

111:                                              ; preds = %100, %97
  store i32 0, i32* %8, align 4
  br label %112

112:                                              ; preds = %137, %111
  %113 = load i32*, i32** %5, align 8
  %114 = load i32, i32* %8, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = icmp eq i32 %117, 255
  br i1 %118, label %119, label %134

119:                                              ; preds = %112
  %120 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %121 = load i32, i32* @INTER_PACKET, align 4
  %122 = load i32*, i32** %5, align 8
  %123 = load i32, i32* %8, align 4
  %124 = add nsw i32 %123, 1
  %125 = call i32 @gspca_frame_add(%struct.gspca_dev* %120, i32 %121, i32* %122, i32 %124)
  %126 = load i32, i32* %8, align 4
  %127 = load i32, i32* %6, align 4
  %128 = sub nsw i32 %127, %126
  store i32 %128, i32* %6, align 4
  %129 = load i32, i32* %8, align 4
  %130 = load i32*, i32** %5, align 8
  %131 = sext i32 %129 to i64
  %132 = getelementptr inbounds i32, i32* %130, i64 %131
  store i32* %132, i32** %5, align 8
  %133 = load i32*, i32** %5, align 8
  store i32 0, i32* %133, align 4
  store i32 0, i32* %8, align 4
  br label %134

134:                                              ; preds = %119, %112
  %135 = load i32, i32* %8, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %8, align 4
  br label %137

137:                                              ; preds = %134
  %138 = load i32, i32* %8, align 4
  %139 = load i32, i32* %6, align 4
  %140 = icmp slt i32 %138, %139
  br i1 %140, label %112, label %141

141:                                              ; preds = %137
  %142 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %143 = load i32, i32* @INTER_PACKET, align 4
  %144 = load i32*, i32** %5, align 8
  %145 = load i32, i32* %6, align 4
  %146 = call i32 @gspca_frame_add(%struct.gspca_dev* %142, i32 %143, i32* %144, i32 %145)
  br label %147

147:                                              ; preds = %141, %90, %71, %25
  ret void
}

declare dso_local i32 @gspca_frame_add(%struct.gspca_dev*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
