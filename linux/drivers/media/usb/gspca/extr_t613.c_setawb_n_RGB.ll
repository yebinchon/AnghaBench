; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_t613.c_setawb_n_RGB.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_t613.c_setawb_n_RGB.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.gspca_dev = type { i32 }
%struct.sd = type { i64, %struct.TYPE_9__*, %struct.TYPE_8__*, %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@__const.setawb_n_RGB.all_gain_reg = private unnamed_addr constant [8 x i32] [i32 135, i32 0, i32 136, i32 0, i32 137, i32 0, i32 128, i32 0], align 16
@sensor_data = common dso_local global %struct.TYPE_10__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*)* @setawb_n_RGB to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setawb_n_RGB(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  %3 = alloca %struct.sd*, align 8
  %4 = alloca [8 x i32], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  %8 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %9 = bitcast %struct.gspca_dev* %8 to %struct.sd*
  store %struct.sd* %9, %struct.sd** %3, align 8
  %10 = bitcast [8 x i32]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %10, i8* align 16 bitcast ([8 x i32]* @__const.setawb_n_RGB.all_gain_reg to i8*), i64 32, i1 false)
  %11 = load %struct.sd*, %struct.sd** %3, align 8
  %12 = getelementptr inbounds %struct.sd, %struct.sd* %11, i32 0, i32 4
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.sd*, %struct.sd** %3, align 8
  %18 = getelementptr inbounds %struct.sd, %struct.sd* %17, i32 0, i32 3
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %16, %21
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp sgt i32 %23, 64
  br i1 %24, label %25, label %26

25:                                               ; preds = %1
  store i32 64, i32* %5, align 4
  br label %31

26:                                               ; preds = %1
  %27 = load i32, i32* %5, align 4
  %28 = icmp slt i32 %27, 16
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  store i32 16, i32* %5, align 4
  br label %30

30:                                               ; preds = %29, %26
  br label %31

31:                                               ; preds = %30, %25
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.sd*, %struct.sd** %3, align 8
  %34 = getelementptr inbounds %struct.sd, %struct.sd* %33, i32 0, i32 2
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %32, %37
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp sgt i32 %39, 64
  br i1 %40, label %41, label %42

41:                                               ; preds = %31
  store i32 64, i32* %6, align 4
  br label %47

42:                                               ; preds = %31
  %43 = load i32, i32* %6, align 4
  %44 = icmp slt i32 %43, 16
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  store i32 16, i32* %6, align 4
  br label %46

46:                                               ; preds = %45, %42
  br label %47

47:                                               ; preds = %46, %41
  %48 = load i32, i32* %5, align 4
  %49 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1
  store i32 %48, i32* %49, align 4
  %50 = load i32, i32* %6, align 4
  %51 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3
  store i32 %50, i32* %51, align 4
  %52 = load i32, i32* %7, align 4
  %53 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5
  store i32 %52, i32* %53, align 4
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** @sensor_data, align 8
  %55 = load %struct.sd*, %struct.sd** %3, align 8
  %56 = getelementptr inbounds %struct.sd, %struct.sd* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7
  store i32 %60, i32* %61, align 4
  %62 = load %struct.sd*, %struct.sd** %3, align 8
  %63 = getelementptr inbounds %struct.sd, %struct.sd* %62, i32 0, i32 1
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %72, label %68

68:                                               ; preds = %47
  %69 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7
  %70 = load i32, i32* %69, align 4
  %71 = and i32 %70, -5
  store i32 %71, i32* %69, align 4
  br label %72

72:                                               ; preds = %68, %47
  %73 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %74 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0
  %75 = call i32 @reg_w_buf(%struct.gspca_dev* %73, i32* %74, i32 32)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @reg_w_buf(%struct.gspca_dev*, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
