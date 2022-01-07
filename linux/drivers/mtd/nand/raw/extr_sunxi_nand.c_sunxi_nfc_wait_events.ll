; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_sunxi_nand.c_sunxi_nfc_wait_events.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_sunxi_nand.c_sunxi_nfc_wait_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sunxi_nfc = type { i32, i64, i32 }

@NFC_INT_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@NFC_DEFAULT_TIMEOUT_MS = common dso_local global i32 0, align 4
@NFC_REG_INT = common dso_local global i64 0, align 8
@ETIMEDOUT = common dso_local global i32 0, align 4
@NFC_REG_ST = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"wait interrupt timedout\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sunxi_nfc*, i32, i32, i32)* @sunxi_nfc_wait_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sunxi_nfc_wait_events(%struct.sunxi_nfc* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sunxi_nfc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.sunxi_nfc* %0, %struct.sunxi_nfc** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @NFC_INT_MASK, align 4
  %14 = xor i32 %13, -1
  %15 = and i32 %12, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %92

20:                                               ; preds = %4
  %21 = load i32, i32* %9, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %20
  %24 = load i32, i32* @NFC_DEFAULT_TIMEOUT_MS, align 4
  store i32 %24, i32* %9, align 4
  br label %25

25:                                               ; preds = %23, %20
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %57, label %28

28:                                               ; preds = %25
  %29 = load %struct.sunxi_nfc*, %struct.sunxi_nfc** %6, align 8
  %30 = getelementptr inbounds %struct.sunxi_nfc, %struct.sunxi_nfc* %29, i32 0, i32 2
  %31 = call i32 @init_completion(i32* %30)
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.sunxi_nfc*, %struct.sunxi_nfc** %6, align 8
  %34 = getelementptr inbounds %struct.sunxi_nfc, %struct.sunxi_nfc* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @NFC_REG_INT, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @writel(i32 %32, i64 %37)
  %39 = load %struct.sunxi_nfc*, %struct.sunxi_nfc** %6, align 8
  %40 = getelementptr inbounds %struct.sunxi_nfc, %struct.sunxi_nfc* %39, i32 0, i32 2
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @msecs_to_jiffies(i32 %41)
  %43 = call i32 @wait_for_completion_timeout(i32* %40, i32 %42)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %28
  %47 = load i32, i32* @ETIMEDOUT, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %10, align 4
  br label %50

49:                                               ; preds = %28
  store i32 0, i32* %10, align 4
  br label %50

50:                                               ; preds = %49, %46
  %51 = load %struct.sunxi_nfc*, %struct.sunxi_nfc** %6, align 8
  %52 = getelementptr inbounds %struct.sunxi_nfc, %struct.sunxi_nfc* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @NFC_REG_INT, align 8
  %55 = add nsw i64 %53, %54
  %56 = call i32 @writel(i32 0, i64 %55)
  br label %73

57:                                               ; preds = %25
  %58 = load %struct.sunxi_nfc*, %struct.sunxi_nfc** %6, align 8
  %59 = getelementptr inbounds %struct.sunxi_nfc, %struct.sunxi_nfc* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @NFC_REG_ST, align 8
  %62 = add nsw i64 %60, %61
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* %7, align 4
  %66 = and i32 %64, %65
  %67 = load i32, i32* %7, align 4
  %68 = icmp eq i32 %66, %67
  %69 = zext i1 %68 to i32
  %70 = load i32, i32* %9, align 4
  %71 = mul i32 %70, 1000
  %72 = call i32 @readl_poll_timeout(i64 %62, i32 %63, i32 %69, i32 1, i32 %71)
  store i32 %72, i32* %10, align 4
  br label %73

73:                                               ; preds = %57, %50
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* @NFC_INT_MASK, align 4
  %76 = and i32 %74, %75
  %77 = load %struct.sunxi_nfc*, %struct.sunxi_nfc** %6, align 8
  %78 = getelementptr inbounds %struct.sunxi_nfc, %struct.sunxi_nfc* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @NFC_REG_ST, align 8
  %81 = add nsw i64 %79, %80
  %82 = call i32 @writel(i32 %76, i64 %81)
  %83 = load i32, i32* %10, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %73
  %86 = load %struct.sunxi_nfc*, %struct.sunxi_nfc** %6, align 8
  %87 = getelementptr inbounds %struct.sunxi_nfc, %struct.sunxi_nfc* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @dev_err(i32 %88, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %90

90:                                               ; preds = %85, %73
  %91 = load i32, i32* %10, align 4
  store i32 %91, i32* %5, align 4
  br label %92

92:                                               ; preds = %90, %17
  %93 = load i32, i32* %5, align 4
  ret i32 %93
}

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @readl_poll_timeout(i64, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
