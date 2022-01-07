; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_xirlink_cit.c_cit_start_model3.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_xirlink_cit.c_cit_start_model3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@rca_input = common dso_local global i64 0, align 8
@rca_initdata = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*)* @cit_start_model3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cit_start_model3(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  %3 = alloca i16, align 2
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  store i16 0, i16* %3, align 2
  store i32 0, i32* %5, align 4
  %6 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %7 = call i32 @cit_read_reg(%struct.gspca_dev* %6, i32 296, i32 1)
  %8 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %9 = call i32 @cit_write_reg(%struct.gspca_dev* %8, i16 zeroext 0, i32 256)
  %10 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %11 = call i32 @cit_read_reg(%struct.gspca_dev* %10, i32 278, i32 0)
  %12 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %13 = call i32 @cit_write_reg(%struct.gspca_dev* %12, i16 zeroext 96, i32 278)
  %14 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %15 = call i32 @cit_write_reg(%struct.gspca_dev* %14, i16 zeroext 2, i32 274)
  %16 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %17 = call i32 @cit_write_reg(%struct.gspca_dev* %16, i16 zeroext 0, i32 291)
  %18 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %19 = call i32 @cit_write_reg(%struct.gspca_dev* %18, i16 zeroext 1, i32 279)
  %20 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %21 = call i32 @cit_write_reg(%struct.gspca_dev* %20, i16 zeroext 64, i32 264)
  %22 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %23 = call i32 @cit_write_reg(%struct.gspca_dev* %22, i16 zeroext 25, i32 300)
  %24 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %25 = call i32 @cit_write_reg(%struct.gspca_dev* %24, i16 zeroext 96, i32 278)
  %26 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %27 = call i32 @cit_write_reg(%struct.gspca_dev* %26, i16 zeroext 2, i32 277)
  %28 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %29 = call i32 @cit_write_reg(%struct.gspca_dev* %28, i16 zeroext 3, i32 277)
  %30 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %31 = call i32 @cit_read_reg(%struct.gspca_dev* %30, i32 277, i32 0)
  %32 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %33 = call i32 @cit_write_reg(%struct.gspca_dev* %32, i16 zeroext 11, i32 277)
  %34 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %35 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %34, i32 10, i32 64)
  %36 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %37 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %36, i32 11, i32 246)
  %38 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %39 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %38, i32 12, i32 2)
  %40 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %41 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %40, i32 13, i32 32)
  %42 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %43 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %42, i32 14, i32 51)
  %44 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %45 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %44, i32 15, i32 7)
  %46 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %47 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %46, i32 16, i32 0)
  %48 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %49 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %48, i32 17, i32 112)
  %50 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %51 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %50, i32 18, i32 48)
  %52 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %53 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %52, i32 19, i32 0)
  %54 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %55 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %54, i32 20, i32 1)
  %56 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %57 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %56, i32 21, i32 1)
  %58 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %59 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %58, i32 22, i32 1)
  %60 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %61 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %60, i32 23, i32 1)
  %62 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %63 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %62, i32 24, i32 0)
  %64 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %65 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %64, i32 30, i32 195)
  %66 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %67 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %66, i32 32, i32 0)
  %68 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %69 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %68, i32 40, i32 16)
  %70 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %71 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %70, i32 41, i32 84)
  %72 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %73 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %72, i32 42, i32 19)
  %74 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %75 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %74, i32 43, i32 7)
  %76 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %77 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %76, i32 45, i32 40)
  %78 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %79 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %78, i32 46, i32 0)
  %80 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %81 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %80, i32 49, i32 0)
  %82 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %83 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %82, i32 50, i32 0)
  %84 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %85 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %84, i32 51, i32 0)
  %86 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %87 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %86, i32 52, i32 0)
  %88 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %89 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %88, i32 53, i32 56)
  %90 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %91 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %90, i32 58, i32 1)
  %92 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %93 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %92, i32 60, i32 30)
  %94 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %95 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %94, i32 63, i32 10)
  %96 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %97 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %96, i32 65, i32 0)
  %98 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %99 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %98, i32 70, i32 63)
  %100 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %101 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %100, i32 71, i32 0)
  %102 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %103 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %102, i32 80, i32 5)
  %104 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %105 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %104, i32 82, i32 26)
  %106 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %107 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %106, i32 83, i32 3)
  %108 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %109 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %108, i32 90, i32 107)
  %110 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %111 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %110, i32 93, i32 30)
  %112 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %113 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %112, i32 94, i32 48)
  %114 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %115 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %114, i32 95, i32 65)
  %116 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %117 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %116, i32 100, i32 8)
  %118 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %119 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %118, i32 101, i32 21)
  %120 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %121 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %120, i32 104, i32 15)
  %122 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %123 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %122, i32 121, i32 0)
  %124 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %125 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %124, i32 122, i32 0)
  %126 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %127 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %126, i32 124, i32 63)
  %128 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %129 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %128, i32 130, i32 15)
  %130 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %131 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %130, i32 133, i32 0)
  %132 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %133 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %132, i32 153, i32 0)
  %134 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %135 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %134, i32 155, i32 35)
  %136 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %137 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %136, i32 156, i32 34)
  %138 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %139 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %138, i32 157, i32 150)
  %140 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %141 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %140, i32 158, i32 150)
  %142 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %143 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %142, i32 159, i32 10)
  %144 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %145 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  switch i32 %147, label %271 [
    i32 160, label %148
    i32 320, label %189
    i32 640, label %230
  ]

