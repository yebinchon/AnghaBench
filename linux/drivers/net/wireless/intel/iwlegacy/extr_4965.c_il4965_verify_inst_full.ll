; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_4965.c_il4965_verify_inst_full.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_4965.c_il4965_verify_inst_full.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"ucode inst image size is %u\0A\00", align 1
@HBUS_TARG_MEM_RADDR = common dso_local global i32 0, align 4
@IL4965_RTC_INST_LOWER_BOUND = common dso_local global i32 0, align 4
@HBUS_TARG_MEM_RDAT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [65 x i8] c"uCode INST section is invalid at offset 0x%x, is 0x%x, s/b 0x%x\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"ucode image in INSTRUCTION memory is good\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.il_priv*, i32*, i64)* @il4965_verify_inst_full to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @il4965_verify_inst_full(%struct.il_priv* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.il_priv*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.il_priv* %0, %struct.il_priv** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load i64, i64* %6, align 8
  store i64 %11, i64* %8, align 8
  store i32 0, i32* %9, align 4
  %12 = load i64, i64* %6, align 8
  %13 = call i32 (i8*, ...) @D_INFO(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %12)
  %14 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %15 = load i32, i32* @HBUS_TARG_MEM_RADDR, align 4
  %16 = load i32, i32* @IL4965_RTC_INST_LOWER_BOUND, align 4
  %17 = call i32 @il_wr(%struct.il_priv* %14, i32 %15, i32 %16)
  store i64 0, i64* %10, align 8
  br label %18

18:                                               ; preds = %48, %3
  %19 = load i64, i64* %6, align 8
  %20 = icmp sgt i64 %19, 0
  br i1 %20, label %21, label %53

21:                                               ; preds = %18
  %22 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %23 = load i32, i32* @HBUS_TARG_MEM_RDAT, align 4
  %24 = call i64 @_il_rd(%struct.il_priv* %22, i32 %23)
  store i64 %24, i64* %7, align 8
  %25 = load i64, i64* %7, align 8
  %26 = load i32*, i32** %5, align 8
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @le32_to_cpu(i32 %27)
  %29 = icmp ne i64 %25, %28
  br i1 %29, label %30, label %47

30:                                               ; preds = %21
  %31 = load i64, i64* %8, align 8
  %32 = load i64, i64* %6, align 8
  %33 = sub nsw i64 %31, %32
  %34 = load i64, i64* %7, align 8
  %35 = load i32*, i32** %5, align 8
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @le32_to_cpu(i32 %36)
  %38 = call i32 @IL_ERR(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0), i64 %33, i64 %34, i64 %37)
  %39 = load i32, i32* @EIO, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %9, align 4
  %41 = load i64, i64* %10, align 8
  %42 = add nsw i64 %41, 1
  store i64 %42, i64* %10, align 8
  %43 = load i64, i64* %10, align 8
  %44 = icmp sge i64 %43, 20
  br i1 %44, label %45, label %46

45:                                               ; preds = %30
  br label %53

46:                                               ; preds = %30
  br label %47

47:                                               ; preds = %46, %21
  br label %48

48:                                               ; preds = %47
  %49 = load i64, i64* %6, align 8
  %50 = sub i64 %49, 8
  store i64 %50, i64* %6, align 8
  %51 = load i32*, i32** %5, align 8
  %52 = getelementptr inbounds i32, i32* %51, i32 1
  store i32* %52, i32** %5, align 8
  br label %18

53:                                               ; preds = %45, %18
  %54 = load i64, i64* %10, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %53
  %57 = call i32 (i8*, ...) @D_INFO(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  br label %58

58:                                               ; preds = %56, %53
  %59 = load i32, i32* %9, align 4
  ret i32 %59
}

declare dso_local i32 @D_INFO(i8*, ...) #1

declare dso_local i32 @il_wr(%struct.il_priv*, i32, i32) #1

declare dso_local i64 @_il_rd(%struct.il_priv*, i32) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @IL_ERR(i8*, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
