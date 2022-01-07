; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/chips/extr_cfi_util.c_cfi_fixup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/chips/extr_cfi_util.c_cfi_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { %struct.map_info* }
%struct.map_info = type { %struct.cfi_private* }
%struct.cfi_private = type { i64, i64 }
%struct.cfi_fixup = type { i64, i64, i32 (%struct.mtd_info*)* }

@CFI_MFR_ANY = common dso_local global i64 0, align 8
@CFI_ID_ANY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cfi_fixup(%struct.mtd_info* %0, %struct.cfi_fixup* %1) #0 {
  %3 = alloca %struct.mtd_info*, align 8
  %4 = alloca %struct.cfi_fixup*, align 8
  %5 = alloca %struct.map_info*, align 8
  %6 = alloca %struct.cfi_private*, align 8
  %7 = alloca %struct.cfi_fixup*, align 8
  store %struct.mtd_info* %0, %struct.mtd_info** %3, align 8
  store %struct.cfi_fixup* %1, %struct.cfi_fixup** %4, align 8
  %8 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %9 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %8, i32 0, i32 0
  %10 = load %struct.map_info*, %struct.map_info** %9, align 8
  store %struct.map_info* %10, %struct.map_info** %5, align 8
  %11 = load %struct.map_info*, %struct.map_info** %5, align 8
  %12 = getelementptr inbounds %struct.map_info, %struct.map_info* %11, i32 0, i32 0
  %13 = load %struct.cfi_private*, %struct.cfi_private** %12, align 8
  store %struct.cfi_private* %13, %struct.cfi_private** %6, align 8
  %14 = load %struct.cfi_fixup*, %struct.cfi_fixup** %4, align 8
  store %struct.cfi_fixup* %14, %struct.cfi_fixup** %7, align 8
  br label %15

15:                                               ; preds = %55, %2
  %16 = load %struct.cfi_fixup*, %struct.cfi_fixup** %7, align 8
  %17 = getelementptr inbounds %struct.cfi_fixup, %struct.cfi_fixup* %16, i32 0, i32 2
  %18 = load i32 (%struct.mtd_info*)*, i32 (%struct.mtd_info*)** %17, align 8
  %19 = icmp ne i32 (%struct.mtd_info*)* %18, null
  br i1 %19, label %20, label %58

20:                                               ; preds = %15
  %21 = load %struct.cfi_fixup*, %struct.cfi_fixup** %7, align 8
  %22 = getelementptr inbounds %struct.cfi_fixup, %struct.cfi_fixup* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @CFI_MFR_ANY, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %34, label %26

26:                                               ; preds = %20
  %27 = load %struct.cfi_fixup*, %struct.cfi_fixup** %7, align 8
  %28 = getelementptr inbounds %struct.cfi_fixup, %struct.cfi_fixup* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.cfi_private*, %struct.cfi_private** %6, align 8
  %31 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %29, %32
  br i1 %33, label %34, label %54

34:                                               ; preds = %26, %20
  %35 = load %struct.cfi_fixup*, %struct.cfi_fixup** %7, align 8
  %36 = getelementptr inbounds %struct.cfi_fixup, %struct.cfi_fixup* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @CFI_ID_ANY, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %48, label %40

40:                                               ; preds = %34
  %41 = load %struct.cfi_fixup*, %struct.cfi_fixup** %7, align 8
  %42 = getelementptr inbounds %struct.cfi_fixup, %struct.cfi_fixup* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.cfi_private*, %struct.cfi_private** %6, align 8
  %45 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %43, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %40, %34
  %49 = load %struct.cfi_fixup*, %struct.cfi_fixup** %7, align 8
  %50 = getelementptr inbounds %struct.cfi_fixup, %struct.cfi_fixup* %49, i32 0, i32 2
  %51 = load i32 (%struct.mtd_info*)*, i32 (%struct.mtd_info*)** %50, align 8
  %52 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %53 = call i32 %51(%struct.mtd_info* %52)
  br label %54

54:                                               ; preds = %48, %40, %26
  br label %55

55:                                               ; preds = %54
  %56 = load %struct.cfi_fixup*, %struct.cfi_fixup** %7, align 8
  %57 = getelementptr inbounds %struct.cfi_fixup, %struct.cfi_fixup* %56, i32 1
  store %struct.cfi_fixup* %57, %struct.cfi_fixup** %7, align 8
  br label %15

58:                                               ; preds = %15
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
