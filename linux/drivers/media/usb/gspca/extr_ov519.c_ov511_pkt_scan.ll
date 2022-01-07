; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_ov519.c_ov511_pkt_scan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_ov519.c_ov511_pkt_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.sd = type { i64 }

@.str = private unnamed_addr constant [50 x i8] c"Invalid frame size, got: %dx%d, requested: %dx%d\0A\00", align 1
@DISCARD_PACKET = common dso_local global i32 0, align 4
@LAST_PACKET = common dso_local global i32 0, align 4
@FIRST_PACKET = common dso_local global i32 0, align 4
@INTER_PACKET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*, i32*, i32)* @ov511_pkt_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ov511_pkt_scan(%struct.gspca_dev* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.gspca_dev*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sd*, align 8
  store %struct.gspca_dev* %0, %struct.gspca_dev** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %9 = bitcast %struct.gspca_dev* %8 to %struct.sd*
  store %struct.sd* %9, %struct.sd** %7, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32*, i32** %5, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 1
  %15 = load i32, i32* %14, align 4
  %16 = or i32 %12, %15
  %17 = load i32*, i32** %5, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 2
  %19 = load i32, i32* %18, align 4
  %20 = or i32 %16, %19
  %21 = load i32*, i32** %5, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 3
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %20, %23
  %25 = load i32*, i32** %5, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 4
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %24, %27
  %29 = load i32*, i32** %5, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 5
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %28, %31
  %33 = load i32*, i32** %5, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 6
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %32, %35
  %37 = load i32*, i32** %5, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 7
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %36, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %120, label %42

42:                                               ; preds = %3
  %43 = load i32*, i32** %5, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 8
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %120

48:                                               ; preds = %42
  %49 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %50 = load i32*, i32** %5, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 8
  %52 = load i32, i32* %51, align 4
  %53 = ashr i32 %52, 2
  %54 = and i32 %53, 1
  %55 = call i32 @ov51x_handle_button(%struct.gspca_dev* %49, i32 %54)
  %56 = load i32*, i32** %5, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 8
  %58 = load i32, i32* %57, align 4
  %59 = and i32 %58, 128
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %112

61:                                               ; preds = %48
  %62 = load i32*, i32** %5, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 9
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %64, 1
  %66 = mul nsw i32 %65, 8
  %67 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %68 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %66, %70
  br i1 %71, label %83, label %72

72:                                               ; preds = %61
  %73 = load i32*, i32** %5, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 10
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %75, 1
  %77 = mul nsw i32 %76, 8
  %78 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %79 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %77, %81
  br i1 %82, label %83, label %107

83:                                               ; preds = %72, %61
  %84 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %85 = load i32*, i32** %5, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 9
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %87, 1
  %89 = mul nsw i32 %88, 8
  %90 = load i32*, i32** %5, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 10
  %92 = load i32, i32* %91, align 4
  %93 = add nsw i32 %92, 1
  %94 = mul nsw i32 %93, 8
  %95 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %96 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %100 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @gspca_err(%struct.gspca_dev* %84, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %89, i32 %94, i32 %98, i32 %102)
  %104 = load i32, i32* @DISCARD_PACKET, align 4
  %105 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %106 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %105, i32 0, i32 0
  store i32 %104, i32* %106, align 4
  br label %128

107:                                              ; preds = %72
  %108 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %109 = load i32, i32* @LAST_PACKET, align 4
  %110 = load i32*, i32** %5, align 8
  %111 = call i32 @gspca_frame_add(%struct.gspca_dev* %108, i32 %109, i32* %110, i32 11)
  br label %128

112:                                              ; preds = %48
  %113 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %114 = load i32, i32* @FIRST_PACKET, align 4
  %115 = load i32*, i32** %5, align 8
  %116 = call i32 @gspca_frame_add(%struct.gspca_dev* %113, i32 %114, i32* %115, i32 0)
  %117 = load %struct.sd*, %struct.sd** %7, align 8
  %118 = getelementptr inbounds %struct.sd, %struct.sd* %117, i32 0, i32 0
  store i64 0, i64* %118, align 8
  br label %119

119:                                              ; preds = %112
  br label %120

120:                                              ; preds = %119, %42, %3
  %121 = load i32, i32* %6, align 4
  %122 = add nsw i32 %121, -1
  store i32 %122, i32* %6, align 4
  %123 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %124 = load i32, i32* @INTER_PACKET, align 4
  %125 = load i32*, i32** %5, align 8
  %126 = load i32, i32* %6, align 4
  %127 = call i32 @gspca_frame_add(%struct.gspca_dev* %123, i32 %124, i32* %125, i32 %126)
  br label %128

128:                                              ; preds = %120, %107, %83
  ret void
}

declare dso_local i32 @ov51x_handle_button(%struct.gspca_dev*, i32) #1

declare dso_local i32 @gspca_err(%struct.gspca_dev*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @gspca_frame_add(%struct.gspca_dev*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
