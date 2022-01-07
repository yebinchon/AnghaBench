; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb/extr_vsc7326.c_bist_wr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb/extr_vsc7326.c_bist_wr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [23 x i8] c"No bist address: 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"Suspicious write out of range value: 0x%x\0A\00", align 1
@REG_RAM_BIST_CMD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Still in bist write: 0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"bist write error: 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i32)* @bist_wr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bist_wr(i32* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %28

13:                                               ; preds = %4
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 1
  br i1 %15, label %16, label %28

16:                                               ; preds = %13
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 2
  br i1 %18, label %19, label %28

19:                                               ; preds = %16
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 13
  br i1 %21, label %22, label %28

22:                                               ; preds = %19
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 14
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @pr_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %26)
  br label %28

28:                                               ; preds = %25, %22, %19, %16, %13, %4
  %29 = load i32, i32* %8, align 4
  %30 = icmp sgt i32 %29, 255
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @pr_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  br label %34

34:                                               ; preds = %31, %28
  %35 = load i32, i32* %7, align 4
  %36 = and i32 %35, 255
  %37 = shl i32 %36, 16
  %38 = or i32 16777216, %37
  %39 = load i32, i32* %8, align 4
  %40 = shl i32 %39, 8
  %41 = or i32 %38, %40
  %42 = load i32, i32* %6, align 4
  %43 = and i32 %42, 255
  %44 = shl i32 %43, 0
  %45 = or i32 %41, %44
  store i32 %45, i32* %9, align 4
  %46 = load i32*, i32** %5, align 8
  %47 = load i32, i32* @REG_RAM_BIST_CMD, align 4
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @vsc_write(i32* %46, i32 %47, i32 %48)
  %50 = call i32 @udelay(i32 5)
  %51 = load i32*, i32** %5, align 8
  %52 = load i32, i32* @REG_RAM_BIST_CMD, align 4
  %53 = call i32 @vsc_read(i32* %51, i32 %52, i32* %10)
  %54 = load i32, i32* %10, align 4
  %55 = and i32 %54, 134217728
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %34
  %58 = load i32, i32* %10, align 4
  %59 = call i32 @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %58)
  br label %68

60:                                               ; preds = %34
  %61 = load i32, i32* %10, align 4
  %62 = and i32 %61, 67108864
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %60
  %65 = load i32, i32* %10, align 4
  %66 = call i32 @pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %65)
  br label %67

67:                                               ; preds = %64, %60
  br label %68

68:                                               ; preds = %67, %57
  ret i32 0
}

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @vsc_write(i32*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @vsc_read(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
