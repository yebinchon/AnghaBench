; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_main.c_brcms_c_module_unregister.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_main.c_brcms_c_module_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_pub = type { i64 }
%struct.brcms_info = type { i32 }
%struct.brcms_c_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.brcms_info*, i32 }

@ENODATA = common dso_local global i32 0, align 4
@BRCMS_MAXMODULES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @brcms_c_module_unregister(%struct.brcms_pub* %0, i8* %1, %struct.brcms_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.brcms_pub*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.brcms_info*, align 8
  %8 = alloca %struct.brcms_c_info*, align 8
  %9 = alloca i32, align 4
  store %struct.brcms_pub* %0, %struct.brcms_pub** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.brcms_info* %2, %struct.brcms_info** %7, align 8
  %10 = load %struct.brcms_pub*, %struct.brcms_pub** %5, align 8
  %11 = getelementptr inbounds %struct.brcms_pub, %struct.brcms_pub* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.brcms_c_info*
  store %struct.brcms_c_info* %13, %struct.brcms_c_info** %8, align 8
  %14 = load %struct.brcms_c_info*, %struct.brcms_c_info** %8, align 8
  %15 = icmp eq %struct.brcms_c_info* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @ENODATA, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %62

19:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %20

20:                                               ; preds = %56, %19
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* @BRCMS_MAXMODULES, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %59

24:                                               ; preds = %20
  %25 = load %struct.brcms_c_info*, %struct.brcms_c_info** %8, align 8
  %26 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load i32, i32* %9, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = call i32 @strcmp(i32 %32, i8* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %55, label %36

36:                                               ; preds = %24
  %37 = load %struct.brcms_c_info*, %struct.brcms_c_info** %8, align 8
  %38 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load %struct.brcms_info*, %struct.brcms_info** %43, align 8
  %45 = load %struct.brcms_info*, %struct.brcms_info** %7, align 8
  %46 = icmp eq %struct.brcms_info* %44, %45
  br i1 %46, label %47, label %55

47:                                               ; preds = %36
  %48 = load %struct.brcms_c_info*, %struct.brcms_c_info** %8, align 8
  %49 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = load i32, i32* %9, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 %52
  %54 = call i32 @memset(%struct.TYPE_2__* %53, i32 0, i32 16)
  store i32 0, i32* %4, align 4
  br label %62

55:                                               ; preds = %36, %24
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %9, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %9, align 4
  br label %20

59:                                               ; preds = %20
  %60 = load i32, i32* @ENODATA, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %4, align 4
  br label %62

62:                                               ; preds = %59, %47, %16
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @memset(%struct.TYPE_2__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
