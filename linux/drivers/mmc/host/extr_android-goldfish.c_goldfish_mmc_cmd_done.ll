; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_android-goldfish.c_goldfish_mmc_cmd_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_android-goldfish.c_goldfish_mmc_cmd_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.goldfish_mmc_host = type { i32*, i32*, i32* }
%struct.mmc_command = type { i32, i32, i64, i8** }

@MMC_RSP_PRESENT = common dso_local global i32 0, align 4
@MMC_RSP_136 = common dso_local global i32 0, align 4
@MMC_RESP_0 = common dso_local global i32 0, align 4
@MMC_RESP_1 = common dso_local global i32 0, align 4
@MMC_RESP_2 = common dso_local global i32 0, align 4
@MMC_RESP_3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.goldfish_mmc_host*, %struct.mmc_command*)* @goldfish_mmc_cmd_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goldfish_mmc_cmd_done(%struct.goldfish_mmc_host* %0, %struct.mmc_command* %1) #0 {
  %3 = alloca %struct.goldfish_mmc_host*, align 8
  %4 = alloca %struct.mmc_command*, align 8
  store %struct.goldfish_mmc_host* %0, %struct.goldfish_mmc_host** %3, align 8
  store %struct.mmc_command* %1, %struct.mmc_command** %4, align 8
  %5 = load %struct.goldfish_mmc_host*, %struct.goldfish_mmc_host** %3, align 8
  %6 = getelementptr inbounds %struct.goldfish_mmc_host, %struct.goldfish_mmc_host* %5, i32 0, i32 2
  store i32* null, i32** %6, align 8
  %7 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %8 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @MMC_RSP_PRESENT, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %58

13:                                               ; preds = %2
  %14 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %15 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @MMC_RSP_136, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %49

20:                                               ; preds = %13
  %21 = load %struct.goldfish_mmc_host*, %struct.goldfish_mmc_host** %3, align 8
  %22 = load i32, i32* @MMC_RESP_0, align 4
  %23 = call i8* @GOLDFISH_MMC_READ(%struct.goldfish_mmc_host* %21, i32 %22)
  %24 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %25 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %24, i32 0, i32 3
  %26 = load i8**, i8*** %25, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i64 3
  store i8* %23, i8** %27, align 8
  %28 = load %struct.goldfish_mmc_host*, %struct.goldfish_mmc_host** %3, align 8
  %29 = load i32, i32* @MMC_RESP_1, align 4
  %30 = call i8* @GOLDFISH_MMC_READ(%struct.goldfish_mmc_host* %28, i32 %29)
  %31 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %32 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %31, i32 0, i32 3
  %33 = load i8**, i8*** %32, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i64 2
  store i8* %30, i8** %34, align 8
  %35 = load %struct.goldfish_mmc_host*, %struct.goldfish_mmc_host** %3, align 8
  %36 = load i32, i32* @MMC_RESP_2, align 4
  %37 = call i8* @GOLDFISH_MMC_READ(%struct.goldfish_mmc_host* %35, i32 %36)
  %38 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %39 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %38, i32 0, i32 3
  %40 = load i8**, i8*** %39, align 8
  %41 = getelementptr inbounds i8*, i8** %40, i64 1
  store i8* %37, i8** %41, align 8
  %42 = load %struct.goldfish_mmc_host*, %struct.goldfish_mmc_host** %3, align 8
  %43 = load i32, i32* @MMC_RESP_3, align 4
  %44 = call i8* @GOLDFISH_MMC_READ(%struct.goldfish_mmc_host* %42, i32 %43)
  %45 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %46 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %45, i32 0, i32 3
  %47 = load i8**, i8*** %46, align 8
  %48 = getelementptr inbounds i8*, i8** %47, i64 0
  store i8* %44, i8** %48, align 8
  br label %57

49:                                               ; preds = %13
  %50 = load %struct.goldfish_mmc_host*, %struct.goldfish_mmc_host** %3, align 8
  %51 = load i32, i32* @MMC_RESP_0, align 4
  %52 = call i8* @GOLDFISH_MMC_READ(%struct.goldfish_mmc_host* %50, i32 %51)
  %53 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %54 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %53, i32 0, i32 3
  %55 = load i8**, i8*** %54, align 8
  %56 = getelementptr inbounds i8*, i8** %55, i64 0
  store i8* %52, i8** %56, align 8
  br label %57

57:                                               ; preds = %49, %20
  br label %58

58:                                               ; preds = %57, %2
  %59 = load %struct.goldfish_mmc_host*, %struct.goldfish_mmc_host** %3, align 8
  %60 = getelementptr inbounds %struct.goldfish_mmc_host, %struct.goldfish_mmc_host* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = icmp eq i32* %61, null
  br i1 %62, label %68, label %63

63:                                               ; preds = %58
  %64 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %65 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %77

68:                                               ; preds = %63, %58
  %69 = load %struct.goldfish_mmc_host*, %struct.goldfish_mmc_host** %3, align 8
  %70 = getelementptr inbounds %struct.goldfish_mmc_host, %struct.goldfish_mmc_host* %69, i32 0, i32 0
  store i32* null, i32** %70, align 8
  %71 = load %struct.goldfish_mmc_host*, %struct.goldfish_mmc_host** %3, align 8
  %72 = call i32 @mmc_from_priv(%struct.goldfish_mmc_host* %71)
  %73 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %74 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @mmc_request_done(i32 %72, i32 %75)
  br label %77

77:                                               ; preds = %68, %63
  ret void
}

declare dso_local i8* @GOLDFISH_MMC_READ(%struct.goldfish_mmc_host*, i32) #1

declare dso_local i32 @mmc_request_done(i32, i32) #1

declare dso_local i32 @mmc_from_priv(%struct.goldfish_mmc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