148:                                              ; preds = %1
  %149 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %150 = call i32 @cit_write_reg(%struct.gspca_dev* %149, i16 zeroext 0, i32 257)
  %151 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %152 = call i32 @cit_write_reg(%struct.gspca_dev* %151, i16 zeroext 160, i32 259)
  %153 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %154 = call i32 @cit_write_reg(%struct.gspca_dev* %153, i16 zeroext 120, i32 261)
  %155 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %156 = call i32 @cit_write_reg(%struct.gspca_dev* %155, i16 zeroext 0, i32 266)
  %157 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %158 = call i32 @cit_write_reg(%struct.gspca_dev* %157, i16 zeroext 36, i32 267)
  %159 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %160 = call i32 @cit_write_reg(%struct.gspca_dev* %159, i16 zeroext 169, i32 281)
  %161 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %162 = call i32 @cit_write_reg(%struct.gspca_dev* %161, i16 zeroext 22, i32 283)
  %163 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %164 = call i32 @cit_write_reg(%struct.gspca_dev* %163, i16 zeroext 2, i32 285)
  %165 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %166 = call i32 @cit_write_reg(%struct.gspca_dev* %165, i16 zeroext 3, i32 286)
  %167 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %168 = call i32 @cit_write_reg(%struct.gspca_dev* %167, i16 zeroext 0, i32 297)
  %169 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %170 = call i32 @cit_write_reg(%struct.gspca_dev* %169, i16 zeroext 252, i32 299)
  %171 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %172 = call i32 @cit_write_reg(%struct.gspca_dev* %171, i16 zeroext 24, i32 258)
  %173 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %174 = call i32 @cit_write_reg(%struct.gspca_dev* %173, i16 zeroext 4, i32 260)
  %175 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %176 = call i32 @cit_write_reg(%struct.gspca_dev* %175, i16 zeroext 4, i32 282)
  %177 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %178 = call i32 @cit_write_reg(%struct.gspca_dev* %177, i16 zeroext 40, i32 284)
  %179 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %180 = call i32 @cit_write_reg(%struct.gspca_dev* %179, i16 zeroext 34, i32 298)
  %181 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %182 = call i32 @cit_write_reg(%struct.gspca_dev* %181, i16 zeroext 0, i32 280)
  %183 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %184 = call i32 @cit_write_reg(%struct.gspca_dev* %183, i16 zeroext 0, i32 306)
  %185 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %186 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %185, i32 33, i32 1)
  %187 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %188 = call i32 @cit_write_reg(%struct.gspca_dev* %187, i16 zeroext 0, i32 265)
  store i32 3, i32* %5, align 4
  br label %271

