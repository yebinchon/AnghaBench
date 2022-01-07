; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_wbsd.c_wbsd_tasklet_card.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_wbsd.c_wbsd_tasklet_card.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wbsd_host = type { i32, i32, i32, i32, %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@WBSD_FIGNORE_DETECT = common dso_local global i32 0, align 4
@WBSD_CSR = common dso_local global i64 0, align 8
@WBSD_CARDPRESENT = common dso_local global i32 0, align 4
@WBSD_FCARD_PRESENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Card inserted\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"Card removed\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"%s: Card removed during transfer!\0A\00", align 1
@ENOMEDIUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @wbsd_tasklet_card to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wbsd_tasklet_card(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.wbsd_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = inttoptr i64 %6 to %struct.wbsd_host*
  store %struct.wbsd_host* %7, %struct.wbsd_host** %3, align 8
  store i32 -1, i32* %5, align 4
  %8 = load %struct.wbsd_host*, %struct.wbsd_host** %3, align 8
  %9 = getelementptr inbounds %struct.wbsd_host, %struct.wbsd_host* %8, i32 0, i32 2
  %10 = call i32 @spin_lock(i32* %9)
  %11 = load %struct.wbsd_host*, %struct.wbsd_host** %3, align 8
  %12 = getelementptr inbounds %struct.wbsd_host, %struct.wbsd_host* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @WBSD_FIGNORE_DETECT, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load %struct.wbsd_host*, %struct.wbsd_host** %3, align 8
  %19 = getelementptr inbounds %struct.wbsd_host, %struct.wbsd_host* %18, i32 0, i32 2
  %20 = call i32 @spin_unlock(i32* %19)
  br label %104

21:                                               ; preds = %1
  %22 = load %struct.wbsd_host*, %struct.wbsd_host** %3, align 8
  %23 = getelementptr inbounds %struct.wbsd_host, %struct.wbsd_host* %22, i32 0, i32 5
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @WBSD_CSR, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @inb(i64 %26)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp eq i32 %28, 255
  %30 = zext i1 %29 to i32
  %31 = call i32 @WARN_ON(i32 %30)
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @WBSD_CARDPRESENT, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %51

36:                                               ; preds = %21
  %37 = load %struct.wbsd_host*, %struct.wbsd_host** %3, align 8
  %38 = getelementptr inbounds %struct.wbsd_host, %struct.wbsd_host* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @WBSD_FCARD_PRESENT, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %50, label %43

43:                                               ; preds = %36
  %44 = call i32 @DBG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %45 = load i32, i32* @WBSD_FCARD_PRESENT, align 4
  %46 = load %struct.wbsd_host*, %struct.wbsd_host** %3, align 8
  %47 = getelementptr inbounds %struct.wbsd_host, %struct.wbsd_host* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 8
  store i32 500, i32* %5, align 4
  br label %50

50:                                               ; preds = %43, %36
  br label %91

51:                                               ; preds = %21
  %52 = load %struct.wbsd_host*, %struct.wbsd_host** %3, align 8
  %53 = getelementptr inbounds %struct.wbsd_host, %struct.wbsd_host* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @WBSD_FCARD_PRESENT, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %90

58:                                               ; preds = %51
  %59 = call i32 @DBG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %60 = load i32, i32* @WBSD_FCARD_PRESENT, align 4
  %61 = xor i32 %60, -1
  %62 = load %struct.wbsd_host*, %struct.wbsd_host** %3, align 8
  %63 = getelementptr inbounds %struct.wbsd_host, %struct.wbsd_host* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = and i32 %64, %61
  store i32 %65, i32* %63, align 8
  %66 = load %struct.wbsd_host*, %struct.wbsd_host** %3, align 8
  %67 = getelementptr inbounds %struct.wbsd_host, %struct.wbsd_host* %66, i32 0, i32 4
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = icmp ne %struct.TYPE_4__* %68, null
  br i1 %69, label %70, label %89

70:                                               ; preds = %58
  %71 = load %struct.wbsd_host*, %struct.wbsd_host** %3, align 8
  %72 = getelementptr inbounds %struct.wbsd_host, %struct.wbsd_host* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @mmc_hostname(i32 %73)
  %75 = call i32 @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %74)
  %76 = load %struct.wbsd_host*, %struct.wbsd_host** %3, align 8
  %77 = call i32 @wbsd_reset(%struct.wbsd_host* %76)
  %78 = load i32, i32* @ENOMEDIUM, align 4
  %79 = sub nsw i32 0, %78
  %80 = load %struct.wbsd_host*, %struct.wbsd_host** %3, align 8
  %81 = getelementptr inbounds %struct.wbsd_host, %struct.wbsd_host* %80, i32 0, i32 4
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  store i32 %79, i32* %85, align 4
  %86 = load %struct.wbsd_host*, %struct.wbsd_host** %3, align 8
  %87 = getelementptr inbounds %struct.wbsd_host, %struct.wbsd_host* %86, i32 0, i32 3
  %88 = call i32 @tasklet_schedule(i32* %87)
  br label %89

89:                                               ; preds = %70, %58
  store i32 0, i32* %5, align 4
  br label %90

90:                                               ; preds = %89, %51
  br label %91

91:                                               ; preds = %90, %50
  %92 = load %struct.wbsd_host*, %struct.wbsd_host** %3, align 8
  %93 = getelementptr inbounds %struct.wbsd_host, %struct.wbsd_host* %92, i32 0, i32 2
  %94 = call i32 @spin_unlock(i32* %93)
  %95 = load i32, i32* %5, align 4
  %96 = icmp ne i32 %95, -1
  br i1 %96, label %97, label %104

97:                                               ; preds = %91
  %98 = load %struct.wbsd_host*, %struct.wbsd_host** %3, align 8
  %99 = getelementptr inbounds %struct.wbsd_host, %struct.wbsd_host* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %5, align 4
  %102 = call i32 @msecs_to_jiffies(i32 %101)
  %103 = call i32 @mmc_detect_change(i32 %100, i32 %102)
  br label %104

104:                                              ; preds = %17, %97, %91
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @DBG(i8*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @mmc_hostname(i32) #1

declare dso_local i32 @wbsd_reset(%struct.wbsd_host*) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

declare dso_local i32 @mmc_detect_change(i32, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
