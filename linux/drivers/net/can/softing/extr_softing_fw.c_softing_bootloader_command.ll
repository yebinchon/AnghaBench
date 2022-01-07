; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/softing/extr_softing_fw.c_softing_bootloader_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/softing/extr_softing_fw.c_softing_bootloader_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.softing = type { %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i32 }

@RES_NONE = common dso_local global i32 0, align 4
@DPRAM_RECEIPT = common dso_local global i64 0, align 8
@DPRAM_COMMAND = common dso_local global i64 0, align 8
@jiffies = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@RES_OK = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@ECANCELED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"bootloader %s failed (%i)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @softing_bootloader_command(%struct.softing* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.softing*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.softing* %0, %struct.softing** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %10 = load i32, i32* @RES_NONE, align 4
  %11 = load %struct.softing*, %struct.softing** %5, align 8
  %12 = getelementptr inbounds %struct.softing, %struct.softing* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = load i64, i64* @DPRAM_RECEIPT, align 8
  %15 = getelementptr inbounds i32, i32* %13, i64 %14
  %16 = call i32 @iowrite16(i32 %10, i32* %15)
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.softing*, %struct.softing** %5, align 8
  %19 = getelementptr inbounds %struct.softing, %struct.softing* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = load i64, i64* @DPRAM_COMMAND, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  %23 = call i32 @iowrite16(i32 %17, i32* %22)
  %24 = call i32 (...) @wmb()
  %25 = load i32, i32* @jiffies, align 4
  %26 = load i32, i32* @HZ, align 4
  %27 = mul nsw i32 3, %26
  %28 = add nsw i32 %25, %27
  %29 = sext i32 %28 to i64
  store i64 %29, i64* %9, align 8
  br label %30

30:                                               ; preds = %50, %3
  %31 = load %struct.softing*, %struct.softing** %5, align 8
  %32 = getelementptr inbounds %struct.softing, %struct.softing* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = load i64, i64* @DPRAM_RECEIPT, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = call i32 @ioread16(i32* %35)
  store i32 %36, i32* %8, align 4
  %37 = call i32 (...) @rmb()
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @RES_OK, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %30
  store i32 0, i32* %4, align 4
  br label %75

42:                                               ; preds = %30
  %43 = load i32, i32* @jiffies, align 4
  %44 = load i64, i64* %9, align 8
  %45 = call i64 @time_after(i32 %43, i64 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  br label %55

48:                                               ; preds = %42
  %49 = call i32 @usleep_range(i32 500, i32 10000)
  br label %50

50:                                               ; preds = %48
  %51 = load i32, i32* @current, align 4
  %52 = call i32 @signal_pending(i32 %51)
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  br i1 %54, label %30, label %55

55:                                               ; preds = %50, %47
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* @RES_NONE, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = load i32, i32* @ETIMEDOUT, align 4
  %61 = sub nsw i32 0, %60
  br label %65

62:                                               ; preds = %55
  %63 = load i32, i32* @ECANCELED, align 4
  %64 = sub nsw i32 0, %63
  br label %65

65:                                               ; preds = %62, %59
  %66 = phi i32 [ %61, %59 ], [ %64, %62 ]
  store i32 %66, i32* %8, align 4
  %67 = load %struct.softing*, %struct.softing** %5, align 8
  %68 = getelementptr inbounds %struct.softing, %struct.softing* %67, i32 0, i32 0
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i8*, i8** %7, align 8
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @dev_alert(i32* %70, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %71, i32 %72)
  %74 = load i32, i32* %8, align 4
  store i32 %74, i32* %4, align 4
  br label %75

75:                                               ; preds = %65, %41
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local i32 @iowrite16(i32, i32*) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @ioread16(i32*) #1

declare dso_local i32 @rmb(...) #1

declare dso_local i64 @time_after(i32, i64) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @signal_pending(i32) #1

declare dso_local i32 @dev_alert(i32*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
