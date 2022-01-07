; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_ethtool.c_ef4_fill_test.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_ethtool.c_ef4_fill_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ETH_GSTRING_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"%-6s %-24s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, i32*, i32*, i8*, i32, i8*, i8*)* @ef4_fill_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ef4_fill_test(i32 %0, i32* %1, i32* %2, i32* %3, i8* %4, i32 %5, i8* %6, i8* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store i32 %0, i32* %9, align 4
  store i32* %1, i32** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32* %3, i32** %12, align 8
  store i8* %4, i8** %13, align 8
  store i32 %5, i32* %14, align 4
  store i8* %6, i8** %15, align 8
  store i8* %7, i8** %16, align 8
  %20 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %17, align 8
  %23 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %18, align 8
  %24 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %25 = zext i32 %24 to i64
  %26 = alloca i8, i64 %25, align 16
  store i64 %25, i64* %19, align 8
  %27 = load i32*, i32** %11, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %36

29:                                               ; preds = %8
  %30 = load i32*, i32** %12, align 8
  %31 = load i32, i32* %30, align 4
  %32 = load i32*, i32** %11, align 8
  %33 = load i32, i32* %9, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  store i32 %31, i32* %35, align 4
  br label %36

36:                                               ; preds = %29, %8
  %37 = load i32*, i32** %10, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %65

39:                                               ; preds = %36
  %40 = load i8*, i8** %13, align 8
  %41 = call i64 @strchr(i8* %40, i8 signext 37)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %39
  %44 = trunc i64 %21 to i32
  %45 = load i8*, i8** %13, align 8
  %46 = load i32, i32* %14, align 4
  %47 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %23, i32 %44, i8* %45, i32 %46)
  br label %51

48:                                               ; preds = %39
  %49 = load i8*, i8** %13, align 8
  %50 = call i32 @strcpy(i8* %23, i8* %49)
  br label %51

51:                                               ; preds = %48, %43
  %52 = trunc i64 %25 to i32
  %53 = load i8*, i8** %15, align 8
  %54 = load i8*, i8** %16, align 8
  %55 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %26, i32 %52, i8* %53, i8* %54)
  %56 = load i32*, i32** %10, align 8
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %59 = mul i32 %57, %58
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %56, i64 %60
  %62 = bitcast i32* %61 to i8*
  %63 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %64 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %62, i32 %63, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %23, i8* %26)
  br label %65

65:                                               ; preds = %51, %36
  %66 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %66)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @strchr(i8*, i8 signext) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
