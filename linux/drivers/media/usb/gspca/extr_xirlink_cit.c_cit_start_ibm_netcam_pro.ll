; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_xirlink_cit.c_cit_start_ibm_netcam_pro.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_xirlink_cit.c_cit_start_ibm_netcam_pro.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@rca_input = common dso_local global i64 0, align 8
@rca_initdata = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*)* @cit_start_ibm_netcam_pro to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cit_start_ibm_netcam_pro(%struct.gspca_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gspca_dev*, align 8
  %4 = alloca i16, align 2
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %3, align 8
  store i16 0, i16* %4, align 2
  %7 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %8 = call i32 @cit_get_clock_div(%struct.gspca_dev* %7)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %6, align 4
  store i32 %12, i32* %2, align 4
  br label %188

13:                                               ; preds = %1
  %14 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %15 = call i32 @cit_write_reg(%struct.gspca_dev* %14, i16 zeroext 3, i32 307)
  %16 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %17 = call i32 @cit_write_reg(%struct.gspca_dev* %16, i16 zeroext 0, i32 279)
  %18 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %19 = call i32 @cit_write_reg(%struct.gspca_dev* %18, i16 zeroext 8, i32 291)
  %20 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %21 = call i32 @cit_write_reg(%struct.gspca_dev* %20, i16 zeroext 0, i32 256)
  %22 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %23 = call i32 @cit_write_reg(%struct.gspca_dev* %22, i16 zeroext 96, i32 278)
  %24 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %25 = call i32 @cit_write_reg(%struct.gspca_dev* %24, i16 zeroext 0, i32 307)
  %26 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %27 = call i32 @cit_write_reg(%struct.gspca_dev* %26, i16 zeroext 0, i32 291)
  %28 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %29 = call i32 @cit_write_reg(%struct.gspca_dev* %28, i16 zeroext 1, i32 279)
  %30 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %31 = call i32 @cit_write_reg(%struct.gspca_dev* %30, i16 zeroext 64, i32 264)
  %32 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %33 = call i32 @cit_write_reg(%struct.gspca_dev* %32, i16 zeroext 25, i32 300)
  %34 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %35 = call i32 @cit_write_reg(%struct.gspca_dev* %34, i16 zeroext 96, i32 278)
  %36 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %37 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %36, i32 73, i32 0)
  %38 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %39 = call i32 @cit_write_reg(%struct.gspca_dev* %38, i16 zeroext 0, i32 257)
  %40 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %41 = call i32 @cit_write_reg(%struct.gspca_dev* %40, i16 zeroext 58, i32 258)
  %42 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %43 = call i32 @cit_write_reg(%struct.gspca_dev* %42, i16 zeroext 160, i32 259)
  %44 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %45 = call i32 @cit_write_reg(%struct.gspca_dev* %44, i16 zeroext 120, i32 261)
  %46 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %47 = call i32 @cit_write_reg(%struct.gspca_dev* %46, i16 zeroext 0, i32 266)
  %48 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %49 = call i32 @cit_write_reg(%struct.gspca_dev* %48, i16 zeroext 2, i32 285)
  %50 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %51 = call i32 @cit_write_reg(%struct.gspca_dev* %50, i16 zeroext 0, i32 297)
  %52 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %53 = call i32 @cit_write_reg(%struct.gspca_dev* %52, i16 zeroext 252, i32 299)
  %54 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %55 = call i32 @cit_write_reg(%struct.gspca_dev* %54, i16 zeroext 34, i32 298)
  %56 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %57 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  switch i32 %59, label %98 [
    i32 160, label %60
    i32 320, label %79
  ]

60:                                               ; preds = %13
  %61 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %62 = call i32 @cit_write_reg(%struct.gspca_dev* %61, i16 zeroext 36, i32 267)
  %63 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %64 = call i32 @cit_write_reg(%struct.gspca_dev* %63, i16 zeroext 137, i32 281)
  %65 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %66 = call i32 @cit_write_reg(%struct.gspca_dev* %65, i16 zeroext 10, i32 283)
  %67 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %68 = call i32 @cit_write_reg(%struct.gspca_dev* %67, i16 zeroext 3, i32 286)
  %69 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %70 = call i32 @cit_write_reg(%struct.gspca_dev* %69, i16 zeroext 7, i32 260)
  %71 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %72 = call i32 @cit_write_reg(%struct.gspca_dev* %71, i16 zeroext 9, i32 282)
  %73 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %74 = call i32 @cit_write_reg(%struct.gspca_dev* %73, i16 zeroext 139, i32 284)
  %75 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %76 = call i32 @cit_write_reg(%struct.gspca_dev* %75, i16 zeroext 8, i32 280)
  %77 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %78 = call i32 @cit_write_reg(%struct.gspca_dev* %77, i16 zeroext 0, i32 306)
  br label %98

