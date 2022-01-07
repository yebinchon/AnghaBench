; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-i2c.c_em28xx_i2c_read_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-i2c.c_em28xx_i2c_read_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.em28xx = type { i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.em28xx*, i32, i32, i32, i32, i32*)* @em28xx_i2c_read_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @em28xx_i2c_read_block(%struct.em28xx* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.em28xx*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca [2 x i32], align 4
  store %struct.em28xx* %0, %struct.em28xx** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %19 = load i32, i32* %12, align 4
  store i32 %19, i32* %14, align 4
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* %14, align 4
  %22 = add nsw i32 %20, %21
  %23 = load i32, i32* %11, align 4
  %24 = mul nsw i32 %23, 65280
  %25 = add nsw i32 %24, 255
  %26 = add nsw i32 %25, 1
  %27 = icmp sgt i32 %22, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %6
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %7, align 4
  br label %102

31:                                               ; preds = %6
  %32 = load i32, i32* %10, align 4
  %33 = ashr i32 %32, 8
  %34 = getelementptr inbounds [2 x i32], [2 x i32]* %18, i64 0, i64 0
  store i32 %33, i32* %34, align 4
  %35 = load i32, i32* %10, align 4
  %36 = and i32 %35, 255
  %37 = getelementptr inbounds [2 x i32], [2 x i32]* %18, i64 0, i64 1
  store i32 %36, i32* %37, align 4
  %38 = load %struct.em28xx*, %struct.em28xx** %8, align 8
  %39 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %9, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = getelementptr inbounds [2 x i32], [2 x i32]* %18, i64 0, i64 0
  %45 = load i32, i32* %11, align 4
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %44, i64 %49
  %51 = load i32, i32* %11, align 4
  %52 = add nsw i32 1, %51
  %53 = call i32 @i2c_master_send(i32* %43, i32* %50, i32 %52)
  store i32 %53, i32* %17, align 4
  %54 = load i32, i32* %17, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %31
  %57 = load i32, i32* %17, align 4
  store i32 %57, i32* %7, align 4
  br label %102

58:                                               ; preds = %31
  %59 = load %struct.em28xx*, %struct.em28xx** %8, align 8
  %60 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  store i32 4, i32* %16, align 4
  br label %66

65:                                               ; preds = %58
  store i32 64, i32* %16, align 4
  br label %66

66:                                               ; preds = %65, %64
  br label %67

67:                                               ; preds = %92, %66
  %68 = load i32, i32* %14, align 4
  %69 = icmp sgt i32 %68, 0
  br i1 %69, label %70, label %100

70:                                               ; preds = %67
  %71 = load i32, i32* %14, align 4
  %72 = load i32, i32* %16, align 4
  %73 = icmp sgt i32 %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %70
  %75 = load i32, i32* %16, align 4
  store i32 %75, i32* %15, align 4
  br label %78

76:                                               ; preds = %70
  %77 = load i32, i32* %14, align 4
  store i32 %77, i32* %15, align 4
  br label %78

78:                                               ; preds = %76, %74
  %79 = load %struct.em28xx*, %struct.em28xx** %8, align 8
  %80 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %9, align 4
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32*, i32** %13, align 8
  %86 = load i32, i32* %15, align 4
  %87 = call i32 @i2c_master_recv(i32* %84, i32* %85, i32 %86)
  store i32 %87, i32* %17, align 4
  %88 = load i32, i32* %17, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %78
  %91 = load i32, i32* %17, align 4
  store i32 %91, i32* %7, align 4
  br label %102

92:                                               ; preds = %78
  %93 = load i32, i32* %15, align 4
  %94 = load i32, i32* %14, align 4
  %95 = sub nsw i32 %94, %93
  store i32 %95, i32* %14, align 4
  %96 = load i32, i32* %15, align 4
  %97 = load i32*, i32** %13, align 8
  %98 = sext i32 %96 to i64
  %99 = getelementptr inbounds i32, i32* %97, i64 %98
  store i32* %99, i32** %13, align 8
  br label %67

100:                                              ; preds = %67
  %101 = load i32, i32* %12, align 4
  store i32 %101, i32* %7, align 4
  br label %102

102:                                              ; preds = %100, %90, %56, %28
  %103 = load i32, i32* %7, align 4
  ret i32 %103
}

declare dso_local i32 @i2c_master_send(i32*, i32*, i32) #1

declare dso_local i32 @i2c_master_recv(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
