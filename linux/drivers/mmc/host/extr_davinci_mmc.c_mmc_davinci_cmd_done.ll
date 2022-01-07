; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_davinci_mmc.c_mmc_davinci_cmd_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_davinci_mmc.c_mmc_davinci_cmd_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_davinci_host = type { i32, i64, i32, i32*, i32* }
%struct.mmc_command = type { i32, %struct.TYPE_4__*, i32, i8** }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@MMC_RSP_PRESENT = common dso_local global i32 0, align 4
@MMC_RSP_136 = common dso_local global i32 0, align 4
@DAVINCI_MMCRSP01 = common dso_local global i64 0, align 8
@DAVINCI_MMCRSP23 = common dso_local global i64 0, align 8
@DAVINCI_MMCRSP45 = common dso_local global i64 0, align 8
@DAVINCI_MMCRSP67 = common dso_local global i64 0, align 8
@ETIMEDOUT = common dso_local global i32 0, align 4
@DAVINCI_MMCIM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_davinci_host*, %struct.mmc_command*)* @mmc_davinci_cmd_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmc_davinci_cmd_done(%struct.mmc_davinci_host* %0, %struct.mmc_command* %1) #0 {
  %3 = alloca %struct.mmc_davinci_host*, align 8
  %4 = alloca %struct.mmc_command*, align 8
  store %struct.mmc_davinci_host* %0, %struct.mmc_davinci_host** %3, align 8
  store %struct.mmc_command* %1, %struct.mmc_command** %4, align 8
  %5 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %3, align 8
  %6 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %5, i32 0, i32 4
  store i32* null, i32** %6, align 8
  %7 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %8 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @MMC_RSP_PRESENT, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %73

13:                                               ; preds = %2
  %14 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %15 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @MMC_RSP_136, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %61

20:                                               ; preds = %13
  %21 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %3, align 8
  %22 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @DAVINCI_MMCRSP01, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i8* @readl(i64 %25)
  %27 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %28 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %27, i32 0, i32 3
  %29 = load i8**, i8*** %28, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i64 3
  store i8* %26, i8** %30, align 8
  %31 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %3, align 8
  %32 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @DAVINCI_MMCRSP23, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i8* @readl(i64 %35)
  %37 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %38 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %37, i32 0, i32 3
  %39 = load i8**, i8*** %38, align 8
  %40 = getelementptr inbounds i8*, i8** %39, i64 2
  store i8* %36, i8** %40, align 8
  %41 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %3, align 8
  %42 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @DAVINCI_MMCRSP45, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i8* @readl(i64 %45)
  %47 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %48 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %47, i32 0, i32 3
  %49 = load i8**, i8*** %48, align 8
  %50 = getelementptr inbounds i8*, i8** %49, i64 1
  store i8* %46, i8** %50, align 8
  %51 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %3, align 8
  %52 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @DAVINCI_MMCRSP67, align 8
  %55 = add nsw i64 %53, %54
  %56 = call i8* @readl(i64 %55)
  %57 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %58 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %57, i32 0, i32 3
  %59 = load i8**, i8*** %58, align 8
  %60 = getelementptr inbounds i8*, i8** %59, i64 0
  store i8* %56, i8** %60, align 8
  br label %72

61:                                               ; preds = %13
  %62 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %3, align 8
  %63 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @DAVINCI_MMCRSP67, align 8
  %66 = add nsw i64 %64, %65
  %67 = call i8* @readl(i64 %66)
  %68 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %69 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %68, i32 0, i32 3
  %70 = load i8**, i8*** %69, align 8
  %71 = getelementptr inbounds i8*, i8** %70, i64 0
  store i8* %67, i8** %71, align 8
  br label %72

72:                                               ; preds = %61, %20
  br label %73

73:                                               ; preds = %72, %2
  %74 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %3, align 8
  %75 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %74, i32 0, i32 3
  %76 = load i32*, i32** %75, align 8
  %77 = icmp eq i32* %76, null
  br i1 %77, label %83, label %78

78:                                               ; preds = %73
  %79 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %80 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %113

83:                                               ; preds = %78, %73
  %84 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %85 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @ETIMEDOUT, align 4
  %88 = sub nsw i32 0, %87
  %89 = icmp eq i32 %86, %88
  br i1 %89, label %90, label %97

90:                                               ; preds = %83
  %91 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %92 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %91, i32 0, i32 1
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  store i64 0, i64* %96, align 8
  br label %97

97:                                               ; preds = %90, %83
  %98 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %3, align 8
  %99 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %102 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %101, i32 0, i32 1
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %102, align 8
  %104 = call i32 @mmc_request_done(i32 %100, %struct.TYPE_4__* %103)
  %105 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %3, align 8
  %106 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @DAVINCI_MMCIM, align 8
  %109 = add nsw i64 %107, %108
  %110 = call i32 @writel(i32 0, i64 %109)
  %111 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %3, align 8
  %112 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %111, i32 0, i32 0
  store i32 0, i32* %112, align 8
  br label %113

113:                                              ; preds = %97, %78
  ret void
}

declare dso_local i8* @readl(i64) #1

declare dso_local i32 @mmc_request_done(i32, %struct.TYPE_4__*) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
