; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_topro.c_sd_dq_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_topro.c_sd_dq_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32*, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.sd = type { i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"bulk err %d\0A\00", align 1
@AG_CNT_START = common dso_local global i32 0, align 4
@BRIDGE_TP6810 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*)* @sd_dq_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sd_dq_callback(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  %3 = alloca %struct.sd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  %9 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %10 = bitcast %struct.gspca_dev* %9 to %struct.sd*
  store %struct.sd* %10, %struct.sd** %3, align 8
  %11 = load %struct.sd*, %struct.sd** %3, align 8
  %12 = getelementptr inbounds %struct.sd, %struct.sd* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %227

16:                                               ; preds = %1
  %17 = load %struct.sd*, %struct.sd** %3, align 8
  %18 = getelementptr inbounds %struct.sd, %struct.sd* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %19, -1
  store i32 %20, i32* %18, align 4
  %21 = icmp sgt i32 %20, 5
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  br label %227

23:                                               ; preds = %16
  %24 = load %struct.sd*, %struct.sd** %3, align 8
  %25 = getelementptr inbounds %struct.sd, %struct.sd* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %27 [
    i32 4, label %30
    i32 3, label %33
    i32 2, label %36
    i32 1, label %54
    i32 0, label %57
  ]

27:                                               ; preds = %23
  %28 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %29 = call i32 @reg_w(%struct.gspca_dev* %28, i32 125, i32 0)
  br label %227

30:                                               ; preds = %23
  %31 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %32 = call i32 @reg_w(%struct.gspca_dev* %31, i32 39, i32 176)
  br label %227

33:                                               ; preds = %23
  %34 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %35 = call i32 @reg_w(%struct.gspca_dev* %34, i32 12, i32 1)
  br label %227

36:                                               ; preds = %23
  %37 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %38 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %41 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @usb_rcvbulkpipe(i32 %42, i32 2)
  %44 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %45 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = call i32 @usb_bulk_msg(i32 %39, i32 %43, i32* %46, i32 32, i32* %5, i32 500)
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* %4, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %36
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @pr_err(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %51)
  br label %227

53:                                               ; preds = %36
  br label %227

54:                                               ; preds = %23
  %55 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %56 = call i32 @reg_w(%struct.gspca_dev* %55, i32 39, i32 208)
  br label %227

57:                                               ; preds = %23
  %58 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %59 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %62 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @usb_rcvbulkpipe(i32 %63, i32 2)
  %65 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %66 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = call i32 @usb_bulk_msg(i32 %60, i32 %64, i32* %67, i32 32, i32* %5, i32 500)
  store i32 %68, i32* %4, align 4
  %69 = load i32, i32* %4, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %57
  %72 = load i32, i32* %4, align 4
  %73 = call i32 @pr_err(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %72)
  br label %227

74:                                               ; preds = %57
  %75 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %76 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 8
  %79 = load i32, i32* %78, align 4
  %80 = shl i32 %79, 8
  %81 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %82 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 7
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %80, %85
  %87 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %88 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 11
  %91 = load i32, i32* %90, align 4
  %92 = shl i32 %91, 8
  %93 = add nsw i32 %86, %92
  %94 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %95 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 10
  %98 = load i32, i32* %97, align 4
  %99 = add nsw i32 %93, %98
  %100 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %101 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 14
  %104 = load i32, i32* %103, align 4
  %105 = shl i32 %104, 8
  %106 = add nsw i32 %99, %105
  %107 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %108 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 13
  %111 = load i32, i32* %110, align 4
  %112 = add nsw i32 %106, %111
  %113 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %114 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 17
  %117 = load i32, i32* %116, align 4
  %118 = shl i32 %117, 8
  %119 = add nsw i32 %112, %118
  %120 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %121 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %120, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 16
  %124 = load i32, i32* %123, align 4
  %125 = add nsw i32 %119, %124
  %126 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %127 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %126, i32 0, i32 0
  %128 = load i32*, i32** %127, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 20
  %130 = load i32, i32* %129, align 4
  %131 = shl i32 %130, 8
  %132 = add nsw i32 %125, %131
  %133 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %134 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %133, i32 0, i32 0
  %135 = load i32*, i32** %134, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 19
  %137 = load i32, i32* %136, align 4
  %138 = add nsw i32 %132, %137
  %139 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %140 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %139, i32 0, i32 0
  %141 = load i32*, i32** %140, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 23
  %143 = load i32, i32* %142, align 4
  %144 = shl i32 %143, 8
  %145 = add nsw i32 %138, %144
  %146 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %147 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %146, i32 0, i32 0
  %148 = load i32*, i32** %147, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 22
  %150 = load i32, i32* %149, align 4
  %151 = add nsw i32 %145, %150
  %152 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %153 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %152, i32 0, i32 0
  %154 = load i32*, i32** %153, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 26
  %156 = load i32, i32* %155, align 4
  %157 = shl i32 %156, 8
  %158 = add nsw i32 %151, %157
  %159 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %160 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %159, i32 0, i32 0
  %161 = load i32*, i32** %160, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 25
  %163 = load i32, i32* %162, align 4
  %164 = add nsw i32 %158, %163
  %165 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %166 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %165, i32 0, i32 0
  %167 = load i32*, i32** %166, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 29
  %169 = load i32, i32* %168, align 4
  %170 = shl i32 %169, 8
  %171 = add nsw i32 %164, %170
  %172 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %173 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %172, i32 0, i32 0
  %174 = load i32*, i32** %173, align 8
  %175 = getelementptr inbounds i32, i32* %174, i64 28
  %176 = load i32, i32* %175, align 4
  %177 = add nsw i32 %171, %176
  %178 = sdiv i32 %177, 8
  store i32 %178, i32* %6, align 4
  %179 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %180 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %179, i32 0, i32 2
  %181 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = icmp eq i32 %182, 640
  br i1 %183, label %184, label %187

184:                                              ; preds = %74
  %185 = load i32, i32* %6, align 4
  %186 = sdiv i32 %185, 4
  store i32 %186, i32* %6, align 4
  br label %187

187:                                              ; preds = %184, %74
  %188 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %189 = call i32 @reg_w(%struct.gspca_dev* %188, i32 125, i32 0)
  %190 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %191 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 8
  %193 = call i32 @v4l2_ctrl_g_ctrl(i32 %192)
  store i32 %193, i32* %7, align 4
  %194 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %195 = load i32, i32* %6, align 4
  %196 = call i32 @gspca_expo_autogain(%struct.gspca_dev* %194, i32 %195, i32 60, i32 6, i32 2, i32 70)
  store i32 %196, i32* %4, align 4
  %197 = load i32, i32* @AG_CNT_START, align 4
  %198 = load %struct.sd*, %struct.sd** %3, align 8
  %199 = getelementptr inbounds %struct.sd, %struct.sd* %198, i32 0, i32 0
  store i32 %197, i32* %199, align 4
  %200 = load %struct.sd*, %struct.sd** %3, align 8
  %201 = getelementptr inbounds %struct.sd, %struct.sd* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = load i32, i32* @BRIDGE_TP6810, align 4
  %204 = icmp eq i32 %202, %203
  br i1 %204, label %205, label %226

205:                                              ; preds = %187
  %206 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %207 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 8
  %209 = call i32 @v4l2_ctrl_g_ctrl(i32 %208)
  store i32 %209, i32* %8, align 4
  %210 = load i32, i32* %7, align 4
  %211 = icmp sge i32 %210, 128
  br i1 %211, label %212, label %215

212:                                              ; preds = %205
  %213 = load i32, i32* %8, align 4
  %214 = icmp slt i32 %213, 128
  br i1 %214, label %221, label %215

215:                                              ; preds = %212, %205
  %216 = load i32, i32* %7, align 4
  %217 = icmp slt i32 %216, 128
  br i1 %217, label %218, label %225

218:                                              ; preds = %215
  %219 = load i32, i32* %8, align 4
  %220 = icmp sge i32 %219, 128
  br i1 %220, label %221, label %225

221:                                              ; preds = %218, %212
  %222 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %223 = load i32, i32* %8, align 4
  %224 = call i32 @setframerate(%struct.gspca_dev* %222, i32 %223)
  br label %225

225:                                              ; preds = %221, %218, %215
  br label %226

226:                                              ; preds = %225, %187
  br label %227

227:                                              ; preds = %15, %22, %226, %71, %54, %53, %50, %33, %30, %27
  ret void
}

declare dso_local i32 @reg_w(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @usb_bulk_msg(i32, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @usb_rcvbulkpipe(i32, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @v4l2_ctrl_g_ctrl(i32) #1

declare dso_local i32 @gspca_expo_autogain(%struct.gspca_dev*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @setframerate(%struct.gspca_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