189:                                              ; preds = %1
  %190 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %191 = call i32 @cit_write_reg(%struct.gspca_dev* %190, i16 zeroext 0, i32 257)
  %192 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %193 = call i32 @cit_write_reg(%struct.gspca_dev* %192, i16 zeroext 160, i32 259)
  %194 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %195 = call i32 @cit_write_reg(%struct.gspca_dev* %194, i16 zeroext 120, i32 261)
  %196 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %197 = call i32 @cit_write_reg(%struct.gspca_dev* %196, i16 zeroext 0, i32 266)
  %198 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %199 = call i32 @cit_write_reg(%struct.gspca_dev* %198, i16 zeroext 40, i32 267)
  %200 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %201 = call i32 @cit_write_reg(%struct.gspca_dev* %200, i16 zeroext 2, i32 285)
  %202 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %203 = call i32 @cit_write_reg(%struct.gspca_dev* %202, i16 zeroext 0, i32 286)
  %204 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %205 = call i32 @cit_write_reg(%struct.gspca_dev* %204, i16 zeroext 0, i32 297)
  %206 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %207 = call i32 @cit_write_reg(%struct.gspca_dev* %206, i16 zeroext 252, i32 299)
  %208 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %209 = call i32 @cit_write_reg(%struct.gspca_dev* %208, i16 zeroext 34, i32 298)
  %210 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %211 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %210, i32 33, i32 1)
  %212 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %213 = call i32 @cit_write_reg(%struct.gspca_dev* %212, i16 zeroext 0, i32 265)
  %214 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %215 = call i32 @cit_write_reg(%struct.gspca_dev* %214, i16 zeroext 217, i32 281)
  %216 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %217 = call i32 @cit_write_reg(%struct.gspca_dev* %216, i16 zeroext 6, i32 283)
  %218 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %219 = call i32 @cit_write_reg(%struct.gspca_dev* %218, i16 zeroext 33, i32 258)
  %220 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %221 = call i32 @cit_write_reg(%struct.gspca_dev* %220, i16 zeroext 16, i32 260)
  %222 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %223 = call i32 @cit_write_reg(%struct.gspca_dev* %222, i16 zeroext 4, i32 282)
  %224 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %225 = call i32 @cit_write_reg(%struct.gspca_dev* %224, i16 zeroext 63, i32 284)
  %226 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %227 = call i32 @cit_write_reg(%struct.gspca_dev* %226, i16 zeroext 28, i32 280)
  %228 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %229 = call i32 @cit_write_reg(%struct.gspca_dev* %228, i16 zeroext 0, i32 306)
  store i32 5, i32* %5, align 4
  br label %271

