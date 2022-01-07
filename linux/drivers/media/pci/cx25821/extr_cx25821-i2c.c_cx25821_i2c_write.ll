; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx25821/extr_cx25821-i2c.c_cx25821_i2c_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx25821/extr_cx25821-i2c.c_cx25821_i2c_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx25821_i2c = type { %struct.i2c_client }
%struct.i2c_client = type { i32, i32, i64 }
%struct.i2c_msg = type { i32, i32, i32*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx25821_i2c_write(%struct.cx25821_i2c* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.cx25821_i2c*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.i2c_client*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [6 x i32], align 16
  %10 = alloca [1 x %struct.i2c_msg], align 16
  store %struct.cx25821_i2c* %0, %struct.cx25821_i2c** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.cx25821_i2c*, %struct.cx25821_i2c** %4, align 8
  %12 = getelementptr inbounds %struct.cx25821_i2c, %struct.cx25821_i2c* %11, i32 0, i32 0
  store %struct.i2c_client* %12, %struct.i2c_client** %7, align 8
  store i32 0, i32* %8, align 4
  %13 = bitcast [6 x i32]* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %13, i8 0, i64 24, i1 false)
  %14 = getelementptr inbounds [1 x %struct.i2c_msg], [1 x %struct.i2c_msg]* %10, i64 0, i64 0
  %15 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %14, i32 0, i32 0
  %16 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %17 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %15, align 8
  %19 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %14, i32 0, i32 1
  store i32 6, i32* %19, align 4
  %20 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %14, i32 0, i32 2
  %21 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 0
  store i32* %21, i32** %20, align 8
  %22 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %14, i32 0, i32 3
  store i32 0, i32* %22, align 8
  %23 = load i32, i32* %5, align 4
  %24 = ashr i32 %23, 8
  %25 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 0
  store i32 %24, i32* %25, align 16
  %26 = load i32, i32* %5, align 4
  %27 = and i32 %26, 255
  %28 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 1
  store i32 %27, i32* %28, align 4
  %29 = load i32, i32* %6, align 4
  %30 = ashr i32 %29, 24
  %31 = and i32 %30, 255
  %32 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 5
  store i32 %31, i32* %32, align 4
  %33 = load i32, i32* %6, align 4
  %34 = ashr i32 %33, 16
  %35 = and i32 %34, 255
  %36 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 4
  store i32 %35, i32* %36, align 16
  %37 = load i32, i32* %6, align 4
  %38 = ashr i32 %37, 8
  %39 = and i32 %38, 255
  %40 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 3
  store i32 %39, i32* %40, align 4
  %41 = load i32, i32* %6, align 4
  %42 = and i32 %41, 255
  %43 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 2
  store i32 %42, i32* %43, align 8
  %44 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %45 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %44, i32 0, i32 2
  store i64 0, i64* %45, align 8
  %46 = getelementptr inbounds [1 x %struct.i2c_msg], [1 x %struct.i2c_msg]* %10, i64 0, i64 0
  %47 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %46, i32 0, i32 0
  store i32 68, i32* %47, align 16
  %48 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %49 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds [1 x %struct.i2c_msg], [1 x %struct.i2c_msg]* %10, i64 0, i64 0
  %52 = call i32 @i2c_xfer(i32 %50, %struct.i2c_msg* %51, i32 1)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  ret i32 %53
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @i2c_xfer(i32, %struct.i2c_msg*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
