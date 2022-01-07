; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rtsx_usb.c_rtsx_usb_add_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rtsx_usb.c_rtsx_usb_add_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_ucr = type { i32, i32* }

@IOBUF_SIZE = common dso_local global i32 0, align 4
@CMD_OFFSET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtsx_usb_add_cmd(%struct.rtsx_ucr* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.rtsx_ucr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.rtsx_ucr* %0, %struct.rtsx_ucr** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %6, align 8
  %13 = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @IOBUF_SIZE, align 4
  %16 = load i32, i32* @CMD_OFFSET, align 4
  %17 = sub nsw i32 %15, %16
  %18 = sdiv i32 %17, 4
  %19 = icmp slt i32 %14, %18
  br i1 %19, label %20, label %69

20:                                               ; preds = %5
  %21 = load i32, i32* @CMD_OFFSET, align 4
  %22 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %6, align 8
  %23 = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = mul nsw i32 %24, 4
  %26 = add nsw i32 %21, %25
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %7, align 4
  %28 = and i32 %27, 3
  %29 = shl i32 %28, 6
  %30 = load i32, i32* %8, align 4
  %31 = ashr i32 %30, 8
  %32 = and i32 %31, 63
  %33 = or i32 %29, %32
  %34 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %6, align 8
  %35 = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %11, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %11, align 4
  %39 = sext i32 %37 to i64
  %40 = getelementptr inbounds i32, i32* %36, i64 %39
  store i32 %33, i32* %40, align 4
  %41 = load i32, i32* %8, align 4
  %42 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %6, align 8
  %43 = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %11, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %11, align 4
  %47 = sext i32 %45 to i64
  %48 = getelementptr inbounds i32, i32* %44, i64 %47
  store i32 %41, i32* %48, align 4
  %49 = load i32, i32* %9, align 4
  %50 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %6, align 8
  %51 = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %11, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %11, align 4
  %55 = sext i32 %53 to i64
  %56 = getelementptr inbounds i32, i32* %52, i64 %55
  store i32 %49, i32* %56, align 4
  %57 = load i32, i32* %10, align 4
  %58 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %6, align 8
  %59 = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %11, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %11, align 4
  %63 = sext i32 %61 to i64
  %64 = getelementptr inbounds i32, i32* %60, i64 %63
  store i32 %57, i32* %64, align 4
  %65 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %6, align 8
  %66 = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %66, align 8
  br label %69

69:                                               ; preds = %20, %5
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