79:                                               ; preds = %13
  %80 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %81 = call i32 @cit_write_reg(%struct.gspca_dev* %80, i16 zeroext 40, i32 267)
  %82 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %83 = call i32 @cit_write_reg(%struct.gspca_dev* %82, i16 zeroext 217, i32 281)
  %84 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %85 = call i32 @cit_write_reg(%struct.gspca_dev* %84, i16 zeroext 6, i32 283)
  %86 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %87 = call i32 @cit_write_reg(%struct.gspca_dev* %86, i16 zeroext 0, i32 286)
  %88 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %89 = call i32 @cit_write_reg(%struct.gspca_dev* %88, i16 zeroext 14, i32 260)
  %90 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %91 = call i32 @cit_write_reg(%struct.gspca_dev* %90, i16 zeroext 4, i32 282)
  %92 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %93 = call i32 @cit_write_reg(%struct.gspca_dev* %92, i16 zeroext 63, i32 284)
  %94 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %95 = call i32 @cit_write_reg(%struct.gspca_dev* %94, i16 zeroext 12, i32 280)
  %96 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %97 = call i32 @cit_write_reg(%struct.gspca_dev* %96, i16 zeroext 0, i32 306)
  br label %98

98:                                               ; preds = %13, %79, %60
  %99 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %100 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %99, i32 25, i32 49)
  %101 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %102 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %101, i32 26, i32 3)
  %103 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %104 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %103, i32 27, i32 56)
  %105 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %106 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %105, i32 28, i32 0)
  %107 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %108 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %107, i32 36, i32 1)
  %109 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %110 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %109, i32 39, i32 1)
  %111 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %112 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %111, i32 42, i32 4)
  %113 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %114 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %113, i32 53, i32 11)
  %115 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %116 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %115, i32 63, i32 1)
  %117 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %118 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %117, i32 68, i32 0)
  %119 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %120 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %119, i32 84, i32 0)
  %121 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %122 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %121, i32 196, i32 0)
  %123 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %124 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %123, i32 231, i32 1)
  %125 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %126 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %125, i32 233, i32 1)
  %127 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %128 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %127, i32 238, i32 0)
  %129 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %130 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %129, i32 243, i32 192)
  %131 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %132 = call i32 @cit_write_reg(%struct.gspca_dev* %131, i16 zeroext 0, i32 265)
  %133 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %134 = load i32, i32* %6, align 4
  %135 = trunc i32 %134 to i16
  %136 = call i32 @cit_write_reg(%struct.gspca_dev* %133, i16 zeroext %135, i32 273)
  %137 = load i64, i64* @rca_input, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %187

139:                                              ; preds = %98
  store i32 0, i32* %5, align 4
  br label %140

140:                                              ; preds = %183, %139
  %141 = load i32, i32* %5, align 4
  %142 = load i32**, i32*** @rca_initdata, align 8
  %143 = call i32 @ARRAY_SIZE(i32** %142)
  %144 = icmp slt i32 %141, %143
  br i1 %144, label %145, label %186

145:                                              ; preds = %140
  %146 = load i32**, i32*** @rca_initdata, align 8
  %147 = load i32, i32* %5, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32*, i32** %146, i64 %148
  %150 = load i32*, i32** %149, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 0
  %152 = load i32, i32* %151, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %164

154:                                              ; preds = %145
  %155 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %156 = load i32**, i32*** @rca_initdata, align 8
  %157 = load i32, i32* %5, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32*, i32** %156, i64 %158
  %160 = load i32*, i32** %159, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 2
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @cit_read_reg(%struct.gspca_dev* %155, i32 %162, i32 0)
  br label %182

164:                                              ; preds = %145
  %165 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %166 = load i32**, i32*** @rca_initdata, align 8
  %167 = load i32, i32* %5, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32*, i32** %166, i64 %168
  %170 = load i32*, i32** %169, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 1
  %172 = load i32, i32* %171, align 4
  %173 = trunc i32 %172 to i16
  %174 = load i32**, i32*** @rca_initdata, align 8
  %175 = load i32, i32* %5, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i32*, i32** %174, i64 %176
  %178 = load i32*, i32** %177, align 8
  %179 = getelementptr inbounds i32, i32* %178, i64 2
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @cit_write_reg(%struct.gspca_dev* %165, i16 zeroext %173, i32 %180)
  br label %182

182:                                              ; preds = %164, %154
  br label %183

183:                                              ; preds = %182
  %184 = load i32, i32* %5, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %5, align 4
  br label %140

186:                                              ; preds = %140
  br label %187

187:                                              ; preds = %186, %98
  store i32 0, i32* %2, align 4
  br label %188

188:                                              ; preds = %187, %11
  %189 = load i32, i32* %2, align 4
  ret i32 %189
}

declare dso_local i32 @cit_get_clock_div(%struct.gspca_dev*) #1

declare dso_local i32 @cit_write_reg(%struct.gspca_dev*, i16 zeroext, i32) #1

declare dso_local i32 @cit_model3_Packet1(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32**) #1

declare dso_local i32 @cit_read_reg(%struct.gspca_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
