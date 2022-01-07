; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_sn9c20x.c_sd_pkt_scan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_sn9c20x.c_sd_pkt_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i64 }
%struct.sd = type { i32, i32*, i32, i32, i32 }

@sd_pkt_scan.frame_header = internal constant [6 x i32] [i32 255, i32 255, i32 0, i32 196, i32 196, i32 150], align 16
@LAST_PACKET = common dso_local global i64 0, align 8
@FIRST_PACKET = common dso_local global i64 0, align 8
@JPEG_HDR_SZ = common dso_local global i32 0, align 4
@INTER_PACKET = common dso_local global i64 0, align 8
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
  %12 = load %struct.sd*, %struct.sd** %7, align 8
  %13 = getelementptr inbounds %struct.sd, %struct.sd* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = and i32 %14, 3
  %16 = icmp eq i32 %15, 0
  %17 = zext i1 %16 to i32
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp sge i32 %18, 64
  br i1 %19, label %20, label %182

20:                                               ; preds = %3
  %21 = load i32*, i32** %5, align 8
  %22 = call i64 @memcmp(i32* %21, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @sd_pkt_scan.frame_header, i64 0, i64 0), i32 6)
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %182

24:                                               ; preds = %20
  %25 = load i32*, i32** %5, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 35
  %27 = load i32, i32* %26, align 4
  %28 = ashr i32 %27, 2
  %29 = and i32 %28, 3
  %30 = load i32*, i32** %5, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 20
  %32 = load i32, i32* %31, align 4
  %33 = shl i32 %32, 2
  %34 = or i32 %29, %33
  %35 = load i32*, i32** %5, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 19
  %37 = load i32, i32* %36, align 4
  %38 = shl i32 %37, 10
  %39 = or i32 %34, %38
  store i32 %39, i32* %8, align 4
  %40 = load i32*, i32** %5, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 35
  %42 = load i32, i32* %41, align 4
  %43 = ashr i32 %42, 4
  %44 = and i32 %43, 3
  %45 = load i32*, i32** %5, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 22
  %47 = load i32, i32* %46, align 4
  %48 = shl i32 %47, 2
  %49 = or i32 %44, %48
  %50 = load i32*, i32** %5, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 21
  %52 = load i32, i32* %51, align 4
  %53 = shl i32 %52, 10
  %54 = or i32 %49, %53
  %55 = load i32, i32* %8, align 4
  %56 = add nsw i32 %55, %54
  store i32 %56, i32* %8, align 4
  %57 = load i32*, i32** %5, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 35
  %59 = load i32, i32* %58, align 4
  %60 = ashr i32 %59, 6
  %61 = and i32 %60, 3
  %62 = load i32*, i32** %5, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 24
  %64 = load i32, i32* %63, align 4
  %65 = shl i32 %64, 2
  %66 = or i32 %61, %65
  %67 = load i32*, i32** %5, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 23
  %69 = load i32, i32* %68, align 4
  %70 = shl i32 %69, 10
  %71 = or i32 %66, %70
  %72 = load i32, i32* %8, align 4
  %73 = add nsw i32 %72, %71
  store i32 %73, i32* %8, align 4
  %74 = load i32*, i32** %5, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 36
  %76 = load i32, i32* %75, align 4
  %77 = and i32 %76, 3
  %78 = load i32*, i32** %5, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 26
  %80 = load i32, i32* %79, align 4
  %81 = shl i32 %80, 2
  %82 = or i32 %77, %81
  %83 = load i32*, i32** %5, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 25
  %85 = load i32, i32* %84, align 4
  %86 = shl i32 %85, 10
  %87 = or i32 %82, %86
  %88 = load i32, i32* %8, align 4
  %89 = add nsw i32 %88, %87
  store i32 %89, i32* %8, align 4
  %90 = load i32*, i32** %5, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 36
  %92 = load i32, i32* %91, align 4
  %93 = ashr i32 %92, 2
  %94 = and i32 %93, 3
  %95 = load i32*, i32** %5, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 28
  %97 = load i32, i32* %96, align 4
  %98 = shl i32 %97, 2
  %99 = or i32 %94, %98
  %100 = load i32*, i32** %5, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 27
  %102 = load i32, i32* %101, align 4
  %103 = shl i32 %102, 10
  %104 = or i32 %99, %103
  %105 = load i32, i32* %8, align 4
  %106 = add nsw i32 %105, %104
  store i32 %106, i32* %8, align 4
  %107 = load i32*, i32** %5, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 36
  %109 = load i32, i32* %108, align 4
  %110 = ashr i32 %109, 4
  %111 = and i32 %110, 3
  %112 = load i32*, i32** %5, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 30
  %114 = load i32, i32* %113, align 4
  %115 = shl i32 %114, 2
  %116 = or i32 %111, %115
  %117 = load i32*, i32** %5, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 29
  %119 = load i32, i32* %118, align 4
  %120 = shl i32 %119, 10
  %121 = or i32 %116, %120
  %122 = load i32, i32* %8, align 4
  %123 = add nsw i32 %122, %121
  store i32 %123, i32* %8, align 4
  %124 = load i32*, i32** %5, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 36
  %126 = load i32, i32* %125, align 4
  %127 = ashr i32 %126, 6
  %128 = and i32 %127, 3
  %129 = load i32*, i32** %5, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 32
  %131 = load i32, i32* %130, align 4
  %132 = shl i32 %131, 2
  %133 = or i32 %128, %132
  %134 = load i32*, i32** %5, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 31
  %136 = load i32, i32* %135, align 4
  %137 = shl i32 %136, 10
  %138 = or i32 %133, %137
  %139 = load i32, i32* %8, align 4
  %140 = add nsw i32 %139, %138
  store i32 %140, i32* %8, align 4
  %141 = load i32*, i32** %5, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 44
  %143 = load i32, i32* %142, align 4
  %144 = ashr i32 %143, 4
  %145 = and i32 %144, 3
  %146 = load i32*, i32** %5, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 34
  %148 = load i32, i32* %147, align 4
  %149 = shl i32 %148, 2
  %150 = or i32 %145, %149
  %151 = load i32*, i32** %5, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 33
  %153 = load i32, i32* %152, align 4
  %154 = shl i32 %153, 10
  %155 = or i32 %150, %154
  %156 = load i32, i32* %8, align 4
  %157 = add nsw i32 %156, %155
  store i32 %157, i32* %8, align 4
  %158 = load i32, i32* %8, align 4
  %159 = ashr i32 %158, 9
  store i32 %159, i32* %8, align 4
  %160 = load %struct.sd*, %struct.sd** %7, align 8
  %161 = getelementptr inbounds %struct.sd, %struct.sd* %160, i32 0, i32 4
  %162 = load i32, i32* %8, align 4
  %163 = call i32 @atomic_set(i32* %161, i32 %162)
  %164 = load i32, i32* %9, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %170

