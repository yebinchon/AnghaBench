; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_xc5000.c_xc_write_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_xc5000.c_xc_write_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xc5000_priv = type { i32 }

@XREG_BUSY = common dso_local global i32 0, align 4
@EREMOTEIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xc5000_priv*, i32, i32)* @xc_write_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xc_write_reg(%struct.xc5000_priv* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.xc5000_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [4 x i32], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.xc5000_priv* %0, %struct.xc5000_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 100, i32* %8, align 4
  %10 = load i32, i32* %5, align 4
  %11 = ashr i32 %10, 8
  %12 = and i32 %11, 255
  %13 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  store i32 %12, i32* %13, align 16
  %14 = load i32, i32* %5, align 4
  %15 = and i32 %14, 255
  %16 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 1
  store i32 %15, i32* %16, align 4
  %17 = load i32, i32* %6, align 4
  %18 = ashr i32 %17, 8
  %19 = and i32 %18, 255
  %20 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 2
  store i32 %19, i32* %20, align 8
  %21 = load i32, i32* %6, align 4
  %22 = and i32 %21, 255
  %23 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 3
  store i32 %22, i32* %23, align 4
  %24 = load %struct.xc5000_priv*, %struct.xc5000_priv** %4, align 8
  %25 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %26 = call i32 @xc_send_i2c_data(%struct.xc5000_priv* %24, i32* %25, i32 4)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %61

29:                                               ; preds = %3
  br label %30

30:                                               ; preds = %59, %29
  %31 = load i32, i32* %8, align 4
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load i32, i32* %9, align 4
  %35 = icmp eq i32 %34, 0
  br label %36

36:                                               ; preds = %33, %30
  %37 = phi i1 [ false, %30 ], [ %35, %33 ]
  br i1 %37, label %38, label %60

38:                                               ; preds = %36
  %39 = load %struct.xc5000_priv*, %struct.xc5000_priv** %4, align 8
  %40 = load i32, i32* @XREG_BUSY, align 4
  %41 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %42 = call i32 @xc5000_readreg(%struct.xc5000_priv* %39, i32 %40, i32* %41)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %59

45:                                               ; preds = %38
  %46 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %47 = load i32, i32* %46, align 16
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %45
  %50 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 1
  %51 = load i32, i32* %50, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  br label %60

54:                                               ; preds = %49, %45
  %55 = call i32 @msleep(i32 5)
  %56 = load i32, i32* %8, align 4
  %57 = add nsw i32 %56, -1
  store i32 %57, i32* %8, align 4
  br label %58

58:                                               ; preds = %54
  br label %59

59:                                               ; preds = %58, %38
  br label %30

60:                                               ; preds = %53, %36
  br label %61

61:                                               ; preds = %60, %3
  %62 = load i32, i32* %8, align 4
  %63 = icmp sle i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = load i32, i32* @EREMOTEIO, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %9, align 4
  br label %67

67:                                               ; preds = %64, %61
  %68 = load i32, i32* %9, align 4
  ret i32 %68
}

declare dso_local i32 @xc_send_i2c_data(%struct.xc5000_priv*, i32*, i32) #1

declare dso_local i32 @xc5000_readreg(%struct.xc5000_priv*, i32, i32*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
