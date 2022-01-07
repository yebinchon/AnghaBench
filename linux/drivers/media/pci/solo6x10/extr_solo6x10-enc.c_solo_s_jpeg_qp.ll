; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/solo6x10/extr_solo6x10-enc.c_solo_s_jpeg_qp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/solo6x10/extr_solo6x10-enc.c_solo_s_jpeg_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.solo_dev = type { i64, i32*, i32 }

@SOLO_DEV_6010 = common dso_local global i64 0, align 8
@SOLO_VE_JPEG_QP_CH_L = common dso_local global i32 0, align 4
@SOLO_VE_JPEG_QP_CH_H = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @solo_s_jpeg_qp(%struct.solo_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.solo_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.solo_dev* %0, %struct.solo_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ugt i32 %10, 31
  br i1 %11, label %15, label %12

12:                                               ; preds = %3
  %13 = load i32, i32* %6, align 4
  %14 = icmp ugt i32 %13, 3
  br i1 %14, label %15, label %16

15:                                               ; preds = %12, %3
  br label %76

16:                                               ; preds = %12
  %17 = load %struct.solo_dev*, %struct.solo_dev** %4, align 8
  %18 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @SOLO_DEV_6010, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  br label %76

23:                                               ; preds = %16
  %24 = load i32, i32* %5, align 4
  %25 = icmp ult i32 %24, 16
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  store i32 0, i32* %8, align 4
  %27 = load i32, i32* @SOLO_VE_JPEG_QP_CH_L, align 4
  store i32 %27, i32* %9, align 4
  br label %32

28:                                               ; preds = %23
  %29 = load i32, i32* %5, align 4
  %30 = sub i32 %29, 16
  store i32 %30, i32* %5, align 4
  store i32 1, i32* %8, align 4
  %31 = load i32, i32* @SOLO_VE_JPEG_QP_CH_H, align 4
  store i32 %31, i32* %9, align 4
  br label %32

32:                                               ; preds = %28, %26
  %33 = load i32, i32* %5, align 4
  %34 = mul i32 %33, 2
  store i32 %34, i32* %5, align 4
  %35 = load %struct.solo_dev*, %struct.solo_dev** %4, align 8
  %36 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %35, i32 0, i32 2
  %37 = load i64, i64* %7, align 8
  %38 = call i32 @spin_lock_irqsave(i32* %36, i64 %37)
  %39 = load i32, i32* %5, align 4
  %40 = shl i32 3, %39
  %41 = xor i32 %40, -1
  %42 = load %struct.solo_dev*, %struct.solo_dev** %4, align 8
  %43 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %8, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %48, %41
  store i32 %49, i32* %47, align 4
  %50 = load i32, i32* %6, align 4
  %51 = and i32 %50, 3
  %52 = load i32, i32* %5, align 4
  %53 = shl i32 %51, %52
  %54 = load %struct.solo_dev*, %struct.solo_dev** %4, align 8
  %55 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %8, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %60, %53
  store i32 %61, i32* %59, align 4
  %62 = load %struct.solo_dev*, %struct.solo_dev** %4, align 8
  %63 = load i32, i32* %9, align 4
  %64 = load %struct.solo_dev*, %struct.solo_dev** %4, align 8
  %65 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %8, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @solo_reg_write(%struct.solo_dev* %62, i32 %63, i32 %70)
  %72 = load %struct.solo_dev*, %struct.solo_dev** %4, align 8
  %73 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %72, i32 0, i32 2
  %74 = load i64, i64* %7, align 8
  %75 = call i32 @spin_unlock_irqrestore(i32* %73, i64 %74)
  br label %76

76:                                               ; preds = %32, %22, %15
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @solo_reg_write(%struct.solo_dev*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
