; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/cx231xx/extr_cx231xx-core.c_cx231xx_write_i2c_master.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/cx231xx/extr_cx231xx-core.c_cx231xx_write_i2c_master.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx231xx = type { i32 (i32*, %struct.cx231xx_i2c_xfer_data*)*, i32* }
%struct.cx231xx_i2c_xfer_data = type { i32, i32, i32, i32, i32*, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx231xx_write_i2c_master(%struct.cx231xx* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.cx231xx*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [4 x i32], align 16
  %17 = alloca %struct.cx231xx_i2c_xfer_data, align 8
  store %struct.cx231xx* %0, %struct.cx231xx** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %18 = bitcast [4 x i32]* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %18, i8 0, i64 16, i1 false)
  %19 = load i32, i32* %12, align 4
  %20 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 0
  store i32 %19, i32* %20, align 16
  %21 = load i32, i32* %12, align 4
  %22 = ashr i32 %21, 8
  %23 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 1
  store i32 %22, i32* %23, align 4
  %24 = load i32, i32* %12, align 4
  %25 = ashr i32 %24, 16
  %26 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 2
  store i32 %25, i32* %26, align 8
  %27 = load i32, i32* %12, align 4
  %28 = ashr i32 %27, 24
  %29 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 3
  store i32 %28, i32* %29, align 4
  %30 = load i32, i32* %11, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %7
  store i32 0, i32* %10, align 4
  br label %40

33:                                               ; preds = %7
  %34 = load i32, i32* %11, align 4
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load i32, i32* %10, align 4
  %38 = and i32 %37, 255
  store i32 %38, i32* %10, align 4
  br label %39

39:                                               ; preds = %36, %33
  br label %40

40:                                               ; preds = %39, %32
  %41 = load i32, i32* %9, align 4
  %42 = ashr i32 %41, 1
  %43 = getelementptr inbounds %struct.cx231xx_i2c_xfer_data, %struct.cx231xx_i2c_xfer_data* %17, i32 0, i32 0
  store i32 %42, i32* %43, align 8
  %44 = getelementptr inbounds %struct.cx231xx_i2c_xfer_data, %struct.cx231xx_i2c_xfer_data* %17, i32 0, i32 5
  store i64 0, i64* %44, align 8
  %45 = load i32, i32* %11, align 4
  %46 = getelementptr inbounds %struct.cx231xx_i2c_xfer_data, %struct.cx231xx_i2c_xfer_data* %17, i32 0, i32 1
  store i32 %45, i32* %46, align 4
  %47 = load i32, i32* %10, align 4
  %48 = getelementptr inbounds %struct.cx231xx_i2c_xfer_data, %struct.cx231xx_i2c_xfer_data* %17, i32 0, i32 2
  store i32 %47, i32* %48, align 8
  %49 = load i32, i32* %13, align 4
  %50 = getelementptr inbounds %struct.cx231xx_i2c_xfer_data, %struct.cx231xx_i2c_xfer_data* %17, i32 0, i32 3
  store i32 %49, i32* %50, align 4
  %51 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 0
  %52 = getelementptr inbounds %struct.cx231xx_i2c_xfer_data, %struct.cx231xx_i2c_xfer_data* %17, i32 0, i32 4
  store i32* %51, i32** %52, align 8
  %53 = load i32, i32* %14, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %40
  %56 = load %struct.cx231xx*, %struct.cx231xx** %8, align 8
  %57 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %56, i32 0, i32 0
  %58 = load i32 (i32*, %struct.cx231xx_i2c_xfer_data*)*, i32 (i32*, %struct.cx231xx_i2c_xfer_data*)** %57, align 8
  %59 = load %struct.cx231xx*, %struct.cx231xx** %8, align 8
  %60 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  %63 = call i32 %58(i32* %62, %struct.cx231xx_i2c_xfer_data* %17)
  store i32 %63, i32* %15, align 4
  br label %90

64:                                               ; preds = %40
  %65 = load i32, i32* %14, align 4
  %66 = icmp eq i32 %65, 1
  br i1 %66, label %67, label %76

67:                                               ; preds = %64
  %68 = load %struct.cx231xx*, %struct.cx231xx** %8, align 8
  %69 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %68, i32 0, i32 0
  %70 = load i32 (i32*, %struct.cx231xx_i2c_xfer_data*)*, i32 (i32*, %struct.cx231xx_i2c_xfer_data*)** %69, align 8
  %71 = load %struct.cx231xx*, %struct.cx231xx** %8, align 8
  %72 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 1
  %75 = call i32 %70(i32* %74, %struct.cx231xx_i2c_xfer_data* %17)
  store i32 %75, i32* %15, align 4
  br label %89

76:                                               ; preds = %64
  %77 = load i32, i32* %14, align 4
  %78 = icmp eq i32 %77, 2
  br i1 %78, label %79, label %88

79:                                               ; preds = %76
  %80 = load %struct.cx231xx*, %struct.cx231xx** %8, align 8
  %81 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %80, i32 0, i32 0
  %82 = load i32 (i32*, %struct.cx231xx_i2c_xfer_data*)*, i32 (i32*, %struct.cx231xx_i2c_xfer_data*)** %81, align 8
  %83 = load %struct.cx231xx*, %struct.cx231xx** %8, align 8
  %84 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 2
  %87 = call i32 %82(i32* %86, %struct.cx231xx_i2c_xfer_data* %17)
  store i32 %87, i32* %15, align 4
  br label %88

88:                                               ; preds = %79, %76
  br label %89

89:                                               ; preds = %88, %67
  br label %90

90:                                               ; preds = %89, %55
  %91 = load i32, i32* %15, align 4
  ret i32 %91
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
