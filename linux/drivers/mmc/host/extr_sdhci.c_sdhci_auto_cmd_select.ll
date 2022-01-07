; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci.c_sdhci_auto_cmd_select.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci.c_sdhci_auto_cmd_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { i32, i64 }
%struct.mmc_command = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@SD_IO_RW_EXTENDED = common dso_local global i64 0, align 8
@SDHCI_AUTO_CMD23 = common dso_local global i32 0, align 4
@SDHCI_SPEC_410 = common dso_local global i64 0, align 8
@SDHCI_TRNS_AUTO_SEL = common dso_local global i32 0, align 4
@SDHCI_HOST_CONTROL2 = common dso_local global i32 0, align 4
@SDHCI_CMD23_ENABLE = common dso_local global i32 0, align 4
@SDHCI_TRNS_AUTO_CMD12 = common dso_local global i32 0, align 4
@SDHCI_TRNS_AUTO_CMD23 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdhci_host*, %struct.mmc_command*, i32*)* @sdhci_auto_cmd_select to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdhci_auto_cmd_select(%struct.sdhci_host* %0, %struct.mmc_command* %1, i32* %2) #0 {
  %4 = alloca %struct.sdhci_host*, align 8
  %5 = alloca %struct.mmc_command*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.sdhci_host* %0, %struct.sdhci_host** %4, align 8
  store %struct.mmc_command* %1, %struct.mmc_command** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %11 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %12 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = call i64 @sdhci_auto_cmd12(%struct.sdhci_host* %10, %struct.TYPE_2__* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %3
  %17 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %18 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @SD_IO_RW_EXTENDED, align 8
  %21 = icmp ne i64 %19, %20
  br label %22

22:                                               ; preds = %16, %3
  %23 = phi i1 [ false, %3 ], [ %21, %16 ]
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %7, align 4
  %25 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %26 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %22
  %32 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %33 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @SDHCI_AUTO_CMD23, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br label %38

38:                                               ; preds = %31, %22
  %39 = phi i1 [ false, %22 ], [ %37, %31 ]
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %8, align 4
  %41 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %42 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @SDHCI_SPEC_410, align 8
  %45 = icmp sge i64 %43, %44
  br i1 %45, label %46, label %76

46:                                               ; preds = %38
  %47 = load i32, i32* %7, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %46
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %76

52:                                               ; preds = %49, %46
  %53 = load i32, i32* @SDHCI_TRNS_AUTO_SEL, align 4
  %54 = load i32*, i32** %6, align 8
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %55, %53
  store i32 %56, i32* %54, align 4
  %57 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %58 = load i32, i32* @SDHCI_HOST_CONTROL2, align 4
  %59 = call i32 @sdhci_readw(%struct.sdhci_host* %57, i32 %58)
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %52
  %63 = load i32, i32* @SDHCI_CMD23_ENABLE, align 4
  %64 = load i32, i32* %9, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %9, align 4
  br label %71

66:                                               ; preds = %52
  %67 = load i32, i32* @SDHCI_CMD23_ENABLE, align 4
  %68 = xor i32 %67, -1
  %69 = load i32, i32* %9, align 4
  %70 = and i32 %69, %68
  store i32 %70, i32* %9, align 4
  br label %71

71:                                               ; preds = %66, %62
  %72 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* @SDHCI_HOST_CONTROL2, align 4
  %75 = call i32 @sdhci_writew(%struct.sdhci_host* %72, i32 %73, i32 %74)
  br label %93

76:                                               ; preds = %49, %38
  %77 = load i32, i32* %7, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %76
  %80 = load i32, i32* @SDHCI_TRNS_AUTO_CMD12, align 4
  %81 = load i32*, i32** %6, align 8
  %82 = load i32, i32* %81, align 4
  %83 = or i32 %82, %80
  store i32 %83, i32* %81, align 4
  br label %93

84:                                               ; preds = %76
  %85 = load i32, i32* %8, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %84
  %88 = load i32, i32* @SDHCI_TRNS_AUTO_CMD23, align 4
  %89 = load i32*, i32** %6, align 8
  %90 = load i32, i32* %89, align 4
  %91 = or i32 %90, %88
  store i32 %91, i32* %89, align 4
  br label %92

92:                                               ; preds = %87, %84
  br label %93

93:                                               ; preds = %71, %92, %79
  ret void
}

declare dso_local i64 @sdhci_auto_cmd12(%struct.sdhci_host*, %struct.TYPE_2__*) #1

declare dso_local i32 @sdhci_readw(%struct.sdhci_host*, i32) #1

declare dso_local i32 @sdhci_writew(%struct.sdhci_host*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
