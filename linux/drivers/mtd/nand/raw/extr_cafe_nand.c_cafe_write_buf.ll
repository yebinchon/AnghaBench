; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_cafe_nand.c_cafe_write_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_cafe_nand.c_cafe_write_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32 }
%struct.cafe_priv = type { i64, %struct.TYPE_2__*, i64, i64, i64 }
%struct.TYPE_2__ = type { i32 }

@CAFE_NAND_WRITE_DATA = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [47 x i8] c"Copy 0x%x bytes to write buffer. datalen 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nand_chip*, i32*, i32)* @cafe_write_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cafe_write_buf(%struct.nand_chip* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.nand_chip*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cafe_priv*, align 8
  store %struct.nand_chip* %0, %struct.nand_chip** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %9 = call %struct.cafe_priv* @nand_get_controller_data(%struct.nand_chip* %8)
  store %struct.cafe_priv* %9, %struct.cafe_priv** %7, align 8
  %10 = load %struct.cafe_priv*, %struct.cafe_priv** %7, align 8
  %11 = getelementptr inbounds %struct.cafe_priv, %struct.cafe_priv* %10, i32 0, i32 4
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %3
  %15 = load %struct.cafe_priv*, %struct.cafe_priv** %7, align 8
  %16 = getelementptr inbounds %struct.cafe_priv, %struct.cafe_priv* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.cafe_priv*, %struct.cafe_priv** %7, align 8
  %19 = getelementptr inbounds %struct.cafe_priv, %struct.cafe_priv* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %17, %20
  %22 = load i32*, i32** %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @memcpy(i64 %21, i32* %22, i32 %23)
  br label %38

25:                                               ; preds = %3
  %26 = load %struct.cafe_priv*, %struct.cafe_priv** %7, align 8
  %27 = getelementptr inbounds %struct.cafe_priv, %struct.cafe_priv* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @CAFE_NAND_WRITE_DATA, align 8
  %30 = add nsw i64 %28, %29
  %31 = load %struct.cafe_priv*, %struct.cafe_priv** %7, align 8
  %32 = getelementptr inbounds %struct.cafe_priv, %struct.cafe_priv* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %30, %33
  %35 = load i32*, i32** %5, align 8
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @memcpy_toio(i64 %34, i32* %35, i32 %36)
  br label %38

38:                                               ; preds = %25, %14
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = load %struct.cafe_priv*, %struct.cafe_priv** %7, align 8
  %42 = getelementptr inbounds %struct.cafe_priv, %struct.cafe_priv* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %43, %40
  store i64 %44, i64* %42, align 8
  %45 = load %struct.cafe_priv*, %struct.cafe_priv** %7, align 8
  %46 = getelementptr inbounds %struct.cafe_priv, %struct.cafe_priv* %45, i32 0, i32 1
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %6, align 4
  %50 = load %struct.cafe_priv*, %struct.cafe_priv** %7, align 8
  %51 = getelementptr inbounds %struct.cafe_priv, %struct.cafe_priv* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @cafe_dev_dbg(i32* %48, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %49, i64 %52)
  ret void
}

declare dso_local %struct.cafe_priv* @nand_get_controller_data(%struct.nand_chip*) #1

declare dso_local i32 @memcpy(i64, i32*, i32) #1

declare dso_local i32 @memcpy_toio(i64, i32*, i32) #1

declare dso_local i32 @cafe_dev_dbg(i32*, i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
