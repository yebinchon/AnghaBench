; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/chips/extr_cfi_cmdset_0002.c_is_m29ew.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/chips/extr_cfi_cmdset_0002.c_is_m29ew.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfi_private = type { i64, i64, i32 }

@CFI_MFR_INTEL = common dso_local global i64 0, align 8
@CFI_DEVICETYPE_X8 = common dso_local global i64 0, align 8
@CFI_DEVICETYPE_X16 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cfi_private*)* @is_m29ew to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_m29ew(%struct.cfi_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cfi_private*, align 8
  store %struct.cfi_private* %0, %struct.cfi_private** %3, align 8
  %4 = load %struct.cfi_private*, %struct.cfi_private** %3, align 8
  %5 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @CFI_MFR_INTEL, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %33

9:                                                ; preds = %1
  %10 = load %struct.cfi_private*, %struct.cfi_private** %3, align 8
  %11 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @CFI_DEVICETYPE_X8, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %9
  %16 = load %struct.cfi_private*, %struct.cfi_private** %3, align 8
  %17 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = and i32 %18, 255
  %20 = icmp eq i32 %19, 126
  br i1 %20, label %32, label %21

21:                                               ; preds = %15, %9
  %22 = load %struct.cfi_private*, %struct.cfi_private** %3, align 8
  %23 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @CFI_DEVICETYPE_X16, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %21
  %28 = load %struct.cfi_private*, %struct.cfi_private** %3, align 8
  %29 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = icmp eq i32 %30, 8830
  br i1 %31, label %32, label %33

32:                                               ; preds = %27, %15
  store i32 1, i32* %2, align 4
  br label %34

33:                                               ; preds = %27, %21, %1
  store i32 0, i32* %2, align 4
  br label %34

34:                                               ; preds = %33, %32
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
