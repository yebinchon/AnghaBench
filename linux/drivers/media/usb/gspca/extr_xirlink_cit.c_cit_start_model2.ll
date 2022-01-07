; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_xirlink_cit.c_cit_start_model2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_xirlink_cit.c_cit_start_model2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sd = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*)* @cit_start_model2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cit_start_model2(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  %3 = alloca %struct.sd*, align 8
  %4 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  %5 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %6 = bitcast %struct.gspca_dev* %5 to %struct.sd*
  store %struct.sd* %6, %struct.sd** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %8 = call i32 @cit_write_reg(%struct.gspca_dev* %7, i32 0, i32 256)
  %9 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %10 = call i32 @cit_read_reg(%struct.gspca_dev* %9, i32 278, i32 0)
  %11 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %12 = call i32 @cit_write_reg(%struct.gspca_dev* %11, i32 96, i32 278)
  %13 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %14 = call i32 @cit_write_reg(%struct.gspca_dev* %13, i32 2, i32 274)
  %15 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %16 = call i32 @cit_write_reg(%struct.gspca_dev* %15, i32 188, i32 300)
  %17 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %18 = call i32 @cit_write_reg(%struct.gspca_dev* %17, i32 8, i32 299)
  %19 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %20 = call i32 @cit_write_reg(%struct.gspca_dev* %19, i32 0, i32 264)
  %21 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %22 = call i32 @cit_write_reg(%struct.gspca_dev* %21, i32 1, i32 307)
  %23 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %24 = call i32 @cit_write_reg(%struct.gspca_dev* %23, i32 1, i32 258)
  %25 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %26 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  switch i32 %28, label %68 [
    i32 176, label %29
    i32 320, label %42
    i32 352, label %55
  ]

29:                                               ; preds = %1
  %30 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %31 = call i32 @cit_write_reg(%struct.gspca_dev* %30, i32 44, i32 259)
  %32 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %33 = call i32 @cit_write_reg(%struct.gspca_dev* %32, i32 0, i32 260)
  %34 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %35 = call i32 @cit_write_reg(%struct.gspca_dev* %34, i32 36, i32 261)
  %36 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %37 = call i32 @cit_write_reg(%struct.gspca_dev* %36, i32 185, i32 266)
  %38 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %39 = call i32 @cit_write_reg(%struct.gspca_dev* %38, i32 56, i32 281)
  %40 = load %struct.sd*, %struct.sd** %3, align 8
  %41 = getelementptr inbounds %struct.sd, %struct.sd* %40, i32 0, i32 0
  store i32 10, i32* %41, align 4
  br label %68

42:                                               ; preds = %1
  %43 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %44 = call i32 @cit_write_reg(%struct.gspca_dev* %43, i32 40, i32 259)
  %45 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %46 = call i32 @cit_write_reg(%struct.gspca_dev* %45, i32 0, i32 260)
  %47 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %48 = call i32 @cit_write_reg(%struct.gspca_dev* %47, i32 30, i32 261)
  %49 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %50 = call i32 @cit_write_reg(%struct.gspca_dev* %49, i32 57, i32 266)
  %51 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %52 = call i32 @cit_write_reg(%struct.gspca_dev* %51, i32 112, i32 281)
  %53 = load %struct.sd*, %struct.sd** %3, align 8
  %54 = getelementptr inbounds %struct.sd, %struct.sd* %53, i32 0, i32 0
  store i32 2, i32* %54, align 4
  br label %68

55:                                               ; preds = %1
  %56 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %57 = call i32 @cit_write_reg(%struct.gspca_dev* %56, i32 44, i32 259)
  %58 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %59 = call i32 @cit_write_reg(%struct.gspca_dev* %58, i32 0, i32 260)
  %60 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %61 = call i32 @cit_write_reg(%struct.gspca_dev* %60, i32 36, i32 261)
  %62 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %63 = call i32 @cit_write_reg(%struct.gspca_dev* %62, i32 57, i32 266)
  %64 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %65 = call i32 @cit_write_reg(%struct.gspca_dev* %64, i32 112, i32 281)
  %66 = load %struct.sd*, %struct.sd** %3, align 8
  %67 = getelementptr inbounds %struct.sd, %struct.sd* %66, i32 0, i32 0
  store i32 2, i32* %67, align 4
  br label %68

68:                                               ; preds = %1, %55, %42, %29
  %69 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %70 = call i32 @cit_write_reg(%struct.gspca_dev* %69, i32 0, i32 256)
  %71 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %72 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  switch i32 %74, label %85 [
    i32 176, label %75
    i32 320, label %80
    i32 352, label %80
  ]

75:                                               ; preds = %68
  %76 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %77 = call i32 @cit_write_reg(%struct.gspca_dev* %76, i32 80, i32 273)
  %78 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %79 = call i32 @cit_write_reg(%struct.gspca_dev* %78, i32 208, i32 273)
  br label %85

80:                                               ; preds = %68, %68
  %81 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %82 = call i32 @cit_write_reg(%struct.gspca_dev* %81, i32 64, i32 273)
  %83 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %84 = call i32 @cit_write_reg(%struct.gspca_dev* %83, i32 192, i32 273)
  br label %85

85:                                               ; preds = %68, %80, %75
  %86 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %87 = call i32 @cit_write_reg(%struct.gspca_dev* %86, i32 155, i32 271)
  %88 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %89 = call i32 @cit_write_reg(%struct.gspca_dev* %88, i32 187, i32 271)
  %90 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %91 = call i32 @cit_model2_Packet1(%struct.gspca_dev* %90, i32 10, i32 92)
  %92 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %93 = call i32 @cit_model2_Packet1(%struct.gspca_dev* %92, i32 4, i32 0)
  %94 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %95 = call i32 @cit_model2_Packet1(%struct.gspca_dev* %94, i32 6, i32 251)
  %96 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %97 = call i32 @cit_model2_Packet1(%struct.gspca_dev* %96, i32 8, i32 0)
  %98 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %99 = call i32 @cit_model2_Packet1(%struct.gspca_dev* %98, i32 12, i32 9)
  %100 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %101 = call i32 @cit_model2_Packet1(%struct.gspca_dev* %100, i32 18, i32 10)
  %102 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %103 = call i32 @cit_model2_Packet1(%struct.gspca_dev* %102, i32 42, i32 0)
  %104 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %105 = call i32 @cit_model2_Packet1(%struct.gspca_dev* %104, i32 44, i32 0)
  %106 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %107 = call i32 @cit_model2_Packet1(%struct.gspca_dev* %106, i32 46, i32 8)
  %108 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %109 = call i32 @cit_model2_Packet1(%struct.gspca_dev* %108, i32 48, i32 0)
  %110 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %111 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  switch i32 %113, label %135 [
    i32 176, label %114
    i32 320, label %121
    i32 352, label %128
  ]

114:                                              ; preds = %85
  %115 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %116 = call i32 @cit_model2_Packet1(%struct.gspca_dev* %115, i32 20, i32 2)
  %117 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %118 = call i32 @cit_model2_Packet1(%struct.gspca_dev* %117, i32 22, i32 2)
  %119 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %120 = call i32 @cit_model2_Packet1(%struct.gspca_dev* %119, i32 24, i32 74)
  store i32 6, i32* %4, align 4
  br label %135

121:                                              ; preds = %85
  %122 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %123 = call i32 @cit_model2_Packet1(%struct.gspca_dev* %122, i32 20, i32 9)
  %124 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %125 = call i32 @cit_model2_Packet1(%struct.gspca_dev* %124, i32 22, i32 5)
  %126 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %127 = call i32 @cit_model2_Packet1(%struct.gspca_dev* %126, i32 24, i32 68)
  store i32 8, i32* %4, align 4
  br label %135

128:                                              ; preds = %85
  %129 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %130 = call i32 @cit_model2_Packet1(%struct.gspca_dev* %129, i32 20, i32 3)
  %131 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %132 = call i32 @cit_model2_Packet1(%struct.gspca_dev* %131, i32 22, i32 2)
  %133 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %134 = call i32 @cit_model2_Packet1(%struct.gspca_dev* %133, i32 24, i32 74)
  store i32 16, i32* %4, align 4
  br label %135

135:                                              ; preds = %85, %128, %121, %114
  %136 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %137 = load i32, i32* %4, align 4
  %138 = call i32 @cit_model2_Packet1(%struct.gspca_dev* %136, i32 28, i32 %137)
  %139 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %140 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  switch i32 %142, label %152 [
    i32 176, label %143
    i32 320, label %146
    i32 352, label %149
  ]

143:                                              ; preds = %135
  %144 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %145 = call i32 @cit_model2_Packet1(%struct.gspca_dev* %144, i32 38, i32 194)
  br label %152

146:                                              ; preds = %135
  %147 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %148 = call i32 @cit_model2_Packet1(%struct.gspca_dev* %147, i32 38, i32 68)
  br label %152

149:                                              ; preds = %135
  %150 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %151 = call i32 @cit_model2_Packet1(%struct.gspca_dev* %150, i32 38, i32 72)
  br label %152

152:                                              ; preds = %135, %149, %146, %143
  %153 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %154 = load %struct.sd*, %struct.sd** %3, align 8
  %155 = getelementptr inbounds %struct.sd, %struct.sd* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @v4l2_ctrl_g_ctrl(i32 %156)
  %158 = call i32 @cit_model2_Packet1(%struct.gspca_dev* %153, i32 40, i32 %157)
  %159 = load %struct.sd*, %struct.sd** %3, align 8
  %160 = getelementptr inbounds %struct.sd, %struct.sd* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @v4l2_ctrl_grab(i32 %161, i32 1)
  %163 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %164 = call i32 @cit_model2_Packet1(%struct.gspca_dev* %163, i32 30, i32 47)
  %165 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %166 = call i32 @cit_model2_Packet1(%struct.gspca_dev* %165, i32 32, i32 52)
  %167 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %168 = call i32 @cit_model2_Packet1(%struct.gspca_dev* %167, i32 34, i32 160)
  %169 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %170 = call i32 @cit_model2_Packet1(%struct.gspca_dev* %169, i32 48, i32 4)
  ret i32 0
}

declare dso_local i32 @cit_write_reg(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @cit_read_reg(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @cit_model2_Packet1(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @v4l2_ctrl_g_ctrl(i32) #1

declare dso_local i32 @v4l2_ctrl_grab(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
