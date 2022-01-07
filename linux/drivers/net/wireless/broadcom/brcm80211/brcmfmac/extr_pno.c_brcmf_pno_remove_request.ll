; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_pno.c_brcmf_pno_remove_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_pno.c_brcmf_pno_remove_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_pno_info = type { i32, i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [17 x i8] c"reqid not found\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@SCAN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"reqid=%llu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcmf_pno_info*, i64)* @brcmf_pno_remove_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmf_pno_remove_request(%struct.brcmf_pno_info* %0, i64 %1) #0 {
  %3 = alloca %struct.brcmf_pno_info*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.brcmf_pno_info* %0, %struct.brcmf_pno_info** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.brcmf_pno_info*, %struct.brcmf_pno_info** %3, align 8
  %8 = getelementptr inbounds %struct.brcmf_pno_info, %struct.brcmf_pno_info* %7, i32 0, i32 1
  %9 = call i32 @mutex_lock(i32* %8)
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %30, %2
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.brcmf_pno_info*, %struct.brcmf_pno_info** %3, align 8
  %13 = getelementptr inbounds %struct.brcmf_pno_info, %struct.brcmf_pno_info* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %33

16:                                               ; preds = %10
  %17 = load %struct.brcmf_pno_info*, %struct.brcmf_pno_info** %3, align 8
  %18 = getelementptr inbounds %struct.brcmf_pno_info, %struct.brcmf_pno_info* %17, i32 0, i32 2
  %19 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %19, i64 %21
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %4, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %16
  br label %33

29:                                               ; preds = %16
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %5, align 4
  br label %10

33:                                               ; preds = %28, %10
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.brcmf_pno_info*, %struct.brcmf_pno_info** %3, align 8
  %36 = getelementptr inbounds %struct.brcmf_pno_info, %struct.brcmf_pno_info* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp eq i32 %34, %37
  %39 = zext i1 %38 to i32
  %40 = call i64 @WARN(i32 %39, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %33
  %43 = load i32, i32* @ENOENT, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %6, align 4
  br label %90

45:                                               ; preds = %33
  %46 = load i32, i32* @SCAN, align 4
  %47 = load i64, i64* %4, align 8
  %48 = call i32 @brcmf_dbg(i32 %46, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %47)
  %49 = load %struct.brcmf_pno_info*, %struct.brcmf_pno_info** %3, align 8
  %50 = getelementptr inbounds %struct.brcmf_pno_info, %struct.brcmf_pno_info* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* %50, align 8
  %53 = load %struct.brcmf_pno_info*, %struct.brcmf_pno_info** %3, align 8
  %54 = getelementptr inbounds %struct.brcmf_pno_info, %struct.brcmf_pno_info* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %45
  %58 = load i32, i32* %5, align 4
  %59 = load %struct.brcmf_pno_info*, %struct.brcmf_pno_info** %3, align 8
  %60 = getelementptr inbounds %struct.brcmf_pno_info, %struct.brcmf_pno_info* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp eq i32 %58, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %57, %45
  br label %90

64:                                               ; preds = %57
  br label %65

65:                                               ; preds = %72, %64
  %66 = load i32, i32* %5, align 4
  %67 = load %struct.brcmf_pno_info*, %struct.brcmf_pno_info** %3, align 8
  %68 = getelementptr inbounds %struct.brcmf_pno_info, %struct.brcmf_pno_info* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = sub nsw i32 %69, 1
  %71 = icmp sle i32 %66, %70
  br i1 %71, label %72, label %89

72:                                               ; preds = %65
  %73 = load %struct.brcmf_pno_info*, %struct.brcmf_pno_info** %3, align 8
  %74 = getelementptr inbounds %struct.brcmf_pno_info, %struct.brcmf_pno_info* %73, i32 0, i32 2
  %75 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %74, align 8
  %76 = load i32, i32* %5, align 4
  %77 = add nsw i32 %76, 1
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %75, i64 %78
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = load %struct.brcmf_pno_info*, %struct.brcmf_pno_info** %3, align 8
  %82 = getelementptr inbounds %struct.brcmf_pno_info, %struct.brcmf_pno_info* %81, i32 0, i32 2
  %83 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %82, align 8
  %84 = load i32, i32* %5, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %83, i64 %85
  store %struct.TYPE_2__* %80, %struct.TYPE_2__** %86, align 8
  %87 = load i32, i32* %5, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %5, align 4
  br label %65

89:                                               ; preds = %65
  br label %90

90:                                               ; preds = %89, %63, %42
  %91 = load %struct.brcmf_pno_info*, %struct.brcmf_pno_info** %3, align 8
  %92 = getelementptr inbounds %struct.brcmf_pno_info, %struct.brcmf_pno_info* %91, i32 0, i32 1
  %93 = call i32 @mutex_unlock(i32* %92)
  %94 = load i32, i32* %6, align 4
  ret i32 %94
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @WARN(i32, i8*) #1

declare dso_local i32 @brcmf_dbg(i32, i8*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