230:                                              ; preds = %1
  %231 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %232 = call i32 @cit_write_reg(%struct.gspca_dev* %231, i16 zeroext 240, i32 261)
  %233 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %234 = call i32 @cit_write_reg(%struct.gspca_dev* %233, i16 zeroext 0, i32 266)
  %235 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %236 = call i32 @cit_write_reg(%struct.gspca_dev* %235, i16 zeroext 56, i32 267)
  %237 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %238 = call i32 @cit_write_reg(%struct.gspca_dev* %237, i16 zeroext 217, i32 281)
  %239 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %240 = call i32 @cit_write_reg(%struct.gspca_dev* %239, i16 zeroext 6, i32 283)
  %241 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %242 = call i32 @cit_write_reg(%struct.gspca_dev* %241, i16 zeroext 4, i32 285)
  %243 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %244 = call i32 @cit_write_reg(%struct.gspca_dev* %243, i16 zeroext 3, i32 286)
  %245 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %246 = call i32 @cit_write_reg(%struct.gspca_dev* %245, i16 zeroext 0, i32 297)
  %247 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %248 = call i32 @cit_write_reg(%struct.gspca_dev* %247, i16 zeroext 252, i32 299)
  %249 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %250 = call i32 @cit_write_reg(%struct.gspca_dev* %249, i16 zeroext 33, i32 258)
  %251 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %252 = call i32 @cit_write_reg(%struct.gspca_dev* %251, i16 zeroext 22, i32 260)
  %253 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %254 = call i32 @cit_write_reg(%struct.gspca_dev* %253, i16 zeroext 4, i32 282)
  %255 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %256 = call i32 @cit_write_reg(%struct.gspca_dev* %255, i16 zeroext 63, i32 284)
  %257 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %258 = call i32 @cit_write_reg(%struct.gspca_dev* %257, i16 zeroext 34, i32 298)
  %259 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %260 = call i32 @cit_write_reg(%struct.gspca_dev* %259, i16 zeroext 28, i32 280)
  %261 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %262 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %261, i32 33, i32 1)
  %263 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %264 = call i32 @cit_write_reg(%struct.gspca_dev* %263, i16 zeroext 0, i32 265)
  %265 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %266 = call i32 @cit_write_reg(%struct.gspca_dev* %265, i16 zeroext 64, i32 257)
  %267 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %268 = call i32 @cit_write_reg(%struct.gspca_dev* %267, i16 zeroext 64, i32 259)
  %269 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %270 = call i32 @cit_write_reg(%struct.gspca_dev* %269, i16 zeroext 0, i32 306)
  store i32 7, i32* %5, align 4
  br label %271

271:                                              ; preds = %1, %230, %189, %148
  %272 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %273 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %272, i32 126, i32 14)
  %274 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %275 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %274, i32 54, i32 17)
  %276 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %277 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %276, i32 96, i32 2)
  %278 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %279 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %278, i32 97, i32 4)
  %280 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %281 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %280, i32 98, i32 5)
  %282 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %283 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %282, i32 99, i32 20)
  %284 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %285 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %284, i32 150, i32 160)
  %286 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %287 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %286, i32 151, i32 150)
  %288 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %289 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %288, i32 103, i32 1)
  %290 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %291 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %290, i32 91, i32 12)
  %292 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %293 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %292, i32 92, i32 22)
  %294 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %295 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %294, i32 152, i32 11)
  %296 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %297 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %296, i32 44, i32 3)
  %298 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %299 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %298, i32 47, i32 42)
  %300 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %301 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %300, i32 48, i32 41)
  %302 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %303 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %302, i32 55, i32 2)
  %304 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %305 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %304, i32 56, i32 89)
  %306 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %307 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %306, i32 61, i32 46)
  %308 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %309 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %308, i32 62, i32 40)
  %310 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %311 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %310, i32 120, i32 5)
  %312 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %313 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %312, i32 123, i32 17)
  %314 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %315 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %314, i32 125, i32 75)
  %316 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %317 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %316, i32 127, i32 34)
  %318 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %319 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %318, i32 128, i32 12)
  %320 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %321 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %320, i32 129, i32 11)
  %322 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %323 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %322, i32 131, i32 253)
  %324 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %325 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %324, i32 134, i32 11)
  %326 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %327 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %326, i32 135, i32 11)
  %328 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %329 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %328, i32 126, i32 14)
  %330 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %331 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %330, i32 150, i32 160)
  %332 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %333 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %332, i32 151, i32 150)
  %334 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %335 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %334, i32 152, i32 11)
  %336 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %337 = load i32, i32* %5, align 4
  %338 = trunc i32 %337 to i16
  %339 = call i32 @cit_write_reg(%struct.gspca_dev* %336, i16 zeroext %338, i32 273)
  %340 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %341 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %340, i32 0, i32 0
  %342 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %341, i32 0, i32 0
  %343 = load i32, i32* %342, align 4
  switch i32 %343, label %375 [
    i32 160, label %344
    i32 320, label %355
    i32 640, label %366
  ]

344:                                              ; preds = %271
  %345 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %346 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %345, i32 31, i32 0)
  %347 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %348 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %347, i32 57, i32 31)
  %349 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %350 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %349, i32 59, i32 60)
  %351 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %352 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %351, i32 64, i32 10)
  %353 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %354 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %353, i32 81, i32 10)
  br label %375

