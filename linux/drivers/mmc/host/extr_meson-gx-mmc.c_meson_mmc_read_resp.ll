; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_meson-gx-mmc.c_meson_mmc_read_resp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_meson-gx-mmc.c_meson_mmc_read_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.mmc_command = type { i32, i8** }
%struct.meson_host = type { i64 }

@MMC_RSP_136 = common dso_local global i32 0, align 4
@SD_EMMC_CMD_RSP3 = common dso_local global i64 0, align 8
@SD_EMMC_CMD_RSP2 = common dso_local global i64 0, align 8
@SD_EMMC_CMD_RSP1 = common dso_local global i64 0, align 8
@SD_EMMC_CMD_RSP = common dso_local global i64 0, align 8
@MMC_RSP_PRESENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_host*, %struct.mmc_command*)* @meson_mmc_read_resp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @meson_mmc_read_resp(%struct.mmc_host* %0, %struct.mmc_command* %1) #0 {
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca %struct.mmc_command*, align 8
  %5 = alloca %struct.meson_host*, align 8
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  store %struct.mmc_command* %1, %struct.mmc_command** %4, align 8
  %6 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %7 = call %struct.meson_host* @mmc_priv(%struct.mmc_host* %6)
  store %struct.meson_host* %7, %struct.meson_host** %5, align 8
  %8 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %9 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @MMC_RSP_136, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %55

14:                                               ; preds = %2
  %15 = load %struct.meson_host*, %struct.meson_host** %5, align 8
  %16 = getelementptr inbounds %struct.meson_host, %struct.meson_host* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @SD_EMMC_CMD_RSP3, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i8* @readl(i64 %19)
  %21 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %22 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %21, i32 0, i32 1
  %23 = load i8**, i8*** %22, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 0
  store i8* %20, i8** %24, align 8
  %25 = load %struct.meson_host*, %struct.meson_host** %5, align 8
  %26 = getelementptr inbounds %struct.meson_host, %struct.meson_host* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @SD_EMMC_CMD_RSP2, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i8* @readl(i64 %29)
  %31 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %32 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %31, i32 0, i32 1
  %33 = load i8**, i8*** %32, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i64 1
  store i8* %30, i8** %34, align 8
  %35 = load %struct.meson_host*, %struct.meson_host** %5, align 8
  %36 = getelementptr inbounds %struct.meson_host, %struct.meson_host* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @SD_EMMC_CMD_RSP1, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i8* @readl(i64 %39)
  %41 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %42 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %41, i32 0, i32 1
  %43 = load i8**, i8*** %42, align 8
  %44 = getelementptr inbounds i8*, i8** %43, i64 2
  store i8* %40, i8** %44, align 8
  %45 = load %struct.meson_host*, %struct.meson_host** %5, align 8
  %46 = getelementptr inbounds %struct.meson_host, %struct.meson_host* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @SD_EMMC_CMD_RSP, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i8* @readl(i64 %49)
  %51 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %52 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %51, i32 0, i32 1
  %53 = load i8**, i8*** %52, align 8
  %54 = getelementptr inbounds i8*, i8** %53, i64 3
  store i8* %50, i8** %54, align 8
  br label %74

55:                                               ; preds = %2
  %56 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %57 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @MMC_RSP_PRESENT, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %73

62:                                               ; preds = %55
  %63 = load %struct.meson_host*, %struct.meson_host** %5, align 8
  %64 = getelementptr inbounds %struct.meson_host, %struct.meson_host* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @SD_EMMC_CMD_RSP, align 8
  %67 = add nsw i64 %65, %66
  %68 = call i8* @readl(i64 %67)
  %69 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %70 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %69, i32 0, i32 1
  %71 = load i8**, i8*** %70, align 8
  %72 = getelementptr inbounds i8*, i8** %71, i64 0
  store i8* %68, i8** %72, align 8
  br label %73

73:                                               ; preds = %62, %55
  br label %74

74:                                               ; preds = %73, %14
  ret void
}

declare dso_local %struct.meson_host* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i8* @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
