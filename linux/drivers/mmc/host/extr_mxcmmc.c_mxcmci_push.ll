; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_mxcmmc.c_mxcmci_push.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_mxcmmc.c_mxcmci_push.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxcmci_host = type { i32 }

@STATUS_BUF_WRITE_RDY = common dso_local global i32 0, align 4
@MMC_REG_BUFFER_ACCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mxcmci_host*, i8*, i32)* @mxcmci_push to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxcmci_push(%struct.mxcmci_host* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mxcmci_host*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.mxcmci_host* %0, %struct.mxcmci_host** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to i32*
  store i32* %13, i32** %9, align 8
  br label %14

14:                                               ; preds = %25, %3
  %15 = load i32, i32* %7, align 4
  %16 = icmp sgt i32 %15, 3
  br i1 %16, label %17, label %35

17:                                               ; preds = %14
  %18 = load %struct.mxcmci_host*, %struct.mxcmci_host** %5, align 8
  %19 = load i32, i32* @STATUS_BUF_WRITE_RDY, align 4
  %20 = call i32 @mxcmci_poll_status(%struct.mxcmci_host* %18, i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load i32, i32* %8, align 4
  store i32 %24, i32* %4, align 4
  br label %60

25:                                               ; preds = %17
  %26 = load %struct.mxcmci_host*, %struct.mxcmci_host** %5, align 8
  %27 = load i32*, i32** %9, align 8
  %28 = getelementptr inbounds i32, i32* %27, i32 1
  store i32* %28, i32** %9, align 8
  %29 = load i32, i32* %27, align 4
  %30 = call i32 @cpu_to_le32(i32 %29)
  %31 = load i32, i32* @MMC_REG_BUFFER_ACCESS, align 4
  %32 = call i32 @mxcmci_writel(%struct.mxcmci_host* %26, i32 %30, i32 %31)
  %33 = load i32, i32* %7, align 4
  %34 = sub nsw i32 %33, 4
  store i32 %34, i32* %7, align 4
  br label %14

35:                                               ; preds = %14
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %56

38:                                               ; preds = %35
  %39 = load i32*, i32** %9, align 8
  store i32* %39, i32** %10, align 8
  %40 = load %struct.mxcmci_host*, %struct.mxcmci_host** %5, align 8
  %41 = load i32, i32* @STATUS_BUF_WRITE_RDY, align 4
  %42 = call i32 @mxcmci_poll_status(%struct.mxcmci_host* %40, i32 %41)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %38
  %46 = load i32, i32* %8, align 4
  store i32 %46, i32* %4, align 4
  br label %60

47:                                               ; preds = %38
  %48 = load i32*, i32** %10, align 8
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @memcpy(i32* %11, i32* %48, i32 %49)
  %51 = load %struct.mxcmci_host*, %struct.mxcmci_host** %5, align 8
  %52 = load i32, i32* %11, align 4
  %53 = call i32 @cpu_to_le32(i32 %52)
  %54 = load i32, i32* @MMC_REG_BUFFER_ACCESS, align 4
  %55 = call i32 @mxcmci_writel(%struct.mxcmci_host* %51, i32 %53, i32 %54)
  br label %56

56:                                               ; preds = %47, %35
  %57 = load %struct.mxcmci_host*, %struct.mxcmci_host** %5, align 8
  %58 = load i32, i32* @STATUS_BUF_WRITE_RDY, align 4
  %59 = call i32 @mxcmci_poll_status(%struct.mxcmci_host* %57, i32 %58)
  store i32 %59, i32* %4, align 4
  br label %60

60:                                               ; preds = %56, %45, %23
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local i32 @mxcmci_poll_status(%struct.mxcmci_host*, i32) #1

declare dso_local i32 @mxcmci_writel(%struct.mxcmci_host*, i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
