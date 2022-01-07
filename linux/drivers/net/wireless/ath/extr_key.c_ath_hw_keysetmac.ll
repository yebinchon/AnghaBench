; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/extr_key.c_ath_hw_keysetmac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/extr_key.c_ath_hw_keysetmac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_common = type { i64, i8* }

@AR_KEYTABLE_VALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"keysetmac: keycache entry %u out of range\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_common*, i64, i32*)* @ath_hw_keysetmac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath_hw_keysetmac(%struct.ath_common* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath_common*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.ath_common* %0, %struct.ath_common** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load i32, i32* @AR_KEYTABLE_VALID, align 4
  store i32 %12, i32* %10, align 4
  %13 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %14 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %13, i32 0, i32 1
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %11, align 8
  %16 = load i64, i64* %6, align 8
  %17 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %18 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp sge i64 %16, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %3
  %22 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %23 = load i64, i64* %6, align 8
  %24 = call i32 @ath_err(%struct.ath_common* %22, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i64 %23)
  store i32 0, i32* %4, align 4
  br label %68

25:                                               ; preds = %3
  %26 = load i32*, i32** %7, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %50

28:                                               ; preds = %25
  %29 = load i32*, i32** %7, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %31, 1
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  store i32 0, i32* %10, align 4
  br label %35

35:                                               ; preds = %34, %28
  %36 = load i32*, i32** %7, align 8
  %37 = call i32 @get_unaligned_le32(i32* %36)
  store i32 %37, i32* %9, align 4
  %38 = load i32*, i32** %7, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 4
  %40 = call i32 @get_unaligned_le16(i32* %39)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %9, align 4
  %42 = ashr i32 %41, 1
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %8, align 4
  %44 = and i32 %43, 1
  %45 = shl i32 %44, 31
  %46 = load i32, i32* %9, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %8, align 4
  %49 = ashr i32 %48, 1
  store i32 %49, i32* %8, align 4
  br label %51

50:                                               ; preds = %25
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %51

51:                                               ; preds = %50, %35
  %52 = load i8*, i8** %11, align 8
  %53 = call i32 @ENABLE_REGWRITE_BUFFER(i8* %52)
  %54 = load i8*, i8** %11, align 8
  %55 = load i64, i64* %6, align 8
  %56 = call i32 @AR_KEYTABLE_MAC0(i64 %55)
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @REG_WRITE(i8* %54, i32 %56, i32 %57)
  %59 = load i8*, i8** %11, align 8
  %60 = load i64, i64* %6, align 8
  %61 = call i32 @AR_KEYTABLE_MAC1(i64 %60)
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* %10, align 4
  %64 = or i32 %62, %63
  %65 = call i32 @REG_WRITE(i8* %59, i32 %61, i32 %64)
  %66 = load i8*, i8** %11, align 8
  %67 = call i32 @REGWRITE_BUFFER_FLUSH(i8* %66)
  store i32 1, i32* %4, align 4
  br label %68

68:                                               ; preds = %51, %21
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local i32 @ath_err(%struct.ath_common*, i8*, i64) #1

declare dso_local i32 @get_unaligned_le32(i32*) #1

declare dso_local i32 @get_unaligned_le16(i32*) #1

declare dso_local i32 @ENABLE_REGWRITE_BUFFER(i8*) #1

declare dso_local i32 @REG_WRITE(i8*, i32, i32) #1

declare dso_local i32 @AR_KEYTABLE_MAC0(i64) #1

declare dso_local i32 @AR_KEYTABLE_MAC1(i64) #1

declare dso_local i32 @REGWRITE_BUFFER_FLUSH(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
