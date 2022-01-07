; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ngene/extr_ngene-cards.c_port_has_xo2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ngene/extr_ngene-cards.c_port_has_xo2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }

@NGENE_XO2_TYPE_NONE = common dso_local global i32 0, align 4
@NGENE_XO2_TYPE_DUOFLEX = common dso_local global i32 0, align 4
@NGENE_XO2_TYPE_CI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, i32*, i32*)* @port_has_xo2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @port_has_xo2(%struct.i2c_adapter* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca [1 x i32], align 4
  %9 = alloca [4 x i32], align 16
  %10 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = bitcast [1 x i32]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %11, i8 0, i64 4, i1 false)
  store i32 16, i32* %10, align 4
  %12 = load i32, i32* @NGENE_XO2_TYPE_NONE, align 4
  %13 = load i32*, i32** %6, align 8
  store i32 %12, i32* %13, align 4
  %14 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %15 = load i32, i32* %10, align 4
  %16 = getelementptr inbounds [1 x i32], [1 x i32]* %8, i64 0, i64 0
  %17 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %18 = call i64 @i2c_io(%struct.i2c_adapter* %14, i32 %15, i32* %16, i32 1, i32* %17, i32 4)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %50

21:                                               ; preds = %3
  %22 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %23 = load i32, i32* %22, align 16
  %24 = icmp eq i32 %23, 68
  br i1 %24, label %25, label %35

25:                                               ; preds = %21
  %26 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %27, 70
  br i1 %28, label %29, label %35

29:                                               ; preds = %25
  %30 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 2
  %31 = load i32, i32* %30, align 8
  %32 = load i32*, i32** %7, align 8
  store i32 %31, i32* %32, align 4
  %33 = load i32, i32* @NGENE_XO2_TYPE_DUOFLEX, align 4
  %34 = load i32*, i32** %6, align 8
  store i32 %33, i32* %34, align 4
  store i32 1, i32* %4, align 4
  br label %50

35:                                               ; preds = %25, %21
  %36 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %37 = load i32, i32* %36, align 16
  %38 = icmp eq i32 %37, 67
  br i1 %38, label %39, label %49

39:                                               ; preds = %35
  %40 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %41, 73
  br i1 %42, label %43, label %49

43:                                               ; preds = %39
  %44 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 2
  %45 = load i32, i32* %44, align 8
  %46 = load i32*, i32** %7, align 8
  store i32 %45, i32* %46, align 4
  %47 = load i32, i32* @NGENE_XO2_TYPE_CI, align 4
  %48 = load i32*, i32** %6, align 8
  store i32 %47, i32* %48, align 4
  store i32 1, i32* %4, align 4
  br label %50

49:                                               ; preds = %39, %35
  store i32 0, i32* %4, align 4
  br label %50

50:                                               ; preds = %49, %43, %29, %20
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @i2c_io(%struct.i2c_adapter*, i32, i32*, i32, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
