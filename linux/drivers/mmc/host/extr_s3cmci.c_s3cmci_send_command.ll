; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_s3cmci.c_s3cmci_send_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_s3cmci.c_s3cmci_send_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s3cmci_host = type { i64, i32 }
%struct.mmc_command = type { i32, i32, i32, i64 }

@S3C2410_SDIIMSK_CRCSTATUS = common dso_local global i32 0, align 4
@S3C2410_SDIIMSK_CMDTIMEOUT = common dso_local global i32 0, align 4
@S3C2410_SDIIMSK_RESPONSEND = common dso_local global i32 0, align 4
@S3C2410_SDIIMSK_CMDSENT = common dso_local global i32 0, align 4
@S3C2410_SDIIMSK_RESPONSECRC = common dso_local global i32 0, align 4
@COMPLETION_XFERFINISH_RSPFIN = common dso_local global i32 0, align 4
@MMC_RSP_PRESENT = common dso_local global i32 0, align 4
@COMPLETION_RSPFIN = common dso_local global i32 0, align 4
@COMPLETION_CMDSENT = common dso_local global i32 0, align 4
@S3C2410_SDICMDARG = common dso_local global i64 0, align 8
@S3C2410_SDICMDCON_INDEX = common dso_local global i32 0, align 4
@S3C2410_SDICMDCON_SENDERHOST = common dso_local global i32 0, align 4
@S3C2410_SDICMDCON_CMDSTART = common dso_local global i32 0, align 4
@S3C2410_SDICMDCON_WAITRSP = common dso_local global i32 0, align 4
@MMC_RSP_136 = common dso_local global i32 0, align 4
@S3C2410_SDICMDCON_LONGRSP = common dso_local global i32 0, align 4
@S3C2410_SDICMDCON = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s3cmci_host*, %struct.mmc_command*)* @s3cmci_send_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s3cmci_send_command(%struct.s3cmci_host* %0, %struct.mmc_command* %1) #0 {
  %3 = alloca %struct.s3cmci_host*, align 8
  %4 = alloca %struct.mmc_command*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.s3cmci_host* %0, %struct.s3cmci_host** %3, align 8
  store %struct.mmc_command* %1, %struct.mmc_command** %4, align 8
  %7 = load i32, i32* @S3C2410_SDIIMSK_CRCSTATUS, align 4
  %8 = load i32, i32* @S3C2410_SDIIMSK_CMDTIMEOUT, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @S3C2410_SDIIMSK_RESPONSEND, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @S3C2410_SDIIMSK_CMDSENT, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @S3C2410_SDIIMSK_RESPONSECRC, align 4
  %15 = or i32 %13, %14
  store i32 %15, i32* %6, align 4
  %16 = load %struct.s3cmci_host*, %struct.s3cmci_host** %3, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @enable_imask(%struct.s3cmci_host* %16, i32 %17)
  %19 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %20 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %2
  %24 = load i32, i32* @COMPLETION_XFERFINISH_RSPFIN, align 4
  %25 = load %struct.s3cmci_host*, %struct.s3cmci_host** %3, align 8
  %26 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 8
  br label %43

27:                                               ; preds = %2
  %28 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %29 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @MMC_RSP_PRESENT, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %27
  %35 = load i32, i32* @COMPLETION_RSPFIN, align 4
  %36 = load %struct.s3cmci_host*, %struct.s3cmci_host** %3, align 8
  %37 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 8
  br label %42

38:                                               ; preds = %27
  %39 = load i32, i32* @COMPLETION_CMDSENT, align 4
  %40 = load %struct.s3cmci_host*, %struct.s3cmci_host** %3, align 8
  %41 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 8
  br label %42

42:                                               ; preds = %38, %34
  br label %43

43:                                               ; preds = %42, %23
  %44 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %45 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.s3cmci_host*, %struct.s3cmci_host** %3, align 8
  %48 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @S3C2410_SDICMDARG, align 8
  %51 = add nsw i64 %49, %50
  %52 = call i32 @writel(i32 %46, i64 %51)
  %53 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %54 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @S3C2410_SDICMDCON_INDEX, align 4
  %57 = and i32 %55, %56
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* @S3C2410_SDICMDCON_SENDERHOST, align 4
  %59 = load i32, i32* @S3C2410_SDICMDCON_CMDSTART, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* %5, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %5, align 4
  %63 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %64 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @MMC_RSP_PRESENT, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %43
  %70 = load i32, i32* @S3C2410_SDICMDCON_WAITRSP, align 4
  %71 = load i32, i32* %5, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %5, align 4
  br label %73

73:                                               ; preds = %69, %43
  %74 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %75 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @MMC_RSP_136, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %73
  %81 = load i32, i32* @S3C2410_SDICMDCON_LONGRSP, align 4
  %82 = load i32, i32* %5, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %5, align 4
  br label %84

84:                                               ; preds = %80, %73
  %85 = load i32, i32* %5, align 4
  %86 = load %struct.s3cmci_host*, %struct.s3cmci_host** %3, align 8
  %87 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @S3C2410_SDICMDCON, align 8
  %90 = add nsw i64 %88, %89
  %91 = call i32 @writel(i32 %85, i64 %90)
  ret void
}

declare dso_local i32 @enable_imask(%struct.s3cmci_host*, i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
