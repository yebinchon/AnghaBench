; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rtsx_pcr.c_rtsx_pci_add_sg_tbl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rtsx_pcr.c_rtsx_pci_add_sg_tbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_pcr = type { i32, i64 }

@RTSX_SG_VALID = common dso_local global i32 0, align 4
@RTSX_SG_TRANS_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"DMA addr: 0x%x, Len: 0x%x\0A\00", align 1
@RTSX_SG_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtsx_pcr*, i64, i32, i32)* @rtsx_pci_add_sg_tbl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtsx_pci_add_sg_tbl(%struct.rtsx_pcr* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.rtsx_pcr*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.rtsx_pcr* %0, %struct.rtsx_pcr** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %5, align 8
  %13 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to i32*
  %16 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %5, align 8
  %17 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %15, i64 %19
  store i32* %20, i32** %9, align 8
  %21 = load i32, i32* @RTSX_SG_VALID, align 4
  %22 = load i32, i32* @RTSX_SG_TRANS_DATA, align 4
  %23 = or i32 %21, %22
  store i32 %23, i32* %11, align 4
  %24 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %5, align 8
  %25 = load i64, i64* %6, align 8
  %26 = trunc i64 %25 to i32
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @pcr_dbg(%struct.rtsx_pcr* %24, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %27)
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %4
  %32 = load i32, i32* @RTSX_SG_END, align 4
  %33 = load i32, i32* %11, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %11, align 4
  br label %35

35:                                               ; preds = %31, %4
  %36 = load i64, i64* %6, align 8
  %37 = trunc i64 %36 to i32
  %38 = shl i32 %37, 32
  %39 = load i32, i32* %7, align 4
  %40 = shl i32 %39, 12
  %41 = or i32 %38, %40
  %42 = load i32, i32* %11, align 4
  %43 = or i32 %41, %42
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = load i32*, i32** %9, align 8
  %46 = call i32 @put_unaligned_le64(i32 %44, i32* %45)
  %47 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %5, align 8
  %48 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 8
  ret void
}

declare dso_local i32 @pcr_dbg(%struct.rtsx_pcr*, i8*, i32, i32) #1

declare dso_local i32 @put_unaligned_le64(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
