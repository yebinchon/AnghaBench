; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_main.c_brcms_c_module_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_main.c_brcms_c_module_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_pub = type { i64 }
%struct.brcms_info = type { i32 }
%struct.brcms_c_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8*, i32 (i8*)*, %struct.brcms_info* }

@BRCMS_MAXMODULES = common dso_local global i32 0, align 4
@ENOSR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @brcms_c_module_register(%struct.brcms_pub* %0, i8* %1, %struct.brcms_info* %2, i32 (i8*)* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.brcms_pub*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.brcms_info*, align 8
  %9 = alloca i32 (i8*)*, align 8
  %10 = alloca %struct.brcms_c_info*, align 8
  %11 = alloca i32, align 4
  store %struct.brcms_pub* %0, %struct.brcms_pub** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.brcms_info* %2, %struct.brcms_info** %8, align 8
  store i32 (i8*)* %3, i32 (i8*)** %9, align 8
  %12 = load %struct.brcms_pub*, %struct.brcms_pub** %6, align 8
  %13 = getelementptr inbounds %struct.brcms_pub, %struct.brcms_pub* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.brcms_c_info*
  store %struct.brcms_c_info* %15, %struct.brcms_c_info** %10, align 8
  store i32 0, i32* %11, align 4
  br label %16

16:                                               ; preds = %61, %4
  %17 = load i32, i32* %11, align 4
  %18 = load i32, i32* @BRCMS_MAXMODULES, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %64

20:                                               ; preds = %16
  %21 = load %struct.brcms_c_info*, %struct.brcms_c_info** %10, align 8
  %22 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = load i32, i32* %11, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 0
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %60

33:                                               ; preds = %20
  %34 = load %struct.brcms_c_info*, %struct.brcms_c_info** %10, align 8
  %35 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = load i32, i32* %11, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = load i8*, i8** %7, align 8
  %43 = call i32 @strncpy(i8* %41, i8* %42, i32 7)
  %44 = load %struct.brcms_info*, %struct.brcms_info** %8, align 8
  %45 = load %struct.brcms_c_info*, %struct.brcms_c_info** %10, align 8
  %46 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = load i32, i32* %11, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 2
  store %struct.brcms_info* %44, %struct.brcms_info** %51, align 8
  %52 = load i32 (i8*)*, i32 (i8*)** %9, align 8
  %53 = load %struct.brcms_c_info*, %struct.brcms_c_info** %10, align 8
  %54 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = load i32, i32* %11, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  store i32 (i8*)* %52, i32 (i8*)** %59, align 8
  store i32 0, i32* %5, align 4
  br label %67

60:                                               ; preds = %20
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %11, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %11, align 4
  br label %16

64:                                               ; preds = %16
  %65 = load i32, i32* @ENOSR, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %5, align 4
  br label %67

67:                                               ; preds = %64, %33
  %68 = load i32, i32* %5, align 4
  ret i32 %68
}

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