166:                                              ; preds = %24
  %167 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %168 = load i32*, i32** %5, align 8
  %169 = call i32 @transfer_check(%struct.gspca_dev* %167, i32* %168)
  br label %170

170:                                              ; preds = %166, %24
  %171 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %172 = load i64, i64* @LAST_PACKET, align 8
  %173 = call i32 @gspca_frame_add(%struct.gspca_dev* %171, i64 %172, i32* null, i32 0)
  %174 = load i32, i32* %6, align 4
  %175 = sub nsw i32 %174, 64
  store i32 %175, i32* %6, align 4
  %176 = load i32, i32* %6, align 4
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %170
  br label %230

179:                                              ; preds = %170
  %180 = load i32*, i32** %5, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 64
  store i32* %181, i32** %5, align 8
  br label %182

182:                                              ; preds = %179, %20, %3
  %183 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %184 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = load i64, i64* @LAST_PACKET, align 8
  %187 = icmp eq i64 %185, %186
  br i1 %187, label %188, label %211

188:                                              ; preds = %182
  %189 = load i32, i32* %9, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %204

191:                                              ; preds = %188
  %192 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %193 = load i64, i64* @FIRST_PACKET, align 8
  %194 = load %struct.sd*, %struct.sd** %7, align 8
  %195 = getelementptr inbounds %struct.sd, %struct.sd* %194, i32 0, i32 1
  %196 = load i32*, i32** %195, align 8
  %197 = load i32, i32* @JPEG_HDR_SZ, align 4
  %198 = call i32 @gspca_frame_add(%struct.gspca_dev* %192, i64 %193, i32* %196, i32 %197)
  %199 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %200 = load i64, i64* @INTER_PACKET, align 8
  %201 = load i32*, i32** %5, align 8
  %202 = load i32, i32* %6, align 4
  %203 = call i32 @gspca_frame_add(%struct.gspca_dev* %199, i64 %200, i32* %201, i32 %202)
  br label %210

204:                                              ; preds = %188
  %205 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %206 = load i64, i64* @FIRST_PACKET, align 8
  %207 = load i32*, i32** %5, align 8
  %208 = load i32, i32* %6, align 4
  %209 = call i32 @gspca_frame_add(%struct.gspca_dev* %205, i64 %206, i32* %207, i32 %208)
  br label %210

210:                                              ; preds = %204, %191
  br label %230

211:                                              ; preds = %182
  %212 = load i32, i32* %9, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %224

214:                                              ; preds = %211
  %215 = load %struct.sd*, %struct.sd** %7, align 8
  %216 = getelementptr inbounds %struct.sd, %struct.sd* %215, i32 0, i32 3
  %217 = load i32, i32* %216, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %216, align 4
  %219 = load i32, i32* %6, align 4
  %220 = load %struct.sd*, %struct.sd** %7, align 8
  %221 = getelementptr inbounds %struct.sd, %struct.sd* %220, i32 0, i32 2
  %222 = load i32, i32* %221, align 8
  %223 = add nsw i32 %222, %219
  store i32 %223, i32* %221, align 8
  br label %224

224:                                              ; preds = %214, %211
  %225 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %226 = load i64, i64* @INTER_PACKET, align 8
  %227 = load i32*, i32** %5, align 8
  %228 = load i32, i32* %6, align 4
  %229 = call i32 @gspca_frame_add(%struct.gspca_dev* %225, i64 %226, i32* %227, i32 %228)
  br label %230

230:                                              ; preds = %178, %224, %210
  ret void
}

declare dso_local i64 @memcmp(i32*, i32*, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @transfer_check(%struct.gspca_dev*, i32*) #1

declare dso_local i32 @gspca_frame_add(%struct.gspca_dev*, i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