355:                                              ; preds = %271
  %356 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %357 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %356, i32 31, i32 0)
  %358 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %359 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %358, i32 57, i32 31)
  %360 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %361 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %360, i32 59, i32 60)
  %362 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %363 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %362, i32 64, i32 8)
  %364 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %365 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %364, i32 81, i32 11)
  br label %375

366:                                              ; preds = %271
  %367 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %368 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %367, i32 31, i32 2)
  %369 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %370 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %369, i32 57, i32 62)
  %371 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %372 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %371, i32 64, i32 8)
  %373 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %374 = call i32 @cit_model3_Packet1(%struct.gspca_dev* %373, i32 81, i32 10)
  br label %375

375:                                              ; preds = %271, %366, %355, %344
  %376 = load i64, i64* @rca_input, align 8
  %377 = icmp ne i64 %376, 0
  br i1 %377, label %378, label %426

378:                                              ; preds = %375
  store i32 0, i32* %4, align 4
  br label %379

379:                                              ; preds = %422, %378
  %380 = load i32, i32* %4, align 4
  %381 = load i32**, i32*** @rca_initdata, align 8
  %382 = call i32 @ARRAY_SIZE(i32** %381)
  %383 = icmp slt i32 %380, %382
  br i1 %383, label %384, label %425

384:                                              ; preds = %379
  %385 = load i32**, i32*** @rca_initdata, align 8
  %386 = load i32, i32* %4, align 4
  %387 = sext i32 %386 to i64
  %388 = getelementptr inbounds i32*, i32** %385, i64 %387
  %389 = load i32*, i32** %388, align 8
  %390 = getelementptr inbounds i32, i32* %389, i64 0
  %391 = load i32, i32* %390, align 4
  %392 = icmp ne i32 %391, 0
  br i1 %392, label %393, label %403

393:                                              ; preds = %384
  %394 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %395 = load i32**, i32*** @rca_initdata, align 8
  %396 = load i32, i32* %4, align 4
  %397 = sext i32 %396 to i64
  %398 = getelementptr inbounds i32*, i32** %395, i64 %397
  %399 = load i32*, i32** %398, align 8
  %400 = getelementptr inbounds i32, i32* %399, i64 2
  %401 = load i32, i32* %400, align 4
  %402 = call i32 @cit_read_reg(%struct.gspca_dev* %394, i32 %401, i32 0)
  br label %421

403:                                              ; preds = %384
  %404 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %405 = load i32**, i32*** @rca_initdata, align 8
  %406 = load i32, i32* %4, align 4
  %407 = sext i32 %406 to i64
  %408 = getelementptr inbounds i32*, i32** %405, i64 %407
  %409 = load i32*, i32** %408, align 8
  %410 = getelementptr inbounds i32, i32* %409, i64 1
  %411 = load i32, i32* %410, align 4
  %412 = trunc i32 %411 to i16
  %413 = load i32**, i32*** @rca_initdata, align 8
  %414 = load i32, i32* %4, align 4
  %415 = sext i32 %414 to i64
  %416 = getelementptr inbounds i32*, i32** %413, i64 %415
  %417 = load i32*, i32** %416, align 8
  %418 = getelementptr inbounds i32, i32* %417, i64 2
  %419 = load i32, i32* %418, align 4
  %420 = call i32 @cit_write_reg(%struct.gspca_dev* %404, i16 zeroext %412, i32 %419)
  br label %421

421:                                              ; preds = %403, %393
  br label %422

422:                                              ; preds = %421
  %423 = load i32, i32* %4, align 4
  %424 = add nsw i32 %423, 1
  store i32 %424, i32* %4, align 4
  br label %379

425:                                              ; preds = %379
  br label %426

426:                                              ; preds = %425, %375
  ret i32 0
}

declare dso_local i32 @cit_read_reg(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @cit_write_reg(%struct.gspca_dev*, i16 zeroext, i32) #1

declare dso_local i32 @cit_model3_Packet1(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
