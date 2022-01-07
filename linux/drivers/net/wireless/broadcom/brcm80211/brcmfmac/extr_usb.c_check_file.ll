; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_usb.c_check_file.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_usb.c_check_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trx_header_le = type { i64, i32*, i32 }

@USB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"Enter\0A\00", align 1
@TRX_MAGIC = common dso_local global i32 0, align 4
@TRX_UNCOMP_IMAGE = common dso_local global i32 0, align 4
@TRX_OFFSETS_DLFWLEN_IDX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @check_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_file(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.trx_header_le*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 -1, i32* %5, align 4
  %6 = load i32, i32* @USB, align 4
  %7 = call i32 @brcmf_dbg(i32 %6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %8 = load i32*, i32** %3, align 8
  %9 = bitcast i32* %8 to %struct.trx_header_le*
  store %struct.trx_header_le* %9, %struct.trx_header_le** %4, align 8
  %10 = load %struct.trx_header_le*, %struct.trx_header_le** %4, align 8
  %11 = getelementptr inbounds %struct.trx_header_le, %struct.trx_header_le* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i32, i32* @TRX_MAGIC, align 4
  %14 = call i64 @cpu_to_le32(i32 %13)
  %15 = icmp ne i64 %12, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %40

17:                                               ; preds = %1
  %18 = load i32*, i32** %3, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 24
  store i32* %19, i32** %3, align 8
  %20 = load %struct.trx_header_le*, %struct.trx_header_le** %4, align 8
  %21 = getelementptr inbounds %struct.trx_header_le, %struct.trx_header_le* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @le32_to_cpu(i32 %22)
  %24 = load i32, i32* @TRX_UNCOMP_IMAGE, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %17
  %28 = load %struct.trx_header_le*, %struct.trx_header_le** %4, align 8
  %29 = getelementptr inbounds %struct.trx_header_le, %struct.trx_header_le* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = load i64, i64* @TRX_OFFSETS_DLFWLEN_IDX, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @le32_to_cpu(i32 %33)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = add i64 %36, 24
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %2, align 4
  br label %40

39:                                               ; preds = %17
  store i32 -1, i32* %2, align 4
  br label %40

40:                                               ; preds = %39, %27, %16
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @brcmf_dbg(i32, i8*) #1

declare dso_local i64 @cpu_to_le32(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
