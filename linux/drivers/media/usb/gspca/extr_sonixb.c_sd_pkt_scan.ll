; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_sonixb.c_sd_pkt_scan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_sonixb.c_sd_pkt_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i64, i32, %struct.cam }
%struct.cam = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.sd = type { i64, i32*, i32, i32, i32 }

@BRIDGE_103 = common dso_local global i64 0, align 8
@MODE_RAW = common dso_local global i32 0, align 4
@INTER_PACKET = common dso_local global i32 0, align 4
@LAST_PACKET = common dso_local global i32 0, align 4
@FIRST_PACKET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*, i32*, i32)* @sd_pkt_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sd_pkt_scan(%struct.gspca_dev* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.gspca_dev*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sd*, align 8
  %11 = alloca %struct.cam*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %16 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %17 = bitcast %struct.gspca_dev* %16 to %struct.sd*
  store %struct.sd* %17, %struct.sd** %10, align 8
  %18 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %19 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %18, i32 0, i32 2
  store %struct.cam* %19, %struct.cam** %11, align 8
  %20 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i32* @find_sof(%struct.gspca_dev* %20, i32* %21, i32 %22)
  store i32* %23, i32** %12, align 8
  %24 = load i32*, i32** %12, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %59

26:                                               ; preds = %3
  %27 = load %struct.sd*, %struct.sd** %10, align 8
  %28 = getelementptr inbounds %struct.sd, %struct.sd* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @BRIDGE_103, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  store i32 18, i32* %7, align 4
  store i32 3, i32* %8, align 4
  br label %34

33:                                               ; preds = %26
  store i32 12, i32* %7, align 4
  store i32 2, i32* %8, align 4
  br label %34

34:                                               ; preds = %33, %32
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = load i32*, i32** %12, align 8
  %38 = load i32*, i32** %5, align 8
  %39 = ptrtoint i32* %37 to i64
  %40 = ptrtoint i32* %38 to i64
  %41 = sub i64 %39, %40
  %42 = sdiv exact i64 %41, 4
  %43 = sub nsw i64 %36, %42
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %9, align 4
  %45 = load i32*, i32** %12, align 8
  %46 = load i32*, i32** %5, align 8
  %47 = ptrtoint i32* %45 to i64
  %48 = ptrtoint i32* %46 to i64
  %49 = sub i64 %47, %48
  %50 = sdiv exact i64 %49, 4
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = sub nsw i64 %50, %52
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %34
  store i32 0, i32* %6, align 4
  br label %58

58:                                               ; preds = %57, %34
  br label %59

59:                                               ; preds = %58, %3
  %60 = load %struct.cam*, %struct.cam** %11, align 8
  %61 = getelementptr inbounds %struct.cam, %struct.cam* %60, i32 0, i32 0
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %64 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @MODE_RAW, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %95

72:                                               ; preds = %59
  %73 = load %struct.cam*, %struct.cam** %11, align 8
  %74 = getelementptr inbounds %struct.cam, %struct.cam* %73, i32 0, i32 0
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %77 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %14, align 4
  %82 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %83 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  store i32 %84, i32* %13, align 4
  %85 = load i32, i32* %13, align 4
  %86 = load i32, i32* %6, align 4
  %87 = add nsw i32 %85, %86
  %88 = load i32, i32* %14, align 4
  %89 = icmp sgt i32 %87, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %72
  %91 = load i32, i32* %14, align 4
  %92 = load i32, i32* %13, align 4
  %93 = sub nsw i32 %91, %92
  store i32 %93, i32* %6, align 4
  br label %94

94:                                               ; preds = %90, %72
  br label %95

95:                                               ; preds = %94, %59
  %96 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %97 = load i32, i32* @INTER_PACKET, align 4
  %98 = load i32*, i32** %5, align 8
  %99 = load i32, i32* %6, align 4
  %100 = call i32 @gspca_frame_add(%struct.gspca_dev* %96, i32 %97, i32* %98, i32 %99)
  %101 = load i32*, i32** %12, align 8
  %102 = icmp ne i32* %101, null
  br i1 %102, label %103, label %161

103:                                              ; preds = %95
  %104 = load %struct.sd*, %struct.sd** %10, align 8
  %105 = getelementptr inbounds %struct.sd, %struct.sd* %104, i32 0, i32 1
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* %8, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.sd*, %struct.sd** %10, align 8
  %112 = getelementptr inbounds %struct.sd, %struct.sd* %111, i32 0, i32 1
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* %8, align 4
  %115 = add nsw i32 %114, 1
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %113, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = shl i32 %118, 8
  %120 = add nsw i32 %110, %119
  store i32 %120, i32* %15, align 4
  %121 = load i32, i32* %15, align 4
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %133

123:                                              ; preds = %103
  %124 = load %struct.sd*, %struct.sd** %10, align 8
  %125 = getelementptr inbounds %struct.sd, %struct.sd* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %123
  store i32 -1, i32* %15, align 4
  %129 = load %struct.sd*, %struct.sd** %10, align 8
  %130 = getelementptr inbounds %struct.sd, %struct.sd* %129, i32 0, i32 3
  store i32 2, i32* %130, align 4
  %131 = load %struct.sd*, %struct.sd** %10, align 8
  %132 = getelementptr inbounds %struct.sd, %struct.sd* %131, i32 0, i32 2
  store i32 0, i32* %132, align 8
  br label %137

133:                                              ; preds = %123, %103
  %134 = load i32, i32* %15, align 4
  %135 = load %struct.sd*, %struct.sd** %10, align 8
  %136 = getelementptr inbounds %struct.sd, %struct.sd* %135, i32 0, i32 2
  store i32 %134, i32* %136, align 8
  br label %137

137:                                              ; preds = %133, %128
  %138 = load %struct.sd*, %struct.sd** %10, align 8
  %139 = getelementptr inbounds %struct.sd, %struct.sd* %138, i32 0, i32 4
  %140 = load i32, i32* %15, align 4
  %141 = call i32 @atomic_set(i32* %139, i32 %140)
  %142 = load %struct.sd*, %struct.sd** %10, align 8
  %143 = getelementptr inbounds %struct.sd, %struct.sd* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %151

146:                                              ; preds = %137
  %147 = load %struct.sd*, %struct.sd** %10, align 8
  %148 = getelementptr inbounds %struct.sd, %struct.sd* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 4
  %150 = add nsw i32 %149, -1
  store i32 %150, i32* %148, align 4
  br label %155

151:                                              ; preds = %137
  %152 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %153 = load i32, i32* @LAST_PACKET, align 4
  %154 = call i32 @gspca_frame_add(%struct.gspca_dev* %152, i32 %153, i32* null, i32 0)
  br label %155

155:                                              ; preds = %151, %146
  %156 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %157 = load i32, i32* @FIRST_PACKET, align 4
  %158 = load i32*, i32** %12, align 8
  %159 = load i32, i32* %9, align 4
  %160 = call i32 @gspca_frame_add(%struct.gspca_dev* %156, i32 %157, i32* %158, i32 %159)
  br label %161

161:                                              ; preds = %155, %95
  ret void
}

declare dso_local i32* @find_sof(%struct.gspca_dev*, i32*, i32) #1

declare dso_local i32 @gspca_frame_add(%struct.gspca_dev*, i32, i32*, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
