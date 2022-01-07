; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/chips/extr_cfi_probe.c_cfi_early_fixup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/chips/extr_cfi_probe.c_cfi_early_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfi_private = type { i64, i64 }
%struct.cfi_early_fixup = type { i64, i64, i32 (%struct.cfi_private*)* }

@CFI_MFR_ANY = common dso_local global i64 0, align 8
@CFI_ID_ANY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cfi_private*, %struct.cfi_early_fixup*)* @cfi_early_fixup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cfi_early_fixup(%struct.cfi_private* %0, %struct.cfi_early_fixup* %1) #0 {
  %3 = alloca %struct.cfi_private*, align 8
  %4 = alloca %struct.cfi_early_fixup*, align 8
  %5 = alloca %struct.cfi_early_fixup*, align 8
  store %struct.cfi_private* %0, %struct.cfi_private** %3, align 8
  store %struct.cfi_early_fixup* %1, %struct.cfi_early_fixup** %4, align 8
  %6 = load %struct.cfi_early_fixup*, %struct.cfi_early_fixup** %4, align 8
  store %struct.cfi_early_fixup* %6, %struct.cfi_early_fixup** %5, align 8
  br label %7

7:                                                ; preds = %47, %2
  %8 = load %struct.cfi_early_fixup*, %struct.cfi_early_fixup** %5, align 8
  %9 = getelementptr inbounds %struct.cfi_early_fixup, %struct.cfi_early_fixup* %8, i32 0, i32 2
  %10 = load i32 (%struct.cfi_private*)*, i32 (%struct.cfi_private*)** %9, align 8
  %11 = icmp ne i32 (%struct.cfi_private*)* %10, null
  br i1 %11, label %12, label %50

12:                                               ; preds = %7
  %13 = load %struct.cfi_early_fixup*, %struct.cfi_early_fixup** %5, align 8
  %14 = getelementptr inbounds %struct.cfi_early_fixup, %struct.cfi_early_fixup* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @CFI_MFR_ANY, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %26, label %18

18:                                               ; preds = %12
  %19 = load %struct.cfi_early_fixup*, %struct.cfi_early_fixup** %5, align 8
  %20 = getelementptr inbounds %struct.cfi_early_fixup, %struct.cfi_early_fixup* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.cfi_private*, %struct.cfi_private** %3, align 8
  %23 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %21, %24
  br i1 %25, label %26, label %46

26:                                               ; preds = %18, %12
  %27 = load %struct.cfi_early_fixup*, %struct.cfi_early_fixup** %5, align 8
  %28 = getelementptr inbounds %struct.cfi_early_fixup, %struct.cfi_early_fixup* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @CFI_ID_ANY, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %40, label %32

32:                                               ; preds = %26
  %33 = load %struct.cfi_early_fixup*, %struct.cfi_early_fixup** %5, align 8
  %34 = getelementptr inbounds %struct.cfi_early_fixup, %struct.cfi_early_fixup* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.cfi_private*, %struct.cfi_private** %3, align 8
  %37 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %35, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %32, %26
  %41 = load %struct.cfi_early_fixup*, %struct.cfi_early_fixup** %5, align 8
  %42 = getelementptr inbounds %struct.cfi_early_fixup, %struct.cfi_early_fixup* %41, i32 0, i32 2
  %43 = load i32 (%struct.cfi_private*)*, i32 (%struct.cfi_private*)** %42, align 8
  %44 = load %struct.cfi_private*, %struct.cfi_private** %3, align 8
  %45 = call i32 %43(%struct.cfi_private* %44)
  br label %46

46:                                               ; preds = %40, %32, %18
  br label %47

47:                                               ; preds = %46
  %48 = load %struct.cfi_early_fixup*, %struct.cfi_early_fixup** %5, align 8
  %49 = getelementptr inbounds %struct.cfi_early_fixup, %struct.cfi_early_fixup* %48, i32 1
  store %struct.cfi_early_fixup* %49, %struct.cfi_early_fixup** %5, align 8
  br label %7

50:                                               ; preds = %7
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
