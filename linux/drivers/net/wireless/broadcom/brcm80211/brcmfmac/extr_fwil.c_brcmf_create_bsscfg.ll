; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_fwil.c_brcmf_create_bsscfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_fwil.c_brcmf_create_bsscfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"bsscfg:\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"buffer is too short\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i8*, i8*, i64, i8*, i64)* @brcmf_create_bsscfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @brcmf_create_bsscfg(i64 %0, i8* %1, i8* %2, i64 %3, i8* %4, i64 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i8, align 1
  store i64 %0, i64* %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store i8* %4, i8** %12, align 8
  store i64 %5, i64* %13, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %14, align 8
  %20 = load i64, i64* %8, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %6
  %23 = load i8*, i8** %9, align 8
  %24 = load i8*, i8** %10, align 8
  %25 = load i64, i64* %11, align 8
  %26 = load i8*, i8** %12, align 8
  %27 = load i64, i64* %13, align 8
  %28 = call i64 @brcmf_create_iovar(i8* %23, i8* %24, i64 %25, i8* %26, i64 %27)
  store i64 %28, i64* %7, align 8
  br label %77

29:                                               ; preds = %6
  %30 = load i8*, i8** %14, align 8
  %31 = call i64 @strlen(i8* %30)
  store i64 %31, i64* %16, align 8
  %32 = load i8*, i8** %9, align 8
  %33 = call i64 @strlen(i8* %32)
  %34 = add nsw i64 %33, 1
  store i64 %34, i64* %17, align 8
  %35 = load i64, i64* %16, align 8
  %36 = load i64, i64* %17, align 8
  %37 = add nsw i64 %35, %36
  %38 = add i64 %37, 1
  %39 = load i64, i64* %11, align 8
  %40 = add i64 %38, %39
  store i64 %40, i64* %18, align 8
  %41 = load i64, i64* %13, align 8
  %42 = load i64, i64* %18, align 8
  %43 = icmp slt i64 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %29
  %45 = call i32 @brcmf_err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  store i64 0, i64* %7, align 8
  br label %77

46:                                               ; preds = %29
  %47 = load i8*, i8** %12, align 8
  store i8* %47, i8** %15, align 8
  %48 = load i8*, i8** %15, align 8
  %49 = load i8*, i8** %14, align 8
  %50 = load i64, i64* %16, align 8
  %51 = call i32 @memcpy(i8* %48, i8* %49, i64 %50)
  %52 = load i64, i64* %16, align 8
  %53 = load i8*, i8** %15, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 %52
  store i8* %54, i8** %15, align 8
  %55 = load i8*, i8** %15, align 8
  %56 = load i8*, i8** %9, align 8
  %57 = load i64, i64* %17, align 8
  %58 = call i32 @memcpy(i8* %55, i8* %56, i64 %57)
  %59 = load i64, i64* %17, align 8
  %60 = load i8*, i8** %15, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 %59
  store i8* %61, i8** %15, align 8
  %62 = load i64, i64* %8, align 8
  %63 = call signext i8 @cpu_to_le32(i64 %62)
  store i8 %63, i8* %19, align 1
  %64 = load i8*, i8** %15, align 8
  %65 = call i32 @memcpy(i8* %64, i8* %19, i64 1)
  %66 = load i8*, i8** %15, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 1
  store i8* %67, i8** %15, align 8
  %68 = load i64, i64* %11, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %46
  %71 = load i8*, i8** %15, align 8
  %72 = load i8*, i8** %10, align 8
  %73 = load i64, i64* %11, align 8
  %74 = call i32 @memcpy(i8* %71, i8* %72, i64 %73)
  br label %75

75:                                               ; preds = %70, %46
  %76 = load i64, i64* %18, align 8
  store i64 %76, i64* %7, align 8
  br label %77

77:                                               ; preds = %75, %44, %22
  %78 = load i64, i64* %7, align 8
  ret i64 %78
}

declare dso_local i64 @brcmf_create_iovar(i8*, i8*, i64, i8*, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @brcmf_err(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local signext i8 @cpu_to_le32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
