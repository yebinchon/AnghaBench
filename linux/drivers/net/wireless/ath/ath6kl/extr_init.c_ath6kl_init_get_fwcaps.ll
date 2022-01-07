; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_init.c_ath6kl_init_get_fwcaps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_init.c_ath6kl_init_get_fwcaps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath6kl = type { i64 }

@.str = private unnamed_addr constant [4 x i8] c"...\00", align 1
@ATH6KL_FW_CAPABILITY_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"firmware capability buffer too small!\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%s,\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath6kl*, i8*, i64)* @ath6kl_init_get_fwcaps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath6kl_init_get_fwcaps(%struct.ath6kl* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.ath6kl*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store %struct.ath6kl* %0, %struct.ath6kl** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %14 = load %struct.ath6kl*, %struct.ath6kl** %4, align 8
  %15 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to i32*
  store i32* %17, i32** %7, align 8
  store i64 0, i64* %9, align 8
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %13, align 8
  store i32 0, i32* %10, align 4
  br label %18

18:                                               ; preds = %74, %3
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* @ATH6KL_FW_CAPABILITY_MAX, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %77

22:                                               ; preds = %18
  %23 = load i32, i32* %10, align 4
  %24 = sdiv i32 %23, 8
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %10, align 4
  %26 = srem i32 %25, 8
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %11, align 4
  %28 = sext i32 %27 to i64
  %29 = icmp uge i64 %28, 32
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  br label %77

31:                                               ; preds = %22
  %32 = load i64, i64* %6, align 8
  %33 = load i64, i64* %9, align 8
  %34 = sub i64 %32, %33
  %35 = icmp ult i64 %34, 4
  br i1 %35, label %36, label %51

36:                                               ; preds = %31
  %37 = call i32 @ath6kl_warn(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %38 = load i8*, i8** %13, align 8
  %39 = call i32 @strlen(i8* %38)
  %40 = add nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  store i64 %41, i64* %8, align 8
  %42 = load i8*, i8** %5, align 8
  %43 = load i64, i64* %6, align 8
  %44 = getelementptr inbounds i8, i8* %42, i64 %43
  %45 = load i64, i64* %8, align 8
  %46 = sub i64 0, %45
  %47 = getelementptr inbounds i8, i8* %44, i64 %46
  %48 = load i8*, i8** %13, align 8
  %49 = load i64, i64* %8, align 8
  %50 = call i32 @strncpy(i8* %47, i8* %48, i64 %49)
  br label %87

51:                                               ; preds = %31
  %52 = load i32*, i32** %7, align 8
  %53 = load i32, i32* %11, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %12, align 4
  %58 = shl i32 1, %57
  %59 = and i32 %56, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %73

61:                                               ; preds = %51
  %62 = load i8*, i8** %5, align 8
  %63 = load i64, i64* %9, align 8
  %64 = getelementptr inbounds i8, i8* %62, i64 %63
  %65 = load i64, i64* %6, align 8
  %66 = load i64, i64* %9, align 8
  %67 = sub i64 %65, %66
  %68 = load i32, i32* %10, align 4
  %69 = call i32 @ath6kl_init_get_fw_capa_name(i32 %68)
  %70 = call i64 @scnprintf(i8* %64, i64 %67, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %69)
  %71 = load i64, i64* %9, align 8
  %72 = add i64 %71, %70
  store i64 %72, i64* %9, align 8
  br label %73

73:                                               ; preds = %61, %51
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %10, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %10, align 4
  br label %18

77:                                               ; preds = %30, %18
  %78 = load i64, i64* %9, align 8
  %79 = icmp ugt i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %77
  %81 = load i64, i64* %9, align 8
  %82 = add i64 %81, -1
  store i64 %82, i64* %9, align 8
  br label %83

83:                                               ; preds = %80, %77
  %84 = load i8*, i8** %5, align 8
  %85 = load i64, i64* %9, align 8
  %86 = getelementptr inbounds i8, i8* %84, i64 %85
  store i8 0, i8* %86, align 1
  br label %87

87:                                               ; preds = %83, %36
  ret void
}

declare dso_local i32 @ath6kl_warn(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strncpy(i8*, i8*, i64) #1

declare dso_local i64 @scnprintf(i8*, i64, i8*, i32) #1

declare dso_local i32 @ath6kl_init_get_fw_capa_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
