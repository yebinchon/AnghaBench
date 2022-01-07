; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/chips/extr_cfi_cmdset_0001.c_cfi_fixup_major_minor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/chips/extr_cfi_cmdset_0001.c_cfi_fixup_major_minor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfi_private = type { i64, i64 }
%struct.cfi_pri_intelext = type { i8 }

@CFI_MFR_INTEL = common dso_local global i64 0, align 8
@PF38F4476 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cfi_private*, %struct.cfi_pri_intelext*)* @cfi_fixup_major_minor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cfi_fixup_major_minor(%struct.cfi_private* %0, %struct.cfi_pri_intelext* %1) #0 {
  %3 = alloca %struct.cfi_private*, align 8
  %4 = alloca %struct.cfi_pri_intelext*, align 8
  store %struct.cfi_private* %0, %struct.cfi_private** %3, align 8
  store %struct.cfi_pri_intelext* %1, %struct.cfi_pri_intelext** %4, align 8
  %5 = load %struct.cfi_private*, %struct.cfi_private** %3, align 8
  %6 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @CFI_MFR_INTEL, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %25

10:                                               ; preds = %2
  %11 = load %struct.cfi_private*, %struct.cfi_private** %3, align 8
  %12 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @PF38F4476, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %25

16:                                               ; preds = %10
  %17 = load %struct.cfi_pri_intelext*, %struct.cfi_pri_intelext** %4, align 8
  %18 = getelementptr inbounds %struct.cfi_pri_intelext, %struct.cfi_pri_intelext* %17, i32 0, i32 0
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 51
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load %struct.cfi_pri_intelext*, %struct.cfi_pri_intelext** %4, align 8
  %24 = getelementptr inbounds %struct.cfi_pri_intelext, %struct.cfi_pri_intelext* %23, i32 0, i32 0
  store i8 49, i8* %24, align 1
  br label %25

25:                                               ; preds = %22, %16, %10, %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
