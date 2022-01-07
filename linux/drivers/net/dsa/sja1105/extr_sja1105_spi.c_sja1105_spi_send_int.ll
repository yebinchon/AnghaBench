; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_spi.c_sja1105_spi_send_int.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_spi.c_sja1105_spi_send_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sja1105_private = type { i32 }

@SJA1105_SIZE_SPI_MSG_MAXLEN = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@SPI_WRITE = common dso_local global i64 0, align 8
@SPI_READ = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sja1105_spi_send_int(%struct.sja1105_private* %0, i64 %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sja1105_private*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.sja1105_private* %0, %struct.sja1105_private** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %16 = load i32, i32* @SJA1105_SIZE_SPI_MSG_MAXLEN, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %12, align 8
  %19 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %13, align 8
  %20 = load i32, i32* %11, align 4
  %21 = load i32, i32* @SJA1105_SIZE_SPI_MSG_MAXLEN, align 4
  %22 = icmp sgt i32 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %5
  %24 = load i32, i32* @ERANGE, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %55

26:                                               ; preds = %5
  %27 = load i64, i64* %8, align 8
  %28 = load i64, i64* @SPI_WRITE, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %26
  %31 = load i32*, i32** %10, align 8
  %32 = load i32, i32* %11, align 4
  %33 = mul nsw i32 8, %32
  %34 = sub nsw i32 %33, 1
  %35 = load i32, i32* %11, align 4
  %36 = call i32 @sja1105_pack(i32* %19, i32* %31, i32 %34, i32 0, i32 %35)
  br label %37

37:                                               ; preds = %30, %26
  %38 = load %struct.sja1105_private*, %struct.sja1105_private** %7, align 8
  %39 = load i64, i64* %8, align 8
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %11, align 4
  %42 = call i32 @sja1105_spi_send_packed_buf(%struct.sja1105_private* %38, i64 %39, i32 %40, i32* %19, i32 %41)
  store i32 %42, i32* %14, align 4
  %43 = load i64, i64* %8, align 8
  %44 = load i64, i64* @SPI_READ, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %53

46:                                               ; preds = %37
  %47 = load i32*, i32** %10, align 8
  %48 = load i32, i32* %11, align 4
  %49 = mul nsw i32 8, %48
  %50 = sub nsw i32 %49, 1
  %51 = load i32, i32* %11, align 4
  %52 = call i32 @sja1105_unpack(i32* %19, i32* %47, i32 %50, i32 0, i32 %51)
  br label %53

53:                                               ; preds = %46, %37
  %54 = load i32, i32* %14, align 4
  store i32 %54, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %55

55:                                               ; preds = %53, %23
  %56 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %56)
  %57 = load i32, i32* %6, align 4
  ret i32 %57
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @sja1105_pack(i32*, i32*, i32, i32, i32) #2

declare dso_local i32 @sja1105_spi_send_packed_buf(%struct.sja1105_private*, i64, i32, i32*, i32) #2

declare dso_local i32 @sja1105_unpack(i32*, i32*, i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
